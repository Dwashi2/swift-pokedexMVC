//
//  DetailViewController.swift
//  pokedex
//
//  Created by Daniel Washington Ignacio on 09/07/21.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailPokemonImage: UIImageView!
    @IBOutlet weak var detailPokemonName: UILabel!
    @IBOutlet weak var detailPokemonInfo: UILabel!

    @IBOutlet weak var detailPokemonHeight: UILabel!
    
    @IBOutlet weak var detailPokemonWeith: UILabel!
    
    @IBOutlet weak var detalPokemonType: UILabel!
    @IBOutlet weak var detailPokemonEvolution: UILabel!
    
    @IBOutlet weak var detailPokemonWeakness: UILabel!
    
    
    @IBOutlet weak var detailPokemonView: UIView!
    
    
    var pokemonSelected: Pokemon?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        var type: String = ""
        var evolution: String = ""
        var weakness: String = ""
        
        self.detailPokemonView.layer.shadowColor = UIColor.black.cgColor
        self.detailPokemonView.layer.shadowOpacity = 0.4
        self.detailPokemonView.layer.shadowOffset = .zero
        self.detailPokemonView.layer.shadowRadius = 10
        self.detailPokemonView.layer.cornerRadius = 30
        
        self.detailPokemonImage.image = UIImage(named: pokemonSelected?.avatar ?? "")
        self.detailPokemonInfo.text = self.pokemonSelected?.info
        self.detailPokemonName.text = self.pokemonSelected?.name
        self.detailPokemonHeight.text = "\(self.pokemonSelected?.heigth ?? 0.0)"
        self.detailPokemonWeith.text = "\(self.pokemonSelected?.weigth ?? 0.0)"
        
        for n in 0..<(self.pokemonSelected?.type?.count ?? 0){
            type = "\(self.pokemonSelected?.type?[n] ?? "")" + " \(type)"
        }
        for n in 0..<(self.pokemonSelected?.evolution?.count ?? 0){
            evolution = "\(self.pokemonSelected?.evolution?[n] ?? "")" + " \(evolution)"
        }
        for n in 0..<(self.pokemonSelected?.weakness?.count ?? 0){
            weakness = "\(self.pokemonSelected?.weakness?[n] ?? "")" + " \(weakness)"
        }
        
        
        self.detalPokemonType.text = "\(type)"
        self.detailPokemonEvolution.text = "\(evolution)"
        self.detailPokemonWeakness.text = "\(weakness)"
        
        
 
     
        self.detailPokemonView.backgroundColor = UIColor(red: CGFloat(self.pokemonSelected?.detailRed ?? 0.0), green: CGFloat(self.pokemonSelected?.detailGreen ?? 0.0), blue: CGFloat(self.pokemonSelected?.detailBlue ?? 0.0), alpha: 1.0)
        
        //detailGreen: 216, detailRed: 243, detailBlue: 233
       // self.detailPokemonView.backgroundColor = UIColor(red: (self.pokemonSelected?.red ?? Float(0.1)), green: (self.pokemonSelected?.detailGreen ?? Float(0.1)), blue: CGFloat(self.pokemonSelected?.detailBlue ?? Float(0.1)), alpha: 1.0)
            
        
      
       // self.detailPokemonWeakness.text = String(self.pokemonSelected?.weakness ?? "")
        
        
        
        
        
    }
    



}
