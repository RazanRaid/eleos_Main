//
//  CreateTodoView.swift
//  eleos_L
//
//  Created by Razan Raid on 02/10/2023.
//

import SwiftUI

struct CreateTodoView: View {
    
    @State var newTitle = ""
    @State var newSubtitle = ""
    @Binding var sourceArray : [Todo]
    @Environment (\.dismiss) var goAway
    
    var body: some View {
        Form{
            Section ("new todo details"){
                TextField("title", text: $newTitle)
                TextField("subtitle", text: $newSubtitle)
            }
            
            Section{
                Button("save"){
                    let newTodo = Todo(title: newTitle, subtitle: newSubtitle)
                    sourceArray.append(newTodo)
                    goAway()
                }
                Button("cancel",role: .destructive){
                    goAway()
                }
            }
        }
    }
}
struct CreateTodoView_Previews: PreviewProvider {
    static var previews: some View {
        CreateTodoView(sourceArray:.constant([]))
    }
}
