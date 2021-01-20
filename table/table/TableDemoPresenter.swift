//
//  TableDemoPresenter.swift
//  table
//
//  Created by vera.dias on 1/19/21.
//

import Foundation
public enum Sections: CaseIterable {
    case names
    case pets
}

public protocol TableDemoView: class {
    func reloadData()
}

public class TableDemoPresenter {
    
    public var view:TableDemoView?
    let names = ["Name 1","Name 2","Name 3"]
    let pets = ["Pet 1","Pet 2","Pet 3"]
    
    func numberOfSections() -> Int {
        return Sections.allCases.count
    }
    
    func titleForSection(_ section: Int) -> String {
        let section = Sections.allCases[section]
        
        switch section {
        case .names:
            return "Name Section"
        case .pets:
            return "Pet Section"
        }
    }
    
    func numberOfRowsInSection(_ section: Int) -> Int {
        let section = Sections.allCases[section]
        
        switch section {
        case .names:
            return names.count
        case .pets:
            return pets.count
        }
    }
    
    func getSectionHeaders() -> [Sections]{
        return Sections.allCases
    }
    // MARK: - Cell Configuration
    func configureNameView(_ view: NameView, forIndex index: Int){
        let name = names[index]
        view.display(name: name)
    }
    
    func configurePetView(_ view: PetView, forIndex index: Int){
        let pet = pets[index]
        view.display(name: pet)
        view.display(position: index)
    }
}
