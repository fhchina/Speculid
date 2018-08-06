[![Twitter](https://img.shields.io/badge/Twitter-@leogdion-blue.svg?style=flat)](http://twitter.com/leogdion)
[![Codecov](https://img.shields.io/codecov/c/github/brightdigit/speculid.svg?maxAge=2592000)](https://codecov.io/gh/brightdigit/speculid/branch)
[![Travis](https://img.shields.io/travis/brightdigit/speculid.svg)](https://travis-ci.org/brightdigit/speculid)
[![Beerpay](https://img.shields.io/beerpay/brightdigit/speculid.svg?maxAge=2592000)](https://beerpay.io/brightdigit/speculid)
[![Gitter](https://img.shields.io/gitter/room/speculid/Lobby.js.svg?maxAge=2592000)](https://gitter.im/speculid/Lobby)

<!--ts-->
   * [Introduction](#introduction)
      * [Challenges Managing Graphic Assets](#challenges-managing-graphic-assets)
         * [<a href="https://camo.githubusercontent.com/f84864b171328f85d86395a98401ce67c4a2f83c/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f6d656368616e69632e737667" target="_blank" rel="nofollow"><img src="https://camo.githubusercontent.com/f84864b171328f85d86395a98401ce67c4a2f83c/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f6d656368616e69632e737667" height="25pt" data-canonical-src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/mechanic.svg" style="max-width:100\x;"></a> Manually Create Multiple Sizes](#-manually-create-multiple-sizes)
         * [<a href="https://camo.githubusercontent.com/ce1d1e0deb43857c938016c58c7a008e043b9dfe/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f617263686976652e737667" target="_blank" rel="nofollow"><img src="https://camo.githubusercontent.com/ce1d1e0deb43857c938016c58c7a008e043b9dfe/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f617263686976652e737667" height="25pt" data-canonical-src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/archive.svg" style="max-width:100\x;"></a> Store Generated Image Files](#-store-generated-image-files)
      * [What Speculid Does](#what-speculid-does)
         * [<a href="https://camo.githubusercontent.com/2abe35faea1b42b10a426f57fee564fd6fb60bc5/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f6d616368696e6572792e737667" target="_blank" rel="nofollow"><img src="https://camo.githubusercontent.com/2abe35faea1b42b10a426f57fee564fd6fb60bc5/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f6d616368696e6572792e737667" height="25pt" data-canonical-src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/machinery.svg" style="max-width:100\x;"></a> Automate the process](#-automate-the-process)
         * [<a href="https://camo.githubusercontent.com/f3de2019c718f4688351765967af24b99be59056/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f636c65616e2d636f64652e737667" target="_blank" rel="nofollow"><img src="https://camo.githubusercontent.com/f3de2019c718f4688351765967af24b99be59056/68747470733a2f2f63646e2e7261776769742e636f6d2f62726967687464696769742f53706563756c69642f67682d70616765732f696d616765732f636c65616e2d636f64652e737667" height="25pt" data-canonical-src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/clean-code.svg" style="max-width:100\x;"></a> Tidy Your Repo](#-tidy-your-repo)
   * [Download](#download)
   * [Installation](#installation)
   * [Usage](#usage)
      * [File Format](#file-format)
         * [Set set](#set-set)
         * [Source source](#source-source)
         * [Geometry <em>optional</em> geometry](#geometry-optional-geometry)
         * [Background <em>optional</em> background](#background-optional-background)
         * [Remove Alpha <em>optional</em>  remove-alpha](#remove-alpha-optional--remove-alpha)
      * [Xcode Integration](#xcode-integration)

<!-- Added by: leo, at:  -->

<!--te-->

# Introduction

## Challenges Managing Graphic Assets

Part of the process of building an app for **watchOS**, **iOS**, or **macOS** is including all the image assets and app icons in your application. That could be done by exporting all the various sizes from your graphics application. 

The problem is the need to:

<section class="cards" markdown="1">

<section class="card half" markdown="1">



### <img class="readme-only" src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/mechanic.svg" height="25pt"/> Manually Create Multiple Sizes

Each graphic must be **manually updated, converted, resized**. For an Xcode Project, that means a Graphic Designer or Developer need to repeatedly update each size every time.

</section>
<section class="card half" markdown="1">



### <img class="readme-only" src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/archive.svg" height="25pt"/> Store Generated Image Files

These generated files need to be stored in the repository. An Asset Catalog Image Set will need a 1x, 2x, 3x of each graphic and **App Icons may need as many 30 different sizes**.

</section>
</section>

<!-- <section class="cards" markdown="1">
<section class="card whole" markdown="1">
![Multiple Images](./images/Logo-dashed.svg)
### 
For Apple developers, there is no application which prepares graphics files for asset catalogs. 
</section>
</section> -->

## What Speculid Does


![diagram](https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/Diagram.png)

<section class="cards" markdown="1">
<section class="card half" markdown="1">



### <img class="readme-only" src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/machinery.svg" height="25pt"/> Automate the process 

Speculid automates the process so **only one graphic file is needed**. Add Speculid to your build process and now the **conversions and resizing are automated** as part of the build process. Now there is no need for anyone to manually create each size for each device.

</section>
<section class="card half" markdown="1">



### <img class="readme-only" src="https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/clean-code.svg" height="25pt"/> Tidy Your Repo

**Reduce the size of your code repo** by including a single vector or raster image and build all your nessecary png and pdf files at compile. That means **faster remote pulls and less redundancy.**

</section>
</section>

-------

**Speculid** links any image file to an Image Set or App Icon and will automatically:

* Create Each Necessary Raster File **Resized**
* **Use Vector Image Files** Such As SVG as Source Imagery
* Allow the **Removal of Transparency for App Icons**

# Download



<div class="readme-only" markdown="1">

Enter your email address [here](https://www.speculid.com#download) to get the latest version.

</div>

# Installation

Once you have unzipped the downloaded file, go ahead and **copy the application *Speculid.App* to the Applications folder**.

# Usage

Speculid only supports being called through a command line terminal.  

```bash
$ /Applications/Speculid/Contents/MacOS/Speculid --process <file>
$ /Applications/Speculid/Contents/MacOS/Speculid --help
$ /Applications/Speculid/Contents/MacOS/Speculid --version

Options:
  --help     Show this screen.
  --version  Show version.
```

## File Format

The `.speculid` file is a `json` file with the image set or app icon path, the graphic file source, and optionally the basic image geometry (width or height). Such as

```json
{
  "set" : "Assets.xcassets/Raster Image.imageset",
  "source" : "layers.png",
  "geometry" : "128"
}
```
or
```json
{
  "set" : "Assets.xcassets/iOS AppIcon.appiconset",
  "source" : "geometry.svg",
  "background" : "#FFFFFFFF",
  "remove-alpha" : true
}
```

### Set `set`

![Image Set Examples from Xcode](https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/SetExample.png)

A set is an image set or app icon set used by Xcode. That path specified in the json could be relative to the `.speculid` file.

### Source `source`

The image source file which could be a SVG or any bitmap image type compatible with [imagemagick](http://www.imagemagick.org).

### Geometry *optional* `geometry`

The destination geometry of image if needed (i.e. image set). It must be in the format of:

* *width* (ex. "128") - for specifying the width of the destination image
* x*height* (ex. "x128") - for specifying the height of the destination image

You can only specify the height or the width. The other dimension is automatically calculated based on the aspect ration of the image.

### Background *optional* `background`

As a requirement, **App Icons are required to exclude any alpha channels**. In order to remove a transparency from a source png or svg file, you can specify to remove the alpha channel and add a background color. The background color can be set with a string in a standard rgb, rgba, or hex code format (#RRGGBB or #AARRGGBB). If no alpha is specified an alpha of 1.0 is assumed.

### Remove Alpha *optional*  `remove-alpha`

To specifically remove the alpha channel, a true boolean value must be specified. This will remove the alpha channel from the file. Make sure to specify an opaque background color when removing the alpha channel.

## Xcode Integration

With **Speculid**, the process of building image assets can be automated in **Xcode**.

1. **Create the speculid files** and add them to your project folder as well as your source graphic files. 

    ![Xcode Target Membership](https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/XcodeTargetMembership.png)

    * *Note: you don't need to add these files to your target membership*

2. **Edit the speculid file.**

    1. **Add the property for the source** - a relative path to the SVG, or PNG file.
        ```json
        {
          "source" : "geometry.svg",
          ...
        }
        ```
    1. **Add the property for the set** - a relative path to the Image Set or App Icon folder.
        ```json
        {
          "set" : "Assets.xcassets/iOS AppIcon.appiconset",
          ...
        }
        ```
    1. *optional* **Add the property for the geometry** - if this a conversion from a vector graphic (SVG) to an Image Set, you may want to supply the *1x* size.
        ```json
        {
          "set" : "Assets.xcassets/Raster Image.imageset",
          "source" : "layers.png",
          "geometry" : "128"
        }
        ```
    1. *optional* **Add the properties for the background color and alpha removal** - if this a conversion to an App Icon, you should remove any background transpareny and add a background color.
        ```json
        {
          "set" : "Assets.xcassets/iOS AppIcon.appiconset",
          "source" : "geometry.svg",
          "background" : "#FFFFFFFF",
          "remove-alpha" : true
        }
        ```

    See the [file format section](#file-format) for more details.

2. **Add the *Run Script* Build Phase** to the top of your project with the following code:

    ```bash
    find "${SRCROOT}" -name "*.speculid" -print0 |
    while IFS= read -r -d $'\0' line; do
    /Applications/Speculid/Contents/MacOS/Speculid --process "$line" &
    done
    wait
    ```
    ![Xcode Build Phase Run Script](https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/XcodeBuildPhaseRunScript.png)

3. **Build the application.** This will create the graphics which you will use in your asset image set or app icon.

    ![Xcode Unorganized Assets](https://cdn.rawgit.com/brightdigit/Speculid/gh-pages/images/XcodeUnorganizedAssets.png)

4. **After the first build**, drag the images to the correct asset slot. Each rendered image file is suffixed denoting its slot.

    *(source file base name)*.*(size)*@*(scale)*~*(idiom)*.(extension)

    **Examples**

    * **logo.20x20@1x~ipad.png** - 20x20 size 1x scale for iPad
    * **logo.60x60@3x~iphone.png** - 60x60 size 3x scale for iPhone
    * **logo.83.5x83.5@2x~ipad.png** - 83.5x83.5 size 2x scale for iPad

5. Build and Run. Done.

-----

**Speculid** ©2018, BrightDigit, LLC. 
