//
//  HomeSdhedule.swift
//  eleos_L
//
//  Created by TokaJaber on 25/08/2023.
//

import SwiftUI

struct HomeSdhedule: View {
    
    
    @State var currentDate: Date = Date()
    
    var body: some View {

            ScrollView(.vertical, showsIndicators: false) {
                
                VStack(spacing: 20){
                    
                    CustomDataPicker(currentDate: $currentDate)
                }
                .padding(.vertical)
            }
            .safeAreaInset(edge: .bottom) {
                
                HStack{
                    Button {
                        
                    } label: {
                        Text("Add Task")
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(Color("Orange"),in: Capsule())
                    }
                    
                    Button {
                        
                    } label: {
                        Text("Add Reminder")
                            .fontWeight(.bold)
                            .padding(.vertical)
                            .frame(maxWidth: .infinity)
                            .background(Color("Purple"),in: Capsule())
                    }
                    
                    
                }
                
                .padding(.horizontal)
                .padding(.top,10)
                .foregroundColor(.white)
                .background(.ultraThinMaterial)
            }
            
        }
    }


struct HomeSdhedule_Previews: PreviewProvider {
    static var previews: some View {
        HomeSdhedule()
    }
}
