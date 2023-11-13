//
//  PlantListView.swift
//  eleos_L
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct PlantListView: View {
    
//    @EnvironmentObject private var dropCounter : DropCounter
    var todoManager = TodoManager()
    var plants: [Plant] = plantsData
    @StateObject var plantManager : PlantManager
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(plants) { plant in
//                    if plant.shouldShowNavigationLink {
                    NavigationLink(destination: PlantDetailView(plants: plantsData, plant: plant, isUnlocked: plant.shouldShowNavigationLink)) {
                        PlantRowView(plant: plant)
                            .opacity(plant.shouldShowNavigationLink ? 1.0 : 0.5)
                    }
                    }// navigation link
                }// list
            .navigationTitle("Plants 🪴୭ ˚.ᵎᵎ")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
                    CounterView(todoManager: todoManager, plantManager: plantManager)
                }
                }

                
            }
        
          

        }
    }
    struct PlantListView_Previews: PreviewProvider {
        static var previews: some View {
            PlantListView(plants: plantsData, plantManager: PlantManager())
//                .environmentObject(DropCounter())
        }
    }

