//
//  KategoriCell.swift
//  MvcMovieApp
//
//  Created by ismail palali on 22.01.2022.
//

import UIKit

class KategoriCell: UITableViewCell {

    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var title: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        categoryImage.layer.cornerRadius = 15
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func cellDuzenle(filmKategori: FilmKategori) {
        categoryImage.image = UIImage(named: filmKategori.goruntuAdi)
        title.text = filmKategori.kategoriAdi
    }

}
