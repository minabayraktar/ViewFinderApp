//
//  PhotoDetailViewController.swift
//  View Finder App
//
//  Created by Apple on 6/25/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class PhotoDetailViewController: UIViewController {
    @IBOutlet weak var secondPhoto: UIImageView!
    var photo : Photos? = nil
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let realPhoto = photo{
            title = realPhoto.caption
            
            if let cellPhotoImageData = realPhoto.imageData {
                if let cellPhotoImage = UIImage(data: cellPhotoImageData){
       secondPhoto.image = cellPhotoImage
                }
            }
        }

        // Do any additional setup after loading the view.
    }
}
