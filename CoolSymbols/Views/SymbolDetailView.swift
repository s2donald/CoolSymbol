//
//  SymbolDetailView.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-24.
//

import UIKit

class SymbolDetailView: UIView {
    @UsesAutoLayout
  private var nameLabel: UILabel = {
    let nameLabel = UILabel()
    nameLabel.adjustsFontSizeToFitWidth = true
    nameLabel.font = UIFont.boldSystemFont(ofSize: 30.0)
    nameLabel.textAlignment = .center
    return nameLabel
  }()

    @UsesAutoLayout
    private var representationImageView = UIImageView()

    @UsesAutoLayout
  private var categoryLabel: UILabel = {
    let categoryLabel = UILabel()
    categoryLabel.font = UIFont.boldSystemFont(ofSize: 24.0)
    categoryLabel.textAlignment = .center
    categoryLabel.textColor = .secondaryLabel
    return categoryLabel
  }()

    @UsesAutoLayout
    private var iosLabel = UILabel.iosLabel()

  required init(coder aDecoder: NSCoder) {
      NSCoder.fatalErrorNotImplemented()
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .systemBackground

    [nameLabel, representationImageView, categoryLabel, iosLabel].forEach {
      addSubview($0)
    }

    nameLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
    nameLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
    nameLabel.bottomAnchor.constraint(equalTo: representationImageView.topAnchor, constant: Layout.standard * -1.0).activate()

    representationImageView.centerXAnchor.constraint(equalTo: centerXAnchor).activate()
    representationImageView.centerYAnchor.constraint(equalTo: centerYAnchor).activate()
    let representationHeightWidth: CGFloat = 343
    representationImageView.heightAnchor.constraint(equalToConstant: representationHeightWidth).activate()
    representationImageView.widthAnchor.constraint(equalToConstant: representationHeightWidth).activate()
    categoryLabel.topAnchor.constraint(equalTo: representationImageView.bottomAnchor, constant: Layout.standard).activate()
    categoryLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
    categoryLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()

      iosLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
      iosLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
      iosLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: Layout.standard * -1.0).activate()
  }

  func configure(symbol: Symbol) {
    nameLabel.text = symbol.name
    representationImageView.image = UIImage(systemName: symbol.name)
    categoryLabel.text = symbol.category
  }
}
