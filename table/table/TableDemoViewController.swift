//
//  ViewController.swift
//  table
//
//  Created by vera.dias on 1/19/21.
//

import UIKit

class TableDemoViewController: UITableViewController, TableDemoView {
    
    let presenter = TableDemoPresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.view = self
    }
    
    func reloadData() {
        tableView.reloadData()
    }
    
    // MARK: - Section Configuration
    override func numberOfSections(in tableView: UITableView) -> Int {
        return presenter.numberOfSections()
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return presenter.titleForSection(section)
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRowsInSection(section)
    }
    
    // MARK: - Cell configuration
 
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let sectionHeaders = presenter.getSectionHeaders()
        let header = sectionHeaders[indexPath.section]
        
        switch header {
        case .names:
            if let nameCell = tableView.dequeueReusableCell(withIdentifier: "nameCell") as? NameCell {
                presenter.configureNameView(nameCell, forIndex: indexPath.row)
                return nameCell
            }
        case .pets:
            if let petCell = tableView.dequeueReusableCell(withIdentifier: "petCell") as? PetCell {
                presenter.configurePetView(petCell, forIndex: indexPath.row)
                return petCell
            }
        }
        return UITableViewCell()
    }
}

