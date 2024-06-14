//
//  BreathingExercises.swift
//  TaskManager
//
//  Created by Scholar on 6/13/24.
//

import SwiftUI

struct BreathingExercises: View {
        @State var isTimerRunning = false
        @State private var startTime = Date()
        @State private var timerString = "0.00"
        let timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
      var body: some View {
        ZStack{
          Color(red: 1.0, green: 0.8156862745098039, blue: 0.9647058823529412)
            .ignoresSafeArea()
    //     RoundedRectangle(cornerRadius:15)
    //       .foregroundColor(.white)
          ScrollView {
            VStack(spacing: 20.0) {
              Text("Breathing Exercises")
                .font(.custom("Shrikhand-Regular", fixedSize: 30))
              Text(self.timerString)
                    .font(Font.system(.largeTitle, design: .monospaced))
                    .onReceive(timer) { _ in
                     if self.isTimerRunning {
                      timerString = String(format: "%.2f", (Date().timeIntervalSince( self.startTime)))
                     }
                    }
                    .onTapGesture {
                     if !isTimerRunning {
                      timerString = "0.00"
                      startTime = Date()
                     }
                     isTimerRunning.toggle()
                }
              HStack(spacing: 20.0) {
                Image("PursedLipBreathing")
                  .resizable(capInsets: EdgeInsets(top: -25.0, leading: 0.0, bottom: -20.0, trailing: 0.0), resizingMode: .stretch)
                  .cornerRadius(15)
                  .aspectRatio(contentMode: .fit)
                  .padding(.all, 15)
                  .frame(width: 200, height: 200)
                  VStack{
                      Text("★Improves overall emotional well-being by reducing anxiety levels")
                          .font(.custom("Shrikhand-Regular", fixedSize: 10))
                      Text("★Enhances mindfulness and present moment awareness ")
                          .font(.custom("Shrikhand-Regular", fixedSize: 10))
                  }
              }
              HStack(spacing: 20.0) {
                Image("alternate")
                  .resizable(capInsets: EdgeInsets(top: -25.0, leading: 0.0, bottom: -20.0, trailing: 0.0), resizingMode: .stretch)
                  .cornerRadius(15)
                  .aspectRatio(contentMode: .fit)
                  .padding(.all, 15)
                  .frame(width: 200, height: 200)
                Text("★Balances brain hemispheres,clears the mind                  ★Enhances focus, regulates energy flow ")
                  .font(.custom("Shrikhand-Regular", fixedSize: 10))
              }
              HStack(spacing: 20.0) {
                Image("4-7-8")
                  .resizable(capInsets: EdgeInsets(top: -25.0, leading: 0.0, bottom: -20.0, trailing: 0.0), resizingMode: .stretch)
                  .cornerRadius(15)
                  .aspectRatio(contentMode: .fit)
                  .padding(.all, 15)
                  .frame(width: 200, height: 200)
                Text("★Calms the nervous system, reduces stress                 ★Promotes relaxation, aids better sleep")
                  .font(.custom("Shrikhand-Regular", fixedSize: 10))
              }
              HStack(spacing: 20.0) {
                Image("diaphragmatic")
                  .resizable(capInsets: EdgeInsets(top: -23.0, leading: 0.0, bottom: -20.0, trailing: 0.0), resizingMode: .stretch)
                  .cornerRadius(15)
                  .aspectRatio(contentMode: .fit)
                  .padding(.all, 15)
                Text("★Promotes relaxation by triggering the body's relaxation response                     ★Enhances oxygenation by allowing for more efficient oxygen exchange in lungs")
                  .font(.custom("Shrikhand-Regular", fixedSize: 10))
              }
              HStack(spacing: 20.0) {
                Image("lion")
                  .resizable(capInsets: EdgeInsets(top: -23.0, leading: 0.0, bottom: -20.0, trailing: 0.0), resizingMode: .stretch)
                  .cornerRadius(15)
                  .aspectRatio(contentMode: .fit)
                  .padding(.all, 15)
                Text("★Relieves tension in the face,throat,and chest                ★Stimulates the throat chakra, promoting communication and boosting mood")
                  .font(.custom("Shrikhand-Regular", fixedSize: 10))
              }
            }
          }
        }
      }
    }
    struct BreathingExercises_Previews: PreviewProvider {
      static var previews: some View {
        BreathingExercises()
      }
    }
#Preview {
    BreathingExercises()
}
