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
        
        list.append(Question(id: 2, questionImage: UIImage(named: "Aerodactyl")!, questionText: "Is It Madona", answer: "Aerodactyl", character: "Diego Maradona", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Magnemite", secondOption: "Clefable", thirdOption: "Dugtrio", fourthOption: "Aerodactyl"))
        
        list.append(Question(id: 1, questionImage: UIImage(named: "Alakazam")!, questionText: "Is It Madona", answer: "Alakazam", character: "Diego Maradona", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Cubone", secondOption: "Aerodactyl", thirdOption: "Alakazam", fourthOption: "Doduo"))
        list.append(Question(id: 1, questionImage: UIImage(named: "Arbok")!, questionText: "Is It Madona", answer: "Arbok", character: "Diego Maradona", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Clefable", secondOption: "Arbok", thirdOption: "Electrode", fourthOption: "Bulbasaur"))
        list.append(Question(id: 1, questionImage: UIImage(named: "Arcanine")!, questionText: "Is It Madona", answer: "Arcanine", character: "Diego Maradona", shortDescription: "He is an argentine Footballer.", levelId: 1, firstOption: "Caterpie", secondOption: "Dewgong", thirdOption: "Charmander", fourthOption: "Arcanine"))
        /*
        list.append(Question(id: 2, questionImage: UIImage(named: "pele_A")!, questionText: "Here is pele...", answer: true,character: "Pele",shortDescription: "He is an argentine Footballer.", levelId: 1))
        list.append(Question(id: 3, questionImage: UIImage(named: "David Beckham_A")!, questionText: "David Bhuiya!...", answer: false,character: "Beckham",shortDescription: "He is an argentine Footballer.", levelId: 2))
        list.append(Question(id: 4, questionImage: UIImage(named: "Socrates_A")!, questionText: "Yes Socrates", answer: true,character: "Socrates",shortDescription: "He is an argentine Footballer.", levelId: 3))
        list.append(Question(id: 5, questionImage: UIImage(named: "Roberto Carlos_A")!, questionText: "I think ronaldo?", answer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 4))
        list.append(Question(id: 5, questionImage: UIImage(named: "Roberto Carlos_A")!, questionText: "I think ronaldo?", answer: false,character: "Roberto Carlos",shortDescription: "He is an argentine Footballer.", levelId: 5))
       
      */
       
       
      
   
    }
}
