//
//  Modal.swift
//  MovieProjection
//
//  Created by Özgün on 28.05.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit
import SwiftyJSON

class Modal {
    
    class func parseFilm(obj:JSON,complate:(flm:Film)->(),end:()->()){
    
        
        for index in 0..<obj.count{
        
            print(index)
            let ff = Film()
            ff.description = obj[index]["other"]["description"].string!
            let hh = Human()
            hh.image = obj[index]["other"]["directorArray"][0]["image"].string!
            hh.name = obj[index]["other"]["directorArray"][0]["name"].string!
            hh.url = obj[index]["other"]["directorArray"][0]["url"].string!
            hh.image = obj[index]["other"]["directorArray"][0]["image"].string!
            ff.director.append(hh)
            
            
            ff.duration = String(obj[index]["duration"].int!)
            ff.language = obj[index]["language"].string!
            ff.link = obj[index]["movie_imdb_link"].string!
            
            for oo in 0..<obj[index]["other"]["castArray"].count{
                let hh = Human()
                hh.name = obj[index]["other"]["castArray"][oo]["name"].string!
                hh.url = obj[index]["other"]["castArray"][oo]["url"].string!
                hh.image = obj[index]["other"]["castArray"][oo]["image"].string!
                hh.karakter = obj[index]["other"]["castArray"][oo]["character"].string!
                ff.oyuncular.append(hh)
            }
            ff.poster = obj[index]["other"]["poster"].string!
            ff.predicateScore = obj[index]["predicateScore"].double!.roundToPlaces(1)
            ff.title = obj[index]["other"]["title"].string!
            ff.type = obj[index]["other"]["genreString"].string!
            ff.video = obj[index]["video"].string!
            ff.year = obj[index]["title_year"].int!
            complate(flm: ff)
        }
        end()
    
    }
}

extension Double {
    /// Rounds the double to decimal places value
    func roundToPlaces(places:Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return round(self * divisor) / divisor
    }
}

class Film{
    var year = Int()
    var title = String()
    var predicateScore = Double()
    var link = String()
    var type = String()
    var video = String()
    var oyuncular = [Human]()
    var director = [Human]()
    var description = String()
    var poster = String()
    var language = String()
    var duration = String()
    
    

}

class Human{
    var name = String()
    var url = String()
    var image = String()
    var karakter = String()
}