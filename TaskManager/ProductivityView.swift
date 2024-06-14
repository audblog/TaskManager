//
//  ProductivityView.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct ProductivityView: View {
  var body: some View {
    NavigationStack{
      ZStack{
        VStack {
          Color(red: 0.8235294117647058, green: 0.9058823529411765, blue: 1.0)
            .ignoresSafeArea()
        }
        Image("ProductivityPage")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
          .padding(.horizontal)
        VStack{
          NavigationLink(destination: ContentView()){
             
            Image("TaskManagerImg")
              .resizable()
              .scaledToFit()
              .frame(width: 325, height: 325)
              .offset(y: 150)
          }
          NavigationLink(destination: FinanceTracker()){       Image("FinanceTrackerImg")
              .resizable()
              .scaledToFit()
              .frame(width: 325, height: 325)
          }
        }
      }
    }
  }
}

#Preview {
  ProductivityView()
}
