//
//  NSLayoutConstraintExtension.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-25.
//

import UIKit

extension NSLayoutConstraint {
  @discardableResult func activate() -> NSLayoutConstraint {
    isActive = true
    return self
  }
}

