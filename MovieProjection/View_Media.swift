//
//  View_Media.swift
//  MovieProjection
//
//  Created by osx on 9.04.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit

class View_Media: UICollectionView,UICollectionViewDataSource,UICollectionViewDelegate,UICollectionViewDelegateFlowLayout {

    private var layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()

    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: layout)
        
        
        self.registerClass(Cell_Photo.self, forCellWithReuseIdentifier: "Cell_Photo")
        self.backgroundColor = UIColor.clearColor()
        self.layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        self.layout.itemSize = CGSize(width: self.frame.width/2, height: self.frame.height)
        self.layout.minimumLineSpacing = 1
       // self.layout.minimumInteritemSpacing = tableMinLine
        self.layout.scrollDirection = UICollectionViewScrollDirection.Horizontal
        self.delegate = self
        self.dataSource = self
        self.collectionViewLayout = self.layout
        
        

       
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
    //:MARK- Delegate & Datasource
    
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("Cell_Photo", forIndexPath: indexPath) as! Cell_Photo
        if (indexPath.section == 0) {
            cell.testText.text = "section 1"
        }
        if (indexPath.section == 1) {
            cell.testText.text = "section 2"
        }
        
        cell.backgroundColor = UIColor.whiteColor()
        return cell
    }
    
    
    
    
    
    
}
