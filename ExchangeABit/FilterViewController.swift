//
//  FilterViewController.swift
//  ExchangeABit
//
//  Created by Stephi Goering on 20/09/15.
//  Copyright © 2015 Stephi Goering. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    var thisFeedItem: FeedItem!
    
    var collectionView: UICollectionView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsetsMake(10, 10, 10, 10)
        layout.itemSize = CGSizeMake(150.0, 150.0)
        collectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.backgroundColor = UIColor.whiteColor()
        collectionView.registerClass(FilterCell.self, forCellWithReuseIdentifier: "cell")
        
        self.view.addSubview(collectionView)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    //UICollectionView dataSource
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell: FilterCell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! FilterCell
        
        cell.imageView.image = UIImage(named:"Placeholder")
        
        return cell

    }

}
