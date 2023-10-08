//
//  HomeTableViewController.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 6/10/23.
//

import UIKit

//MARK: - PROTOCOL
protocol HomeTableVControllerProtocol: AnyObject {
    func updateViews()
    func navigateToDetail(with data: PokemonModel)
    
}


class HomeTableViewController: UITableViewController {
    
    var vm: HomeViewModelProtocol?

        
    override func viewDidLoad() {
        super.viewDidLoad()
        registerCells()
        vm?.onViewsLoaded()
        self.title = "Pokedex"
    }

//    MARK: - Register
    private func registerCells(){
        tableView.register(UINib(nibName: "HomeTableViewCell", bundle: nil), forCellReuseIdentifier: "HomeCell")
    }
    
    // MARK: - Table view data source
    
    @IBOutlet var HomeTableView: UITableView!
    
//    private func prepareTable(){
//        HomeTableView.titl
//        tableView.ti
//    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return vm?.dataCount ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell", for: indexPath) as? HomeTableViewCell else {
            return UITableViewCell()
        }
                
        if let data = vm?.data(at: indexPath.row){
            cell.updateView(data: data)
        }
        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        vm?.onItemSelected(at: indexPath.row)
    }

    
}

//MARK: - EXTENSION -
extension HomeTableViewController: HomeTableVControllerProtocol {
    func updateViews() {
        tableView.reloadData()
    }
    
    func navigateToDetail(with data: PokemonModel) {
        let detailVC = DetailViewController()
        detailVC.vm = DetailViewModel(viewDelegate: detailVC, viewData: data)
        navigationController?.pushViewController(detailVC, animated: true)
    }
}
