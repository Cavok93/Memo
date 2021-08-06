//
//  MemoDetailViewController.swift
//  RxMemo
//
//  Created by 심정섭 on 2021/08/06.
//

import UIKit

class MemoDetailViewController: UIViewController, ViewModelBindableType {
    
    var viewModel: MemoDetailViewModel!
    
    
    @IBOutlet weak var listTableView: UITableView!
    
    
    @IBOutlet weak var deletebutton: UIBarButtonItem!
    
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    
    @IBOutlet weak var shareButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func bindViewModel() {
        
    }
    

}
