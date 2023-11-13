//
//  CounterView.swift
//  eleos_L
//
//  Created by Razan Raid on 02/10/2023.
//

import SwiftUI

struct CounterView: View {
    
    @ObservedObject var todoManager : TodoManager
//    @EnvironmentObject var dropCounter : DropCounter
    @ObservedObject var plantManager : PlantManager
    @State var todosDone : Int = 0
    
    var body: some View {
            
            ZStack{
                Rectangle()
                    .frame(width: 90,height: 50)
                    .cornerRadius(6)
                    .foregroundColor(Color("bg"))
                HStack{
                    Image("drops")
                        .resizable()
                        .frame(width: 40,height: 40)
                    Text("\(plantManager.dropCount)")
                        .onAppear() {
                            for var todo in todoManager.todos{
                                if todo.giveDrop && todo.isCompleted {
                                    withAnimation{
                                        plantManager.dropCount+=1}
                                    todo.giveDrop = false
                                }
                            }
                            
                        }
                    
                }
            }
            
        
    }
    
}
struct CounterView_Previews: PreviewProvider {
    static var previews: some View {
        CounterView(todoManager: TodoManager(), plantManager: PlantManager())
//            .environmentObject(DropCounter())
    }
}
