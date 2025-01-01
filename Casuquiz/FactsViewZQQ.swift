//
//  FactsView.swift
//  5A-Spirit-Quiz
//
//  Created by Improve on 25.10.2024.
//

import SwiftUI

struct FactsViewCasuquiz: View {
    @State var timer: Timer?
    @State var selectedFact: FactCasuquiz? = facts.randomElement()!
    @State var showSheet = false
    
      var d4242d2 = "24dd2d"
    var d24d2d = 242
    func d24d2d24d24d() -> String {
        return "4d22d42dd"
    }
    func d24d42d24d() {
        print("4d24d2d2d2")
    }
    func dd342d24d() -> Float {
        print(1134 * 13413)
        return 134134 * 134134.13413
    }
    
    private struct IJcowkmrfco3r {}
    var body: some View {
        VStack {
            Spacer()
            
            if let fact = selectedFact {
                Image("fact.bg")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .overlay {
                        VStack {
                            Text(fact.title)
                                .withFont(size: 20, weight: .regular, color: .hex("77E0F3"))
                                .padding(.top, 16)
                                .lineLimit(1)
                                .padding(.horizontal, 4)
                            Spacer()
                            Text(fact.content)
                                .withFont(size: 19.5, weight: .thin)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                        }
                    }
                    .padding()
                
                
                Button {
                    showSheet = true
                } label: {
                    Image("green.button.bg")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(height: 30)
                        .overlay {
                            Text("Read the full")
                                .withFont(size: 15.6, weight: .regular, color: .hex("0D0D0D"))
                        }
                }.padding(.bottom)
                
                Button {
                    withAnimation(.easeInOut(duration: 0.6)) {
                        selectedFact = nil
                    }
                    
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.7) {
                        withAnimation(.easeInOut(duration: 1)) {
                            selectedFact = facts.randomElement()!
                        }
                    }
                } label: {
                    Image("button.bg")
                        .overlay {
                            Text("NEXT")
                                .withFont(size: 18.6, weight: .regular)
                        }
                }
            }
            
            
            Spacer()
            
        }.sheet(isPresented: $showSheet) {
            sheetView
                .presentationDetents([.fraction(0.86)])
        }
    }
    
    private var sheetView: some View {
        VStack {
            if let fact = selectedFact {
                Text(fact.title)
                    .withFont(size: 22, weight: .regular, color: .hex("77E0F3"))
                    .padding(.top, 12)
                
                Text(fact.content)
                    .withFont(size: 19.5, weight: .thin)
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                
                Spacer()
                
                VStack(spacing: 0) {
                    Rectangle()
                        .frame(height: 2)
                        .foregroundColor(.hex("77E0F3"))
                    
                    Rectangle()
                        .foregroundColor(.hex("6520BB"))
                        .frame(height: 55)
                        .overlay {
                            Text("Close")
                                .withFont(size: 15.5, weight: .light)
                        }
                }.onTapGesture {
                    showSheet = false
                }
            }
        }.frame(maxWidth: .infinity, maxHeight: .infinity)
        .background {
            Color.hex("6520BB")
                .edgesIgnoringSafeArea(.all)
        }
    }
}

#Preview {
    ContentViewCasuquiz(showLoading: false, selectedTab: .facts)
}


struct FactCasuquiz {
    let title: String // (не більше 5 слів)
    let content: String // (великий опис факту)
}

