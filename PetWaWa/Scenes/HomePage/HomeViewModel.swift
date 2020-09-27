//
//  HomeViewModel.swift
//  PetWaWa
//
//  Created by Hexiao Zhang on 2020-09-26.
//  Copyright © 2020 Hexiao Zhang. All rights reserved.
//

import Foundation

protocol HomeViewModelDelegate: class {
    func didLoadData()
//    func didSuccess(msg: String)
//    func didFail(error: String)
}

class HomeViewModel {
    
    weak var delegate: HomeViewModelDelegate?
    
    var categoryArray: [Category] = []
    
    init() {
        self.loadCategories()
    }
    
    func loadCategories(){
        downloadCategoriesFromFirebase{ (allCategories) in
            self.categoryArray = allCategories
            self.delegate?.didLoadData()
        }
    }

}
