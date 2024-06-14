//
//  TaskManagerApp.swift
//  TaskManager
//
//  Created by Scholar on 6/12/24.
//

import SwiftUI
import SwiftData

@main
struct TaskManagerApp: App {
    var body: some Scene {
        WindowGroup {
            HomePage()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
