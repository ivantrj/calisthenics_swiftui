//
//  ReminderView.swift
//  HybridCalisthenics
//
//  Created by ivan ruwido  on 11.07.23.
//

import SwiftUI

struct ReminderView: View {
    @State private var isReminderEnabled = false
    @State private var reminderTime = Date()
    @State private var showReminderConfirmation = false

    var body: some View {
        VStack {
            Text("Reminder Settings")
                .font(.largeTitle)
                .bold()
                .padding()

            Toggle("Enable Reminder", isOn: $isReminderEnabled)
                .padding()
                .font(.headline)

            if isReminderEnabled {
                DatePicker("Reminder Time", selection: $reminderTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(WheelDatePickerStyle())
                    .padding(.horizontal)
                    .labelsHidden()
                    .onChange(of: reminderTime) { _ in
                        showReminderConfirmation = true
                    }
            }

            if showReminderConfirmation {
                Text("You will be reminded every day at \(timeString(from: reminderTime))")
                    .font(.subheadline)
                    .padding()
            }

            Spacer()

            HStack {
                Spacer()

                Button(action: {
                    // Handle skip action
                }) {
                    Text("Skip")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.gray)
                        .cornerRadius(10)
                }
                .padding(.trailing, 16)

                NavigationLink(destination: RoutineView(isCompleted: false)) {
                    Text("Next")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }
            .padding()
        }
    }

    private func timeString(from date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}

struct ReminderView_Previews: PreviewProvider {
    static var previews: some View {
        ReminderView()
    }
}
