//
//  UILabelExtension.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-25.
//

import UIKit

extension UILabel {
  static func iosLabel() -> UILabel {
    let iosLabel = UILabel()
      iosLabel.text = "Stephen"
      iosLabel.font = UIFont.systemFont(ofSize: 12.0)
      iosLabel.textAlignment = .right
      iosLabel.textColor = .secondaryLabel
    return iosLabel
  }
}

