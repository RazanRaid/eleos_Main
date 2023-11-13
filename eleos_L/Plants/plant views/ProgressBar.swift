//
//  ProgressBar.swift
//  eleos_L
//
//  Created by Razan Raid on 04/11/2023.
//

import SwiftUI

struct ProgressBar: View {
    var value: Double
    var maxValue: Double
    @EnvironmentObject var progressData: ProgressData
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle()
                    .frame(width: geometry.size.width, height: 30)
                    .opacity(0.4)
                    .foregroundColor(Color("Purple"))
                    .cornerRadius(10)
                
                Rectangle()
                    .frame(width: min(CGFloat(value / maxValue) * geometry.size.width, geometry.size.width), height: 28)
                    .foregroundColor(Color("Purple"))
                    .animation(.linear(duration: 0.3))
                    .cornerRadius(10)
            }
        }
    }
}

#Preview {
    ProgressBar(value: 1, maxValue: 10)
        .environmentObject(ProgressData())
                
}
