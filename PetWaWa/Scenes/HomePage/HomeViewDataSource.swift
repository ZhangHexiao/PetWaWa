//
//  HomeViewDataSource.swift
//  PetWaWa
//
//  Created by Hexiao Zhang on 2020-09-26.
//  Copyright © 2020 Hexiao Zhang. All rights reserved.
//

import Foundation
import UIKit

protocol HomeViewDataSourceDelegate: class {
//    func didTapCategory
}

class HomeViewDataSource: NSObject {
    
    private var viewModel: HomeViewModel
    weak var delegate: HomeViewDataSourceDelegate?
    
    init(viewModel: HomeViewModel, delegate: HomeViewDataSourceDelegate) {
        self.viewModel = viewModel
        self.delegate = delegate
    }
}

extension HomeViewDataSource: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("number of rows")
        print(viewModel.categoryArray.count)
        return viewModel.categoryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        print("cellForItemsAt")
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoryCollectionViewCell", for: indexPath) as! CategoryCollectionViewCell
        print(viewModel.categoryArray[indexPath.row].name)
        cell.configure(with: viewModel.categoryArray[indexPath.row])
        return cell
    }
    
}
extension HomeViewDataSource: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 160)
    }
}
