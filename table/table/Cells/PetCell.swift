//
//  PetCell.swift
//  table
//
//  Created by vera.dias on 1/20/21.
//

import UIKit

class PetCell: UITableViewCell, PetView {
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var positionLabel: UILabel!
    
    func display(name: String) {
        nameLabel.text = name
    }
    
    func display(position: Int) {
        positionLabel.text = String(position)
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
    }
}
