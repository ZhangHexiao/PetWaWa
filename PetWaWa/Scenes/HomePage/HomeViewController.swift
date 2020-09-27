//
//  HomeViewController.swift
//  PetWaWa
//
//  Created by Hexiao Zhang on 2020-09-26.
//  Copyright © 2020 Hexiao Zhang. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var viewModel = HomeViewModel()
    var dataSource: HomeViewDataSource?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewModel.delegate = self
        dataSource = HomeViewDataSource(viewModel: viewModel, delegate: self)
        setupCollectionView()
    }
    
    private func setupCollectionView() {
//        let dummyViewHeight = CGFloat(40)
//        tableView.tableHeaderView = UIView(frame: CGRect(x: 0, y: 0, width: self.tableView.bounds.size.width, height: dummyViewHeight))
//        tableView.contentInset = UIEdgeInsets(top: -dummyViewHeight, left: 0, bottom: 0, right: 0)
        print(String(describing: CategoryCollectionViewCell.self))
        collectionView.delegate = dataSource
        collectionView.dataSource = dataSource
        collectionView.register(UINib(nibName: "CategoryCollectionViewCell", bundle: Bundle.main), forCellWithReuseIdentifier: "CategoryCollectionViewCell")
    }
}

extension HomeViewController: HomeViewModelDelegate{
    func didLoadData() {
        print("reload Data")
        self.collectionView.reloadData()
    }
}

extension HomeViewController:  HomeViewDataSourceDelegate{
    
    
}
