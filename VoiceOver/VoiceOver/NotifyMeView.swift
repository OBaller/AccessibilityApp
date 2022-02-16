//
//  NotifyMeView.swift
//  VoiceOver
//
//  Created by naseem on 16/02/2022.
//

import SwiftUI
import UserNotifications

struct NotifyMeView: View {
    var body: some View {
        VStack {
            Button("Request Permission") {
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound, .badge]) { success, error in
                    if success {
                        print("All Set")
                    } else if let error = error {
                        print(error.localizedDescription)
                    }
                }
            }
            
            Button("Schedule Notification") {
                let content = UNMutableNotificationContent()
                content.title = "Feed the Cat"
                content.subtitle = "It looks hungry"
                content.sound = UNNotificationSound.default
                
                let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 5, repeats: false)
                let request = UNNotificationRequest(identifier: UUID().uuidString, content: content, trigger: trigger)
                UNUserNotificationCenter.current().add(request)
            }
        }
    }
}

struct NotifyMeView_Previews: PreviewProvider {
    static var previews: some View {
        NotifyMeView()
    }
}
