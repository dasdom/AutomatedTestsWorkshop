//  Created by Dominik Hauser on 07.05.22.
//  
//

import UIKit

class CodeBasedView: UIView {

  let label: UILabel

  override init(frame: CGRect) {

    label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = true
    label.text = "Code based view controller"

    super.init(frame: frame)

    addSubview(label)

    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: centerXAnchor),
      label.centerYAnchor.constraint(equalTo: centerYAnchor),
    ])
  }

  required init?(coder: NSCoder) { fatalError() }

  func update(with string: String) {
    label.text = string
  }
}
