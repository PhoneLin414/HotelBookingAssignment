//
//  OuterCollectionViewCell.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/7/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit

class OuterCollectionViewCell: UICollectionViewCell {

    
    
    @IBOutlet weak var innerCollectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        innerCollectionView.dataSource = self
        innerCollectionView.delegate = self
//
//
        
        let layout = innerCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 10
        layout.itemSize = CGSize(width: 300, height: 200)
        
        let nib = UINib(nibName: String(describing: HotelCollectionViewCell.self), bundle: nil)
        innerCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: HotelCollectionViewCell.self))
//
//
        
//
        
    }

}

extension OuterCollectionViewCell : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = innerCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: HotelCollectionViewCell.self), for: indexPath)
            as! HotelCollectionViewCell
        return item
    }
//
//
//
}

extension OuterCollectionViewCell : UICollectionViewDelegate{



}
