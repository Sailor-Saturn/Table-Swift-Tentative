//
//  NameCell.swift
//  table
//
//  Created by vera.dias on 1/20/21.
//

import UIKit

class NameCell: UITableViewCell, NameView {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    func display(name: String) {
        nameLabel.text = name
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
