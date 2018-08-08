//
//  RealmService.swift
//  warranty
//
//  Created by Pakho Yeung on 28/7/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import RealmSwift

class RealmService {
    
    private init() {}
    public static let shared = {
        return RealmService()
    }()
    
    lazy private var realm: Realm = {
        return RealmConnection().getTestRealm()
    }()

    //insert
    public func insert(_ object: Object) {
        do {
            try realm.write { realm.add(object) }
        } catch let err as NSError {
            fatalError(RealmServiceError.err(.writeFail(realmError: err, realmObject: object)))
        }
    }
    //select
    public func selectAll<Element: Object>(_ type: Element.Type) -> Results<Element> {
        return realm.objects(type)
    }
    public func select<Element: Object>(_ type: Element.Type, predicate:NSPredicate) -> Results<Element> {
        return realm.objects(type).filter(predicate)
    }
    public func select<Element: Object>(_ type: Element.Type, limit:Int, block:@escaping ((Element) -> Bool)) -> LazyFilterCollection<Results<Element>> {
        return realm.objects(type).filter({ (element) -> Bool in
            return block(element)
        })
    }
    //update
    public func update(_ object: Object) {
        do {
            try realm.write { realm.add(object, update: true) }
        } catch let err as NSError {
            fatalError(RealmServiceError.err(.writeFail(realmError: err, realmObject: object)))
        }
    }
    //delete
    public func delete(_ object: Object) {
        realm.delete(object)
    }
}
