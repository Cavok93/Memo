//
//  SceneCoordinatorType.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import Foundation
import RxSwift


protocol SceneCoordinatorType {
    @discardableResult
    func transition(to scene: Scene, using style: TransitionStyle, animated: Bool) -> Completable
    
    @discardableResult
    func close(animated: Bool) -> Completable
    
    
}
