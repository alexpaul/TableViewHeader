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
    
    // comment to get stationary header view
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
    guard let cell = tableView.dequeueReusableCell(withIdentifier: Cell.reuseIdentifier, for: indexPath) as? Cell else {
      fatalError("could not dequeue cell")
    }
    return cell
  }
  
  func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    return 150
  }
  
  // uncomment to get stationary header view
  // optional for non-scrollable header view
  
  /*
  func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
    return HeaderView()
  }
  
  func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
    return 300
  }
   */
}

