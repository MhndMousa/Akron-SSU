//
//  ViewController.swift
//  SSUAkron
//
//  Created by Muhannad Mousa on 3/15/18.
//  Copyright © 2018 Muhannad Mousa. All rights reserved.
//

import UIKit
import MapKit
import Firebase



class ContactViewController: UICollectionViewController{

    
    var roaster = [SaudiUser]()
    
    @IBAction func signOutTapped(_ sender: Any) {
        do{
            try Auth.auth().signOut()
            let vc = self.storyboard!.instantiateViewController(withIdentifier: "login")
            self.present(vc, animated: true, completion: nil)
            justLoggedOut = true
        }catch let error as NSError{
            print(error)
        }
    }

    
    func loadData(){
        
        let db = ref.child("clubs").child("IN").child("indianapolis").child("roaster").observe(.value) { (snapshot) in
            let value = snapshot.value as! [String: [String: String]]
            print(value)
            for child in value.values{
                let a = SaudiUser()
                a.name = child["name"]
                self.roaster.append(a)
                print(self.roaster)
            }
            self.collectionView?.reloadData()
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.collectionView?.register(UINib(nibName: "ContactCardCell", bundle: nil), forCellWithReuseIdentifier: "cell")
        loadData()
    }

    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .default
    }

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return roaster.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell : ContactCardCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ContactCardCell
    
        let user = roaster[indexPath.row]
        cell.nameLabel.text = user.name
        cell.jobLabel.text = user.job
        cell.imageView.image = user.image
        
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}





