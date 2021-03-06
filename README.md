# Adding a scrollable header view to a table view

![header view](https://user-images.githubusercontent.com/1819208/103038142-acd59e80-453b-11eb-9181-56a6371956b5.png)


## Adding a custom Header View to a Table View in your View Controller

`mainView` is a subclass of a `UIView` that has the Table View, the table view could have also just been added directly to the View Controller, here this is used for illustration purposes in the case you want to add more UI elements to `MainView`

```swift 
mainView.tableView.tableHeaderView = headerView
```

<details> 
  <summary>Header View Code</summary>

```swift 
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
```

</details> 

## Setting the frame of the Header View 

```swift 
override init(frame: CGRect) {
  super.init(frame: CGRect(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 300))
  commonInit()
}
```
