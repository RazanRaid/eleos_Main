//
//  Scrollers.swift
//  eleos_L
//
//  Created by TokaJaber on 08/10/2023.
//

import SwiftUI

struct Scrolleres: View {
    var body: some View {
        ZStack {
            Color.background
                .ignoresSafeArea()
            
            
            ScrollView(showsIndicators: false) {
                VStack(spacing: 20) {
                    ForEach(Forecast.cities) { forecast in
                        HomeWidget(forecast: forecast)
                    }
                }
            }
            .safeAreaInset(edge: .top) {
                EmptyView()
                    .frame(height: 110)
            }
        }
        .overlay {
            Home()
        }
        .navigationBarHidden(true)
    }
}

struct Scrolleres_Previews: PreviewProvider {
    static var previews: some View {
        Scrolleres()
            .preferredColorScheme(.dark )
    }
}

