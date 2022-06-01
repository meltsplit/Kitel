//
//  RentMainViewController.swift
//  Kitel
//
//  Created by 장석우 on 2022/06/01.
//

import UIKit
import SnapKit
import Then

class RentMainViewController : UIViewController{
    
    //MARK: - Properties
    private let rentBtn = UIButton().then {
        $0.setTitle("대여하기", for: .normal)
        $0.backgroundColor = .blue
        $0.layer.cornerRadius = 15
        $0.addTarget(self, action: #selector(rentBtnTapped), for: .touchUpInside)
    }
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setLayout()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    //MARK: - Set UI
    private func configUI(){
        title = "Kitel"
        view.backgroundColor = .white
    }
    private func setLayout(){
        view.addSubview(rentBtn)
        
        rentBtn.snp.makeConstraints {
            $0.center.equalToSuperview()
            $0.width.height.equalTo(100)
        }
    }
    
    //MARK: - Custom Func
}
extension RentMainViewController{
    @objc private func rentBtnTapped(){
        navigationController?.pushViewController(RentSelectViewController(), animated: true)
    }
}
