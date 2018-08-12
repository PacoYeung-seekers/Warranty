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

import AWSAppSync

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
        awsLogin()
        testAWSAppSyncAddItem()
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
        //AWS
//        var userNotificationTypes : UIUserNotificationType
//        userNotificationTypes = [.alert , .badge , .sound]
//        let notificationSettings = UIUserNotificationSettings.init(types: userNotificationTypes, categories: nil)
//        UIApplication.shared.registerUserNotificationSettings(notificationSettings)
//        UIApplication.shared.registerForRemoteNotifications()
    }
}

extension ViewController {
    public func tsetAWSDynamoDBNoSQL() {
        let object: AWSDynamoDBObjectModel

    }
}

extension ViewController {
    public func testAWSAppSyncAddItem() {
        //get appSync reference from appDelegate
        let appSyncClient = AWSAppSyncService.shareInstance().getAppSyncClient()
        
        let subscription = OnCreateGraphicBagBrandSubscription(nameENG: "333")
        do {
            _ = try appSyncClient?.subscribe(
                subscription: subscription,
                resultHandler: { (result, transaction, error) in
                    guard let result = result else {
                        print(error)
                        return
                    }
                    guard let data = result.data?.onCreateGraphicBagBrand else {
                        print(error)
                        return
                    }
                    let object = GraphicBagBrand.init(id: data.id, nameCn: data.nameCn, nameEng: data.nameEng, nameZh: data.nameZh)
                    print("OnCreateGraphicBagBrandSubscription")
                    print(object)
            })
        } catch {
            print("subscribe fail")
        }
        
        
        appSyncClient?.fetch(query: ListGraphicBagBrandsQuery(filter: nil, limit: nil, nextToken: nil), cachePolicy: .returnCacheDataAndFetch)  { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
                return
            }
            print(result?.data?.listGraphicBagBrands?.items)
        }
        
        
        let graphQLMutation = CreateGraphicBagBrandMutation(input: CreateGraphicBagBrandInput(id: "5", nameCn: "圣罗兰", nameEng: "YSL", nameZh: "聖羅蘭") )
        appSyncClient?.perform(mutation: graphQLMutation) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred while making request: \(error.localizedDescription )")
                return
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
            let data = result?.data
            print("Data:")
            print(data)
        }
//        appSyncClient?.perform(mutation: graphQLMutation, queue: .main, optimisticUpdate: { (transaction) in
//            do {
//                // Update our normalized local store immediately for a responsive UI.
//                try transaction?.update(query: ListGraphicBagBrandsQuery()) { (data: inout ListGraphicBagBrandsQuery.Data) in
//                    data.listGraphicBagBrands?.items?.append(
//                        ListGraphicBagBrandsQuery.Data.ListGraphicBagBrand.Item(id: "1", nameCn: "圣罗兰", nameEng: "YSL", nameZh: "聖羅蘭")
//                    )
//                }
//            } catch {
//                print("Error updating the cache with optimistic response.")
//            }
//        }, resultHandler: { (result, error) in
//            if let error = error as? AWSAppSyncClientError {
//                print("Error occurred: \(error.localizedDescription )")
//                return
//            }
//            let data = result?.data
//            print(data)
//        })
        
    }
}

extension ViewController: WarrantyItemDataStoreInjected {
    public func testWarrantyItemDataStoreInjected() {
        
//        //listen change
//        warrantyItemDataStore.listenChange(insert: { (warrantyItem) in
//            print("insert")
//        }, update: { (warrantyItem) in
//            print("update")
//        }, delete: { (warrantyItem) in
//            print("delete")
//        }, bag: bag)
//        //insert data
//        let object = RealmWarrantyItem()
//        object.id = UUID().uuidString
//        object.bagBrandId = 1
//        object.days = 1
//        object.buyTime = "13-06-2018"
//        object.uploadTime = "13-06-2018"
//        RealmService.shared.insert(object)
//        warrantyItemDataStore.insert(realmObject: object)
//        //insert data
//        let object1 = RealmWarrantyItem()
//        object1.id = UUID().uuidString
//        object1.bagBrandId = 1
//        object1.days = 2
//        object1.buyTime = "13-06-2018"
//        object1.uploadTime = "13-06-2018"
//        warrantyItemDataStore.insert(realmObject: object1)
        
    }
}


