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
    static func cutTheMiddleOfLongString(_ string:String) -> String {
        var string = string
        if(string.characters.count > 15){
            let beginning = string.substring(to: string.characters.index(string.startIndex, offsetBy: 10))
            let ending = string.substring(from: string.characters.index(string.endIndex, offsetBy: -8))
            string = beginning + "..." + ending
        }
        return string
    }
}
