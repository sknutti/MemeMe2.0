//
//  Meme.swift
//  MemeMe
//
//  Created by Scott Knutti on 12/2/15.
//  Copyright © 2015 Scott Knutti. All rights reserved.
//

import Foundation
import UIKit

struct Meme {
    var topText: String = ""
    var bottomText: String = ""
    var image: UIImage?
    var memedImage: UIImage?
    static func cutTheMiddleOfLongString(var string:String) -> String {
        if(string.characters.count > 15){
            let beginning = string.substringToIndex(string.startIndex.advancedBy(10))
            let ending = string.substringFromIndex(string.endIndex.advancedBy(-8))
            string = beginning + "..." + ending
        }
        return string
    }
}