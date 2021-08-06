//
//  TransitionModel.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import Foundation


enum TransitionStyle {
    case root
    case push
    case modal
}


enum TransitionError: Error {
    case navigationControllerMissing
    case cannotPop
    case unknown
}
