//
//  TTD_Neo_StyleApp.swift
//  TTD-Neo-Style
//
//  Created by Daniel Enning on 01.06.21.
//

import SwiftUI
import Firebase
import UserNotifications

@main
struct TTD_Neo_StyleApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    init() {
        if #available(iOS 15, *) {
            let tabBarAppearance: UITabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
//               tabBarAppearance.configureWithOpaqueBackground()
                UITabBar.appearance().standardAppearance = tabBarAppearance
                UITabBar.appearance().scrollEdgeAppearance = tabBarAppearance
            UITabBar.appearance().barTintColor = UIColor(Color("Background2"))
        }
        
        if #available(iOS 15, *) {
            let appearance = UINavigationBarAppearance()
            
            let navigationBar = UINavigationBar()
//            appearance.configureWithOpaqueBackground()
            appearance.backgroundEffect = UIBlurEffect(style: .systemUltraThinMaterial)
            appearance.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
//            appearance.backgroundColor = UIColor(Color("Background2"))
            navigationBar.standardAppearance = appearance;
            UINavigationBar.appearance().scrollEdgeAppearance = appearance
        }
        
        
//        if #available(iOS 15, *) {
//            let appearance = UINavigationBarAppearance()
////            appearance.configureWithOpaqueBackground()
//            UINavigationBar.appearance().standardAppearance = appearance
//            UINavigationBar.appearance().scrollEdgeAppearance = appearance
//            UINavigationBar.appearance().barTintColor = UIColor.systemGray6
//        }
        
    }
    
    
    var body: some Scene {
        WindowGroup {
            StartTabView()
            
        }
    }
}





// FB Push Integration
class AppDelegate: NSObject, UIApplicationDelegate, MessagingDelegate, UNUserNotificationCenterDelegate {
    let gcmMessageIDKey = "gcm.message_id"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()

        Messaging.messaging().delegate = self

        if #available(iOS 10.0, *) {
          // For iOS 10 display notification (sent via APNS)
          UNUserNotificationCenter.current().delegate = self

          let authOptions: UNAuthorizationOptions = [.alert, .badge, .sound]
          UNUserNotificationCenter.current().requestAuthorization(
            options: authOptions,
            completionHandler: {_, _ in })
        } else {
          let settings: UIUserNotificationSettings =
          UIUserNotificationSettings(types: [.alert, .badge, .sound], categories: nil)
          application.registerUserNotificationSettings(settings)
        }

        application.registerForRemoteNotifications()
        return true
    }

    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any],
                     fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {

      if let messageID = userInfo[gcmMessageIDKey] {
        print("Message ID: \(messageID)")
      }

      print(userInfo)

      completionHandler(UIBackgroundFetchResult.newData)
    }
    
    
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {

          let deviceToken:[String: String] = ["token": fcmToken ?? ""]
            print("Device token: ", deviceToken) // This token can be used for testing notifications on FCM
        }
    
    
    
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                  willPresent notification: UNNotification,
        withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        let userInfo = notification.request.content.userInfo

        if let messageID = userInfo[gcmMessageIDKey] {
            print("Message ID: \(messageID)")
        }

        print(userInfo)

        // Change this to your preferred presentation option
        completionHandler([[.banner, .badge, .sound]])
      }

        func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {

        }

        func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {

        }

      func userNotificationCenter(_ center: UNUserNotificationCenter,
                                  didReceive response: UNNotificationResponse,
                                  withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo

        if let messageID = userInfo[gcmMessageIDKey] {
          print("Message ID from userNotificationCenter didReceive: \(messageID)")
        }

        print(userInfo)

        completionHandler()
      }
    
    
}

