//
//  SymbolDetailView.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-24.
//

import UIKit

class SymbolDetailView: UIView {
  private var nameLabel: UILabel = {
    let nameLabel = UILabel()
    nameLabel.adjustsFontSizeToFitWidth = true
    nameLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
    nameLabel.textAlignment = .center
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    return nameLabel
  }()

  private var representationImageView: UIImageView = {
    let representationImageView = UIImageView()
    representationImageView.translatesAutoresizingMaskIntoConstraints = false
    return representationImageView
  }()

  private var categoryLabel: UILabel = {
    let categoryLabel = UILabel()
    categoryLabel.font = UIFont.boldSystemFont(ofSize: 24.0)
    categoryLabel.textAlignment = .center
    categoryLabel.textColor = .secondaryLabel
    categoryLabel.translatesAutoresizingMaskIntoConstraints = false
    return categoryLabel
  }()

  private var iosExpertLabel: UILabel = {
    let iosExpertLabel = UILabel()
    iosExpertLabel.text = "iOSExpert"
    iosExpertLabel.font = UIFont.systemFont(ofSize: 12.0)
    iosExpertLabel.textAlignment = .right
    iosExpertLabel.textColor = .secondaryLabel
    iosExpertLabel.translatesAutoresizingMaskIntoConstraints = false
    return iosExpertLabel
  }()

  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented.")
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .systemBackground

    [nameLabel, representationImageView, categoryLabel, iosExpertLabel].forEach {
      addSubview($0)
    }

    nameLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).isActive = true
    nameLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).isActive = true
    nameLabel.bottomAnchor.constraint(equalTo: representationImageView.topAnchor, constant: -8.0).isActive = true

    representationImageView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
    representationImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    let representationHeightWidth: CGFloat = 343
    representationImageView.heightAnchor.constraint(equalToConstant: representationHeightWidth).isActive = true
    representationImageView.widthAnchor.constraint(equalToConstant: representationHeightWidth).isActive = true

    categoryLabel.topAnchor.constraint(equalTo: representationImageView.bottomAnchor, constant: 8.0).isActive = true
    categoryLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).isActive = true
    categoryLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).isActive = true

    iosExpertLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).isActive = true
    iosExpertLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).isActive = true
    iosExpertLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -8.0).isActive = true
  }

  func configure(symbol: Symbol) {
    nameLabel.text = symbol.name
    representationImageView.image = UIImage(systemName: symbol.name)
    categoryLabel.text = symbol.category
  }
}
