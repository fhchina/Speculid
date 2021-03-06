//
//  ImageHandleBuilder.m
//  SpecCarioInterop
//
//  Created by Leo Dion on 9/30/17.
//

#import "ImageHandleBuilder.h"
#import "rsvg.h"
#import "SVGImageHandle.h"
#import "PNGImageHandle.h"
#import "NSError+GError.h"


@implementation ImageHandleBuilder

static ImageHandleBuilder * _shared = nil;

+ (ImageHandleBuilder*) shared {
  if (_shared == nil) {
    _shared = [[ImageHandleBuilder alloc] init];
  }
  
  return _shared;
}

- (id<ImageHandle>)imageHandleFromFile:(id<ImageFileProtocol>)file error:(NSError * _Nullable __autoreleasing *)error {
  NSLog(@"url: %@", file.url);
  cairo_surface_t * sourceSurface;
  GError * gerror = nil;
  RsvgHandle * rsvgHandle;
  switch (file.format)
  {
    case kSvg:
      rsvgHandle = rsvg_handle_new_from_file(file.url.path.UTF8String , &gerror);
      if (gerror != nil) {
        *error = [[NSError alloc] initWithGError: gerror withURL:file.url];
        return nil;
      } else {
        return [[SVGImageHandle alloc] initWithRsvgHandle: rsvgHandle];
      }
    case kPng:
     sourceSurface = cairo_image_surface_create_from_png(file.url.path.UTF8String);
      return [[PNGImageHandle alloc] initWithSurface: sourceSurface];
    case kPdf:
      *error = [[NSError alloc] init];
      return nil;
  }
}
@end
