//
//  QuestionData.swift
//  PersonalityQuiz
//
//  Created by Jarvis Rojas on 8/16/19.
//  Copyright © 2019 Jarvis Rojas. All rights reserved.
//

import Foundation
struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
    case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character{
    case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "You are incredibly outgoing. You surround yourself with the people you love and enjoy activities with your freinds."
            
        case .cat:
            return "Mishievous, yet mild-tempered, you enjoy doing things on your own terms."
            
        case .rabbit:
            return "You love everything that's soft. You are healthy and full of energy."
            
        case .turtle:
            return "You are wise beyond you years, and you focus on the details. Slow and steady wins the race."
        }
    }
}

var questions: [Question] = [
    Question(text: "Which food do you like the most?",
             type: .single,
             answers: [
                Answer(text: "Steak", type: .dog),
                Answer(text: "Fish", type: .turtle),
                Answer(text: "Carrots", type: .rabbit),
                Answer(text: "Chicken", type: .cat)]),
    
    Question(text: "Which activities do you enjoy?",
             type: .multiple,
             answers: [
                Answer(text: "Swimming", type: .turtle),
                Answer(text: "Sleeping", type: .cat),
                Answer(text: "Cuddling", type: .rabbit),
                Answer(text: "Eating", type: .dog)]),
    
    Question(text: "How much do you enjoy car rides?",
             type: .ranged,
             answers: [
                Answer(text: "I dislike them", type: .cat),
                Answer(text: "I get a little nervous", type: .rabbit),
                Answer(text: "I barely notice them", type: .turtle),
                Answer(text: "i love them", type: .dog)])
]
