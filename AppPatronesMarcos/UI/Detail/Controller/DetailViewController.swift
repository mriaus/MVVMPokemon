//
//  ViewController.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 7/10/23.
//

import UIKit

//MARK: - PROTOCOL
protocol DetailViewControllerProtocol: AnyObject{
    func updateViews(viewData: PokemonModel)
}

//MARK: - CLASS -
class DetailViewController: UIViewController {
    
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var evolutionLabel: UILabel!
    
    @IBOutlet weak var descriptionText: UITextView!
    
    
    var vm: DetailViewModelProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm?.onViewLoaded()
    }

    
    private func update(type: String?){
        typeLabel.text = type
    }
    
    private func update(number: String?){
        numberLabel.text = number ?? "-"
    }
    
    private func update(name: String?){
        nameLabel.text = name ?? "-"
    }
    
    private func update(image: String?){
        guard let image else {
            imageView.image = UIImage(named: "pokabellSVG")
            return
        }
        imageView.setImage(for: urlStringToUrl(url: image))
    }
    
    private func update(evolution: String?){
        evolutionLabel.text = evolution ?? ""
    }
    
    private func update(description: String?){
        descriptionText.text = description ?? ""
    }
    
}


//MARK: - EXTENSION -
extension DetailViewController: DetailViewControllerProtocol{
    func updateViews(viewData: PokemonModel) {
        update(name: viewData.name)
        update(type: transformType(types: viewData.type ))
        update(image: viewData.image)
        update(number: viewData.id)
        update(description: viewData.description)
        update(evolution: viewData.evolutionNumber)
    }
    
    
}
