//
//  CustomCell.swift
//  pokemonMVC
//
//  Created by Daniel Washington Ignacio on 28/07/21.
//

import UIKit

class CustomCell: UITableViewCell {

    @IBOutlet weak var pokemonImage: UIImageView!
    
    @IBOutlet weak var pokemonNameLabel: UILabel!
    
    @IBOutlet weak var pokemonNumberLabel: UILabel!
    
    @IBOutlet weak var pokemonViewCustomCell: UIView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
       
        
    }
    
    func setup(value: Pokemon){

        self.pokemonNameLabel.text = value.name ?? ""
        self.pokemonNumberLabel.text = "\(value.number ?? 0)"
        self.pokemonImage.image = UIImage(named: value.avatar ?? "")
        self.pokemonViewCustomCell.backgroundColor = UIColor(red: CGFloat(value.red ?? 0.0), green: CGFloat(value.green ?? 0.0) , blue: CGFloat(value.blue ?? 0.0), alpha: 1.0)
        
    }
    
}
