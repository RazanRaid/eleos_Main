//
//  PlantRowView.swift
//  eleos_L
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct PlantRowView: View {
    
    var plant : Plant
    
    var body: some View {
        HStack{
            Image(plant.Pic)
                .resizable()
                .scaledToFit()
                .frame(width: 100,height: 100)
            
            VStack(alignment: .leading, spacing: 5){
                Text(plant.Name)
                    .font(.title2)
                    .bold()
                    
                
                Text(plant.Headline)
                    .font(.callout)
                    .foregroundColor(Color("font"))
                    .opacity(0.7)
                
                
            }
            
            
        }//hstack
    }
}

struct PlantRowView_Previews: PreviewProvider {
    static var previews: some View {
        PlantRowView(plant: plantsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
