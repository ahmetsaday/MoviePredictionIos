//
//  JsonParse.swift
//  MovieProjection
//
//  Created by Saday on 17.05.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SwiftyJSON

class Parse {
    
    /*
     static func product(json : JSON,index:Int,categoryID :String,categoryName:String)->Product{
     
     let my_Product = Product()
     my_Product.id                       = json["DATA"][index]["id"].string!
     my_Product.owner.id                 = json["DATA"][index]["p_Owner"]["ID"].string!
     my_Product.owner.name               = json["DATA"][index]["p_Owner"]["Name"].string!
     my_Product.owner.profile_Photo      = json["DATA"][index]["p_Owner"]["profilePhoto"].string!
     my_Product.title                    = json["DATA"][index]["title"].string!
     my_Product.first_Price              = json["DATA"][index]["f_Price"].string!
     my_Product.sell_Price               = json["DATA"][index]["s_Price"].string!
     my_Product.favorited                = json["DATA"][index]["p_Favorited"].bool!
     my_Product.my_Product               = json["DATA"][index]["p_Me"].bool!
     my_Product.categoryID               = categoryID
     my_Product.categoryName             = categoryName
     my_Product.status                   = json["DATA"][index]["Status"].string!
     for indexImage in 0..<json["DATA"][index]["p_ImageList"].count{
     let image = Product_Image(
     url: json["DATA"][index]["p_ImageList"][indexImage]["Image_URL"].string!,
     id: json["DATA"][index]["p_ImageList"][indexImage]["Image_ID"].string!
     )
     my_Product.image.append(image)
     
     }
     my_Product.owner.phoneNumber = json["DATA"][index]["p_Owner"]["PhoneNumber"].string!
     return my_Product
     
     }
     */
    static func movie(json: JSON, index:Int) -> Movie{
        
        let pr_Movie = Movie()
        pr_Movie.movie_title = json["DATA"][index].string!
        
        return pr_Movie
    }
}













