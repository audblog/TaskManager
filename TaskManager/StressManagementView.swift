//
//  StressManagementView.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct StressManagementView: View {
  var body: some View {
    NavigationStack{
    ZStack{
      VStack {
        Color(red: 1.0, green: 0.8156862745098039, blue: 0.9647058823529412)
          .ignoresSafeArea()
      }
      Image("SMContentHolderWithText")
        .resizable(resizingMode: .stretch)
        .aspectRatio(contentMode: .fit)
        .padding(.horizontal)
        NavigationLink(destination: BreathingExercises()){
          VStack{
            Image("BreathingEx")
              .resizable()
                    .scaledToFit()
                    .frame(width: 325, height: 325)
              .offset(y: 150)

            NavigationLink(destination: JournalView()){
              Image("Journaling")
                .resizable()
                      .scaledToFit()
                      .frame(width: 325, height: 325)
            }
          }
        }
      }
    }
  }
}
    

#Preview {
  StressManagementView()
}
