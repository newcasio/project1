# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
User.destroy_all

u1 = User.create name:'Brad', email: 'brad@brad', password: 'chicken'
u2 = User.create name:'Bob', email: 'bob@bob', password: 'chicken'
u3 = User.create name:'Ben', email: 'ben@ben', password: 'chicken'

puts "Created #{User.all.length} users."




Conflict.destroy_all

cf1 = Conflict.create name: 'Criminal violence in Mexico', country: 'Mexico', conflict_type: 'Criminal violence', description: 'Mexico is home to one of the world’s largest and most sophisticated drug networks, as well as weak and corrupt law enforcement institutions. Mexico’s drug-related organized crime groups began their expansion of operations in the late 1980s after the dismantling of Colombia’s drug cartels. In the absence of Colombian drug suppliers, Mexican cartels branched outside of their original roles as couriers for Colombian gangs to wholesalers.

In order to increase their profits and influence, groups battle one another for territorial control. In some cases they possess greater coercive force and governance capabilities than the often weak or corrupt local governments. In 2006, in partnership with the United States, former Mexican President Felipe Calderon launched an initiative to combat the cartels with military force. This significantly escalated violence and claimed thousands of lives, including civilians.', parties: 'Drug cartels, Mexican Government', image: 'http://thefederalist.com/wp-content/uploads/2014/01/cartel.jpg'

cf2 = Conflict.create name: 'Rohingya Crisis in Myanmar', country: 'Myanmar', conflict_type: 'Sectarian', description: 'The Rohingya, a highly persecuted Muslim group numbering over one million, face discrimination both from their neighbors and their nation, and are not considered citizens by Myanmar’s government. Buddhist nationalist groups, including the MaBaTha and the anti-Muslim 969 movement, regularly call for boycotts of Muslim shops, the expulsion of Muslims from Myanmar, and attacks on Muslim communities. After two waves of violence, reprisals, and riots in June and October of 2012 intensified the century-old conflict in the predominantly Buddhist country, more than one hundred thousand Muslim Rohingyas were internally displaced and hundreds killed.

There is little indication that addressing the Rohingya issue will become a priority any time soon for Myanmar’s government, which has focused instead on establishing a new relationship with the military and addressing multiple ongoing insurgencies. The military signed a cease-fire with several armed ethnic groups in October 2015, but some major groups—including two of the largest militias, the United Wa State Army and Kachin Independence Army—continue to fight the government. While the cease-fire agreement was a potential step towards peace in Myanmar, it failed to finalize a framework for a new balance of power between the central government and local authorities in the restive borderlands or require ethnic groups to disarm.', parties: 'Myanmar Government, Buddhist extremists, Muslim extremists', image: 'https://cdn.dnaindia.com/sites/default/files/styles/full/public/2018/03/07/658468-629202-myanmar-rohingya-bangladesh.jpg'

cf3 = Conflict.create name: 'North Korea Crisis', country: 'North Korea', conflict_type: 'Interstate', description: 'North Korea (officially called the Democratic People’s Republic of Korea) is isolated, impoverished, and a proclaimed enemy of its southern neighbor, South Korea—an important U.S. ally.

U.S. military involvement in the Korean peninsula has its roots in the Korean War of the early 1950s during the early stages of the Cold War, in which the United States supported forces in the southern part of the peninsula against communist forces in the north, who were aided militarily by China and the Soviet Union. Today, the United States is committed to defending South Korea (also known as the Republic of Korea) under the terms of the Mutual Defense Treaty between the United States and the Republic of Korea. The United States has nearly 29,000 troops deployed in the Korean peninsula for that purpose. In addition to U.S. troops, many of South Korea’s 630,000 troops and North Korea’s 1.2 million troops are stationed near the Demilitarized Zone (DMZ), making it one of the most heavily armed borders in the world.

In violation of UN Security Council resolutions, North Korea continues overt nuclear enrichment and long-range missile development efforts. Although the scale of North Korea’s uranium enrichment program remains uncertain, U.S. intelligence agencies estimate that it has enough plutonium to produce at least six nuclear weapons, and possibly up to sixty.', parties: 'North Korea, USA', image: 'https://i.ytimg.com/vi/VO-2M13UbKY/maxresdefault.jpg'

