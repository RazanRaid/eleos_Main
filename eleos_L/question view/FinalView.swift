//
//  FinalView.swift
//  eleos_L
//
//  Created by TokaJaber on 22/08/2023.
//

import SwiftUI

struct FinalView: View {
    var body: some View {
        VStack(spacing: 10 ) {
           Text("💧")
                .offset(x:10,y:-50)
                .font(.system(size:150))
            
            Text("+4")
                .bold()
                .padding(5)
                .accentColor(.black)
                .dynamicTypeSize(.xLarge)
            Text("you have earned 4 drops !")
                .bold()
                .padding(5)
                .accentColor(.black)
                .dynamicTypeSize(.xLarge)
           
            
            NavigationLink(destination: TabsView(), label: {
                      Text("Next")
                  })
            
            .foregroundColor(.white)
            .frame(width: 300, height: 50)
            .background(Color.blue)
            .cornerRadius(10)
            
            }
        .navigationBarHidden(true)
        
      

        } 
    }

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}

