//
//  FinanceTracker.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct FinanceTracker: View {
  @State private var numOne = ""
  @State private var numTwo = ""
  private var result: Int { (Int(numOne) ?? 0) + (Int(numTwo) ?? 0) }
  var body: some View {
    ZStack{
      Color(red: 0.8235294117647058, green: 0.905882352411765, blue: 1.0)
        .ignoresSafeArea()
      VStack {
        Image("FinanceManager")
          .resizable(resizingMode: .stretch)
          .aspectRatio(contentMode: .fit)
        ZStack{
          Image("WhiteRect")
            .resizable(resizingMode: .stretch)
            .aspectRatio(contentMode: .fit)
          VStack{
            HStack{
              VStack(alignment: .leading){
              Text("transaction")
              Text("name")
              }
              .offset(y:-210)
              Spacer()
              VStack(alignment: .trailing){
                Text("amount")
                Text("earned/lost")
                  .multilineTextAlignment(.trailing)
              }
              .offset(y:-210)
            }
            .padding([.horizontal], 40)
            HStack{
              TextField("name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
              TextField("$0.00", text: $numOne)
                .keyboardType(.numberPad)
                .multilineTextAlignment(.trailing)
            }
            .offset(y:-190)
            .padding([.horizontal], 50)
            HStack{
              TextField("name", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
              TextField("$0.00", text: $numTwo)
                .keyboardType(.numberPad)
                .multilineTextAlignment(.trailing)
               
            }
            .offset(y:-180)
            .padding([.horizontal], 50)
            Text("✰ sum: \(result)")
              .offset(y:170)
            if numOne != "" && numTwo != "" && result < 0 {
              Text("you might need to save some more.")
                .offset(y:190)
            } else if numOne != "" && numTwo != "" && result > 100 {
              Text("you're doing awesome!")
                .offset(y:190)
            } else if numOne != "" && numTwo != "" {
              Text("good job on saving.")
                .offset(y:190)
            }
               
          }
           
        }
      }
    }
  }
}

#Preview {
  FinanceTracker()
}
