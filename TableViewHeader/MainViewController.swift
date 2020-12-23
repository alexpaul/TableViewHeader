//
//  ViewController.swift
//  TableViewHeader
//
//  Created by Alex Paul on 12/23/20.
//

import UIKit

class MainViewController: UIViewController {
  
  private let mainView = MainView()
  private let headerView = HeaderView()
  
  override func loadView() {
    view = mainView
  }

  override func viewDidLoad() {
    super.viewDidLoad()
    mainView.tableView.register(Cell.self, forCellReuseIdentifier: "cell")
    mainView.tableView.tableHeaderView = headerView
    mainView.tableView.dataSource = self
    mainView.tableView.delegate = self

  }
}

extension MainViewController: UITableViewDataSource, UITableViewDelegate {
  
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return 100
  }
  
  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? Cell else {
      fatalError()
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
//  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//    return 400
//  }
//
//  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//    return HeaderView()
//  }
}