cf4 = Conflict.create name: 'Conflict in Ukraine', country: 'Ukraine', conflict_type: 'Territorial dispute', description: 'The crisis in Ukraine began with protests in the capital city of Kiev in November 2013 against Ukrainian President Viktor Yanukovych’s decision to reject a deal for greater economic integration with the European Union. After a violent crackdown by state security forces unintentionally drew an even greater number of protesters and escalated the conflict, President Yanukovych fled the country in February 2014.

In March 2014, Russian troops took control of the Crimean region, before formally annexing the peninsula after Crimeans voted to join the Russian Federation in a disputed local referendum. Russian President Vladimir Putin cited the need to protect the rights of Russian citizens and Russian speakers in Crimea and southeast Ukraine. The crisis heightened ethnic divisions, and two months later pro-Russian separatists in the Donetsk and Luhansk regions of eastern Ukraine held a referendum to declare independence from Ukraine.

Violence in Eastern Ukraine between Russian-backed separatist forces and the Ukrainian military has injured more than 22,400 and killed over 9,500. Although Moscow denies its involvement, Ukraine and NATO have reported the buildup of Russian troops and military equipment near Donetsk and Russian cross-border shelling.

The situation in Ukraine escalated into an international crisis, putting the United States and the European Union (EU) at odds with Russia, in July 2014, when a Malaysian Airlines flight was shot down over Ukrainian airspace, killing all 298 onboard, by what Dutch air accident investigators concluded in October 2015 was a Russian-built surface-to-air missile. In September 2016, investigators said that the missile system was provided by Russia, determining it was moved in to eastern Ukraine and then back to Russian territory following the downing of the airplane.', parties: 'Ukraine, Russia', image: 'http://mapofeurope.com/wp-content/uploads/2014/03/Ukraine-Crimea-Russia.jpg'

cf5 = Conflict.create name: 'Civil War in South Sudan', country: 'Sudan', conflict_type: 'Civil war', description: 'Ignited by a political struggle between Salva Kiir and Riek Machar that led to the Machar\'s removal from as vice president, violence erupted between presidential guard soldiers in December 2013 and immediately took on an ethnic character. Soldiers from the Dinka ethnic group, one of the two largest ethnic groups in South Sudan, aligned with President Kiir and those from the Nuer ethnic group, the other largest ethnic group, supported Riek Machar. In the midst of chaos, President Kiir announced that Machar had attempted a coup and violence spread quickly to Jonglei, Upper Nile, and Unity states. Since the outbreak of conflict, armed groups have targeted civilians along ethnic lines, committed rape and sexual violence, destroyed property and looted villages, and recruited children into their ranks.

Violence has prevented farmers from planting or harvesting crops, causing food shortages nationwide. In July 2014, the UN Security Council declared South Sudan’s food crisis the worst in the world. It warned that some four million people—a third of South Sudan’s population—could be affected and up to fifty thousand children could die of hunger. The conflict in South Sudan is categorized by the UN as a "Level 3" humanitarian emergency, based on the scale, urgency, and complexity of needs.', parties: 'Dinka ethnic group, Nuer ethnic group', image: 'https://media1.s-nbcnews.com/i/newscms/2014_18/410581/140430-south-sudan-mn-1045_9b78cdcbd55d583ab3e621ceb75c6e59.jpg'

cf6 = Conflict.create name: 'Violence in the Democratic Republic of Congo', country: 'Democratic Republic of Congo', conflict_type: 'Political instability', description: 'The current violence in the DRC has its origins in the massive refugee crisis and spillover from the 1994 genocide in Rwanda. After Hutu génocidaires fled to eastern DRC and formed armed groups, opposing Tutsi and other opportunistic rebel groups arose. The Congolese government was unable to control and defeat the various armed groups, some of which directly threatened populations in neighboring countries. From 1998 to 2003, government forces supported by Angola, Namibia, and Zimbabwe fought rebels backed by Uganda and Rwanda, in what is now known as the Second Congo War. The death toll may have reached more than five million people (estimates vary greatly). Despite the signing of a peace deal and the formation of a transitional government in 2003, weak governance and institutions, along with corruption and an absence of the rule of law, have contributed to ongoing violence perpetrated by armed groups against civilians in the eastern region.

