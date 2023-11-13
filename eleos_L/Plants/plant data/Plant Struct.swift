//
//  Plant Struct.swift
//  eleos_L
//
//  Created by Razan Raid on 27/08/2023.
//

import Foundation
import SwiftUI

struct Plant: Identifiable {
    var id = UUID()
    var Name: String
    
    //pics
    var Pic: String
    var FullPic : String

    //bs
    var Headline: String
    var Description : String
    
    //water
    var dropsNeeded : Int
    var waterIntake : Int
    var progress : Int = 0
    var level : Int
    
    //???
    var isMonstera = false
    var shouldShowNavigationLink: Bool = false
    
    mutating func updateProgress(){
        progress += waterIntake
    }
}
