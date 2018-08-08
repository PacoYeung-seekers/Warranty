//
//  ViewController.swift
//  warranty
//
//  Created by Pakho Yeung on 18/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

import AWSAuthCore
import AWSAuthUI

import AWSDynamoDB

class ViewController: UIViewController {

    private let bag = DisposeBag()
    
    @IBAction func logoutButtonAction(_ sender: Any) {
        AWSSignInManager.sharedInstance().logout(completionHandler: {(result: Any?, error: Error?) in
            self.awsLogout()
        })
    }
    
    func awsLogout() {
        AWSAuthUIViewController.presentViewController(with: self.navigationController!, configuration: nil, completionHandler: {
            (provider: AWSSignInProvider, error: Error?) in
            if error != nil {
                print("Error occurred: \(String(describing: error))")
            } else {
                print("Sign-in successful.")
                
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        testGrantForPushNotification()
        //testWarrantyItemDataStoreInjected()
        //awsLogin()
    }

    public func awsLogin() {
        
        let loginResult = AWSSignInManager.sharedInstance().isLoggedIn
        if loginResult == false {
            AWSAuthUIViewController.presentViewController(with: self.navigationController!,
                                       configuration: nil,
                                       completionHandler:
                { (provider: AWSSignInProvider, error: Error?) in
                    if error != nil {
                        print("Error occurred: \(String(describing: error))")
                    } else {
                        // Sign in successful.
                    }
                }
            )
        }
    }
}

extension ViewController {
    public func testGrantForPushNotification() {
        var userNotificationTypes : UIUserNotificationType
        userNotificationTypes = [.alert , .badge , .sound]
        let notificationSettings = UIUserNotificationSettings.init(types: userNotificationTypes, categories: nil)
        UIApplication.shared.registerUserNotificationSettings(notificationSettings)
        UIApplication.shared.registerForRemoteNotifications()
    }
}

extension ViewController {
    public func abc() {
        let a: AWSDynamoDBObjectModel

    }
}

extension ViewController: WarrantyItemDataStoreInjected {
    public func testWarrantyItemDataStoreInjected() {
        
        //listen change
        warrantyItemDataStore.listenChange(insert: { (warrantyItem) in
            print("insert")
        }, update: { (warrantyItem) in
            print("update")
        }, delete: { (warrantyItem) in
            print("delete")
        }, bag: bag)
        //insert data
        let object = RealmWarrantyItem()
        object.id = UUID().uuidString
        object.bagBrandId = 1
        object.days = 1
        object.buyTime = "13-06-2018"
        object.uploadTime = "13-06-2018"
        RealmService.shared.insert(object)
        warrantyItemDataStore.insert(realmObject: object)
        //insert data
        let object1 = RealmWarrantyItem()
        object1.id = UUID().uuidString
        object1.bagBrandId = 1
        object1.days = 2
        object1.buyTime = "13-06-2018"
        object1.uploadTime = "13-06-2018"
        warrantyItemDataStore.insert(realmObject: object1)
        
    }
}

