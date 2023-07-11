//
//  ExerciseRow.swift
//  HybridCalisthenics
//
//  Created by ivan ruwido  on 11.07.23.
//

import SwiftUI

struct ExerciseRow: View {
    @State var isCompleted: Bool
    let exercise: Exercise

    var body: some View {
        HStack {
            Image(systemName: isCompleted ? "checkmark.square.fill" : "square")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(isCompleted ? .green : .primary)
                .onTapGesture {
                    isCompleted.toggle()
                }

            Text(exercise.name)
                .font(.headline)
                .foregroundColor(isCompleted ? .secondary : .primary)
        }
    }
}

struct ExerciseRow_Previews: PreviewProvider {
    @State static var isCompleted: Bool = false

    static var previews: some View {
        ExerciseRow(isCompleted: isCompleted, exercise: Exercise(name: "Pushups: 2-3 Sets"))
    }
}
