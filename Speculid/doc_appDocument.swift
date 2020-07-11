//
//  doc_appDocument.swift
//  doc-app
//
//  Created by Leo Dion on 7/4/20.
//

import SwiftUI
import UniformTypeIdentifiers

extension UTType {
    static var speculidProjectDocument: UTType {
        UTType(importedAs: "com.brightdigit.speculid-project-document")
    }
}

struct doc_appDocument: FileDocument {
    var text: String

    init(text: String = "Hello, world!") {
        self.text = text
    }

    static var readableContentTypes: [UTType] { [.speculidProjectDocument] }

    init(fileWrapper: FileWrapper, contentType: UTType) throws {
        guard let data = fileWrapper.regularFileContents,
              let string = String(data: data, encoding: .utf8)
        else {
            throw CocoaError(.fileReadCorruptFile)
        }
        text = string
    }
    
    func write(to fileWrapper: inout FileWrapper, contentType: UTType) throws {
        let data = text.data(using: .utf8)!
        fileWrapper = FileWrapper(regularFileWithContents: data)
    }
  
  func build () {
    
  }
}

struct doc_appDocument_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}