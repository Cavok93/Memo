//
//  MemoListViewModel.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import Foundation
import RxSwift
import RxCocoa


class MemoListViewModel: CommonViewModel {
    var memoList: Observable<[Memo]> {
        return storage.memoList()
    }
    
    
    
    
    
}
