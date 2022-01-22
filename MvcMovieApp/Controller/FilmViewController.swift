//
//  FilmViewController.swift
//  MvcMovieApp
//
//  Created by ismail palali on 22.01.2022.
//

import UIKit

class FilmViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
  
    @IBOutlet weak var collectionView: UICollectionView!
    var secilenKategori: String = ""
    var secilenFilm: Film!
    var veriler = VeriSeti()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
      
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return veriler.filmleriGetir(kategori: secilenKategori).count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let filmCell = collectionView.dequeueReusableCell(withReuseIdentifier: "filmCell", for: indexPath) as? FilmCell {
            filmCell.cellDuzenleFilm(film: veriler.filmleriGetir(kategori: secilenKategori)[indexPath.row])
            return filmCell
        } else {
            return UICollectionViewCell()
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let g = view.bounds.width
        let h = (g / 2) - 20
        return CGSize(width: h, height: h)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        secilenFilm = veriler.filmleriGetir(kategori: secilenKategori)[indexPath.row]
        performSegue(withIdentifier: "filmDetayi", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let FilmDetayController = segue.destination as? FilmDetayController {
            FilmDetayController.secilenFilm = secilenFilm
        }
    }
}
