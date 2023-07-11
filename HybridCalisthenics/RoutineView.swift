//
//  RoutineView.swift
//  HybridCalisthenics
//
//  Created by ivan ruwido  on 11.07.23.
//

import SwiftUI

struct Exercise: Identifiable {
    let id = UUID()
    let name: String
    var isCompleted: Bool = false
}

struct Day: Identifiable {
    let id = UUID()
    let name: String
    var exercises: [Exercise]
}

struct RoutineView: View {
    @State var isCompleted: Bool
    

    let days: [Day] = [
        Day(name: "Monday", exercises: [
            Exercise(name: "Pushups: 2-3 Sets"),
            Exercise(name: "Leg Raises: 2-3 Sets")
        ]),
        Day(name: "Tuesday", exercises: [
            Exercise(name: "Pullups: 2-3 Sets"),
            Exercise(name: "Squats: 2-3 Sets")
        ]),
        Day(name: "Wednesday", exercises: [
            Exercise(name: "Bridges: 2-3 Sets"),
            Exercise(name: "Twists: 2-3 Sets")
        ]),
        Day(name: "Thursday", exercises: [
            Exercise(name: "Pushups: 2-3 Sets"),
            Exercise(name: "Leg Raises: 2-3 Sets")
        ]),
        Day(name: "Friday", exercises: [
            Exercise(name: "Pullups: 2-3 Sets"),
            Exercise(name: "Squats: 2-3 Sets")
        ]),
        Day(name: "Saturday", exercises: [
            Exercise(name: "Bridges: 2-3 Sets"),
            Exercise(name: "Twists: 2-3 Sets")
        ]),
        Day(name: "Sunday", exercises: [
            Exercise(name: "Rest and Stretch")
        ])
    ]

    var body: some View {
        List(days) { day in
            Section(header: Text(day.name)) {
                ForEach(day.exercises) { exercise in
                    ExerciseRow(isCompleted: isCompleted, exercise: exercise)
                }
            }
        }
        .listStyle(GroupedListStyle())
        .navigationBarTitle("Routine", displayMode: .inline)
    }
}

struct RoutineView_Previews: PreviewProvider {
    static var previews: some View {
        RoutineView(isCompleted: false)
    }
}
