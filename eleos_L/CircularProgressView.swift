//
//  CircularProgressView.swift
//  eleos_L
//
//  Created by TokaJaber on 23/08/2023.
//

import SwiftUI

struct CircularProgressView: View {
    
//    @Environment(\.colorScheme) var colorScheme
//    @State private var PlantAnimation = false
    
    var progress: CGFloat
    var plant : Plant
//    var score: Int
//    var totalLevels: Int
    
    var body: some View {
        
        VStack {
            ZStack{
                
                Circle()
                    .stroke(lineWidth: 20)
                    .opacity(0.3)
                    .foregroundColor(Color("Purple"))
                    .padding(25)
                
                    .frame(width: 375, height: 375)
                
                //                    .onAppear{
                //                        if plant.Stages == 1 {
                //                            Image(plant.plantFullPic)
                //                                .resizable()
                //                                .scaledToFit()
                //                                .offset(x: plant.isMonstera ? 10 : 0, y: plant.isMonstera ? -4 : 0)
                //                                .frame(width: 300, height: 300)
                //                                .onAppear(){
                //                                    withAnimation(.easeOut(duration: 0.5)) {
                //                                        PlantAnimation = true
                //                                    }
                //                                }
                //                                .onDisappear(){
                //                                    PlantAnimation = false
                //                                }
                //
                //                        }
                //
                //                    }
                
                Circle()
                    .trim(from: 0, to: CGFloat(progress)/10)
                    .stroke(style: .init(lineWidth: 20.0,lineCap: .round,lineJoin: .round))
                    .foregroundColor(Color("Purple"))
                    .rotationEffect(Angle(degrees: 270))
                    .padding(25)
                
                    .frame(width: 375, height: 375)
                
                
                    Image(plant.FullPic)
                        .resizable()
                        .scaledToFit()
                        .offset(x: plant.isMonstera ? 10 : 0, y: plant.isMonstera ? -4 : 0)
                        .frame(width: 300, height: 300)
                }
            }
        }
            
            
            //            HStack(alignment:.center,spacing:2){
            //                Spacer(minLength: 0)
            //
            //
            //
            //                Button {
            //                    withAnimation{
            //                    }
            //                } label: {
            //                    Image(systemName: "chevron.left")
            //                        .font(.title2)
            //                        .offset(x:-100)
            //                                   }
            //
            //
            //                HStack(alignment: .center){
            //                    Text("your level !")
            //                        .bold()
            //                        .padding()
            //                        .font(.system(size:25))
            //                        .offset(x:-101)
            //
            //                            }
            //
            //
            //
            //                Button {
            //                    withAnimation{
            //
            //                    }
            //                } label: {
            //                    Image(systemName: "chevron.right")
            //                        .font(.title2)
            //                        .offset()
            //                        .offset(x:-100 )
            //
            //
            //
            //                }
            //
            //            }
            
            //            Text("\(score)/\(totalLevels)")
            //                .font(.system(size:25))
            //                .bold()
            //                .padding()
            
        }
        
        
    
    

    
    
    struct CircularProgressView_Previews: PreviewProvider {
        static var previews: some View {
            CircularProgressView(progress: 4, plant: plantsData[0])
        }
    }
    
    

