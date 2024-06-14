//
//  NewToDoView.swift
//  TaskManager
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI
import SwiftData

struct NewToDoView: View {
    @Bindable var toDoItem: ToDoItem
    @Binding var showNewTask: Bool
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        VStack{
            ZStack{
                RoundedRectangle(cornerRadius: 15.0)
                    .frame(width:380, height: 100)
                    .foregroundColor(.white)
                VStack{
                    Text("Task Title:")
                    TextField("enter task description", text: $toDoItem.title, axis: .vertical)
                        .padding(.horizontal)
                    Button {
                        addToDo()
                        self.showNewTask = false
                    } label: {
                            Text("Save")
                    }
                }
            }
        }
        
    }
    func addToDo() {
        let toDo = ToDoItem(title: toDoItem.title)
        modelContext.insert(toDo)
    }
}

//#Preview {
//    NewToDoView()
//}
