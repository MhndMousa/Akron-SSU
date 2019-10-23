//
//  CardInformation.swift
//  SSUAkron
//
//  Created by Muhannad Mousa on 3/24/18.
//  Copyright © 2018 Muhannad Mousa. All rights reserved.
//

import UIKit
import Firebase


class CardInformaion: NSObject {

    var title: String!
    var catagory: String?
    var itemTitle: String?
    var itemSubtitle: String?
    var image: UIImage = #imageLiteral(resourceName: "ssa")
    var icon : UIImage?
    var backgroundColor: UIColor?
    var textColor: UIColor?
    var userID: String?
    var time: NSNumber = 0
    var cardId: String?
    
    init(_ dic: [String: AnyObject]) {
        //TODO: Add the rest of the data that populates the card
        title = dic["title"] as? String ?? ""
        itemTitle = dic["itemTitle"] as? String ?? ""
        itemSubtitle = dic["itemSubtitle"] as? String ?? ""
        icon = updateIcon(dic["icon"] as? String ?? "")
        
    }
    
    init(_ dic: [String: AnyObject], _ colors: [String:UIColor]) {
        title = dic["title"] as? String ?? ""
        itemTitle = dic["itemTitle"] as? String ?? ""
        itemSubtitle = dic["itemSubtitle"] as? String ?? ""
        icon = updateIcon(dic["icon"] as? String ?? "")
        
        let b = dic["backgroundColor"] as? String ?? "pink"
        let t = dic["textColor"] as? String ?? "white"
        textColor = colors[t]
        backgroundColor = colors[b]
    }

}
class StoreInformationModel: NSObject {
    var title: String?
    var whereToReceive: String!
    var cost:String!
    var descriptionString: String!
    var catagory: String!
    var photoPath: String?
    var whatsAppNumber: String?
    
    override init(){
        title = "test"
        whereToReceive = "test"
        cost = "test"
        descriptionString = "test"
        catagory = "test"
    }
    
    init(_ dic: [String: AnyObject]) {
        //TODO: Add the rest of the data that populates the card
        title = dic["title"] as? String ?? ""
        whereToReceive = dic["location"] as? String ?? ""
        cost =  dic["price"] as? String ?? ""
        descriptionString = dic["description"] as? String ?? ""
        catagory = dic["catagory"] as? String ?? ""
        whatsAppNumber = dic["whatsapp"] as? String ?? nil
                
        guard let imageDict = dic["picture"] as? [String:String] else {return}
        photoPath = imageDict["image1"] as! String
    }
}
