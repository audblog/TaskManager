//
//  ToDoItemView.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct ToDoItemView: View {
    @Environment(\.modelContext) private var context
        var item: ToDoItem
        
        var body: some View {
            HStack {
                Image(systemName: item.isDone ? "checkmark.circle.fill" : "circle")
                    .foregroundColor(item.isDone ? .green : .gray)
                    .onTapGesture {
                        item.isDone.toggle()
                    }
                Text(item.title)
                    .strikethrough(item.isDone)
                Spacer()
                Image(systemName: "trash")
                    .foregroundColor(.red)
                    .onTapGesture {
                        context.delete(item)
                    }
            }
            .padding()
        }
    }
#Preview {
    ToDoItemView(item: <#ToDoItem#>)
}
