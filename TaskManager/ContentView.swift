//
//  ContentView.swift
//  TaskManager
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI
import SwiftData
struct ContentView: View {
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        ZStack{
            VStack{
                ZStack{
                    VStack {
                        Color(red: 0.8235294117647058, green: 0.9058823529411765, blue: 1.0)
                            .ignoresSafeArea()
                        
                    }
                    
                    VStack{
                        Image("TaskManagerText")
                            .padding(.top)
                        Button {
                            withAnimation {
                                self.showNewTask = true
                            }
                        } label: {
                            Text("Add task")
                        }
//                        RoundedRectangle(cornerRadius: 15)
//                            .frame(width: 350, height: 50)
//                            .padding(.horizontal)
//                            .foregroundColor(.white)
                        List {
                            ForEach(toDos) { toDoItem in
                                
                                HStack{
                                    Text(toDoItem.title)
                                    Spacer()
                                    Image(systemName: "checkmark")
                                        .onTapGesture {
                                            modelContext.delete(toDoItem)
                                        }
                                }
                            }
                            .onDelete(perform: deleteToDo)
                            
                        
                    }
                        .listStyle(.plain)
                        .padding(.horizontal)
                    if showNewTask {
                      NewToDoView(toDoItem: ToDoItem(title: ""), showNewTask: $showNewTask)
                    }
                }
               
                }
            }
        }
    }
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    }
}
             #Preview {
               ContentView()
             }
