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
        let item = Question(id: 1, questionImage: UIImage(named: "Abra")!, questionText: "Is It Madona", answer: "Abra", character: "Abra", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Abra", secondOption: "Aerodactyl", thirdOption: "Alakazam", fourthOption: "Arbok")
        
        
        /*
        let item = Question(id: 1, questionImage: UIImage(named: "Diego Maradona_A")!, questionText: "Is It Madona", answer: false, character: "Diego Maradona", shortDescription: "Maradona played in four FIFA World Cups, including the 1986 World Cup in Mexico where he captained Argentina and led them to victory over West Germany in the final, and won the Golden Ball as the tournament's best player.", levelId: 1)
      */
        
        //add the Questin to the list of question
        list.append(item)
        
        list.append(Question(id: 2, questionImage: UIImage(named: "Aerodactyl")!, questionText: "Is It Madona", answer: "Aerodactyl", character: "Aerodactyl", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Magnemite", secondOption: "Clefable", thirdOption: "Dugtrio", fourthOption: "Aerodactyl"))
        
        list.append(Question(id: 3, questionImage: UIImage(named: "Alakazam")!, questionText: "Is It Madona", answer: "Alakazam", character: "Alakazam", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Cubone", secondOption: "Aerodactyl", thirdOption: "Alakazam", fourthOption: "Doduo"))
        list.append(Question(id: 4, questionImage: UIImage(named: "Arbok")!, questionText: "Is It Madona", answer: "Arbok", character: "Arbok", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Clefable", secondOption: "Arbok", thirdOption: "Electrode", fourthOption: "Bulbasaur"))
        list.append(Question(id: 5, questionImage: UIImage(named: "Arcanine")!, questionText: "Is It Madona", answer: "Arcanine", character: "Arcanine", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Caterpie", secondOption: "Dewgong", thirdOption: "Charmander", fourthOption: "Arcanine"))
        list.append(Question(id: 6, questionImage: UIImage(named: "Articuno")!, questionText: "Is It Madona", answer: "Articuno", character: "Articuno", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Articuno", secondOption: "Clefairy", thirdOption: "Dewgong", fourthOption: "Doduo"))
        list.append(Question(id: 7, questionImage: UIImage(named: "Beedrill")!, questionText: "Is It Madona", answer: "Beedrill", character: "Beedrill", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Articuno", secondOption: "Eevee", thirdOption: "Golbat", fourthOption: "Beedrill"))
        list.append(Question(id: 8, questionImage: UIImage(named: "Bellsprout")!, questionText: "Is It Madona", answer: "Bellsprout", character: "Bellsprout", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Chansey", secondOption: "Bellsprout", thirdOption: "Golbat", fourthOption: "Beedrill"))
        list.append(Question(id: 9, questionImage: UIImage(named: "Blastoise")!, questionText: "Is It Madona", answer: "Blastoise", character: "Blastoise", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Chansey", secondOption: "Bellsprout", thirdOption: "Blastoise", fourthOption: "Beedrill"))
        list.append(Question(id: 10, questionImage: UIImage(named: "Bulbasaur")!, questionText: "Is It Madona", answer: "Bulbasaur", character: "Bulbasaur", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Chansey", secondOption: "Bellsprout", thirdOption: "Blastoise", fourthOption: "Bulbasaur"))
        list.append(Question(id: 11, questionImage: UIImage(named: "Butterfree")!, questionText: "Is It Madona", answer: "Butterfree", character: "Butterfree", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Chansey", secondOption: "Butterfree", thirdOption: "Caterpie", fourthOption: "Bulbasaur"))
        list.append(Question(id: 12, questionImage: UIImage(named: "Caterpie")!, questionText: "Is It Madona", answer: "Caterpie", character: "Caterpie", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Ekans", secondOption: "Butterfree", thirdOption: "Dodrio", fourthOption: "Caterpie"))
        list.append(Question(id: 13, questionImage: UIImage(named: "Chansey")!, questionText: "Is It Madona", answer: "Chansey", character: "Chansey", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Chansey", secondOption: "Porygon", thirdOption: "Drowzee", fourthOption: "Rapidash"))
        list.append(Question(id: 14, questionImage: UIImage(named: "Charizard")!, questionText: "Is It Madona", answer: "Charizard", character: "Charizard", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Charizard", secondOption: "Porygon", thirdOption: "Drowzee", fourthOption: "Rapidash"))
        list.append(Question(id: 15, questionImage: UIImage(named: "Charmander")!, questionText: "Is It Madona", answer: "Charmander", character: "Charmander", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "vulpix", secondOption: "Charmander", thirdOption: "Weedle", fourthOption: "Zubat"))
        list.append(Question(id: 16, questionImage: UIImage(named: "Charmeleon")!, questionText: "Is It Madona", answer: "Charmeleon", character: "Charmeleon", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "vulpix", secondOption: "Charmeleon", thirdOption: "Weedle", fourthOption: "Dugtrio"))
        list.append(Question(id: 17, questionImage: UIImage(named: "Clefable")!, questionText: "Is It Madona", answer: "Clefable", character: "Clefable", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Clefable", secondOption: "Persian", thirdOption: "Onix", fourthOption: "Arcanine"))
        list.append(Question(id: 18, questionImage: UIImage(named: "Clefairy")!, questionText: "Is It Madona", answer: "Clefairy", character: "Clefairy", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Clefable", secondOption: "Persian", thirdOption: "Clefairy", fourthOption: "Arcanine"))
        list.append(Question(id: 29, questionImage: UIImage(named: "Cloyster")!, questionText: "Is It Madona", answer: "Cloyster", character: "Cloyster", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Clefable", secondOption: "Dratini", thirdOption: "Cloyster", fourthOption: "Drowzee"))
        list.append(Question(id: 20, questionImage: UIImage(named: "Cubone")!, questionText: "Is It Madona", answer: "Cubone", character: "Cubone", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Clefable", secondOption: "Dratini", thirdOption: "Cubone", fourthOption: "Drowzee"))
        /*
        list.append(Question(id: 2, questionImage: UIImage(named: "pele_A")!, questionText: "Here is pele...", answer: true,character: "Pele",shortDescription: "He is an argentine Footballer.", levelId: 1))
        list.append(Question(id: 3, questionImage: UIImage(named: "David Beckham_A")!, questionText: "David Bhuiya!...", answer: false,character: "Beckham",shortDescription: "He is an argentine Footballer.", levelId: 2))
        list.append(Question(id: 4, questionImage: UIImage(named: "Socrates_A")!, questionText: "Yes Socrates", answer: true,character: "Socrates",shortDescription: "He is an argentine Footballer.", levelId: 3))
        list.append(Question(id: 5, questionImage: UIImage(named: "Roberto Carlos_A")!, questionText: "I think ronaldo?", answer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 4))
        list.append(Question(id: 5, questionImage: UIImage(named: "Roberto Carlos_A")!, questionText: "I think ronaldo?", answer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 5))
       
      */
       
       
      
   
    }
}
