//
//  TabBarController.swift
//  Kitel
//
//  Created by 장석우 on 2022/06/01.
//

import UIKit

class TabBarController : UITabBarController{
    //MARK: - Properties
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setLayout()
        setTabBarItem()
    
    }
    //MARK: - Set UI
    private func configUI(){}
    private func setLayout(){}
    
    //MARK: - Custom Func
    
    private func setTabBarItem(){
        let rentNVC = RentNavigationController(rootViewController: RentMainViewController())
        rentNVC.tabBarItem = UITabBarItem(title: "대여", image: UIImage(systemName: "cart"), selectedImage: UIImage(systemName: "cart.fill"))
        
        let findNVC = FindNavigationController(rootViewController: FindMainViewController())
        findNVC.tabBarItem = UITabBarItem(title: "찾기", image: UIImage(systemName: "questionmark.square"), selectedImage: UIImage(systemName: "questionmark.square.fill"))
        
        viewControllers = [rentNVC, findNVC]
    }
    
    private func setTabBarAppearance(){
        UITabBar.appearance().tintColor = .orange
        UITabBar.appearance().backgroundColor = .yellow
    }
}
