// Copyright © 2023 AlgoExpert LLC. All rights reserved.

import UIKit

class SymbolCell: UITableViewCell {
  private var nameLabel: UILabel = {
    let nameLabel = UILabel()
    nameLabel.adjustsFontSizeToFitWidth = true
    nameLabel.font = UIFont.boldSystemFont(ofSize: 17.0)
    nameLabel.translatesAutoresizingMaskIntoConstraints = false
    return nameLabel
  }()

  private var categoryLabel: UILabel = {
    let categoryLabel = UILabel()
    categoryLabel.font = UIFont.systemFont(ofSize: 15.0)
    categoryLabel.textColor = .secondaryLabel
    categoryLabel.translatesAutoresizingMaskIntoConstraints = false
    return categoryLabel
  }()

  private var representationImageView: UIImageView = {
    let representationImageView = UIImageView()
    representationImageView.translatesAutoresizingMaskIntoConstraints = false
    return representationImageView
  }()

  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented.")
  }

  override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    backgroundColor = UIColor.systemBackground

    [nameLabel, categoryLabel, representationImageView].forEach {
      addSubview($0)
    }

    nameLabel.topAnchor.constraint(equalTo: topAnchor, constant: 8.0).isActive = true
    nameLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
    nameLabel.trailingAnchor.constraint(equalTo: representationImageView.leadingAnchor, constant: -8.0).isActive = true

    categoryLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 8.0).isActive = true
    categoryLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8.0).isActive = true
    categoryLabel.trailingAnchor.constraint(equalTo: representationImageView.leadingAnchor, constant: -8.0).isActive = true

    representationImageView.topAnchor.constraint(equalTo: topAnchor, constant: 8.0).isActive = true
    representationImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8.0).isActive = true
    let representationHeightWidth: CGFloat = 104
    representationImageView.heightAnchor.constraint(equalToConstant: representationHeightWidth).isActive = true
    representationImageView.widthAnchor.constraint(equalToConstant: representationHeightWidth).isActive = true
  }

  func configure(symbol: Symbol) {
    nameLabel.text = symbol.name
    categoryLabel.text = symbol.category
    representationImageView.image = UIImage(systemName: symbol.name)
  }
}
