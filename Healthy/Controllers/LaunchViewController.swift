//
//  LaunchViewController.swift
//  Healthy
//
//  Created by Amr El-Fiqi on 13/05/2023.
//

import UIKit

class LaunchViewController: UIViewController {
    
    private let logoImageView = UIImageView(image: UIImage(named: "splashScreen"))
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //view.backgroundColor = .red
        view.addSubview(logoImageView)
        setupLaunchView(logoImageView)
        
        loadFirstView()
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        // View covers all bounds of the screen
        logoImageView.frame = view.bounds
    }
    
    private func setupLaunchView(_ view: UIView) {
        view.translatesAutoresizingMaskIntoConstraints = false
        view.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
    }
    
    private func loadFirstView() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let nextVC = OnBoardingViewController()
            if let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
               let window = windowScene.windows.first {
                window.rootViewController = nextVC
            }
        }
    }
    
}
