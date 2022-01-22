//
//  FilmDetayController.swift
//  MvcMovieApp
//
//  Created by ismail palali on 23.01.2022.
//

import UIKit

class FilmDetayController: UIViewController {

    @IBOutlet weak var detayImage: UIImageView!
    @IBOutlet weak var filmBaslik: UILabel!
    @IBOutlet weak var filmDetay: UITextView!
    var secilenFilm: Film!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let secilenFilm = secilenFilm {
            detayImage.image = UIImage(named: secilenFilm.goruntuAdi)
            filmBaslik.text = secilenFilm.adi
            filmDetay.text = secilenFilm.detaylari
        }
        
    }
    
}
