//
//  ExploreViewController.swift
//  HotelBookingAssignment_W5
//
//  Created by SC414 on 9/7/19.
//  Copyright © 2019 phonelin. All rights reserved.
//

import UIKit
import FittedSheets

class ExploreViewController: UIViewController {

    @IBOutlet weak var filter: UIView!
    @IBOutlet weak var btnSearch: UIButton!
    @IBOutlet weak var btnMap: UIButton!
    @IBOutlet weak var HotelCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        filter.layer.cornerRadius = 20

        btnSearch.layer.cornerRadius = 5
        btnMap.layer.cornerRadius = 5
        
        
        HotelCollectionView.delegate = self
        HotelCollectionView.dataSource = self
        
        let nibForHeader = UINib(nibName: String(describing: SectionCollectionReusableView.self), bundle: nil)
        HotelCollectionView.register(nibForHeader, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: String(describing: SectionCollectionReusableView.self))
        
        let nib = UINib(nibName: String(describing: OuterCollectionViewCell.self), bundle: nil)
        HotelCollectionView.register(nib, forCellWithReuseIdentifier: String(describing: OuterCollectionViewCell.self))
        
        
        let layout = HotelCollectionView.collectionViewLayout as! UICollectionViewFlowLayout
        layout.minimumLineSpacing = 5
        layout.itemSize = CGSize(width:self.view.frame.width - 10 , height: 250)

        
        
        let gesture = UITapGestureRecognizer(target: self, action: #selector (filter (_:)))
        filter.addGestureRecognizer(gesture)
        
        
    }
    
    
    @objc func filter( _ sender : UITapGestureRecognizer) {
        
        let controller = ButtomSheetViewController.instantiate()
        
        let sheetController = SheetViewController(controller: controller, sizes: [.fixed(650), .halfScreen])
        
        sheetController.blurBottomSafeArea = false
        
        sheetController.adjustForBottomSafeArea = true
        
        sheetController.topCornersRadius = 0
        
        sheetController.topCornersRadius = 15
        
        sheetController.dismissOnBackgroundTap = false
        
        sheetController.extendBackgroundBehindHandle = true
        
        sheetController.handleColor = UIColor.white
        
        self.present(sheetController, animated: false, completion: nil)
        
        
    }
    
    

}



extension ExploreViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let item = HotelCollectionView.dequeueReusableCell(withReuseIdentifier: String(describing: OuterCollectionViewCell.self), for: indexPath) as! OuterCollectionViewCell
        return item
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    
    
    
    
}

extension ExploreViewController : UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        
        let sectionHeader = HotelCollectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: String(describing: SectionCollectionReusableView.self), for: indexPath) as! SectionCollectionReusableView
        
        let title = indexPath.section == 0 ? "Top Searches": "Recent Searches"
        sectionHeader.mData = title
        return sectionHeader
        
        
    }
    
    
    
}
