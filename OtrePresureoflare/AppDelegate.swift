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
        
        FLORENICResourceLoader.shared.FLORENICPrepareResourcesIfNeeded()
        let horticulture = UIScreen.main.bounds
        window = UIWindow(frame: horticulture)
        FLORENICchallenge()
        self.window?.makeKeyAndVisible()
        return true
    }

    func FLORENICchallenge()  {
       let FLORENICtitle = UserDefaults.standard.object(forKey: "roseSpray") as? String
        
        
       guard FLORENICtitle != nil  else {
           let FLORENICguiavc = UINavigationController.init(rootViewController: FLORENIStemSnippetController())
           FLORENICguiavc.navigationBar.isHidden = true
         
           self.window?.rootViewController = FLORENICguiavc
           
           return
       }
        let FLORENICController =  FLORENICTabBarController()//storyboard.instantiateViewController(withIdentifier: "tababrID" )
        self.window?.rootViewController = FLORENICController
       
   }
}

