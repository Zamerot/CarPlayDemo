//
//  AppDelegate.swift
//  CarPlayDemo
//
//  Created by Jason Crowley on 20/6/21.
//

import UIKit
import CarPlay

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        
        
        if(connectingSceneSession.role == UISceneSession.Role.carTemplateApplication) {
            
            let scene = UISceneConfiguration(name: "CarPlay", sessionRole: connectingSceneSession.role)
            
            scene.delegateClass = CarplaySceneDelegate.self
            
            return scene
            
        } else {
        
            return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
        
        }
        
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
    }

}

