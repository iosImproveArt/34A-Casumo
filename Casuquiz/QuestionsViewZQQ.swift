//
//  QuestionsView.swift
//  Zodiac-Quiz
//
//  Created by Improve on 16.12.2024.
//

import SwiftUI

struct QuestionsViewCasuquiz: View {
    @State var selectedQuestion: Tab4Question = Tab4Question.list.randomElement()!
    @State var showHint1 = false
    @State var showHint2 = false
    @State var showAnswer = false
    
    var body: some View {
        VStack {
            if isInternetAvailable() {
                
                Spacer()
                
                Image("tab4.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        Text(selectedQuestion.question)
                            .withFont(size: 23, weight: .medium, color: .white)
                            .padding(.horizontal, 70)
                            .multilineTextAlignment(.center)
                            .padding(.bottom)
                    }
                    .padding(.horizontal, 30)
                
                Spacer()
                
                Button {
                    showHint1 = true
                } label: {
                    Image("tab4.\(showHint1 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint1 ? selectedQuestion.hint1: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint1 ? .black: .white)
                                    .padding(.trailing, 40)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }
                
                Button {
                    showHint2 = true
                } label: {
                    Image("tab4.\(showHint2 ? "on": "off")")
                        .padding(.horizontal, 40)
                        .overlay {
                            HStack {
                                Image("tab4.lamp")
                                Spacer()
                                Text(showHint2 ? selectedQuestion.hint2: "Show first hint")
                                    .withFont(size: 18, weight: .regular, color: showHint2 ? .black: .white)
                                    .padding(.trailing, 40)
                                Spacer()
                                Spacer()
                                Spacer()
                            }
                        }
                }.padding(.top, isSE ? 0: 30)
                    .disabled(!showHint1)
                Spacer()
                
                HStack {
                    Spacer()
                    
                    Button {
                        showHint1 = false
                        showHint2 = false
                        showAnswer = false
                        
                        selectedQuestion = Tab4Question.list.randomElement()!
                    } label: {
                        Image("tab4.generate")
                    }
                    
                    Spacer()
                    
                    Button {
                        showAnswer = true
                    } label: {
                        Image("tab4.answer")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                            .overlay {
                                Text(showAnswer ? selectedQuestion.answer: "Show answer")
                                    .withFont(size: 15, weight: .regular)
                            }
                    }
                    .frame(width: 170)
                    
                    Spacer()
                }
                Spacer()
            } else {
                VStack {
                    Spacer()
                    Text("Connection error")
                        .withFont(size: 30, weight: .bold)
                    Text("To use this feature, please connect to the network.")
                        .withFont(size: 20, weight: .regular)
                        .multilineTextAlignment(.center)
                        .padding(30)
                    Spacer()
                }
            }
        }
    }
}

#Preview {
    ContentViewCasuquiz(showLoading: false, selectedTab: .questions)
}

struct Tab4Question {
    let question: String
    let hint1: String
    let hint2: String
    let answer: String
    
