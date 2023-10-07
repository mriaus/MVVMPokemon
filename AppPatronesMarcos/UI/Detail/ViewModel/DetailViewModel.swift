//
//  DetailViewModel.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 7/10/23.
//

import Foundation
//MARK: - PROTOCOL
protocol DetailViewModelProtocol {
    func onViewLoaded()
}

//MARK: - CLASS -
final class DetailViewModel {
    
    private weak var viewDelegate: DetailViewControllerProtocol?
    
    private var viewData: PokemonModel?
    private func loadData(pokemon: PokemonModel) {
        viewDelegate?.updateViews(viewData: pokemon)
    }
    
    init(viewDelegate: DetailViewControllerProtocol? = nil, viewData: PokemonModel? = nil) {
        self.viewDelegate = viewDelegate
        self.viewData = viewData
    }
    
}

//MARK: - EXTENSION -
extension DetailViewModel: DetailViewModelProtocol {
    func onViewLoaded() {
        guard let viewData else {return}
        loadData(pokemon: viewData)
    }
}
