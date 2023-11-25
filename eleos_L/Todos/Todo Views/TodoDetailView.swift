//
//  TodoDetailView.swift
//  eleos_L
//
//  Created by Razan Raid on 02/10/2023.
//

import SwiftUI

struct TodoDetailView: View {
    
    var selectedTimeBinding: Binding<Date> {
            Binding<Date>(
                get: { todo.selectedTime ?? Date() },
                set: { todo.selectedTime = $0 }
            )
        }
    
    var selectedDateBinding: Binding<Date> {
            Binding<Date>(
                get: { todo.selectedDate ?? Date() },
                set: { todo.selectedDate = $0 }
            )
        }
    
    @Binding var todo : Todo
    var body: some View {
        Form{
            Section("Details"){
                TextField("Title", text: $todo.title)
                TextField("Subtitle", text: $todo.subtitle)
                Toggle(isOn: $todo.isCompleted) {
                    HStack{
                        Image(systemName: "checkmark")
                        Text("Completed?")
                    }
                }
                Toggle(isOn: $todo.priortise) {
                    HStack{
                        Image(systemName: "calendar.badge.exclamationmark")
                        Text("priortise")
                        
                    }
                }

            
            }
            Section("Due Date"){
                DatePicker("due date", selection: selectedDateBinding
                           , in: Date()..., displayedComponents: .date)
                                .datePickerStyle(GraphicalDatePickerStyle())
                                .labelsHidden()
                                .padding()
                
                DatePicker( "Select a time",selection: selectedTimeBinding, in: Date()..., displayedComponents: .hourAndMinute)
                                          .datePickerStyle(.wheel)
                                          .labelsHidden()
                                          .padding()
                                          .frame(height: 130)
                                          
            }
        }
        .navigationTitle("Todo Details")
    }
    
    struct TodoDetailView_Previews: PreviewProvider {
        static var previews: some View {
            NavigationStack{
                TodoDetailView( todo:.constant( Todo(title: "online shopping", subtitle: "!!!!1!1!1")))
            }
        }
    }
}

