//
//  SpeculidServiceProtocol.swift
//  Speculid
//
//  Created by Leo Dion on 10/5/17.
//

import Foundation

@objc public protocol SpeculidServiceProtocol {
  func uppercaseString(_ string: String, withReply callback: (String) -> Void) 
}
