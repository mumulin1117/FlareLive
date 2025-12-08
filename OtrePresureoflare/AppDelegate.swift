//
//  AppDelegate.swift
//  OtrePresureoflare
//
//  Created by  on 2025/10/17.
//

import UIKit
import StoreKit

@main


class AppDelegate: UIResponder, UIApplicationDelegate {


    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let horticulture = UIScreen.main.bounds
        window = UIWindow(frame: horticulture)
        FLORENICchallenge()
        self.window?.makeKeyAndVisible()
        return true
    }

    func FLORENICchallenge()  {
       let title = UserDefaults.standard.object(forKey: "protea") as? String
        
        
       guard title != nil  else {
           let FLORENICguiavc = UINavigationController.init(rootViewController: FLORENIStemSnippetController())
           FLORENICguiavc.navigationBar.isHidden = true
          // let viewController = //storyboard.instantiateViewController(withIdentifier: "StemSnippetController" ) as!
           self.window?.rootViewController = FLORENICguiavc
           
           return
       }
        let viewController =  FLORENICTabBarController()//storyboard.instantiateViewController(withIdentifier: "tababrID" )
        self.window?.rootViewController = viewController
       
   }
}

