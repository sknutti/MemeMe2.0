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
        tabBarController?.tabBar.hidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let editButton = UIBarButtonItem(title: "Edit", style: .Plain, target: self, action: "editCurrentMeme")
        navigationItem.rightBarButtonItem = editButton
    }
    
    func editCurrentMeme() {
        let editorController = self.storyboard!.instantiateViewControllerWithIdentifier("ViewController") as! ViewController
        editorController.meme = meme
        self.navigationController!.pushViewController(editorController, animated: true)
    }
    
}
