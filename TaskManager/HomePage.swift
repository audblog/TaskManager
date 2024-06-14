//
//  HomePage.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//


//testtestestplswork

import SwiftUI

struct HomePage: View {
    var body: some View{
        NavigationStack() {
            
            ZStack {
                LinearGradient(gradient: Gradient(colors: [Color(red: 205 / 255, green: 180 / 255, blue: 219 / 255), Color(red: 189 / 255, green: 224 / 255, blue: 254 / 255)]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)
                    .cornerRadius(15)
                    .ignoresSafeArea()
                //        Rectangle()
                RoundedRectangle(cornerRadius: 25.0)
                    .foregroundColor(.white)
                    .padding(.horizontal)
                VStack {
                    
                    Image("TeenageStarTitle")
                        .resizable(resizingMode: .stretch)
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal, 25.0)
                        .offset(y:10)
                    
                    Text("Helping teenage girls reach for the stars")
                        .font(.headline)
                        .fontWeight(.bold)
                        .padding(8.0)
                    NavigationLink(destination: StressManagementView()) {
                        Text("Stress Management")
                            .foregroundColor(Color.black)
                            .padding(.all, 25.0)
                    }
                    .frame(width:360.0,height:100.0)
                    .background(Color(red: 1.0, green: 0.816, blue: 0.966))
                    .cornerRadius(15)
                    .padding(.all, 20.0)
                    .font(.title2)
                    NavigationLink(destination: ProductivityView()) {
                        Text("Productivity")
                            .foregroundColor(Color.black)
                    }
                    .frame(width: 360.0,height:100.0)
                    .background(Color(red: 0.824, green: 0.904, blue: 1.001))
                    .cornerRadius(15)
                    .padding(.all, 30.0)
                    .font(.title2)
                    
                    
                    NavigationLink(destination: AdviceandTipsView()) {
                        Text("Advice and Tips")
                            .foregroundColor(Color.black)
                    }
                    .frame(width: 360.0, height: 100.0)
                    .background(Color(red: 0.845, green: 0.811, blue: 0.999))
                    .cornerRadius(15)
                    .padding(.all)
                    .font(.title2)
                    
                    
                    
                    Text("Believe you can and your already halfway there - Theodore Roosevelt")
                        .multilineTextAlignment(.center)
                        .padding([.top, .leading, .trailing], 36.0)
                        .italic()
                    Spacer()
                    
                }
            }
        }
    }
        
    }

#Preview {
    HomePage()
}
