//
//  PlantHeaderView.swift
//  eleos_L
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct PlantHeaderView: View {
    
    var plant : Plant
    @Environment(\.colorScheme) var colorScheme

    
    @State private var PlantAnimation = false
    
    var body: some View {
        ZStack{
            Image(colorScheme == .dark ? "bg 2":"bg 1")
                .resizable()
                .scaledToFit()
                .frame(width: 400, height: 400)
            
//            CircularProgressView(progress: 1, score: 2, totalLevels: 3)
//                .scaledToFit()
//                .padding(20)
//                .scaleEffect(PlantAnimation ? 1.0 : 0.6)
//                .onAppear(){
//                    withAnimation(.easeOut(duration: 0.5)) {
//                        PlantAnimation = true
//                    }
//                    
//                }
//                .onDisappear(){
//                    PlantAnimation = false
//                }

            
            Image(plant.FullPic)
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding(20)
                .scaleEffect(PlantAnimation ? 1.0 : 0.6)
            

                .onAppear(){
                    withAnimation(.easeOut(duration: 0.5)) {
                        PlantAnimation = true
                    }

                }
                .onDisappear(){
                    PlantAnimation = false
                }
        }
    }
}

struct PlantHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        PlantHeaderView(plant: plantsData[0])
    }
}