The country’s massive resource wealth—estimated to contain $24 trillion of untapped mineral resources—also fuels violence. The mineral trade provides financial means for groups to operate and buy arms. In an effort to prevent funding armed militias, the United States passed legislation in 2010 to reduce the purchase of “conflict minerals,” but due to the complex supply chains in the DRC mineral sale business, obtaining certification has proven difficult for companies that purchase resources from secondhand buyers. As a result, multinational companies stopped buying minerals from DRC, putting many miners out of work and even driving some to join armed groups to gain a source of livelihood.', parties: 'Hutus, Tutsi, Local insurgents', image: 'https://www.zambiawatchdog.com/wp-content/uploads/2018/02/congo-dr.jpg'

cf7 = Conflict.create name: 'Destabilisation of Mali', country: 'Mail', conflict_type: 'Transnational terrorism', description: 'After gaining independence from France in 1960, Mali endured thirty years of sporadic fighting and political coups. While the majority of the population resides in the southern region, numerous militant groups including the Tuareg, AQIM, and Ansar Dine—a militant Islamist group—continue to assert territorial claims in the northern part of the country, undermining the government and threatening to destabilize neighboring countries. The Tuareg, a primarily Berber ethnic group, have rebelled against the government and clashed with other groups several times in an attempt to gain autonomy for the region they call Azawad.

The first Tuareg rebellion began in 1963, lasting less than a year before it was brutally suppressed by government forces. Divisions between Tuareg clans hindered their ability to fight together against the government. In the decades that followed the first rebellion, government policies tended to neglect northern Mali, which was already fragile due to a series of droughts. Many Tuareg moved into aid camps in the south or crossed into neighboring countries to find work. Hundreds of Tuareg moved to Libya, where they fought abroad on behalf of Libyan leader Muammar al-Qaddafi’s Islamic Legion.', parties: 'Numerous militant and ethnic groups', image: 'https://static.businessinsider.com/image/50a12568ecad04914e000015/image.jpg'

cf8 = Conflict.create name: 'Syrian Civil War', country: 'Syria', conflict_type: 'Civil war', description: 'What began as protests against President Assad’s regime in 2011 quickly escalated into a full-scale war between the Syrian government—backed by Russia and Iran—and antigovernment rebel groups—backed by the United States, Saudi Arabia, Turkey, and others in the region. Three campaigns drive the conflict: coalition efforts to defeat the Islamic State, violence between the Syrian government and opposition forces, and military operations against Syrian Kurds by Turkish forces.

The Islamic State began seizing control of territory in Syria in 2013. After a series of terrorist attacks coordinated by the Islamic State across Europe in 2015, the United States, the United Kingdom, and France—with the support of Turkey, Saudi Arabia, and other Arab partners—expanded their air campaign in Iraq to include Syria. Together, these nations have conducted over eleven thousand air strikes against Islamic State targets in Syria, while the U.S.-led coalition has continued its support for ground operations by the Syrian Democratic Forces (SDF). Turkish troops have been involved in ground operations against the Islamic State since 2016, and have launched attacks against armed Kurdish groups in Syria. Meanwhile, at the request of the Syrian government in September 2015, Russia began launching air strikes against what it claimed were Islamic State targets, while Syrian government forces achieved several notable victories over the Islamic State, including the reclamation of Palmyra. According to the U.S.-led coalition against the Islamic State, 98 percent of the territory formerly held by the group in Iraq and Syria, including Raqqa and Deir al-Zour, has been reclaimed by Iraqi security forces and the SDF.', parties: 'Syrian Government, Anti-government rebel groups', image: 'https://www.history.com/.image/t_share/MTU4NTQyMDg3Mzc2MDg2Mzcy/syria-civil-war-getty-462518530.jpg'

cf9 = Conflict.create name: 'War Against Islamic State', country: 'Iraq', conflict_type: 'Civil war', description: 'n June 2014, the Islamic State advanced into Iraq from Syria and took over parts of the Anbar Province. In August 2014, President Barack Obama authorized targeted air strikes against Islamic State militants in Iraq and Syria. The United States formed an international coalition that includes more than sixty countries to counter the Islamic State.

