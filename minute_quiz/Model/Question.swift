//
//  Question.swift
//  minute_quiz
//
//  Created by MacBook Pro on 7/29/18.
//  Copyright © 2018 Code Drizzlers. All rights reserved.
//

import UIKit

class Question {
    //create properties
    let id: Int
    let questionImage: UIImage!
    let questionText: String
    let answer: Bool
    let character: String
    let shortDescription: String
    let levelId: Int
    
    
    //initialize properties
    init(id: Int, questionImage: UIImage, questionText:String, answer: Bool, character: String, shortDescription:String, levelId:Int) {
        self.id = id
        self.questionImage = questionImage
        self.questionText = questionText
        self.answer = answer
        self.character = character
        self.shortDescription = shortDescription
        self.levelId = levelId
    }
}
