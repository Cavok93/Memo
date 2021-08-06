//
//  MemoStorageType.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import Foundation
import RxSwift





protocol MemoStorageType {
    
    @discardableResult
    func createMomo(content: String) -> Observable<Memo>
    
    @discardableResult
    func memoList() -> Observable<[MemoSectionModel]>
    
    @discardableResult
    func update(memo: Memo, content: String) -> Observable<Memo>
    
    @discardableResult
    func delete(memo: Memo) -> Observable<Memo>
    
}
