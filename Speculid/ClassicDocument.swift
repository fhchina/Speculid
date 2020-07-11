//
//  doc_appDocument.swift
//  doc-app
//
//  Created by Leo Dion on 7/4/20.
//

import SwiftUI
import UniformTypeIdentifiers
import SpeculidKit


extension UTType {
    static var speculidImageDocument: UTType {
        UTType(importedAs: "com.brightdigit.speculid-image-document")
    }
}

struct ClassicDocument: FileDocument {
  var document: SpeculidSpecificationsFile

    init(document: SpeculidSpecificationsFile = SpeculidSpecificationsFile()) {
      self.document = document
      
    }

    static var readableContentTypes: [UTType] { [.speculidImageDocument] }

    init(fileWrapper: FileWrapper, contentType: UTType) throws {
      debugPrint(fileWrapper.filename)
      let decoder = JSONDecoder()
        guard let data = fileWrapper.regularFileContents
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
      self.document = try decoder.decode(SpeculidSpecificationsFile.self, from: data)
    }
    
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
      let encoder = JSONEncoder()
      let data = try encoder.encode(self.document)
        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
  
  func build (fromURL url: URL) {
    let builder : SpeculidBuilderProtocol = ObsoleteApplication.current.builder
    guard let document = try? SpeculidDocument(url: url, decoder: JSONDecoder()) else {
      return
    }
    builder.build(document: document)
  }
}

struct ClassicDocument_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
