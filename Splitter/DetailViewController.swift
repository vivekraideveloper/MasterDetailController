//
//  DetailViewController.swift
//  Splitter
//
//  Created by Vivek Rai on 18/01/19.
//  Copyright © 2019 Vivek Rai. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imageItem: UIImageView!
    
    var image: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageItem.image = image
        
    }
    

   


}

