//
//  movies.swift
//  Cw9
//
//  Created by Aisha AlQabandi on 05/11/2022.
//

import Foundation

struct movie: Identifiable {
    let id = UUID()
    
    var name: String //movie's name
    var actors: [String] //actors
}

var InglouriousBasterds = movie(name: "Inglourious Basterds", actors: ["Christoph Waltz", "Brad Pitt", "Eli Roth", "Melanie Laurent"]) //name of movie here = name of movie image
var threehundred = movie(name: "300", actors: ["David Wenham", "Rodrigo Santoro", "Gerard Butler", "Dominic West"])
var thematrix = movie(name: "The Matrix", actors: ["Keanu Reeves", "Laurence Fishburn", "Carrie-Ann Moss", "Marcus Chong"])

var movies = [InglouriousBasterds, threehundred, thematrix]
