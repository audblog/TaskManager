//
//  AdviceandTipsView.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct AdviceandTipsView: View {
    var body: some View {
        ZStack {
              (Color(red: 0.8470588235294118, green: 0.8117647058823529, blue: 1.0))
                .ignoresSafeArea()
              VStack {Image("AdviceAndTips")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                Image("descriptionPart")
                  .resizable(resizingMode: .stretch)
                  .aspectRatio(contentMode: .fit)
                Spacer()
                ZStack{
        //list background
                  RoundedRectangle(cornerRadius: 15)
                    .padding(15)
                    .foregroundColor(.white)
                    .frame(height: 600)
                  VStack {
                    Text("Finance Tips!")
                      .font(.headline)
                      .fontWeight(.black)
                      .padding(.vertical, 1.0)
                    Text("Don't spend all your money in one place")
                      .padding(.vertical, 1.0)
                    Text("Avoid making impulse purchases")
                      .padding(.vertical, 1.0)
                    Text("Start saving for college!")
                      .padding(.vertical, 1.0)
             
                    Text("Productivity Advice")
                      .font(.headline)
                      .fontWeight(.black)
                      .padding(.vertical, 2.0)
                    Text("Give yourself breaks")
                      .padding(.bottom, 2.0)
                    Text("7+ hours of sleep")
                      .padding(.vertical, 1.0)
                    Text("To do lists are key to tracking tasks!")
                      .padding(.vertical, 1.0)
                    Text("Organization is key!")
                      .padding(.vertical, 1.0)
                    Text("Grades don't define you!")
                      .padding(.vertical, 2.0)
                    Text("Try not to procrastinate, just get it done!")
                    Text("Beauty/Self Care Tips!")
                      .font(.headline)
                      .fontWeight(.black)
                      .padding(.vertical, 2.0)
                    Text("You are beautiful in your own way")
                      .padding(.vertical, 1.0)
                    Text("Drink water + healthy sleep schedule")
                      .padding(.vertical, 1.0)
                    Text("Take care of your skin with a set routine")
                      .padding(.vertical, 1.0)
                    Text("Take care of yourself before others")
                    Text("Have a balanced diet ")
                      .padding(.vertical, 1.0)
                    Text("Find a routine that works for you")
                      .padding(.vertical, 1.0)
                     
                  }
                }
                 
              }
            }
             
          }
        }

#Preview {
    AdviceandTipsView()
}
