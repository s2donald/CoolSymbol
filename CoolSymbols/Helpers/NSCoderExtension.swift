//
//  NSCoderExtension.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-25.
//

import Foundation

extension NSCoder {
  static func fatalErrorNotImplemented() -> Never {
    fatalError("init(coder:) has not been implemented.")
  }
}