    static let list: [Tab4Question] = [
        Tab4Question(
            question: "What is the capital city of France?",
            hint1: "It's known as the 'City of Light.'",
            hint2: "It's home to the Eiffel Tower.",
            answer: "Paris"
        ),
        Tab4Question(
            question: "What is the largest planet in our solar system?",
            hint1: "It is known for its Great Red Spot.",
            hint2: "It is the fifth planet from the Sun.",
            answer: "Jupiter"
        ),
        Tab4Question(
            question: "What element does the chemical symbol 'O' represent?",
            hint1: "It's essential for breathing.",
            hint2: "It makes up about 21% of Earth's atmosphere.",
            answer: "Oxygen"
        ),
        Tab4Question(
            question: "What is the tallest mountain in the world?",
            hint1: "It is located in the Himalayas.",
            hint2: "Its peak is over 8,800 meters above sea level.",
            answer: "Mount Everest"
        ),
        Tab4Question(
            question: "Who painted the Mona Lisa?",
            hint1: "He was an Italian Renaissance artist.",
            hint2: "His name is associated with genius and innovation.",
            answer: "Leonardo da Vinci"
        ),
        Tab4Question(
            question: "What is the smallest continent by land area?",
            hint1: "It is both a country and a continent.",
            hint2: "It is located in the Southern Hemisphere.",
            answer: "Australia"
        ),
        Tab4Question(
            question: "What is the chemical formula for water?",
            hint1: "It contains two hydrogen atoms.",
            hint2: "It also contains one oxygen atom.",
            answer: "H2O"
        ),
        Tab4Question(
            question: "What is the freezing point of water in Celsius?",
            hint1: "It is a round number.",
            hint2: "It is less than 10.",
            answer: "0 degrees Celsius"
        ),
        Tab4Question(
            question: "Which animal is known as the King of the Jungle?",
            hint1: "It is a large carnivorous feline.",
            hint2: "It is commonly found in Africa.",
            answer: "Lion"
        ),
        Tab4Question(
            question: "What is the primary language spoken in Brazil?",
            hint1: "It is not Spanish.",
            hint2: "It is the official language of Portugal.",
            answer: "Portuguese"
        ),
        Tab4Question(
                question: "What is the largest mammal in the world?",
                hint1: "It lives in the ocean.",
                hint2: "It is a species of whale.",
                answer: "Blue Whale"
            ),
            Tab4Question(
                question: "What is the smallest unit of matter?",
                hint1: "It is the building block of all things.",
                hint2: "It contains protons, neutrons, and electrons.",
                answer: "Atom"
            ),
            Tab4Question(
                question: "What is the longest river in Africa?",
                hint1: "It flows through Egypt.",
                hint2: "It is often associated with ancient civilizations.",
                answer: "Nile River"
            ),
            Tab4Question(
                question: "Who is known as the father of computers?",
                hint1: "He designed the Analytical Engine.",
                hint2: "His first name is Charles.",
                answer: "Charles Babbage"
            ),
            Tab4Question(
                question: "What planet is known as the Red Planet?",
                hint1: "It is the fourth planet from the Sun.",
                hint2: "Its surface is covered in iron oxide.",
                answer: "Mars"
            ),
            Tab4Question(
                question: "What is the boiling point of water in Celsius?",
                hint1: "It is a round number.",
                hint2: "It is greater than 90 but less than 110.",
                answer: "100 degrees Celsius"
            ),
            Tab4Question(
                question: "What is the name of the ship that famously sank in 1912?",
                hint1: "It was called 'unsinkable.'",
                hint2: "It hit an iceberg during its maiden voyage.",
                answer: "Titanic"
            ),
            Tab4Question(
                question: "Which organ is responsible for pumping blood through the body?",
                hint1: "It is a muscular organ.",
                hint2: "It has four chambers.",
                answer: "Heart"
            ),
            Tab4Question(
                question: "What is the largest desert in the world?",
                hint1: "It is located in Africa.",
                hint2: "It is known for its extreme heat and size.",
                answer: "Sahara Desert"
            ),
            Tab4Question(
                question: "Who wrote the play 'Romeo and Juliet'?",
                hint1: "He is an English playwright.",
                hint2: "He is also known for 'Hamlet' and 'Macbeth.'",
                answer: "William Shakespeare"
            ),
            Tab4Question(
                question: "What is the fastest land animal?",
                hint1: "It can run up to 75 mph.",
                hint2: "It is known for its spotted coat.",
                answer: "Cheetah"
            ),
            Tab4Question(
                question: "Which country is famous for its maple syrup?",
                hint1: "It has a red maple leaf on its flag.",
                hint2: "It is located in North America.",
                answer: "Canada"
            ),
            Tab4Question(
                question: "What gas do plants absorb during photosynthesis?",
                hint1: "It is exhaled by humans.",
                hint2: "Its chemical formula is CO2.",
                answer: "Carbon Dioxide"
            ),
            Tab4Question(
                question: "What is the name of the largest ocean on Earth?",
                hint1: "It borders Asia, Australia, and the Americas.",
                hint2: "Its name means 'peaceful.'",
                answer: "Pacific Ocean"
            ),
            Tab4Question(
                question: "What is the hardest natural substance on Earth?",
                hint1: "It is often used in jewelry.",
                hint2: "It is a form of carbon.",
                answer: "Diamond"
            ),
            Tab4Question(
                question: "Who discovered penicillin?",
                hint1: "He was a Scottish scientist.",
                hint2: "His first name is Alexander.",
                answer: "Alexander Fleming"
            ),
            Tab4Question(
                question: "What is the term for an animal that eats both plants and meat?",
                hint1: "Humans are an example.",
                hint2: "The term starts with 'O.'",
                answer: "Omnivore"
            ),
            Tab4Question(
                question: "What is the process by which plants make their food?",
                hint1: "It involves sunlight.",
                hint2: "It produces oxygen as a byproduct.",
                answer: "Photosynthesis"
            ),
            Tab4Question(
                question: "What is the largest bone in the human body?",
                hint1: "It is located in the leg.",
                hint2: "It connects the hip to the knee.",
                answer: "Femur"
            ),
            Tab4Question(
                question: "Who painted the ceiling of the Sistine Chapel?",
                hint1: "He was an Italian Renaissance artist.",
                hint2: "His name is Michelangelo.",
                answer: "Michelangelo"
            ),
            Tab4Question(
                question: "What is the most abundant gas in Earth's atmosphere?",
                hint1: "It makes up about 78% of the atmosphere.",
                hint2: "Its chemical symbol is N2.",
                answer: "Nitrogen"
            ),
            Tab4Question(
                question: "What is the smallest country in the world?",
                hint1: "It is located within the city of Rome.",
                hint2: "It is home to the Pope.",
                answer: "Vatican City"
            ),
            Tab4Question(
                question: "What is the primary ingredient in sushi?",
                hint1: "It is a type of grain.",
                hint2: "It is often combined with seaweed and fish.",
                answer: "Rice"
            ),
            Tab4Question(
                question: "Which planet has the most moons?",
                hint1: "It is the largest planet in the solar system.",
                hint2: "Its most famous moons include Europa and Io.",
                answer: "Jupiter"
            ),
        Tab4Question(
                question: "What is the primary metal used in making coins?",
                hint1: "It is commonly alloyed with zinc.",
                hint2: "Its chemical symbol is Cu.",
                answer: "Copper"
            ),
            Tab4Question(
                question: "What is the closest star to Earth?",
                hint1: "It provides light and warmth to our planet.",
                hint2: "It is at the center of our solar system.",
                answer: "The Sun"
            ),
            Tab4Question(
                question: "What is the most spoken language in the world?",
                hint1: "It is the official language of China.",
                hint2: "It is also known as Mandarin.",
                answer: "Chinese"
            ),
            Tab4Question(
                question: "Which planet is famous for its rings?",
                hint1: "It is the sixth planet from the Sun.",
                hint2: "Its rings are made mostly of ice and rock.",
                answer: "Saturn"
            ),
            Tab4Question(
                question: "What is the largest internal organ in the human body?",
                hint1: "It plays a key role in detoxification.",
                hint2: "It produces bile for digestion.",
                answer: "Liver"
            ),
            Tab4Question(
                question: "Which country is home to the Great Barrier Reef?",
                hint1: "It is both a country and a continent.",
                hint2: "It is located in the Southern Hemisphere.",
                answer: "Australia"
            ),
            Tab4Question(
                question: "What is the smallest particle of an element that retains its chemical properties?",
                hint1: "It is the building block of molecules.",
                hint2: "It consists of protons, neutrons, and electrons.",
                answer: "Atom"
            ),
            Tab4Question(
                question: "Which explorer is credited with discovering America in 1492?",
                hint1: "He was sponsored by Spain.",
                hint2: "His name is Christopher.",
                answer: "Christopher Columbus"
            ),
            Tab4Question(
                question: "What is the term for molten rock before it erupts from a volcano?",
                hint1: "It is found beneath the Earth's surface.",
                hint2: "When it erupts, it is called lava.",
                answer: "Magma"
            ),
            Tab4Question(
                question: "What is the only metal that is liquid at room temperature?",
                hint1: "Its chemical symbol is Hg.",
                hint2: "It is often used in thermometers.",
                answer: "Mercury"
            ),
            Tab4Question(
                question: "Which sea creature has eight legs and can squirt ink?",
                hint1: "It is a cephalopod.",
                hint2: "Its name starts with 'O.'",
                answer: "Octopus"
            ),
            Tab4Question(
                question: "What is the hardest rock in the world?",
                hint1: "It is commonly used in cutting tools.",
                hint2: "It is often used in jewelry.",
                answer: "Diamond"
            ),
            Tab4Question(
                question: "What is the chemical symbol for gold?",
                hint1: "It is a precious metal.",
                hint2: "Its symbol is two letters, starting with 'A.'",
                answer: "Au"
            ),
            Tab4Question(
                question: "Which planet is nicknamed the Morning Star or Evening Star?",
                hint1: "It is the second planet from the Sun.",
                hint2: "It is the hottest planet in the solar system.",
                answer: "Venus"
            ),
            Tab4Question(
                question: "Which ocean is the smallest and shallowest?",
                hint1: "It surrounds the North Pole.",
                hint2: "It is bordered by Eurasia and North America.",
                answer: "Arctic Ocean"
            ),
            Tab4Question(
                question: "What is the name of the scientist who proposed the theory of relativity?",
                hint1: "He is one of the most famous physicists in history.",
                hint2: "His first name is Albert.",
                answer: "Albert Einstein"
            ),
            Tab4Question(
                question: "What is the term for animals that are active during the day?",
                hint1: "The opposite term is 'nocturnal.'",
                hint2: "The word starts with 'D.'",
                answer: "Diurnal"
            ),
            Tab4Question(
                question: "What is the tallest building in the world as of 2025?",
                hint1: "It is located in Dubai.",
                hint2: "Its name starts with 'Burj.'",
                answer: "Burj Khalifa"
            ),
            Tab4Question(
                question: "Which gas is most commonly used in balloons to make them float?",
                hint1: "It is lighter than air.",
                hint2: "Its atomic number is 2.",
                answer: "Helium"
            ),
            Tab4Question(
                question: "What is the primary ingredient in guacamole?",
                hint1: "It is a green fruit.",
                hint2: "It is high in healthy fats.",
                answer: "Avocado"
            ),
            Tab4Question(
                question: "Which famous scientist formulated the laws of motion?",
                hint1: "His last name starts with 'N.'",
                hint2: "He is also known for the theory of gravity.",
                answer: "Isaac Newton"
            ),
            Tab4Question(
                question: "What is the largest freshwater lake in the world by volume?",
                hint1: "It is located in Siberia, Russia.",
                hint2: "Its name starts with 'B.'",
                answer: "Lake Baikal"
            ),
            Tab4Question(
                question: "Which country gifted the Statue of Liberty to the United States?",
                hint1: "It is located in Europe.",
                hint2: "Its capital is Paris.",
                answer: "France"
            ),
            Tab4Question(
                question: "What is the name of the process by which plants lose water through their leaves?",
                hint1: "It is part of the water cycle.",
                hint2: "The term starts with 'T.'",
                answer: "Transpiration"
            )
    ]
}


import Network

func isInternetAvailable() -> Bool {
    let monitor = NWPathMonitor()
    let queue = DispatchQueue(label: "NetworkMonitor")
    var isAvailable = false
    
    monitor.pathUpdateHandler = { path in
        if path.status == .satisfied {
            isAvailable = true
        } else {
            isAvailable = false
        }
    }
    
    monitor.start(queue: queue)
    Thread.sleep(forTimeInterval: 0.1)
    monitor.cancel()
    
    return isAvailable
}
