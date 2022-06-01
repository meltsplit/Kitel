//
//  RentSelectViewController.swift
//  Kitel
//
//  Created by 장석우 on 2022/06/01.
//

import UIKit
import SnapKit
import Then

class RentSelectViewController: UIViewController{
    
    //MARK: - Properties
    
    
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setLayout()
        setNavigationItem()
    }
    //MARK: - Set UI
    private func configUI(){
        title = " 물품 대여하기 "
        view.backgroundColor = .white
    }
    private func setLayout(){
        
    }
    
    //MARK: - Custom Func
    private func setNavigationItem(){
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "완료", style: .plain, target: self , action: #selector(doneBtnTapped))
        tabBarController?.tabBar.isHidden = true
    }
}
extension RentSelectViewController{
    @objc private func doneBtnTapped(){
        navigationController?.pushViewController(RentDoneViewController(), animated: true)
    }
}
