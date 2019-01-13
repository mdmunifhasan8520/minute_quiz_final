//
//  QuestionBank.swift
//  minute_quiz
//
//  Created by MacBook Pro on 7/29/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class QuestionBank {
    
    //create an array of question object
    var list = [Question]()
    
    init() {
        //creating a quiz item and appending it to the list
        let item = Question(id: 1,
                            questionImage: UIImage(named: "Abra")!,
                            questionText: "Is It Madona",
                            answer: "Abra",
                            character: "Abra",
                            shortDescription: "Its a generation 1 pokemon.",
                            levelId: 1,
                            firstOption: "Abra",
                            secondOption: "Aerodactyl",
                            thirdOption: "Alakazam",
                            fourthOption: "Arbok")
        
        
        /*
        let item = Question(id: 1, questionImage: UIImage(named: "Diego Maradona_A")!, questionText: "Is It Madona", answer: false, character: "Diego Maradona", shortDescription: "Maradona played in four FIFA World Cups, including the 1986 World Cup in Mexico where he captained Argentina and led them to victory over West Germany in the final, and won the Golden Ball as the tournament's best player.", levelId: 1)
      */
        
        //add the Questin to the list of question
        list.append(item)
        
        list.append(Question(id: 2,
                             questionImage: UIImage(named: "Aerodactyl")!,
                             questionText: "Is It Madona",
                             answer: "Aerodactyl",
                             character: "Aerodactyl",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Magnemite",
                             secondOption: "Clefable",
                             thirdOption: "Dugtrio",
                             fourthOption: "Aerodactyl"))
        
        list.append(Question(id: 3,
                             questionImage: UIImage(named: "Alakazam")!,
                             questionText: "Is It Madona",
                             answer: "Alakazam",
                             character: "Alakazam",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Cubone",
                             secondOption: "Aerodactyl",
                             thirdOption: "Alakazam",
                             fourthOption: "Doduo"))
        
        list.append(Question(id: 4,
                             questionImage: UIImage(named: "Arbok")!,
                             questionText: "Is It Madona",
                             answer: "Arbok",
                             character: "Arbok",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Clefable",
                             secondOption: "Arbok",
                             thirdOption: "Electrode",
                             fourthOption: "Bulbasaur"))
        
        list.append(Question(id: 5,
                             questionImage: UIImage(named: "Arcanine")!,
                             questionText: "Is It Madona",
                             answer: "Arcanine",
                             character: "Arcanine",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Caterpie",
                             secondOption: "Dewgong",
                             thirdOption: "Charmander",
                             fourthOption: "Arcanine"))
        
        list.append(Question(id: 6,
                             questionImage: UIImage(named: "Articuno")!,
                             questionText: "Is It Madona",
                             answer: "Articuno",
                             character: "Articuno",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Articuno",
                             secondOption: "Clefairy",
                             thirdOption: "Dewgong",
                             fourthOption: "Doduo"))
        
        list.append(Question(id: 7,
                             questionImage: UIImage(named: "Beedrill")!,
                             questionText: "Is It Madona",
                             answer: "Beedrill",
                             character: "Beedrill",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Articuno",
                             secondOption: "Eevee",
                             thirdOption: "Golbat",
                             fourthOption: "Beedrill"))
        
        list.append(Question(id: 8,
                             questionImage: UIImage(named: "Bellsprout")!,
                             questionText: "Is It Madona",
                             answer: "Bellsprout",
                             character: "Bellsprout",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Chansey",
                             secondOption: "Bellsprout",
                             thirdOption: "Golbat",
                             fourthOption: "Beedrill"))
        
        list.append(Question(id: 9,
                             questionImage: UIImage(named: "Blastoise")!,
                             questionText: "Is It Madona",
                             answer: "Blastoise",
                             character: "Blastoise",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Chansey",
                             secondOption: "Bellsprout",
                             thirdOption: "Blastoise",
                             fourthOption: "Beedrill"))
        
        list.append(Question(id: 10,
                             questionImage: UIImage(named: "Bulbasaur")!,
                             questionText: "Is It Madona",
                             answer: "Bulbasaur",
                             character: "Bulbasaur",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 1,
                             firstOption: "Chansey",
                             secondOption: "Bellsprout",
                             thirdOption: "Blastoise",
                             fourthOption: "Bulbasaur"))
        
        list.append(Question(id: 11,
                             questionImage: UIImage(named: "Butterfree")!,
                             questionText: "Is It Madona",
                             answer: "Butterfree",
                             character: "Butterfree",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Chansey",
                             secondOption: "Butterfree",
                             thirdOption: "Caterpie",
                             fourthOption: "Bulbasaur"))
        
        list.append(Question(id: 12,
                             questionImage: UIImage(named: "Caterpie")!,
                             questionText: "Is It Madona",
                             answer: "Caterpie",
                             character: "Caterpie",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Ekans",
                             secondOption: "Butterfree",
                             thirdOption: "Dodrio",
                             fourthOption: "Caterpie"))
        
        list.append(Question(id: 13,
                             questionImage: UIImage(named: "Chansey")!,
                             questionText: "Is It Madona",
                             answer: "Chansey",
                             character: "Chansey",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Chansey",
                             secondOption: "Porygon",
                             thirdOption: "Drowzee",
                             fourthOption: "Rapidash"))
        
        list.append(Question(id: 14,
                             questionImage: UIImage(named: "Charizard")!,
                             questionText: "Is It Madona",
                             answer: "Charizard",
                             character: "Charizard",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Charizard",
                             secondOption: "Porygon",
                             thirdOption: "Drowzee",
                             fourthOption: "Rapidash"))
        
        list.append(Question(id: 15,
                             questionImage: UIImage(named: "Charmander")!,
                             questionText: "Is It Madona",
                             answer: "Charmander",
                             character: "Charmander",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "vulpix",
                             secondOption: "Charmander",
                             thirdOption: "Weedle",
                             fourthOption: "Zubat"))
        
        list.append(Question(id: 16,
                             questionImage: UIImage(named: "Charmeleon")!,
                             questionText: "Is It Madona",
                             answer: "Charmeleon",
                             character: "Charmeleon",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "vulpix",
                             secondOption: "Charmeleon",
                             thirdOption: "Weedle",
                             fourthOption: "Dugtrio"))
        
        list.append(Question(id: 17,
                             questionImage: UIImage(named: "Clefable")!,
                             questionText: "Is It Madona",
                             answer: "Clefable",
                             character: "Clefable",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Clefable",
                             secondOption: "Persian",
                             thirdOption: "Onix",
                             fourthOption: "Arcanine"))
        
        list.append(Question(id: 18,
                             questionImage: UIImage(named: "Clefairy")!,
                             questionText: "Is It Madona",
                             answer: "Clefairy",
                             character: "Clefairy",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Clefable",
                             secondOption: "Persian",
                             thirdOption: "Clefairy",
                             fourthOption: "Arcanine"))
        
        list.append(Question(id: 19,
                             questionImage: UIImage(named: "Cloyster")!,
                             questionText: "Is It Madona",
                             answer: "Cloyster",
                             character: "Cloyster",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cloyster",
                             fourthOption: "Drowzee"))
        
        list.append(Question(id: 20,
                             questionImage: UIImage(named: "Cubone")!,
                             questionText: "Is It Madona",
                             answer: "Cubone",
                             character: "Cubone",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 2,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"))
        
        /*
        list.append(Question(id: 2, questionImage: UIImage(named: "pele_A")!, questionText: "Here is pele...", answer: true,character: "Pele",shortDescription: "He is an argentine Footballer.", levelId: 1))
        list.append(Question(id: 3, questionImage: UIImage(named: "David Beckham_A")!, questionText: "David Bhuiya!...", answer: false,character: "Beckham",shortDescription: "He is an argentine Footballer.", levelId: 2))
        list.append(Question(id: 4, questionImage: UIImage(named: "Socrates_A")!, questionText: "Yes Socrates", answer: true,character: "Socrates",shortDescription: "He is an argentine Footballer.", levelId: 3))
        list.append(Question(id: 5, questionImage: UIImage(named: "Roberto Carlos_A")!, questionText: "I think ronaldo?", answer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 4))
        list.append(Question(id: 5, questionImage: UIImage(named: "Roberto Carlos_A")!, questionText: "I think ronaldo?", answer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 5))
       
      */
       
       
        list.append(Question(id: 21,
                             questionImage: UIImage(named: "Dewgong")!,
                             questionText: "Is It Madona",
                             answer: "Dewgong",
                             character: "Cubone",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Eevee",
                             secondOption: "Dewgong",
                             thirdOption: "Cubone",
                             fourthOption: "Eevee"
        ))
        list.append(Question(id: 22,
                             questionImage: UIImage(named: "Diglett")!,
                             questionText: "Is It Madona",
                             answer: "Diglett",
                             character: "Diglett",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Diglett",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 23,
                             questionImage: UIImage(named: "Ditto")!,
                             questionText: "Is It Madona",
                             answer: "Ditto",
                             character: "Ditto",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Ditto"
        ))
        list.append(Question(id: 24,
                             questionImage: UIImage(named: "Dodrio")!,
                             questionText: "Is It Madona",
                             answer: "Dodrio",
                             character: "Dodrio",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Dodrio",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 25,
                             questionImage: UIImage(named: "Doduo")!,
                             questionText: "Is It Madona",
                             answer: "Doduo",
                             character: "Doduo",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Clefable",
                             secondOption: "Doduo",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 26,
                             questionImage: UIImage(named: "Dragonair")!,
                             questionText: "Is It Madona",
                             answer: "Dragonair",
                             character: "Dragonair",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Dragonair"
        ))
        list.append(Question(id: 27,
                             questionImage: UIImage(named: "Dragonite")!,
                             questionText: "Is It Madona",
                             answer: "Dragonite",
                             character: "Dragonite",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Dragonite",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 28,
                             questionImage: UIImage(named: "Dratini")!,
                             questionText: "Is It Madona",
                             answer: "Dratini",
                             character: "Dratini",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Dratini",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 29,
                             questionImage: UIImage(named: "Drowzee")!,
                             questionText: "Is It Madona",
                             answer: "Drowzee",
                             character: "Drowzee",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 30,
                             questionImage: UIImage(named: "Dugtrio")!,
                             questionText: "Is It Madona",
                             answer: "Dugtrio",
                             character: "Dugtrio",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 3,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Dugtrio"
        ))
        list.append(Question(id: 31,
                             questionImage: UIImage(named: "Eevee")!,
                             questionText: "Is It Madona",
                             answer: "Eevee",
                             character: "Eevee",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Eevee",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 32,
                             questionImage: UIImage(named: "Ekans")!,
                             questionText: "Is It Madona",
                             answer: "Ekans",
                             character: "Ekans",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Ekans"
        ))
        list.append(Question(id: 33,
                             questionImage: UIImage(named: "Electabuzz")!,
                             questionText: "Is It Madona",
                             answer: "Electabuzz",
                             character: "Electabuzz",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Electabuzz",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 34,
                                questionImage: UIImage(named: "Electrode")!,
                                questionText: "Is It Madona",
                                answer: "Electrode",
                                character: "Electrode",
                                shortDescription: "Its a generation 1 pokemon.",
                                levelId: 4,
                                firstOption: "Electrode",
                                secondOption: "Dratini",
                                thirdOption: "Cubone",
                                fourthOption: "Drowzee"
        ))
        list.append(Question(id: 35,
                             questionImage: UIImage(named: "Exeggcute")!,
                             questionText: "Is It Madona",
                             answer: "Exeggcute",
                             character: "Exeggcute",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Exeggcute",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 36,
                             questionImage: UIImage(named: "Exeggutor")!,
                             questionText: "Is It Madona",
                             answer: "Exeggutor",
                             character: "Exeggutor",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Exeggutor"
        ))
        list.append(Question(id: 37,
                             questionImage: UIImage(named: "Farfetch'd")!,
                             questionText: "Is It Madona",
                             answer: "Farfetch'd",
                             character: "Farfetch'd",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Farfetch'd"
        ))
        list.append(Question(id: 38,
                             questionImage: UIImage(named: "Fearow")!,
                             questionText: "Is It Madona",
                             answer: "Fearow",
                             character: "Fearow",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Fearow",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 39,
                             questionImage: UIImage(named: "Flareon")!,
                             questionText: "Is It Madona",
                             answer: "Flareon",
                             character: "Flareon",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Flareon",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 40,
                             questionImage: UIImage(named: "Gastly")!,
                             questionText: "Is It Madona",
                             answer: "Gastly",
                             character: "Gastly",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 4,
                             firstOption: "Gastly",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 41,
                             questionImage: UIImage(named: "Gengar")!,
                             questionText: "Is It Madona",
                             answer: "Gengar",
                             character: "Gengar",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Gengar",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 42,
                             questionImage: UIImage(named: "Geodude")!,
                             questionText: "Is It Madona",
                             answer: "Geodude",
                             character: "Geodude",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Geodude"
        ))
        list.append(Question(id: 43,
                             questionImage: UIImage(named: "Gloom")!,
                             questionText: "Is It Madona",
                             answer: "Gloom",
                             character: "Gloom",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Gloom",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 44,
                                questionImage: UIImage(named: "Golbat")!,
                                questionText: "Is It Madona",
                                answer: "Golbat",
                                character: "Golbat",
                                shortDescription: "Its a generation 1 pokemon.",
                                levelId: 5,
                                firstOption: "Clefable",
                                secondOption: "Golbat",
                                thirdOption: "Cubone",
                                fourthOption: "Drowzee"
        ))
        list.append(Question(id: 45,
                             questionImage: UIImage(named: "Goldeen")!,
                             questionText: "Is It Madona",
                             answer: "Goldeen",
                             character: "Goldeen",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Goldeen",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 46,
                             questionImage: UIImage(named: "Golduck")!,
                             questionText: "Is It Madona",
                             answer: "Golduck",
                             character: "Golduck",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Golduck",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 47,
                             questionImage: UIImage(named: "Golem")!,
                             questionText: "Is It Madona",
                             answer: "Golem",
                             character: "Golem",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Golem",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 48,
                             questionImage: UIImage(named: "Graveler")!,
                             questionText: "Is It Madona",
                             answer: "Graveler",
                             character: "Graveler",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Graveler",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 49,
                             questionImage: UIImage(named: "Grimer")!,
                             questionText: "Is It Madona",
                             answer: "Grimer",
                             character: "Grimer",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Grimer",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 50,
                             questionImage: UIImage(named: "Growlithe")!,
                             questionText: "Is It Madona",
                             answer: "Growlithe",
                             character: "Growlithe",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 5,
                             firstOption: "Growlithe",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 51,
                             questionImage: UIImage(named: "Gyarados")!,
                             questionText: "Is It Madona",
                             answer: "Gyarados",
                             character: "Gyarados",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Gyarados",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 52,
                             questionImage: UIImage(named: "Haunter")!,
                             questionText: "Is It Madona",
                             answer: "Haunter",
                             character: "Haunter",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Haunter"
        ))
        list.append(Question(id: 53,
                             questionImage: UIImage(named: "Hitmonchan")!,
                             questionText: "Is It Madona",
                             answer: "Hitmonchan",
                             character: "Hitmonchan",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Hitmonchan",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 54,
                             questionImage: UIImage(named: "Hitmonlee")!,
                             questionText: "Is It Madona",
                             answer: "Hitmonlee",
                             character: "Hitmonlee",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Clefable",
                             secondOption: "Dratini",
                             thirdOption: "Cubone",
                             fourthOption: "Hitmonlee"
        ))
        list.append(Question(id: 55,
                             questionImage: UIImage(named: "Horsea")!,
                             questionText: "Is It Madona",
                             answer: "Horsea",
                             character: "Horsea",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Jolteon",
                             secondOption: "Horsea",
                             thirdOption: "Hypno",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 56,
                             questionImage: UIImage(named: "Hypno")!,
                             questionText: "Is It Madona",
                             answer: "Hypno",
                             character: "Hypno",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Clefable",
                             secondOption: "Hypno",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 57,
                             questionImage: UIImage(named: "Ivysaur")!,
                             questionText: "Is It Madona",
                             answer: "Ivysaur",
                             character: "Ivysaur",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Ivysaur",
                             secondOption: "Dratini",
                             thirdOption: "Growlithe",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 58,
                             questionImage: UIImage(named: "Jigglypuff")!,
                             questionText: "Is It Madona",
                             answer: "Jigglypuff",
                             character: "Jigglypuff",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Clefable",
                             secondOption: "Jigglypuff",
                             thirdOption: "Cubone",
                             fourthOption: "Golduckzee"
        ))
        list.append(Question(id: 59,
                             questionImage: UIImage(named: "Jolteon")!,
                             questionText: "Is It Madona",
                             answer: "Jolteon",
                             character: "Jolteon",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Gengar",
                             secondOption: "Gyarados",
                             thirdOption: "Cubone",
                             fourthOption: "Jolteon"
        ))
        list.append(Question(id: 60,
                             questionImage: UIImage(named: "Jynx")!,
                             questionText: "Is It Madona",
                             answer: "Jynx",
                             character: "Jynx",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 6,
                             firstOption: "Golem",
                             secondOption: "Dratini",
                             thirdOption: "Jynx",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 61,
                             questionImage: UIImage(named: "Kabuto")!,
                             questionText: "Is It Madona",
                             answer: "Kabuto",
                             character: "Kabuto",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Kabuto",
                             secondOption: "Dratini",
                             thirdOption: "Kingler",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 62,
                             questionImage: UIImage(named: "Kabutops")!,
                             questionText: "Is It Madona",
                             answer: "Kabutops",
                             character: "Kabutops",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Kabuto",
                             secondOption: "Kabutops",
                             thirdOption: "Horsea",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 63,
                             questionImage: UIImage(named: "Kadabra")!,
                             questionText: "Is It Madona",
                             answer: "Kadabra",
                             character: "Kadabra",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Fearow",
                             secondOption: "Kadabra",
                             thirdOption: "Gastly",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 64,
                             questionImage: UIImage(named: "Kakuna")!,
                             questionText: "Is It Madona",
                             answer: "Kakuna",
                             character: "Kakuna",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Eevee",
                             secondOption: "Kakuna",
                             thirdOption: "Doduo",
                             fourthOption: "Butterfree"
        ))
        list.append(Question(id: 65,
                             questionImage: UIImage(named: "Kangaskhan")!,
                             questionText: "Is It Madona",
                             answer: "Kangaskhan",
                             character: "Kangaskhan",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Kangaskhan",
                             secondOption: "Dratini",
                             thirdOption: "Butterfree",
                             fourthOption: "Arbok"
        ))
        list.append(Question(id: 66,
                             questionImage: UIImage(named: "Kingler")!,
                             questionText: "Is It Madona",
                             answer: "Kingler",
                             character: "Kingler",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Kingler",
                             secondOption: "Dragonair",
                             thirdOption: "Gastly",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 67,
                             questionImage: UIImage(named: "Koffing")!,
                             questionText: "Is It Madona",
                             answer: "Koffing",
                             character: "Koffing",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Flare-on",
                             secondOption: "Dratini",
                             thirdOption: "Koffing",
                             fourthOption: "Ekans"
        ))
        list.append(Question(id: 68,
                             questionImage: UIImage(named: "Krabby")!,
                             questionText: "Is It Madona",
                             answer: "Krabby",
                             character: "Krabby",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Clefable",
                             secondOption: "Krabby",
                             thirdOption: "Cubone",
                             fourthOption: "Drowzee"
        ))
        list.append(Question(id: 69,
                             questionImage: UIImage(named: "Lapras")!,
                             questionText: "Is It Madona",
                             answer: "Lapras",
                             character: "Lapras",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Electrode",
                             secondOption: "Graveler",
                             thirdOption: "Golbat",
                             fourthOption: "Lapras"
        ))
        list.append(Question(id: 70,
                             questionImage: UIImage(named: "Lickitung")!,
                             questionText: "Is It Madona",
                             answer: "Lickitung",
                             character: "Lickitung",
                             shortDescription: "Its a generation 1 pokemon.",
                             levelId: 7,
                             firstOption: "Hitmonchan",
                             secondOption: "Lickitung",
                             thirdOption: "Cubone",
                             fourthOption: "Jigglypuff"
))

   
    }
}
