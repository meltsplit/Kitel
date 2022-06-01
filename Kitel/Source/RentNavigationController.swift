//
//  NavigationViewController.swift
//  Kitel
//
//  Created by 장석우 on 2022/06/01.
//

import UIKit

class RentNavigationController : UINavigationController{
    //MARK: - Properties
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        configUI()
        setLayout()
    }
    
    override init(rootViewController: UIViewController) {
        super.init(rootViewController: rootViewController)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: - Set UI
    private func configUI(){
        view.backgroundColor = .white
    }
    private func setLayout(){}
    
    //MARK: - Custom Func
    
    private func setNavigationBarAppearance(){
        let appearance = UINavigationBarAppearance()
        appearance.backgroundColor = .gray
        
        navigationBar.scrollEdgeAppearance = appearance
        navigationBar.standardAppearance = appearance
        navigationBar.tintColor = .black
        
        // To Do 
        navigationBar.backIndicatorImage = UIImage(systemName: "xmark")
        navigationBar.backIndicatorTransitionMaskImage = UIImage(systemName: "xmark")
        navigationBar.backItem?.title = ""
    }
}
