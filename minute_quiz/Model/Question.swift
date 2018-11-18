//
//  Question.swift
//  minute_quiz
//
//  Created by MacBook Pro on 7/29/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class Question {
    //create properties for Question
    let id: Int
    let questionImage: UIImage!
    let questionText: String
    let answer: String
    let character: String
    let shortDescription: String
    let levelId: Int
    let firstOption: String
    let secondOption: String
    let thirdOption: String
    let fourthOption: String
    
    
    
    //initialize properties
    init(id: Int, questionImage: UIImage, questionText:String, answer: String, character: String, shortDescription:String, levelId:Int,firstOption:String,secondOption:String,thirdOption:String,fourthOption:String) {
        self.id = id
        self.questionImage = questionImage
        self.questionText = questionText
        self.answer = answer
        self.character = character
        self.shortDescription = shortDescription
        self.levelId = levelId
        self.firstOption = firstOption
        self.secondOption = secondOption
        self.thirdOption = thirdOption
        self.fourthOption = fourthOption
    }
}