Regional forces have launched a major offensive to regain Islamic State–controlled territory, but the group continues to hold some territory and launch terror attacks region-wide. The Iraqi Army—with support from local tribes, the Kurdish Peshmerga, and the international coalition—began fighting to retake Anbar Province following the liberation of the city of Tikrit in April 2015. The following month, however, Islamic State militants captured the city of Ramadi. Iraqi forces regained possession of Ramadi in December 2015 and have taken back most of Anbar, including a victory in Fallujah in June 2016.

It has been challenging to dislodge the Islamic State due to the underlying sectarian tensions in Iraq among Sunni and Shiite groups, which intensified after the U.S. invasion in 2003 and the fall of Saddam Hussein. Some Sunni groups have been unwilling to fight against the Islamic State given their grievances about de-Baathification—the policy by which the influence of the formerly ruling Ba’ath party was removed in Iraq.', parties: 'Islamic State, Iraqi government, Internation coalition', image: 'https://timedotcom.files.wordpress.com/2014/09/ap14736594917.jpg'

cf10 = Conflict.create name: 'Nagorno-Karabakh Conflict', country: 'Armenia', conflict_type: 'Territorial dispute', description: 'In the 1920’s, the Soviet government established the Nagorno-Karabakh Autonomous Region—where 95 percent of the population is ethnically Armenian—within Azerbaijan. Under Bolshevik rule, fighting between the two countries was kept in check, but as the Soviet Union began to collapse, so did its grip on Armenia and Azerbaijan. In 1988, Nagorno-Karabakh legislature passed a resolution to join Armenia despite the fact that the region was legally within Azerbaijan’s borders. As the Soviet Union was dissolving in 1991, the autonomous region officially declared independence. War erupted between Armenia and Azerbaijan over the region, leaving roughly 30,000 casualties and hundreds of thousands of refugees. By 1993, Armenia controlled Nagorno-Karabakh and occupied 20 percent of the surrounding Azerbaijani territory. In 1994, Russia brokered a cease-fire which has remained in place since.', parties: 'Armenia, Azerbaijan', image: 'https://gdb.rferl.org/D1996682-D7F7-4470-9AC5-F5F746926450_w1200_r1_s.gif'

puts "Created #{Conflict.all.length} conflicts."

u1.conflicts << cf1 << cf3 << cf5 << cf7 << cf9
u2.conflicts << cf2 << cf4 << cf6 << cf8 << cf10
u3.conflicts << cf1 << cf2 << cf3 << cf4 << cf5




Continent.destroy_all

ct1 = Continent.create name: 'Africa', area: '30 million square kilometres', population: '1.2 billion', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-africa.png'

ct2 = Continent.create name: 'Europe', area: '10 million square kilometres', population: '739 million', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-europe.png'

ct3 = Continent.create name: 'Asia', area: '44 million square kilometres' , population: '4.4 billion', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/11/continent-of-asia.png'

ct4 = Continent.create name: 'North America', area: '24 million square kilometres' , population: '579 million' , image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-north-america.png'

ct5 = Continent.create name: 'South America', area: '18 million square kilometres' , population: '423 million', image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-south-america.png'

ct6 = Continent.create name: 'Australia', area: '8 million square kilometres' , population: '24 million', image: 'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-australia.png'

ct7 = Continent.create name: 'Antarctica', area: '14 million square kilometres', population: '1000-4000' , image:'https://www.whatarethe7continents.com/wp-content/uploads/2011/12/continent-of-antarctica.png'

puts "Created #{Continent.all.length} continents."


ct1.conflicts << cf5 << cf6 << cf7
ct2.conflicts << cf4 << cf10
ct3.conflicts << cf2 << cf3 << cf8 <<cf9
ct5.conflicts << cf1


Comment.destroy_all

com1 = Comment.create comment: 'Shampoo is better! I go on first and clean the hair!'
com2 = Comment.create comment: 'Conditioner is better! I leave the hair silky and smooth!'

u1.comments << com1
u2.comments << com2

cf6.comments << com1
cf3.comments << com2
