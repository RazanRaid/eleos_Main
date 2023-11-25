//
//  Todo.swift
//  eleos_L
//
//  Created by Razan Raid on 02/10/2023.
//

import SwiftUI

struct Todo: Identifiable, Codable {
    var id = UUID()
    var title : String
    var isCompleted = false
    var subtitle = ""
    var selectedDate : Date?
    var selectedTime : Date?
    var priortise = false
    var giveDrop = false
    var isOverdue: Bool {
        if let selectedTime = selectedTime {
            let calendar = Calendar.current
            let currentTime = calendar.startOfDay(for: Date())
            return selectedTime  < currentTime
        }
        if let selectedDate = selectedDate {
            let calendar = Calendar.current
            let currentDate = calendar.startOfDay(for: Date())
            return selectedDate  < currentDate
        }
        return false
    }
}
