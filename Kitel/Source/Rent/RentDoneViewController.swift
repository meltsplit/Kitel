//
//  RentDoneViewController.swift
//  Kitel
//
//  Created by 장석우 on 2022/06/01.
//

import UIKit
import SnapKit
import Then

class RentDoneViewController: UIViewController{
    
    //MARK: - Properties
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setLayout()
        setNavigationItem()
    }
    //MARK: - Set UI
    private func configUI(){}
    private func setLayout(){}
    private func setNavigationItem(){
        navigationController?.isNavigationBarHidden = false
    }
    //MARK: - Custom Func

}


