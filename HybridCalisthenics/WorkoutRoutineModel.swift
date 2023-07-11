//
//  WorkoutRoutineModel.swift
//  HybridCalisthenics
//
//  Created by ivan ruwido  on 11.07.23.
//

import Foundation

// Workout Routine Model
struct WorkoutRoutine {
    let days: [String]
    let exercises: [String: String]  // Dictionary of exercise name and sets

    init(days: [String], exercises: [String: String]) {
        self.days = days
        self.exercises = exercises
    }
}

// Predefined Routine Data
let routine = WorkoutRoutine(days: ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"], exercises: [
    "Monday": "Pushups: 2-3 Sets\nLeg Raises: 2-3 Sets",
    "Tuesday": "Pullups: 2-3 Sets\nSquats: 2-3 Sets",
    "Wednesday": "Bridges: 2-3 Sets\nTwists: 2-3 Sets",
    "Thursday": "Pushups: 2-3 Sets\nLeg Raises: 2-3 Sets",
    "Friday": "Pullups: 2-3 Sets\nSquats: 2-3 Sets",
    "Saturday": "Bridges: 2-3 Sets\nTwists: 2-3 Sets",
    "Sunday": "Rest and Stretch"
])
