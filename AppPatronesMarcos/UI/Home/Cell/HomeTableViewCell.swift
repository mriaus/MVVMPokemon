//
//  HomeTableViewCell.swift
//  AppPatronesMarcos
//
//  Created by Marcos on 6/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    @IBOutlet weak var cellImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    //MARK: -  UPDATES
    private func update(name: String?){
        nameLabel.text = name ?? ""
    }
    
    private func update(number: String?){
        numberLabel.text = number ?? ""
    }
    
    private func update(description: String?){
        descriptionLabel.text = description ?? ""
    }
    
    private func update(image: String?){
        guard let image else {
            cellImageView.image = UIImage(named: "pokabellSVG")
            return
        }
        cellImageView.setImage(for: urlStringToUrl(url: image))
    }
    
//    MARK: CLOSE UPDATES -
    
    func updateView(data: PokemonModel){
        update(description: data.description)
        update(name: data.name)
        update(image: data.image)
        update(number: data.id)
    }
    
    override func prepareForReuse() {
        cellImageView.image = UIImage(named: "pokeballSVG")
        nameLabel.text = ""
        numberLabel.text = "-"
        descriptionLabel.text = ""
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
