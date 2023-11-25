//
//  DropsRequiredView.swift
//  eleos_L
//
//  Created by Razan Raid on 27/08/2023.
//

import SwiftUI

struct DropsRequiredView: View {
    var plant: Plant
    var body: some View {
        ZStack{
            Rectangle()
                .frame(width: 140,height: 45)
                .cornerRadius(10)
                .foregroundColor(Color("bg"))
                
            HStack(alignment: .center, spacing:0){
                ForEach(0..<plant.waterIntake , id: \.self) { index in
                    Image("drop2")
                        .resizable()
                    .frame(width: 20, height: 20)}
            }
        }
    }
}
struct DropsRequiredView_Previews: PreviewProvider {
    static var previews: some View {
        DropsRequiredView(plant: plantsData[0])
    }
}
