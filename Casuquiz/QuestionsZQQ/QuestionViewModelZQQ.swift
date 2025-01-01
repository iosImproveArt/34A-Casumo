//
//  QuestionViewModel.swift
//  Spirit Quiz
//
//  Created by Improve on 27.10.2024.
//
import SwiftUI

class QuestionViewModelCasuquiz: ObservableObject {
    let typeOfGame: GameTypeZQ
    
    var wrfcwrcf = "3235245"
    var vwrgr = 245245
    func ghtrvwsrgvgvfjk() -> String {
        return "uhnevwrgvwrgvfrijmko"
    }
    func wrvgwrgvwg() {
        print("gnwvrgwrgvmfr")
    }
    
    
    func cwrcfrc() -> Float {
        print(224 / 324)
        return 2244 * 3242
    }
    var wfwrvwr = [42624624.2524524: "wcrfcwrc"]
    @AppStorage("userNickname") var player1 = "IamNewUser"
    @Published var player2 = ""
    @Published var heartCount = 3
    @Published var questionNumber = 1
    
    @Published var player1RightAnswers = 0
    @Published var player2RightAnswers = 0
    
    
    @Published var listOfQuestions: [QuestionCasu]
    @Published var answer = ""
    
    @Published var showFinishView = false
    @Published var showEnterView = false
    
    var currentQuestion: QuestionCasu {
        listOfQuestions[questionNumber - 1]
    }
    
    init(typeOfGame: GameTypeZQ) {
        self.typeOfGame = typeOfGame
        
        if typeOfGame == .withC { player2 = "Computer" }
        if typeOfGame == .withF { showEnterView = true }
        listOfQuestions =  Array(QuestionCasu.advancedQuestions.shuffled().prefix(20))
    }
    
    
    func answerTheQuestion(answer: String) {
        self.answer = answer
        
        if answer == currentQuestion.correctAnswer {
            if questionNumber % 2 == 0 { player2RightAnswers += 1 } else { player1RightAnswers += 1 }
        } else if typeOfGame == .oneP {
            heartCount -= 1
            if heartCount <= 0 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in showFinishView = true }
                return
            }
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            if questionNumber >= 20 || (typeOfGame == .withC && questionNumber >= 19) {
                showFinishView = true
            } else {
                self.answer = ""
                if typeOfGame == .withC {
                    questionNumber += 2
                    player2RightAnswers += [0, 1].randomElement()!
                }
            }
        }
    }
}


enum GameTypeZQ {
    case oneP
    case withC
    case withF
}

struct QuestionCasu {
    let question: String
    let correctAnswer: String
    let answerOptions: [String]
    private let rvrgv = "fwtfwrtf"
    
