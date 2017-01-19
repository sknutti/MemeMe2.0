//
//  ListViewController.swift
//  MemeMe2.0
//
//  Created by Scott Knutti on 12/4/15.
//  Copyright © 2015 Scott Knutti. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {
    var memes: [Meme] {
        return (UIApplication.shared.delegate as! AppDelegate).memes
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tabBarController?.tabBar.isHidden = false
        navigationController?.navigationBar.isHidden = false
        tableView!.reloadData()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return memes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "MemeRow")!
        let meme = memes[indexPath.row]
        
        cell.imageView?.image = meme.memedImage
        cell.textLabel?.text = Meme.cutTheMiddleOfLongString(meme.topText + " " + meme.bottomText) 
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let detailController = storyboard!.instantiateViewController(withIdentifier: "MemeDetailViewController") as! MemeDetailViewController
        detailController.meme = memes[indexPath.row]
        navigationController!.pushViewController(detailController, animated: true)
        
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        var memeCollection = memes
        memeCollection.remove(at: indexPath.row)
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appDelegate.memes = memeCollection
        tableView.reloadData()
    }
    
    
}
