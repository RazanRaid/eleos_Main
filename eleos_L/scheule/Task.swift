//
//  Task.swift
//  eleos_L
//
//  Created by TokaJaber on 25/08/2023.
//

import SwiftUI

struct Task: Identifiable{
    var id = UUID().uuidString
    var title: String
    var time: Date = Date()
}

struct TaskMateData: Identifiable{
    var id = UUID().uuidString
    var task: [Task]
    var taskDate: Date
}

func getSampleDate(offset: Int)->Date{
    let calender = Calendar.current
    
    let date = calender.date(byAdding: .day, value: offset, to: Date())
    
    return date ?? Date()
}

var tasks: [TaskMateData] = [

    TaskMateData(task: [
        
        Task(title: "Finish ios"),
        Task(title: "study for senior year"),
        Task(title: "workout")
    ], taskDate: getSampleDate(offset: 1)),
    TaskMateData(task: [
        
        Task(title: "make cookies")
    ], taskDate: getSampleDate(offset: -8)),
    TaskMateData(task: [
        
        Task(title: "GO Shoppin")
    ], taskDate: getSampleDate(offset: 10)),
    TaskMateData(task: [
        
        Task(title: "Moms birthday")
    ], taskDate: getSampleDate(offset: -22)),
    TaskMateData(task: [
        
        
        Task(title: "univeristy meeting")
    ], taskDate: getSampleDate(offset: 15)),
    TaskMateData(task: [
        
        Task(title: "project deadline")
    ], taskDate: getSampleDate(offset: -20)),
  
        
        ]
        

                 
    