fileprivate let facts: [FactCasuquiz] = [
    FactCasuquiz(title: "The Great Emu War", content: "In 1932, Australia faced an unexpected adversary in what became known as the Great Emu War. Thousands of emus, large flightless birds native to Australia, invaded farmlands in Western Australia, causing widespread crop destruction. The government deployed soldiers armed with machine guns to combat the emus. Despite their efforts, the emus' speed and agility proved formidable, and the military campaign was largely ineffective. The event is often remembered humorously but also highlights the challenges of wildlife management in the country."),
    FactCasuquiz(title: "The Dancing Plague of 1518", content: "In July 1518, residents of Strasbourg, then part of the Holy Roman Empire, were struck by a mysterious phenomenon now known as the Dancing Plague. It began with one woman dancing fervently in the streets, and within days, dozens more joined in, seemingly unable to stop. The strange episode lasted for weeks, with some participants collapsing or even dying from exhaustion. Historians speculate that the cause could have been stress-induced mass hysteria or ergot poisoning, a hallucinogenic fungus found in rye bread."),
    FactCasuquiz(title: "Operation Paul Bunyan", content: "In 1976, a simple tree-trimming task nearly sparked a war on the Korean Peninsula. After two U.S. soldiers were killed by North Korean forces while trying to cut down a poplar tree in the Korean Demilitarized Zone, the U.S. launched Operation Paul Bunyan. This was a massive show of force, involving troops, tanks, and aircraft, all to cut down the tree. The operation succeeded without further violence, demonstrating the tense Cold War dynamics of the region."),
    FactCasuquiz(title: "The Exploding Whale Incident", content: "In 1970, a 45-foot sperm whale carcass washed ashore in Florence, Oregon. Officials decided to dispose of it using dynamite, hoping the explosion would break the whale into small, manageable pieces. However, the plan backfired spectacularly. The explosion sent large chunks of whale blubber flying, damaging nearby cars and scattering debris over a wide area. The event became a humorous cautionary tale about unconventional problem-solving."),
    FactCasuquiz(title: "The Boston Molasses Disaster", content: "On January 15, 1919, a massive storage tank containing 2.3 million gallons of molasses burst in Boston's North End, unleashing a sticky wave that traveled at 35 miles per hour. The disaster destroyed buildings, killed 21 people, and injured 150 others. The tragedy, often called the 'Great Molasses Flood,' was attributed to poor construction and maintenance of the tank. It led to stricter building regulations and remains a bizarre chapter in industrial history."),
    FactCasuquiz(title: "The Erfurt Latrine Disaster", content: "In 1184, a deadly accident occurred during a meeting of nobles and clergy in Erfurt, Germany. The wooden floor of the meeting hall, built over a latrine pit, collapsed under the weight of the attendees. Many fell into the pit, drowning or suffocating in the sewage below. The incident, though tragic, is often remembered as a darkly ironic example of medieval architectural hazards."),
    FactCasuquiz(title: "The Battle of Karansebes", content: "In 1788, during the Austro-Turkish War, Austrian soldiers accidentally fought each other in what became known as the Battle of Karansebes. The confusion began when soldiers mistook their own troops for the enemy, leading to a chaotic firefight. The friendly fire incident resulted in significant casualties and highlighted the challenges of communication and coordination in large armies."),
    FactCasuquiz(title: "The Phantom Time Hypothesis", content: "A controversial theory known as the Phantom Time Hypothesis suggests that nearly three centuries of history, from AD 614 to 911, were fabricated. Proposed by German historian Heribert Illig, the hypothesis argues that the early Middle Ages were invented, and events like Charlemagne's reign never happened. While largely dismissed by mainstream historians, the theory challenges our understanding of historical chronology."),
    FactCasuquiz(title: "The Tunguska Event", content: "On June 30, 1908, a massive explosion occurred near the Tunguska River in Siberia, flattening 800 square miles of forest. The blast, estimated to be as powerful as 15 megatons of TNT, is believed to have been caused by the airburst of a meteoroid or comet fragment. Remarkably, no crater was found, and the event remains one of the most mysterious and significant impact events in modern history."),
    FactCasuquiz(title: "The Longest Traffic Jam", content: "In August 2010, a 62-mile-long traffic jam occurred on the Beijing-Tibet Expressway in China, lasting an astonishing 12 days. The gridlock was caused by road maintenance combined with heavy truck traffic. Stranded drivers moved at a snail’s pace, sometimes advancing just a mile in a day. Vendors capitalized on the situation, selling food and water at inflated prices. The incident highlighted the growing infrastructure challenges in rapidly developing urban areas."),
    FactCasuquiz(title: "The Bermuda Triangle Mystery", content: "The Bermuda Triangle, a region between Miami, Bermuda, and Puerto Rico, is infamous for the mysterious disappearances of ships and aircraft. One of the most notable incidents was the loss of Flight 19 in 1945, a group of five U.S. Navy bombers that vanished during a training mission. While some attribute the phenomena to magnetic anomalies or methane gas eruptions, the exact reasons remain unknown."),
        FactCasuquiz(title: "The Night of the Radishes", content: "Every December 23rd, the city of Oaxaca, Mexico, celebrates the 'Night of the Radishes' (Noche de Rábanos). Artists carve oversized radishes into intricate designs, creating elaborate scenes inspired by local traditions and folklore. The event, which began in the late 19th century, attracts thousands of visitors annually and showcases the region's unique culture."),
        FactCasuquiz(title: "The Pope Who Trialed a Corpse", content: "In 897, Pope Stephen VI held the Cadaver Synod, a macabre trial in which the corpse of his predecessor, Pope Formosus, was exhumed, dressed in papal robes, and placed on trial for alleged crimes. Found guilty, the corpse was mutilated and thrown into the Tiber River. This bizarre episode highlights the intense political conflicts of the era."),
        FactCasuquiz(title: "The Eruption of Krakatoa", content: "In 1883, the volcanic island of Krakatoa in Indonesia erupted with such force that it was heard over 3,000 miles away. The explosion caused a massive tsunami that killed over 36,000 people and altered global weather patterns for years. The ash cloud from the eruption darkened skies worldwide, leading to vivid sunsets and a drop in global temperatures."),
        FactCasuquiz(title: "The Man Who Survived Two Atomic Bombs", content: "Tsutomu Yamaguchi, a Japanese engineer, survived both the Hiroshima and Nagasaki atomic bombings in 1945. He was in Hiroshima on a business trip when the first bomb dropped, suffering severe burns. Remarkably, he returned to his home in Nagasaki just in time for the second bombing. Despite his harrowing experience, Yamaguchi lived to the age of 93, becoming an advocate for nuclear disarmament."),
        FactCasuquiz(title: "The Library of Ashurbanipal", content: "The Library of Ashurbanipal, discovered in Nineveh (modern-day Iraq), is considered one of the earliest libraries in history. Dating back to the 7th century BCE, it contained thousands of clay tablets with texts on astronomy, mathematics, medicine, and mythology, including the Epic of Gilgamesh. Its discovery provided valuable insights into ancient Mesopotamian civilization."),
        FactCasuquiz(title: "The Pigeon That Saved Lives", content: "During World War I, a carrier pigeon named Cher Ami played a critical role in saving nearly 200 American soldiers. Despite being shot and severely injured, the pigeon delivered a crucial message to headquarters, alerting them to the soldiers' location. Cher Ami was awarded the French Croix de Guerre and is remembered as a symbol of courage."),
        FactCasuquiz(title: "The Origins of Champagne", content: "The creation of champagne was an accidental discovery by Benedictine monk Dom Pérignon in the late 17th century. Initially, the bubbles were considered a flaw in winemaking, but over time, the sparkling wine became synonymous with luxury and celebration. Dom Pérignon's techniques laid the foundation for modern champagne production."),
        FactCasuquiz(title: "The Curse of the Hope Diamond", content: "The Hope Diamond, a stunning blue gemstone weighing 45.52 carats, is rumored to carry a curse that brings misfortune to its owners. Its storied history includes thefts, bankruptcies, and tragic deaths. While the curse is likely a myth, the diamond remains one of the most famous jewels in the world, housed in the Smithsonian Institution."),
        FactCasuquiz(title: "The Year Without a Summer", content: "In 1816, known as the 'Year Without a Summer,' global temperatures dropped significantly due to the eruption of Mount Tambora in Indonesia. Crops failed, leading to food shortages and widespread famine. The unusual weather inspired Mary Shelley to write 'Frankenstein' during a gloomy summer retreat, making it a year of both tragedy and creativity."),
        FactCasuquiz(title: "The Longest Monopoly Game", content: "The longest recorded game of Monopoly lasted 70 straight days, involving multiple players who refused to quit. Initially intended as a casual pastime, the game turned into an endurance test that ultimately became legendary in the annals of board game history."),
        FactCasuquiz(title: "The Underground City of Derinkuyu", content: "In the 1960s, a man in Turkey discovered a hidden underground city beneath his home while renovating. Known as Derinkuyu, this ancient multi-level city could house 20,000 people and included stables, kitchens, and ventilation shafts. Built to protect inhabitants from invasions, it showcases the ingenuity of ancient civilizations."),
        FactCasuquiz(title: "The Island of No Return", content: "North Sentinel Island, located in the Indian Ocean, is home to the Sentinelese people, one of the world's last uncontacted tribes. Outsiders are strictly prohibited from visiting the island to protect its inhabitants and their way of life. The tribe is known for aggressively defending their territory, ensuring their isolation remains intact."),
        FactCasuquiz(title: "The Blackout That Sparked a Baby Boom", content: "In 1965, a massive power outage plunged the northeastern United States into darkness for hours. Nine months later, a significant increase in birth rates was reported in affected areas, leading to the popular belief that the blackout encouraged a 'baby boom.' While the phenomenon is debated, it remains an intriguing example of how unexpected events can influence societal trends."),
        FactCasuquiz(title: "The World's Oldest Aquarium Fish", content: "Methuselah, a lungfish at the California Academy of Sciences, is believed to be the world's oldest aquarium fish, estimated to be over 90 years old. This species, often called a 'living fossil,' bridges the evolutionary gap between fish and amphibians. Methuselah's longevity continues to fascinate scientists and visitors alike."),
        FactCasuquiz(title: "The Floating Post Office", content: "India's Dal Lake is home to the world's only floating post office. Situated on a houseboat, it serves locals and tourists in Srinagar, offering regular postal services while floating on the picturesque lake. This unique facility is a testament to human adaptability and innovation."),
        FactCasuquiz(title: "The Salt That Created an Empire", content: "The Mali Empire, one of Africa's greatest civilizations, owed much of its wealth to the salt trade. Salt, a valuable commodity in ancient times, was as precious as gold. Cities like Timbuktu became bustling trade centers, linking North Africa with sub-Saharan Africa and fostering cultural exchange."),
    FactCasuquiz(title: "The Deadliest Lake in the World", content: "Lake Nyos in Cameroon is infamous for its deadly gas eruption in 1986. A massive release of carbon dioxide suffocated over 1,700 people and thousands of animals in nearby villages. Scientists later installed degassing systems to prevent future tragedies from the lake, which sits above a volcanic pocket."),
        FactCasuquiz(title: "The Man Who Lived Without a Heart", content: "In 2011, Craig Lewis, a Texas man suffering from a severe heart condition, became the first person to live without a pulse. Doctors implanted a continuous-flow device that pumped blood without mimicking a heartbeat. The groundbreaking technology extended his life and challenged the concept of a 'living heart.'"),
        FactCasuquiz(title: "The Ghost Army of World War II", content: "During World War II, the U.S. Army deployed the Ghost Army, a special unit that used inflatable tanks, sound effects, and fake radio transmissions to deceive enemy forces. This highly secretive unit played a crucial role in misleading the Germans and securing Allied victories."),
        FactCasuquiz(title: "The Oldest Known Recipe", content: "The world's oldest known recipe is for beer, dating back over 5,000 years to ancient Mesopotamia. Found on a Sumerian tablet, the recipe describes brewing techniques involving barley and emmer wheat. Beer was not only a staple beverage but also a significant part of religious and cultural practices."),
        FactCasuquiz(title: "The Tree That Owns Itself", content: "In Athens, Georgia, there is a white oak tree that legally owns itself. According to legend, a man named William H. Jackson deeded the land surrounding the tree to the tree itself in the 1800s. Although the original tree fell in 1942, a descendant now stands in its place, continuing the quirky tradition."),
        FactCasuquiz(title: "The Invention of the Guillotine", content: "The guillotine, often associated with the French Revolution, was invented as a more humane method of execution. Proposed by Dr. Joseph Guillotin, the device was intended to ensure quick and painless deaths. Ironically, Guillotin opposed the death penalty, and his name became synonymous with the very tool he sought to reform."),
        FactCasuquiz(title: "The Ship That Never Sank", content: "The SS Waratah, often referred to as 'Australia's Titanic,' vanished in 1909 while sailing between Durban and Cape Town. Despite extensive searches, no trace of the ship or its 211 passengers has ever been found, sparking countless theories about its mysterious disappearance."),
        FactCasuquiz(title: "The Longest Word in Literature", content: "The longest word in literature appears in James Joyce's 'Finnegans Wake.' It is a 100-letter word describing a thunderclap: 'bababadalgharaghtakamminarronnkonnbronntonnerronntuonnthunntrovarrhounawnskawntoohoohoordenenthurnuk.' The word symbolizes the complexity and chaos of the novel."),
        FactCasuquiz(title: "The Bananas That Went Extinct", content: "The Gros Michel banana, once the world's most popular variety, was wiped out by a fungal disease in the mid-20th century. It was replaced by the Cavendish banana, which now dominates global markets. However, the Cavendish is also under threat from a similar disease, raising concerns about the future of bananas."),
        FactCasuquiz(title: "The Carrot That Changed a War", content: "During World War II, the British government promoted eating carrots as a way to improve night vision, a cover story to conceal the use of radar technology. The propaganda campaign led to an increase in carrot consumption and a long-lasting myth about their vision-enhancing properties."),
        FactCasuquiz(title: "The Paris Time Capsule Apartment", content: "In 2010, an apartment in Paris that had been untouched for over 70 years was discovered. It belonged to a woman who fled during World War II and never returned. Inside, time stood still, with antique furniture, paintings, and personal belongings providing a glimpse into pre-war Parisian life."),
        FactCasuquiz(title: "The Battle of Los Angeles", content: "In 1942, just weeks after the attack on Pearl Harbor, Los Angeles experienced a false alarm that led to anti-aircraft artillery firing into the night sky. Known as the 'Battle of Los Angeles,' the incident was fueled by fear of a Japanese attack. It remains a mysterious and surreal chapter in wartime history."),
        FactCasuquiz(title: "The Iceberg That Sank the Titanic", content: "The iceberg responsible for sinking the Titanic in 1912 likely originated from Greenland. Scientists estimate it was part of a larger glacier that calved off years earlier. The collision caused over 1,500 deaths, making it one of history's deadliest maritime disasters."),
        FactCasuquiz(title: "The Man Who Survived Niagara Falls", content: "In 1960, a seven-year-old boy named Roger Woodward became the first person to survive an accidental plunge over Niagara Falls without a protective vessel. Wearing only a life jacket, he was rescued from the river below, earning him a place in history as a living miracle."),
        FactCasuquiz(title: "The Day the Mississippi River Flowed Backwards", content: "In 1811-1812, a series of powerful earthquakes struck the New Madrid Seismic Zone, causing the Mississippi River to flow backward temporarily. The quakes reshaped the landscape, forming Reelfoot Lake and leaving a lasting impression on the region's geography."),
        FactCasuquiz(title: "The Oldest Continuous Fire", content: "An underground coal fire in New South Wales, Australia, has been burning for over 6,000 years. Known as the Burning Mountain, it is the longest-burning fire on Earth. The fire moves slowly through coal seams, emitting heat and smoke, and has become a geological curiosity."),
        FactCasuquiz(title: "The Woman Who Outlived Her Execution", content: "In 1629, Margaret Clitherow was executed for harboring Catholic priests in Protestant England. Pressed to death with heavy stones, she remarkably survived longer than expected, defying her executioners. Her martyrdom later earned her sainthood in the Catholic Church."),
        FactCasuquiz(title: "The Most Expensive Coffee", content: "Kopi Luwak, also known as civet coffee, is made from beans eaten and excreted by the Asian palm civet. This unique production process results in a smooth, less acidic flavor. Despite ethical concerns over animal welfare, it remains one of the world's most expensive and sought-after coffees."),
        FactCasuquiz(title: "The Statue of Liberty’s Secret", content: "The Statue of Liberty’s torch has been closed to visitors since 1916 after an explosion at a nearby munitions depot damaged it. While millions visit the statue annually, few know about the torch’s restricted access and its role in American history."),
        FactCasuquiz(title: "The Antarctic Volcano", content: "Mount Erebus, located in Antarctica, is one of the world’s most remote active volcanoes. Known for its persistent lava lake, the volcano has been studied for insights into geological processes and the extreme conditions of Earth’s southernmost continent.")
]
