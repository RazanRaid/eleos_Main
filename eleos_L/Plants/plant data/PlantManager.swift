//
//  PlantManager.swift
//  eleos_L
//
//  Created by Razan Raid on 13/11/2023.
//

import Foundation
import SwiftUI

class PlantManager: ObservableObject {
    @Published var plants : [Plant] = [
       Plant(Name: "Monstera", Pic: "monstera icon",FullPic: "monstera2", Headline: "Vibrant greenery and iconic splits converge for a touch of natural artistry.",
             Description: "Monstera deliciosa, commonly called split-leaf philodendron or swiss cheese , is a climbing, evergreen perennial vine that is perhaps most noted for its large glossy leaves that are dissected with deep splits and perforated with oblong holes. Does not have to be watered very often.", dropsNeeded: 10, waterIntake: 2, level: 1, isMonstera: true,shouldShowNavigationLink: true),
       
       Plant (Name: "Peace Lily", Pic: "peace lily icon",
              FullPic: "peace lily2", Headline: "Elegant white blooms and lush foliage.",
              Description: "Peace lilies are sturdy, easy to grow plants with glossy, dark green oval leaves that narrow to a point. The leaves rise directly from the soil. These s also periodically produce lightly fragrant white flowers that resemble calla lilies! they should be carefully watered.", dropsNeeded: 20, waterIntake: 3, level: 2),
       
       Plant (Name: "Lavender", Pic: "lavender icon",
              FullPic: "lavender2", Headline: "Dreamy purple blooms that create a tranquil haven.",
              Description: "This is a semi-woody plant that typically grows Narrow, gray-green leaves. Purple flowers appear in terminal spikes in late spring to early summer. Both foliage and flowers are highly aromatic. water generously!", dropsNeeded: 40, waterIntake: 4, level: 3),
       
       Plant (Name: "Snake Plant", Pic: "snake plant icon",FullPic: "snake plant2", Headline: "Sword-like leaves that effortlessly blend strength and elegance.",
              Description: "Snake plant is also called Mother in law’s tongue probably because of its sharp-edged leaves. This is the ultimate plant in lazy person’s landscaping. It’s drought tolerant so you don’t have to water it very often.", dropsNeeded: 30, waterIntake: 1, level: 4),
       
       Plant (Name: "Prayer Plant ", Pic: "Prayer plant icon",
              FullPic: "prayer plant2", Headline: "Delicately-patterned leaves that seem to dance with life.", Description: "A perennial tropical plant that displays variegated oval-shaped leaves with smooth edges, which fold upward during the night, resembling hands held in prayer. these delicate plans thrive with frequent watering , so make sure to fulfill its water intake needs!", dropsNeeded: 50, waterIntake: 5, level: 4),
        ]
    
    
    
 // dropcounter
    @AppStorage("drop counter") var dropCount: Int = 1000
    
    func minusDrops (_ waterintake : Int){
        dropCount -= waterintake}

    @AppStorage ("plant level") var level = 0

    //
    
    
//        didSet {
//            save()
//        }
//    }
        
    init() {
//        load()
    }

    func getArchiveURL() -> URL {
        let plistName = "plants.plist"
        let documentsDirectory = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!
        
        return documentsDirectory.appendingPathComponent(plistName)
    }
    
    func save() {
        let archiveURL = getArchiveURL()
        let propertyListEncoder = PropertyListEncoder()
        let encodedPlants = try? propertyListEncoder.encode(plants)
        try? encodedPlants?.write(to: archiveURL, options: .noFileProtection)
    }
    
    func load() {
        let archiveURL = getArchiveURL()
        print(archiveURL)
        let propertyListDecoder = PropertyListDecoder()
                
        if let retrievedTodoData = try? Data(contentsOf: archiveURL),
            let PlantsDecoded = try? propertyListDecoder.decode([Plant].self, from: retrievedTodoData) {
            plants = PlantsDecoded
        }
    }
}

