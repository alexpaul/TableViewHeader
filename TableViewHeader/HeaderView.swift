//
//  HeaderView.swift
//  TableViewHeader
//
//  Created by Alex Paul on 12/23/20.
//

import UIKit

class HeaderView: UIView {
  static let reuseIdentifier = "headerView"
  
  public var textLabel: UILabel = {
    let label = UILabel()
    label.text = "Header View"
    label.textAlignment = .center
    label.font = UIFont.preferredFont(forTextStyle: .headline)
    return label
  }()
  
  override init(frame: CGRect) {
    super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300))
    commonInit()
  }
  
  required init?(coder: NSCoder) {
    super.init(coder: coder)
    commonInit()
  }
  
  private func commonInit() {
    backgroundColor = .red
    setupLabelConstraints()
  }
  
  private func setupLabelConstraints() {
    addSubview(textLabel)
    textLabel.translatesAutoresizingMaskIntoConstraints = false
    NSLayoutConstraint.activate([
      textLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
      textLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
      textLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 8),
      textLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -8)
    ])
  }
}
