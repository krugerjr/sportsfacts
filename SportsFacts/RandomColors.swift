//
//  RandomColors.swift
//  SportsFacts
//
//  Created by jordan kruger on 3/21/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit

struct RandomColors {
    let colors = [
        UIColor(red:0/255.0, green:0/255.0, blue:128/255.0, alpha:1.0), // navy blue color
        UIColor(red:255/255.0, green:255/255.0, blue:0/255.0, alpha:1.0), // yellow color
        UIColor(red:255/255.0, green:0/255.0, blue:0/255.0, alpha:1.0), // red color
        UIColor(red:255/255.0, green:69/255.0, blue:0/255.0, alpha:1.0), // orange-red color
        UIColor(red:128/255.0, green:0/255.0, blue:128/255.0, alpha:1.0), // purple color
        UIColor(red:0/255.0, green:255/255.0, blue:0/255.0, alpha:1.0) // lime color
]
    
    func getRandomColor() -> UIColor {
        let randomNumber = GKRandomSource.sharedRandom().nextIntWithUpperBound(colors.count)
        return colors[randomNumber]
    }
    
}