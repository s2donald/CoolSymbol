//
//  BrowseSymbolsView.swift
//  CoolSymbols
//
//  Created by Stephen Donald on 2025-01-24.
//

import UIKit

class BrowseSymbolsView: UIView {
  static let rowHeight: CGFloat = 120.0
  
  @UsesAutoLayout
  private(set) var tableView: UITableView = {
    let tableView = UITableView()
    tableView.rowHeight = BrowseSymbolsView.rowHeight
    return tableView
  }()

    @UsesAutoLayout
    private var iosLabel = UILabel.iosLabel()
  
  required init(coder aDecoder: NSCoder) {
      NSCoder.fatalErrorNotImplemented()
  }
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    backgroundColor = .systemBackground
    
    [tableView, iosLabel].forEach {
      addSubview($0)
    }
    
    tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: Layout.standard).activate()
    tableView.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
    tableView.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
    tableView.bottomAnchor.constraint(equalTo: iosLabel.topAnchor, constant: Layout.standard * -1.0).activate()
    
      iosLabel.leadingAnchor.constraint(equalTo: layoutMarginsGuide.leadingAnchor).activate()
      iosLabel.trailingAnchor.constraint(equalTo: layoutMarginsGuide.trailingAnchor).activate()
      iosLabel.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: Layout.standard * -1.0).activate()
  }
  
  func setupTable(dataSource: UITableViewDataSource, delegate: UITableViewDelegate) {
    tableView.dataSource = dataSource
    tableView.delegate = delegate
    tableView.register(SymbolCell.self, forCellReuseIdentifier: "\(SymbolCell.self)")
  }
}
