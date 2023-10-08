//
//  HomeViewModel.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 7/10/23.
//

import Foundation
//MARK: - PROTOCOL
protocol HomeViewModelProtocol {
    func onViewsLoaded()
    var dataCount: Int {get}
    func data(at index: Int) -> PokemonModel?
    func onItemSelected(at index: Int)
}

//MARK: -CLASS -
class HomeViewModel {
    private weak var viewDelegate: HomeTableVControllerProtocol?
    private var viewData = PokemonsModel()

    init(viewDelegate: HomeTableVControllerProtocol? = nil) {
        self.viewDelegate = viewDelegate
    }
    
    private func loadData() {
        //MockedData from Models/Pokemon
        viewData = mockedData
        viewDelegate?.updateViews()
    }

    
}
//MARK: -EXTENSION-
extension HomeViewModel: HomeViewModelProtocol{
    func data(at index: Int) -> PokemonModel? {
        guard index < dataCount else {return nil}
        return viewData[index]
    }
    
    func onViewsLoaded() {
        loadData()
    }
    
    var dataCount: Int {
        viewData.count
    }
    
    func onItemSelected(at index: Int) {
        guard let data = data(at: index) else {return }
        //notificar a la vista que pinte el detalle
        viewDelegate?.navigateToDetail(with: data)
    }
    
    
}
