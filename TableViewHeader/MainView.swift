//
//  MainView.swift
//  TableViewHeader
//
//  Created by Alex Paul on 12/23/20.
//

import UIKit

class MainView: UIView {
  
  public var tableView: UITableView = {
    let tv = UITableView()
    return tv
  }()
  
  override init(frame: CGRect) {
    super.init(frame: UIScreen.main.bounds)
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    tableViewConstraints()
  }
  
  private func tableViewConstraints() {
    addSubview(tableView)
    tableView.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      tableView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
      tableView.leadingAnchor.constraint(equalTo: leadingAnchor),
      tableView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
      tableView.trailingAnchor.constraint(equalTo: trailingAnchor),

    ])
  }
}
