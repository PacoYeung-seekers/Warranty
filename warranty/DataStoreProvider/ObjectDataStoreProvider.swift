//
//  ObjectDataStoreProvider.swift
//  warranty
//
//  Created by Pakho Yeung on 4/8/2018.
//  Copyright © 2018 Pakho Yeung. All rights reserved.
//

import Foundation
import RxCocoa
import RxSwift
//Realm 
import RealmSwift
import RxRealm

protocol PrimaryKeyRequired {
    var id: String { get set }
}

class ObjectDataStorageProvider<T: Object>: LocalStorageRealmInjected {
    lazy private var results: Results<T> = setupResults()
    lazy private var subjects: BehaviorRelay<[String:T]> = setupSubjects()
}

extension ObjectDataStorageProvider {
    
    public func getSubject() -> BehaviorRelay<[String:T]> {
        return subjects
    }
    
    public func getSubjectObservable() -> Observable<[String:T]> {
        return subjects.asObservable()
    }
    
    private func setupResults() -> Results<T> {
        return localStorage.selectAll(T.self)
    }
    
    private func setupSubjects() -> BehaviorRelay<[String:T]> {
        return resultsToSubjust(results: results)
    }
    
    func listenChange(insert:((T) -> Void)? ,update:((T) -> Void)? ,delete:((T) -> Void)?, bag:DisposeBag) {
        Observable.changeset(from: results).subscribe(onNext: {res, changes in
            guard let changes = changes else {
                return
            }
            if changes.deleted.count > 0 {
                changes.deleted.makeIterator().forEach({ (idx) in
                    delete?(res[idx])
                })
            }
            if changes.updated.count > 0 {
                changes.inserted.makeIterator().forEach({ (idx) in
                    update?(res[idx])
                })
            }
            
            if changes.inserted.count > 0 {
                changes.inserted.makeIterator().forEach({ (idx) in
                    insert?(res[idx])
                })
            }
        }).disposed(by: bag)
    }
    
    func insert(realmObject object: T) {
        localStorage.insert(object)
    }
    
    func update(realmObject object: T) {
        localStorage.update(object)
    }
    
    func delete(realmObject object: T) {
        localStorage.delete(object)
    }
}


extension ObjectDataStorageProvider {
    
    func listenChange(results: Results<T>, insert:((T) -> Void)? ,update:((T) -> Void)? ,delete:((T) -> Void)?, bag:DisposeBag) {
        Observable.changeset(from: results).subscribe(onNext: {res, changes in
            guard let changes = changes else {
                return
            }
            if changes.deleted.count > 0 {
                changes.deleted.makeIterator().forEach({ (idx) in
                    delete?(res[idx])
                })
            }
            if changes.updated.count > 0 {
                changes.inserted.makeIterator().forEach({ (idx) in
                    update?(res[idx])
                })
            }
            if changes.inserted.count > 0 {
                changes.inserted.makeIterator().forEach({ (idx) in
                    insert?(res[idx])
                })
            }
        }).disposed(by: bag)
    }
    
    func select(predicate: NSPredicate) -> Results<T> {
        return localStorage.select(T.self, predicate: predicate)
    }
    
    func resultsToSubjust(results: Results<T>) -> BehaviorRelay<[String:T]> {
        var newDataForm = [String:T]()
        for result in results {
            guard let resultConformPK = result as? PrimaryKeyRequired else {
                fatalError()
            }
            newDataForm["\(resultConformPK.id)"] = result
        }
        return BehaviorRelay(value: newDataForm)
    }
}

