//
//  ViewController.swift
//  pokemonMVC
//
//  Created by Daniel Washington Ignacio on 28/07/21.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    private var controller: PokemonListController = PokemonListController()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        self.myTableView.register(UINib(nibName: "CustomCell", bundle: nil), forCellReuseIdentifier: "CustomCell")
        
        
        self.myTableView.delegate = self
        self.myTableView.dataSource = self
        self.myTableView.tableFooterView = UIView()
        self.controller.loadPokemon{ success, error in
            if success {
                self.myTableView.reloadData()
            }else{
                print(error)
            }
        }
        
       
    }


}

//MARK: - UItableViewDelegate , UITableViewDataSource

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.controller.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: CustomCell? = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as? CustomCell
        cell?.setup(value: self.controller.loadCurrentPokemon(indexPath: indexPath))

        return cell ?? UITableViewCell()
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let pokemonSelected: Pokemon = self.controller.loadCurrentPokemon(indexPath: indexPath)
        performSegue(withIdentifier: "DetailViewController", sender: pokemonSelected)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc: DetailViewController? = segue.destination as? DetailViewController
        vc?.pokemonSelected = sender as? Pokemon

    }
    
}
