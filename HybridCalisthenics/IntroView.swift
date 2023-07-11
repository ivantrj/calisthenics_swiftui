//
//  IntroView.swift
//  HybridCalisthenics
//
//  Created by ivan ruwido  on 11.07.23.
//

import SwiftUI

struct IntroView: View {
    @State var isRoutineTapped = false
    
    var body: some View {
        NavigationView {
            VStack {
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
                .onTapGesture {
                    isRoutineTapped = true
                }
                
                
                Spacer()
                
                NavigationLink(destination: ReminderView(), isActive: $isRoutineTapped) { }
                
                Spacer()
            }
            .navigationBarTitle("Hybrid Calisthenics")
        }
    }
}

struct IntroView_Previews: PreviewProvider {
    static var previews: some View {
        IntroView()
    }
}
