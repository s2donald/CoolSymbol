//
//  BrowseSymbolsView.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-24.
//

import UIKit

class BrowseSymbolsView: UIView {
  static let rowHeight: CGFloat = 120.0
  
  private(set) var tableView: UITableView = {
    let tableView = UITableView()
    tableView.rowHeight = BrowseSymbolsView.rowHeight
    tableView.translatesAutoresizingMaskIntoConstraints = false
    return tableView
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
    
    [tableView, iosExpertLabel].forEach {
      addSubview($0)
    }
    
    tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8.0).isActive = true
    tableView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).isActive = true
    tableView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: iosExpertLabel.topAnchor, constant: -8.0).isActive = true
    
    iosExpertLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).isActive = true
    iosExpertLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).isActive = true
    iosExpertLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -8.0).isActive = true
  }
  
  func setupTable(dataSource: UITableViewDataSource, delegate: UITableViewDelegate) {
    tableView.dataSource = dataSource
    tableView.delegate = delegate
    tableView.register(SymbolCell.self, forCellReuseIdentifier: "\(SymbolCell.self)")
  }
}
