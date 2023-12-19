//
//  HomeWidget.swift
//  eleos_L
//
//  Created by TokaJaber on 08/10/2023.
//

import SwiftUI

struct HomeWidget: View {
    var forecast: Forecast
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Trapezoid()
                .fill(Color.weatherWidgetBackground)
                .frame(width: 342, height: 174)
            
            HStack(alignment: .bottom) {
                VStack(alignment: .leading, spacing: 8) {
                    Text("Consistency")
                        .font(.system(size: 35))
                    VStack(alignment: .leading, spacing: 2) {
                        Text("")
                            .font(.footnote)
                            .foregroundColor(.white)
                        
                        
                        Text(forecast.location)
                            .font(.body)
                            .lineLimit(1)
                            .offset(y: -15)
                    }
                    
                }
                Spacer()
                
                VStack(alignment: .trailing, spacing: 0) {
                    Image("\(forecast.icon) large")
                        .padding(.trailing, 4)
                    
                    
                    Text("")
                        .font(.footnote)
                        .padding(.trailing, 24)
                }
                
            }
            
            .foregroundColor(.white)
            .padding(.bottom, 20)
            .padding(.leading, 20)
        }
        .frame(width: 342, height: 184, alignment: .bottom)
        
    }
    
}

struct HomeWidget_Previews: PreviewProvider {
    static var previews: some View {
        HomeWidget(forecast: Forecast.cities[0])
            .preferredColorScheme(.dark)
    }
}

