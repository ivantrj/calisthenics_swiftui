//
//  IntroView.swift
//  HybridCalisthenics
//
//  Created by ivan ruwido  on 11.07.23.
//

import SwiftUI

struct IntroView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hybrid Calisthenics App")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                
                // Routine selection component
                Text("Select Routine:")
                    .font(.headline)
                    .padding()
                
                VStack(alignment: .leading) {
                    Text("Routine 2.0")
                        .font(.headline)
                        .padding(.bottom, 8)
                    
                    ForEach(routine.days, id: \.self) { day in
                        Text("\(day): \(routine.exercises[day] ?? "")")
                            .font(.headline)
                            .foregroundColor(.secondary)
                    }
                }
                .padding()
                .background(Color.white)
                .cornerRadius(10)
                .shadow(color: Color.black.opacity(0.2), radius: 4, x: 0, y: 2)
                .padding(.bottom, 16)
                
                // Here, you can add a picker or any other component to allow the user to select the routine
                
                Spacer()
                
                NavigationLink(destination: ReminderView()) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
