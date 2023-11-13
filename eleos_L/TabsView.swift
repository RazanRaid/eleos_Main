//
//  TabsView.swift
//  eleos_L
//
//  Created by TokaJaber on 22/08/2023.
//

import SwiftUI

struct TabsView: View {
    @StateObject var todoManager = TodoManager()
    @EnvironmentObject var progressData: ProgressData
    var body: some View {
        
        TabView {
            Scrolleres()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home")
                }
            
                MainTodoListView(todoManager: TodoManager())
                    .tabItem {
                        Image(systemName: "list.bullet.clipboard")
                        Text("Todo")
                    }
                
                PlantListView()
                    .tabItem {
                        Image(systemName: "leaf.fill")
                        Text("Plants")
                    }
//                Schedule()
//                    .tabItem {
//                        Image(systemName: "calendar.badge.clock")
//                        Text("Schedule")
//                    }
            }
            
        }
        
        
    }
    
    

struct TabsView_Previews: PreviewProvider {
    static var previews: some View {
        TabsView()
            .environmentObject(DropCounter())
            .environmentObject(ProgressData())

    }
}
