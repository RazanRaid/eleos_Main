//
//  Counter.swift
//  eleos_L
//
//  Created by Razan Raid on 15/10/2023.
//

import Foundation

class DropCounter: ObservableObject {
    @Published var dropCount: Int = 2
    func minus (_ waterintake : Int){
        dropCount -= waterintake}
    
}


class ProgressData: ObservableObject {
    @Published var progress: Double = 0.0
    @Published var level = 0
}
