//
//  CoreDataStorage.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import Foundation
import RxSwift
import RxCoreData
import CoreData





class CoreDataStorage: MemoStorageType {
    
    let modelName: String
    
    init(modelName: String) {
        self.modelName = modelName
    }
    
    
    private lazy var persistentContainer: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: self.modelName)
        container.loadPersistentStores(completionHandler: { (storeDescription, error) in
            if let error = error as NSError? {
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        return container
    }()
    
    
    private var mainContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }

    
    
    
    
    @discardableResult
    func createMomo(content: String) -> Observable<Memo> {
        let memo = Memo(content: content)
        
        do {
            _ = try mainContext.rx.update(memo) //upsert
            return Observable.just(memo)
            
        } catch {
            return Observable.error(error)
            
        }
    }
    
    @discardableResult
    func memoList() -> Observable<[MemoSectionModel]> {
        return mainContext.rx.entities(Memo.self, sortDescriptors: [NSSortDescriptor(key: "insertDate", ascending: false)])
            .map { result in [MemoSectionModel(model: 0, items: result)] }
    }
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo> {
        let updated = Memo(original: memo, updatedContent: content)
        
        do {
            _ = try mainContext.rx.update(updated) //upsert
            return Observable.just(updated)
            
        } catch {
            return Observable.error(error)
            
        }
    }
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo> {
        do {
            try mainContext.rx.delete(memo)
            return Observable.just(memo)
            
        } catch {
            return Observable.error(error)
        }
    }
    
    
}
