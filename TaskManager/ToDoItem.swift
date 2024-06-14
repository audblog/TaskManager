//
//  ToDoItem.swift
//  TaskManager
//
//  Created by Scholar on 6/12/24.
//

import Foundation
//import SwiftUI
import SwiftData

@Model
class ToDoItem {
    var title : String
    
    init(title: String) {
        self.title = title
    }
}
    
