//
//  Movie.swift
//  MovieProjection
//
//  Created by Saday on 17.05.2017.
//  Copyright © 2017 osxosx. All rights reserved.
//

import UIKit

class Movie {
    
    let youtube_link = "https://www.youtube.com/watch?v="
    var id = String()
    var director_name = String()
    var duration = Int()
    var genres = String()
    var imdb_score = Float()
    var movie_title = String()
    var title_year = Int()
    var trailer = String()
    var description = String()
    var image = [movieImage]()
    var actor = [actors]()
    
    
}

struct movieImage {
    
    var poster = String()
}

struct actors {
    var actor_1_name = String()
    var actor_2_name = String()
    var actor_3_name = String()
}
