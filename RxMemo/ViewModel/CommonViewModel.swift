//
//  CommonViewModel.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import Foundation
import RxSwift
import RxCocoa

class CommonViewModel: NSObject {
    let title: Driver<String>
    let sceneCoordinator: SceneCoordinatorType
    let storage: MemoStorageType
    
    
    init(title: String, sceneCoordinator: SceneCoordinatorType,  storage: MemoStorageType) {
        self.title = Observable.just(title).asDriver(onErrorJustReturn: "")
        self.sceneCoordinator = sceneCoordinator
        self.storage = storage
    }
    
    
    
}
