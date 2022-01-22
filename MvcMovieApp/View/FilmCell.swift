//
//  FilmCell.swift
//  MvcMovieApp
//
//  Created by ismail palali on 22.01.2022.
//

import UIKit

class FilmCell: UICollectionViewCell {
    
    @IBOutlet weak var filmImg: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        filmImg.layer.cornerRadius = 10
    }
    
    func cellDuzenleFilm(film: Film) {
        filmImg.image = UIImage(named: film.goruntuAdi)
    }
}
