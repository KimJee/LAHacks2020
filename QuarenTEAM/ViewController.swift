//
//  ViewController.swift
//  QuarenTIME
//
//  Created by Kastur Koul on 3/27/20.
//  Copyright © 2020 Kastur Koul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var movieSuggest: UILabel!
    @IBOutlet weak var twoLinerOutput: UILabel!
    
    var arrayOfNames = [String]()
    let jokeBank = [
        "I threw a boomerang a few years ago.\n I now live in constant fear.",
        "Parallel lines have so much in common.\n It's a shame they will never meet.",
        "Someone stole my mood ring!\n I don't know how to feel about that.",
        "A Roman legionnaire walks into a bar, holds up two fingers, \nand says 'Five beers please'.",
        "Someone stole my Microsoft Office. \nThey're gonna pay. \nYou have my Word."]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Probably add a , "Fourth" here
        //arrayOfNames = ["First","Second","Third", "Drawing"]
        //arrayOfNames = ["Drawing", "Joke", "Movies", "Nap"]
        arrayOfNames = ["Joke"]
        
        // our arrayOfNames must be segway name

    }

    @IBAction func ButtonPressed(_ sender: Any) {
        let numberOfNames = UInt32(arrayOfNames.count)
        let randomNumber = Int(arc4random() % numberOfNames)
        let vcName = arrayOfNames[randomNumber]
        
       // let vc = storyboard?.instantiateViewController(withIdentifier: vcName)
       // self.present(vc!, animated: true, completion: nil)
        
        performSegue(withIdentifier: vcName, sender:self)
        // Now created the all the transition segue
    }
    
    @IBAction func comedyPressed(_ sender: Any) {
        let arrayOfComedyMovies = ["Monty Python and the Holy Grail (1975)","Duck Soup (1933)","Ferris Bueller's Day Off (1986)","The Princess Bride (1987)","What We Do in the Shadows (2015)"]
        
        let numberOfComedies = Int(arc4random_uniform(UInt32(arrayOfComedyMovies.count)))
        
        movieSuggest.text = arrayOfComedyMovies[numberOfComedies]
    }
    
    @IBAction func animationPressed(_ sender: Any) {
        let arrayOfAnimatedMovies = ["Coco (2017)","How to Train Your Dragon (2010)","Spirited Away (2001)","Shrek (2001)","Ratatoullie (2007)"]
        
        let numberOfAnimation = Int(arc4random_uniform(UInt32(arrayOfAnimatedMovies.count)))
        
        movieSuggest.text = arrayOfAnimatedMovies[numberOfAnimation]
    }
    
    @IBAction func romancePressed(_ sender: Any) {
        let arrayOfRomanceMovies = ["When Harry Met Sally (1986)","Titanic (1997)","Casablanca (1942)","Roman Holiday (1953)","Her (2013)"]
        
        let numberOfRomance = Int(arc4random_uniform(UInt32(arrayOfRomanceMovies.count)))
        
        movieSuggest.text = arrayOfRomanceMovies[numberOfRomance]
        
    }
    
    @IBAction func dramaPressed(_ sender: Any) {
        let arrayOfDramaMovies = ["Lady Bird (2017)","Citizen Kane (1941)","12 Years a Slave (2013)","Rear Window (1954)","The Godfather (1972)"]
        
        let numberOfDrama = Int(arc4random_uniform(UInt32(arrayOfDramaMovies.count)))
        
        movieSuggest.text = arrayOfDramaMovies[numberOfDrama]
    }
    
    @IBAction func horrorPressed(_ sender: Any) {
        let arrayOfHorrorMovies = ["A Quiet Place (2018)","Psycho (1960)","The Silence of the Lambs (1991)","The Cabin in the Woods (2012)","Midsommar (2019)"]
        
        let numberOfHorror = Int(arc4random_uniform(UInt32(arrayOfHorrorMovies.count)))
        
        movieSuggest.text = arrayOfHorrorMovies[numberOfHorror]
    }
    
    @IBAction func superheroPressed(_ sender: Any) {
        let arrayOfHeroMovies = ["Wonder Woman (2017)","Thor: Ragnarok (2017)","Spider-Man: Into the Spider-verse (2018)","The Dark Knight (2008)","Superman (1978)", "Spider-Man: Far from Home (2019)"]
        
        let numberOfHero = Int(arc4random_uniform(UInt32(arrayOfHeroMovies.count)))
        
        movieSuggest.text = arrayOfHeroMovies[numberOfHero]
        
    }
    
    @IBAction func twoLinePress(_ sender: Any) {
        let numberOfJokes = Int(arc4random_uniform(UInt32(jokeBank.count)))
        
        twoLinerOutput.text = jokeBank[numberOfJokes]
    }

    /*
     
     Natalia's Stuff
     
     */

}

