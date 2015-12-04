//
//  MemeDetailViewController.swift
//  MemeMe2.0
//
//  Created by Scott Knutti on 12/4/15.
//  Copyright © 2015 Scott Knutti. All rights reserved.
//

import UIKit

class MemeDetailViewController: UIViewController {
    var meme: Meme!
    
    @IBOutlet weak var detailImageView: UIImageView!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        detailImageView.image = meme.memedImage
    }
}
