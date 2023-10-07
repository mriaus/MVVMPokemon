//
//  SplashViewController.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 5/10/23.
//

import UIKit
import Lottie


//MARK: - PROTOCOL
protocol SplashViewProtocol: AnyObject {
    func showAnimation(_ show: Bool)
    func navigateToHome()
}

//MARK: - CLASS -
class SplashViewController: UIViewController {

    @IBOutlet weak var lottieView: LottieAnimationView!
    var vm: SplashViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm?.onViewsLoad()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        lottieView.stop()
    }
    
}

//MARK: - EXTENSION -

extension SplashViewController: SplashViewProtocol {
    func navigateToHome() {
        let homeVC = HomeTableViewController()
        homeVC.vm = HomeViewModel(viewDelegate: homeVC)
        navigationController?.setViewControllers([homeVC], animated: true)
    }
    
    func showAnimation(_ show: Bool) {
        switch show{
        case true where !lottieView.isAnimationPlaying:
            lottieView.loopMode = .loop
            lottieView.animationSpeed = 1
            lottieView.play()
        case false where lottieView.isAnimationPlaying:
            lottieView.stop()
        default: break 
        }
    }
    
    
}
