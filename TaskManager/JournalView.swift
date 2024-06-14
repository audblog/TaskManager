//
//  JournalView.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct JournalView: View {
    @State var hiddenText = ""
    var body: some View {
        ZStack{
            Image("MyJournal")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
            VStack {
                Spacer()
                
                TextField("Start Typing Here!", text: $hiddenText, axis: .vertical)
                // .frame(height: 200)
                    .padding(.all, 43.0)
                    .offset(y: 15)
                
                Spacer()
                
            }
        }
        .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
        Button("Clear!") {
            hiddenText = "" }
        .buttonStyle(.borderedProminent)
        .accentColor(/*@START_MENU_TOKEN@*/Color(red: 0.999, green: 0.651, blue: 0.933)/*@END_MENU_TOKEN@*/)
        
    }
}
    #Preview {
        JournalView()
    }
    
