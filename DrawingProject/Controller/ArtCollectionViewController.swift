//
//  ArtCollectionViewController.swift
//  DrawingProject
//
//  Created by Torres, Ethan on 11/9/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

private let reuseIdentifier = "artIdentifier"

public class ArtCollectionViewController: UICollectionViewController
{
    
    private let sectionInsets = UIEdgeInsets(top: 50.0, left: 20.0, bottom: 50.0, right: 20.0)
    private let itemsPerRowCompact : CGFloat = 4
    private let itemsPerRowNormal : CGFloat = 6
    
    private let creativeCS : [UIImage?] =
    {
        return [
            UIImage(named: "water"),
            UIImage(named: "snow"),
            UIImage(named: "space"),
            UIImage(named: "satan")
        ]
    }()
    
    private let lavels : [String] =
    {
        return [
        "this",
        "needs",
        "to",
        "be",
        "one",
        "with",
        "creativeCS",
        "above"
        ]
    }()
    
    
    public override func viewDidLoad() -> Void
    {
        super.viewDidLoad()
    }
    
    public override func numberOfSections(in collectionView: UICollectionView) -> Int
    {
        return 1
    }
    
    public override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return creativeCS.count
    }
    
    public override func collectionView(_ collectionView: UICollectionView,
                                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell
    {
        let imageView = UIImageView(image: creativeCS[indexPath.row])
        imageView.frame = self.view.frame
        imageView.backgroundColor = .cyan
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(dismissFullscreenImage))
        imageView.addGestureRecognizer(tap)
        
        self.view.addSubview(imageView)
    }
    
    public func collectionView (_ collectionView: UICollectionView,
                                layout collectionViewLayout: UICollectionViewLayout,
                                sizeForItemAt indexPath: IndexPath) -> CGSize
    {
        
        let paddingSpace = sectionInsets.left * (itemsPerRowCompact + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRowCompact
        
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    
    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               insetForSectionAt section: Int) -> UIEdgeInsets
    {
        return sectionInsets
    }
    
    {
        {    public func collectionView(_ collectionView: UICollectionView,
                               layout collectionViewLayout: UICollectionViewLayout,
                               minimumLineSpacingForSectionAt section: Int) -> CGFloat
    
}
}
