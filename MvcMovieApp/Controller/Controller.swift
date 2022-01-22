//
//  Controller.swift
//  MvcMovieApp
//
//  Created by ismail palali on 22.01.2022.
//

import UIKit

class Controller: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var veriler = VeriSeti()
    var secilenKategori = ""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        navigationItem.title = "Filmler"
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return veriler.kategoriler.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "KategoriCell") as? KategoriCell {
            cell.cellDuzenle(filmKategori: veriler.kategoriler[indexPath.row])
            return cell
        } else {
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        secilenKategori = veriler.kategoriler[indexPath.row].kategoriAdi
        performSegue(withIdentifier: "filmToList", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let  FilmViewController = segue.destination as? FilmViewController {
            FilmViewController.secilenKategori = secilenKategori
        }
    }

}