    static let advancedQuestions: [QuestionCasu] = [
        QuestionCasu(
            question: "Which planet is known as the Red Planet?",
            correctAnswer: "Mars",
            answerOptions: ["Mars", "Venus", "Jupiter", "Saturn"]
        ),
        QuestionCasu(
            question: "What is the most abundant gas in Earth's atmosphere?",
            correctAnswer: "Nitrogen",
            answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Hydrogen"]
        ),
        QuestionCasu(
            question: "Who developed the theory of general relativity?",
            correctAnswer: "Albert Einstein",
            answerOptions: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Niels Bohr"]
        ),
        QuestionCasu(
            question: "What is the capital of Japan?",
            correctAnswer: "Tokyo",
            answerOptions: ["Kyoto", "Osaka", "Tokyo", "Hiroshima"]
        ),
        QuestionCasu(
            question: "Which element is represented by the symbol 'O'?",
            correctAnswer: "Oxygen",
            answerOptions: ["Oxygen", "Osmium", "Gold", "Helium"]
        ),
        QuestionCasu(
            question: "What is the smallest prime number?",
            correctAnswer: "2",
            answerOptions: ["1", "2", "3", "5"]
        ),
        QuestionCasu(
            question: "Which continent is the Sahara Desert located on?",
            correctAnswer: "Africa",
            answerOptions: ["Asia", "Australia", "Africa", "South America"]
        ),
        QuestionCasu(
            question: "Who painted the Mona Lisa?",
            correctAnswer: "Leonardo da Vinci",
            answerOptions: ["Michelangelo", "Leonardo da Vinci", "Raphael", "Donatello"]
        ),
        QuestionCasu(
            question: "What is the hardest natural substance on Earth?",
            correctAnswer: "Diamond",
            answerOptions: ["Gold", "Iron", "Diamond", "Quartz"]
        ),
        QuestionCasu(
            question: "What is the boiling point of water at sea level in Celsius?",
            correctAnswer: "100",
            answerOptions: ["90", "100", "120", "212"]
        ),
        QuestionCasu(
            question: "Which scientist is known as the father of modern physics?",
            correctAnswer: "Galileo Galilei",
            answerOptions: ["Albert Einstein", "Galileo Galilei", "Isaac Newton", "Marie Curie"]
        ),
        QuestionCasu(
            question: "What is the main ingredient in traditional Japanese miso soup?",
            correctAnswer: "Miso paste",
            answerOptions: ["Tofu", "Soy sauce", "Miso paste", "Seaweed"]
        ),
        QuestionCasu(
            question: "Which planet has the most moons?",
            correctAnswer: "Saturn",
            answerOptions: ["Jupiter", "Saturn", "Uranus", "Neptune"]
        ),
        QuestionCasu(
            question: "What is the largest mammal in the world?",
            correctAnswer: "Blue whale",
            answerOptions: ["Elephant", "Blue whale", "Giraffe", "Orca"]
        ),
        QuestionCasu(
            question: "What is the square root of 144?",
            correctAnswer: "12",
            answerOptions: ["10", "12", "14", "16"]
        ),
        QuestionCasu(
            question: "What is the chemical formula for water?",
            correctAnswer: "H2O",
            answerOptions: ["H2O", "CO2", "O2", "NaCl"]
        ),
        QuestionCasu(
            question: "Which country is known as the Land of the Rising Sun?",
            correctAnswer: "Japan",
            answerOptions: ["China", "South Korea", "Japan", "Thailand"]
        ),
        QuestionCasu(
            question: "What is the largest ocean on Earth?",
            correctAnswer: "Pacific Ocean",
            answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"]
        ),
        QuestionCasu(
            question: "Which metal is liquid at room temperature?",
            correctAnswer: "Mercury",
            answerOptions: ["Mercury", "Gold", "Silver", "Aluminum"]
        ),
        QuestionCasu(
            question: "What is the speed of light in a vacuum?",
            correctAnswer: "299,792 km/s",
            answerOptions: ["150,000 km/s", "299,792 km/s", "500,000 km/s", "1,000,000 km/s"]
        ),
        QuestionCasu(
                question: "Which part of the plant conducts photosynthesis?",
                correctAnswer: "Leaves",
                answerOptions: ["Roots", "Stem", "Leaves", "Flowers"]
            ),
            QuestionCasu(
                question: "What is the chemical symbol for sodium?",
                correctAnswer: "Na",
                answerOptions: ["S", "N", "Na", "Sn"]
            ),
            QuestionCasu(
                question: "What is the capital of France?",
                correctAnswer: "Paris",
                answerOptions: ["London", "Rome", "Paris", "Berlin"]
            ),
            QuestionCasu(
                question: "What is the largest planet in the solar system?",
                correctAnswer: "Jupiter",
                answerOptions: ["Earth", "Mars", "Jupiter", "Saturn"]
            ),
            QuestionCasu(
                question: "What is the name of the longest bone in the human body?",
                correctAnswer: "Femur",
                answerOptions: ["Humerus", "Femur", "Tibia", "Ulna"]
            ),
            QuestionCasu(
                question: "Which gas do plants primarily absorb for photosynthesis?",
                correctAnswer: "Carbon dioxide",
                answerOptions: ["Oxygen", "Nitrogen", "Carbon dioxide", "Hydrogen"]
            ),
            QuestionCasu(
                question: "Who wrote the play 'Romeo and Juliet'?",
                correctAnswer: "William Shakespeare",
                answerOptions: ["Jane Austen", "Charles Dickens", "William Shakespeare", "Mark Twain"]
            ),
            QuestionCasu(
                question: "What is the most abundant element in the universe?",
                correctAnswer: "Hydrogen",
                answerOptions: ["Oxygen", "Carbon", "Hydrogen", "Nitrogen"]
            ),
            QuestionCasu(
                question: "What is the freezing point of water in Celsius?",
                correctAnswer: "0",
                answerOptions: ["-1", "0", "1", "32"]
            ),
            QuestionCasu(
                question: "What is the main component of the sun?",
                correctAnswer: "Hydrogen",
                answerOptions: ["Helium", "Hydrogen", "Carbon", "Nitrogen"]
            ),
            QuestionCasu(
                question: "What is the smallest unit of life?",
                correctAnswer: "Cell",
                answerOptions: ["Atom", "Molecule", "Cell", "Tissue"]
            ),
            QuestionCasu(
                question: "Who discovered penicillin?",
                correctAnswer: "Alexander Fleming",
                answerOptions: ["Marie Curie", "Alexander Fleming", "Louis Pasteur", "Gregor Mendel"]
            ),
            QuestionCasu(
                question: "Which planet is closest to the Sun?",
                correctAnswer: "Mercury",
                answerOptions: ["Venus", "Earth", "Mercury", "Mars"]
            ),
            QuestionCasu(
                question: "What is the process by which plants make their own food?",
                correctAnswer: "Photosynthesis",
                answerOptions: ["Respiration", "Photosynthesis", "Transpiration", "Fermentation"]
            ),
            QuestionCasu(
                question: "Which blood type is considered the universal donor?",
                correctAnswer: "O negative",
                answerOptions: ["A positive", "B negative", "O negative", "AB positive"]
            ),
            QuestionCasu(
                question: "What is the term for animals that eat only plants?",
                correctAnswer: "Herbivores",
                answerOptions: ["Carnivores", "Herbivores", "Omnivores", "Insectivores"]
            ),
            QuestionCasu(
                question: "Which organ in the human body is responsible for producing insulin?",
                correctAnswer: "Pancreas",
                answerOptions: ["Liver", "Pancreas", "Kidneys", "Gallbladder"]
            ),
            QuestionCasu(
                question: "What is the largest continent on Earth?",
                correctAnswer: "Asia",
                answerOptions: ["Africa", "Asia", "North America", "Europe"]
            ),
            QuestionCasu(
                question: "What is the name of the first artificial satellite launched into space?",
                correctAnswer: "Sputnik 1",
                answerOptions: ["Apollo 11", "Voyager 1", "Sputnik 1", "Hubble"]
            ),
            QuestionCasu(
                question: "Which is the hottest planet in our solar system?",
                correctAnswer: "Venus",
                answerOptions: ["Mercury", "Venus", "Mars", "Jupiter"]
            ),
            QuestionCasu(
                question: "What is the chemical symbol for gold?",
                correctAnswer: "Au",
                answerOptions: ["Ag", "Au", "Pb", "Fe"]
            ),
            QuestionCasu(
                question: "What is the hardest natural substance known?",
                correctAnswer: "Diamond",
                answerOptions: ["Granite", "Diamond", "Quartz", "Marble"]
            ),
            QuestionCasu(
                question: "Which country is known for the maple leaf on its flag?",
                correctAnswer: "Canada",
                answerOptions: ["USA", "Canada", "Australia", "New Zealand"]
            ),
            QuestionCasu(
                question: "What is the name of the closest galaxy to the Milky Way?",
                correctAnswer: "Andromeda",
                answerOptions: ["Andromeda", "Sombrero", "Whirlpool", "Cartwheel"]
            ),
            QuestionCasu(
                question: "What is the name of the largest desert in the world?",
                correctAnswer: "Antarctic Desert",
                answerOptions: ["Sahara", "Gobi", "Kalahari", "Antarctic Desert"]
            ),
            QuestionCasu(
                question: "Who is known as the 'Father of Computers'?",
                correctAnswer: "Charles Babbage",
                answerOptions: ["Alan Turing", "Charles Babbage", "John von Neumann", "Bill Gates"]
            ),
            QuestionCasu(
                question: "What is the most widely consumed beverage in the world after water?",
                correctAnswer: "Tea",
                answerOptions: ["Coffee", "Tea", "Juice", "Soda"]
            ),
            QuestionCasu(
                question: "What is the smallest planet in our solar system?",
                correctAnswer: "Mercury",
                answerOptions: ["Mars", "Mercury", "Venus", "Pluto"]
            ),
            QuestionCasu(
                question: "What is the name of the process by which a caterpillar becomes a butterfly?",
                correctAnswer: "Metamorphosis",
                answerOptions: ["Evolution", "Transformation", "Metamorphosis", "Transmutation"]
            ),
        QuestionCasu(
                question: "What is the chemical formula for water?",
                correctAnswer: "H2O",
                answerOptions: ["H2O", "CO2", "O2", "H2"]
            ),
            QuestionCasu(
                question: "Which planet is known as the Red Planet?",
                correctAnswer: "Mars",
                answerOptions: ["Jupiter", "Mars", "Venus", "Saturn"]
            ),
            QuestionCasu(
                question: "What is the main gas found in Earth's atmosphere?",
                correctAnswer: "Nitrogen",
                answerOptions: ["Oxygen", "Nitrogen", "Carbon dioxide", "Helium"]
            ),
            QuestionCasu(
                question: "What is the capital of Japan?",
                correctAnswer: "Tokyo",
                answerOptions: ["Kyoto", "Tokyo", "Osaka", "Nagoya"]
            ),
            QuestionCasu(
                question: "What is the SI unit of force?",
                correctAnswer: "Newton",
                answerOptions: ["Pascal", "Joule", "Newton", "Watt"]
            ),
            QuestionCasu(
                question: "Who painted the 'Mona Lisa'?",
                correctAnswer: "Leonardo da Vinci",
                answerOptions: ["Vincent van Gogh", "Leonardo da Vinci", "Michelangelo", "Pablo Picasso"]
            ),
            QuestionCasu(
                question: "What is the tallest mountain in the world?",
                correctAnswer: "Mount Everest",
                answerOptions: ["K2", "Mount Everest", "Kangchenjunga", "Lhotse"]
            ),
            QuestionCasu(
                question: "Which element has the highest melting point?",
                correctAnswer: "Tungsten",
                answerOptions: ["Iron", "Gold", "Tungsten", "Platinum"]
            ),
            QuestionCasu(
                question: "What is the name of the organ responsible for pumping blood in the human body?",
                correctAnswer: "Heart",
                answerOptions: ["Lungs", "Brain", "Heart", "Liver"]
            ),
            QuestionCasu(
                question: "Who was the first person to step on the Moon?",
                correctAnswer: "Neil Armstrong",
                answerOptions: ["Buzz Aldrin", "Yuri Gagarin", "Neil Armstrong", "Michael Collins"]
            ),
            QuestionCasu(
                question: "What is the term for molten rock that erupts from a volcano?",
                correctAnswer: "Lava",
                answerOptions: ["Magma", "Lava", "Ash", "Basalt"]
            ),
            QuestionCasu(
                question: "Which country is the largest by land area?",
                correctAnswer: "Russia",
                answerOptions: ["Canada", "China", "USA", "Russia"]
            ),
            QuestionCasu(
                question: "What is the term for a group of stars forming a recognizable pattern?",
                correctAnswer: "Constellation",
                answerOptions: ["Galaxy", "Constellation", "Cluster", "Nebula"]
            ),
            QuestionCasu(
                question: "What is the name of the first man-made object to orbit Earth?",
                correctAnswer: "Sputnik 1",
                answerOptions: ["Sputnik 1", "Explorer 1", "Voyager 1", "Hubble"]
            ),
            QuestionCasu(
                question: "What is the primary language spoken in Brazil?",
                correctAnswer: "Portuguese",
                answerOptions: ["Spanish", "Portuguese", "English", "French"]
            ),
            QuestionCasu(
                question: "Which animal is known as the 'King of the Jungle'?",
                correctAnswer: "Lion",
                answerOptions: ["Tiger", "Lion", "Elephant", "Leopard"]
            ),
            QuestionCasu(
                question: "What is the process by which water changes from liquid to gas?",
                correctAnswer: "Evaporation",
                answerOptions: ["Condensation", "Evaporation", "Sublimation", "Precipitation"]
            ),
            QuestionCasu(
                question: "Who is the author of 'The Origin of Species'?",
                correctAnswer: "Charles Darwin",
                answerOptions: ["Gregor Mendel", "Charles Darwin", "Isaac Newton", "Albert Einstein"]
            ),
            QuestionCasu(
                question: "What is the main ingredient in traditional Japanese sushi?",
                correctAnswer: "Rice",
                answerOptions: ["Seaweed", "Fish", "Rice", "Soy Sauce"]
            ),
            QuestionCasu(
                question: "What is the smallest particle of an element?",
                correctAnswer: "Atom",
                answerOptions: ["Molecule", "Atom", "Proton", "Neutron"]
            ),
            QuestionCasu(
                question: "Which ocean is the largest by surface area?",
                correctAnswer: "Pacific Ocean",
                answerOptions: ["Atlantic Ocean", "Indian Ocean", "Pacific Ocean", "Arctic Ocean"]
            ),
            QuestionCasu(
                question: "What is the hardest naturally occurring mineral?",
                correctAnswer: "Diamond",
                answerOptions: ["Quartz", "Diamond", "Ruby", "Emerald"]
            ),
            QuestionCasu(
                question: "Who discovered gravity?",
                correctAnswer: "Isaac Newton",
                answerOptions: ["Galileo Galilei", "Isaac Newton", "Albert Einstein", "Nikola Tesla"]
            ),
            QuestionCasu(
                question: "What is the boiling point of water at sea level in Celsius?",
                correctAnswer: "100",
                answerOptions: ["90", "100", "110", "120"]
            ),
            QuestionCasu(
                question: "What is the largest mammal in the world?",
                correctAnswer: "Blue Whale",
                answerOptions: ["Elephant", "Blue Whale", "Giraffe", "Whale Shark"]
            ),
            QuestionCasu(
                question: "Which vitamin is produced when a person is exposed to sunlight?",
                correctAnswer: "Vitamin D",
                answerOptions: ["Vitamin A", "Vitamin B", "Vitamin C", "Vitamin D"]
            ),
            QuestionCasu(
                question: "Which planet is known as the 'Morning Star'?",
                correctAnswer: "Venus",
                answerOptions: ["Mercury", "Mars", "Venus", "Jupiter"]
            ),
            QuestionCasu(
                question: "What is the currency of Japan?",
                correctAnswer: "Yen",
                answerOptions: ["Won", "Yen", "Dollar", "Rupee"]
            ),
            QuestionCasu(
                question: "Which organelle is known as the powerhouse of the cell?",
                correctAnswer: "Mitochondria",
                answerOptions: ["Nucleus", "Mitochondria", "Ribosome", "Chloroplast"]
            ),
        QuestionCasu(
                question: "What is the largest desert in the world?",
                correctAnswer: "Sahara",
                answerOptions: ["Sahara", "Arctic", "Gobi", "Kalahari"]
            ),
            QuestionCasu(
                question: "Which gas is most abundant in Earth's atmosphere?",
                correctAnswer: "Nitrogen",
                answerOptions: ["Oxygen", "Carbon Dioxide", "Nitrogen", "Argon"]
            ),
            QuestionCasu(
                question: "What is the smallest unit of life in all living organisms?",
                correctAnswer: "Cell",
                answerOptions: ["Atom", "Molecule", "Cell", "Organ"]
            ),
            QuestionCasu(
                question: "Which continent is known as the 'Frozen Continent'?",
                correctAnswer: "Antarctica",
                answerOptions: ["Arctic", "Antarctica", "Europe", "Asia"]
            ),
            QuestionCasu(
                question: "What is the square root of 144?",
                correctAnswer: "12",
                answerOptions: ["10", "12", "14", "16"]
            ),
            QuestionCasu(
                question: "Which instrument is used to measure temperature?",
                correctAnswer: "Thermometer",
                answerOptions: ["Barometer", "Thermometer", "Hygrometer", "Anemometer"]
            ),
            QuestionCasu(
                question: "What is the name of the largest ocean on Earth?",
                correctAnswer: "Pacific Ocean",
                answerOptions: ["Atlantic Ocean", "Indian Ocean", "Arctic Ocean", "Pacific Ocean"]
            ),
            QuestionCasu(
                question: "What is the main ingredient in guacamole?",
                correctAnswer: "Avocado",
                answerOptions: ["Tomato", "Avocado", "Onion", "Cucumber"]
            ),
            QuestionCasu(
                question: "Who wrote the play 'Romeo and Juliet'?",
                correctAnswer: "William Shakespeare",
                answerOptions: ["Christopher Marlowe", "William Shakespeare", "John Donne", "Ben Jonson"]
            ),
            QuestionCasu(
                question: "Which organ is primarily responsible for detoxification in the human body?",
                correctAnswer: "Liver",
                answerOptions: ["Kidney", "Liver", "Lungs", "Heart"]
            ),
            QuestionCasu(
                question: "What is the name of the process by which plants make their own food?",
                correctAnswer: "Photosynthesis",
                answerOptions: ["Respiration", "Photosynthesis", "Digestion", "Transpiration"]
            ),
            QuestionCasu(
                question: "What is the chemical symbol for gold?",
                correctAnswer: "Au",
                answerOptions: ["Au", "Ag", "Pt", "Pb"]
            ),
            QuestionCasu(
                question: "Which animal is the largest land carnivore?",
                correctAnswer: "Polar Bear",
                answerOptions: ["Grizzly Bear", "Polar Bear", "Lion", "Tiger"]
            ),
            QuestionCasu(
                question: "What is the name of the boundary between Earth's crust and mantle?",
                correctAnswer: "Mohorovičić Discontinuity",
                answerOptions: ["Core", "Lithosphere", "Mohorovičić Discontinuity", "Asthenosphere"]
            ),
            QuestionCasu(
                question: "Which country is famous for the tulip flower and windmills?",
                correctAnswer: "Netherlands",
                answerOptions: ["Germany", "Netherlands", "Denmark", "Switzerland"]
            ),
            QuestionCasu(
                question: "Who discovered penicillin?",
                correctAnswer: "Alexander Fleming",
                answerOptions: ["Louis Pasteur", "Alexander Fleming", "Marie Curie", "Robert Koch"]
            ),
            QuestionCasu(
                question: "Which is the fastest land animal?",
                correctAnswer: "Cheetah",
                answerOptions: ["Lion", "Tiger", "Cheetah", "Leopard"]
            ),
            QuestionCasu(
                question: "What is the capital of Australia?",
                correctAnswer: "Canberra",
                answerOptions: ["Sydney", "Melbourne", "Canberra", "Brisbane"]
            ),
            QuestionCasu(
                question: "What is the chemical formula for table salt?",
                correctAnswer: "NaCl",
                answerOptions: ["NaCl", "KCl", "HCl", "CaCl"]
            ),
            QuestionCasu(
                question: "Which is the smallest planet in our solar system?",
                correctAnswer: "Mercury",
                answerOptions: ["Mercury", "Mars", "Venus", "Pluto"]
            ),
            QuestionCasu(
                question: "What is the term for a baby goat?",
                correctAnswer: "Kid",
                answerOptions: ["Cub", "Fawn", "Kid", "Lamb"]
            ),
            QuestionCasu(
                question: "Which element is essential for the formation of bones and teeth?",
                correctAnswer: "Calcium",
                answerOptions: ["Iron", "Calcium", "Potassium", "Magnesium"]
            ),
            QuestionCasu(
                question: "What is the scientific name of the human species?",
                correctAnswer: "Homo sapiens",
                answerOptions: ["Homo sapiens", "Homo erectus", "Homo habilis", "Homo neanderthalensis"]
            ),
            QuestionCasu(
                question: "Who developed the theory of relativity?",
                correctAnswer: "Albert Einstein",
                answerOptions: ["Isaac Newton", "Albert Einstein", "Galileo Galilei", "Nikola Tesla"]
            ),
            QuestionCasu(
                question: "What is the process by which plants release oxygen into the atmosphere?",
                correctAnswer: "Photosynthesis",
                answerOptions: ["Respiration", "Photosynthesis", "Transpiration", "Assimilation"]
            ),
            QuestionCasu(
                question: "Which planet is the hottest in our solar system?",
                correctAnswer: "Venus",
                answerOptions: ["Mars", "Venus", "Mercury", "Jupiter"]
            ),
            QuestionCasu(
                question: "What is the name of the longest bone in the human body?",
                correctAnswer: "Femur",
                answerOptions: ["Tibia", "Humerus", "Femur", "Radius"]
            ),
            QuestionCasu(
                question: "What is the study of the weather called?",
                correctAnswer: "Meteorology",
                answerOptions: ["Geology", "Meteorology", "Astronomy", "Ecology"]
            ),
            QuestionCasu(
                question: "What is the capital of Canada?",
                correctAnswer: "Ottawa",
                answerOptions: ["Toronto", "Ottawa", "Montreal", "Vancouver"]
            )
    ]
}
