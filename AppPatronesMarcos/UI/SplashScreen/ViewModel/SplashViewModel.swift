//
//  SplashViewModel.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 5/10/23.
//

import Foundation

//MARK: PROTOCOL
protocol SplashViewModelProtocol{
    func onViewsLoad()
}
//MARK: CLASS

class SplashViewModel {
    
    private weak var viewDelegate: SplashViewProtocol?
    init(viewDelegate: SplashViewProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func load(){
        self.viewDelegate?.showAnimation(true)
//        false loading X seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)){ [weak self] in
            self?.viewDelegate?.showAnimation(false)
            self?.viewDelegate?.navigateToHome()
        }
    }
}
//MARK: EXTENSION
extension SplashViewModel: SplashViewModelProtocol {
    func onViewsLoad() {
        load()
    }
    
    
}
