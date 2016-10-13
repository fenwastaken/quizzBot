--
-- PostgreSQL database dump
--

-- Dumped from database version 9.5.2
-- Dumped by pg_dump version 9.5.2

-- Started on 2016-10-13 23:30:35

SET statement_timeout = 0;
SET lock_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

SET search_path = public, pg_catalog;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 200 (class 1259 OID 16583)
-- Name: QUIZZ; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE "QUIZZ" (
    "ID" integer NOT NULL,
    "AUTHOR" character varying(80),
    "QUESTION" character varying(400),
    "ANSWER" character varying(200),
    "USED" integer,
    "VALID" boolean
);


ALTER TABLE "QUIZZ" OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 16586)
-- Name: QUIZZ_ID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE "QUIZZ_ID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE "QUIZZ_ID_seq" OWNER TO postgres;

--
-- TOC entry 2177 (class 0 OID 0)
-- Dependencies: 201
-- Name: QUIZZ_ID_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE "QUIZZ_ID_seq" OWNED BY "QUIZZ"."ID";


--
-- TOC entry 2054 (class 2604 OID 16588)
-- Name: ID; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "QUIZZ" ALTER COLUMN "ID" SET DEFAULT nextval('"QUIZZ_ID_seq"'::regclass);


--
-- TOC entry 2171 (class 0 OID 16583)
-- Dependencies: 200
-- Data for Name: QUIZZ; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY "QUIZZ" ("ID", "AUTHOR", "QUESTION", "ANSWER", "USED", "VALID") FROM stdin;
510	GITHUB	Magician David Kotkin managed to change his name to what?	David Copperfield	1	t
1046	Duskie	A cartoon mouse's name?	Jerry	0	t
1047	Duskie	 what is Alladin's pet?	Jasmine	0	t
247	GITHUB	What is included in a BLT sandwich?	Bacon, lettuce and tomato	1	t
455	GITHUB	Which book did Mark Chapman read while waiting to be arrested after the murder of John Lennon?	Catcher in the Rye	1	t
1048	Duskie	 what is bigger: 0 or 1	1	0	t
650	GITHUB	Who is the main character from Final Fantasy VII?	Cloud Strife	1	t
178	GITHUB	What is lava bread?	Seaweed	0	t
403	GITHUB	What track star was the first woman to receive the Jesse Owens Award, in 1982?	Mary Decker Slaney	1	t
332	GITHUB	Which US holiday state has the Everglades National Park?	Florida	1	t
211	GITHUB	What Italian Cheese usually tops a pizza?	Mozzarella	1	t
467	GITHUB	In which 20th-century decade was Barbie's boyfriend Ken first made?	60s	1	t
565	GITHUB	What is to blink deliberately?	Wink	2	t
174	GITHUB	What vegetable is also known as zucchini in the USA?	Courgette	1	t
127	GITHUB	What drupaceous fruit were Hawaiian women once forbidden by law to eat?	coconut	1	t
447	GITHUB	Which was the last US battalion to leave Vietnam?	3rd Battalion, 21st Infantry	1	t
368	GITHUB	What city's drivers owe over $460 million in parking fines?	New York City	1	t
523	GITHUB	What anagram of 'english' is at home on the beach?	Shingle	1	t
597	GITHUB	What O-word describes oxygen with molecules that have three atoms instead of two?	Ozone	1	t
156	GITHUB	What type of micro organism makes up the base of marine and freshwater food chains?	Plankton	1	t
326	GITHUB	Which South American Canal joins the Atlantic to the Pacific oceans?	Panama	2	t
97	GITHUB	What flavor of ice cream did Baskin-Robbins introduce to commemorate America's landing on the moon on July 20, 1969?	Lunar Cheesecake	1	t
88	GITHUB	What milk product did tpeanhe U.S. Agriculture Department propose as a substitute for meat in school lunches, in 1996?	Yogurt	0	t
91	GITHUB	How many flowers are in the design stamped on each side of an Oreo cookie?	Twelve	0	t
92	GITHUB	Black-eyed peas are not peas. What are they?	Beans	0	t
93	GITHUB	Under what name did the Domino's Pizza chain get its start?	DomNick's	0	t
94	GITHUB	What was margarine called when it was first marketed in England?	Butterine	0	t
132	GITHUB	What type of egg will yield 11 and one-half average-size omelettes?	Ostrich egg	1	t
99	GITHUB	What is the name of the evergreen shrub from which we get capers?	caper bush	0	t
103	GITHUB	What was the first commercially manufactured breakfast cereal?	Shredded Wheat	0	t
106	GITHUB	What was the first of H.J. Heinz' "57 varieties"?	Horseradish	0	t
107	GITHUB	What is the literal meaning of the Italian word linguine?	Little tongues	0	t
110	GITHUB	What is the only essential vitamin not found in the white potato?	Vitamin A	0	t
111	GITHUB	What food is the leading source of salmonella poisoning?	Chicken	0	t
113	GITHUB	What nutty legume accounts for one sixth of the world's vegetable oil production?	peanut	0	t
114	GITHUB	What country saw the cultivation of the first potato, in 200 A.D.?	South America	0	t
115	GITHUB	What type of lettuce was called Crisphead until the 1920s?	Iceberg lettuce	0	t
116	GITHUB	What tree gives us prunes?	plum tree	0	t
117	GITHUB	What type of chocolate was first developed for public consumption in Vevey, Switzerland in 1875?	Milk Chocolate	0	t
118	GITHUB	What added ingredient keeps confectioners' sugar from clumping?	Corn starch	0	t
119	GITHUB	What edible comes in crimmini, morel, oyster and wood ear varieties?	Mushrooms	0	t
120	GITHUB	What newly-imported substance caused the first major outbreak of tooth decay in Europe, in the1500's?	Sugar	0	t
121	GITHUB	What ingredient in fresh milk is eventually devoured by bacteria, causing the sour taste?	Lactose	0	t
122	GITHUB	What uncooked meat is a trichina worm most likely to make a home in?	Pork	0	t
123	GITHUB	What baking ingredient, sprayed at high pressure, did the U.S. Air Force replace its toxic paint stripper with?	Baking soda	0	t
126	GITHUB	What method of preserving food did the Incas first use, on potatoes?	Freeze-drying	0	t
109	GITHUB	What recipe, first published 50 years ago, has been requested most frequently through the years by the readers of "Better Homes and Garden"?	Hamburger Pie	1	t
128	GITHUB	What hit the market alongside spinach as the first frozen veggies?	Peas	0	t
129	GITHUB	How many sizes of chicken eggs does the USDA recognize, including peewee?	6	0	t
131	GITHUB	What's the only fish that produces real caviar, according to the FDA?	Sturgeon	0	t
133	GITHUB	What's the groundnut better known as?	peanut	0	t
134	GITHUB	What crystalline salt is frequently used to enhance the flavor to TV dinners?	Monosodium glutamate	0	t
135	GITHUB	What sticky sweetener was traditionally used as an antiseptic ointment for cuts and burns?	Honey	0	t
136	GITHUB	What should your diet be high in to lessen the chance of colon cancer, according to a 1990 study?	Fiber	0	t
105	GITHUB	What American city produces most of the egg rolls sold in grocery stores in the United States?	Houston, Texas	1	t
96	GITHUB	What was the name of Cheerios when it was first marketed 50 years ago?	Cheerioats	1	t
98	GITHUB	What is the most widely eaten fish in the world?	Herring	1	t
89	GITHUB	What breakfast cereal was Sonny the Cuckoo Bird "cuckoo for"?	Cocoa Puffs	1	t
124	GITHUB	What staple is laced with up to 16 additives including plaster of paris, to stay fresh?	Bread	3	t
104	GITHUB	When Birdseye introduced the first frozen food in 1930, what did the company call it?	Frosted Food	1	t
102	GITHUB	What was the drink we know as the Bloody Mary originally called?	Red Snapper	1	t
125	GITHUB	What falling fruit supposedly inspired Isaac Newton to write the laws of gravity?	Apple	1	t
95	GITHUB	What are the two top selling spices in the world?	Pepper and mustard	1	t
90	GITHUB	On what vegetable did an ancient Egyptian place his right hand when taking an oath?	onion	1	t
101	GITHUB	What nation produces two thirds of the world's vanilla?	Madagascar	1	t
100	GITHUB	What animals milk is used to make authentic Italian mozzarella cheese?	water buffalo's	1	t
130	GITHUB	What are de-headed, de-veined an sorted by size in a laitram machine?	Shrimp	2	t
108	GITHUB	Where did the pineapple plant originate?	South America	2	t
112	GITHUB	What company first condensed soup in 1898?	Campbell's	2	t
137	GITHUB	What nut do two-thirds of its U. S. producers sell through Blue Diamond?	Almond	0	t
138	GITHUB	What type of oven will not brown foods?	Microwave oven	0	t
140	GITHUB	What type of tree leaves are the only food that a koala bear will eat?	Eucalyptus	0	t
141	GITHUB	Which country in Europe consumes more spicy Mexican food than any other?	Norway	0	t
143	GITHUB	Federal labeling regulations require how much caffeine be removed from coffee for it to be called decaffeinated?	9ty seven percent	0	t
144	GITHUB	What famous Greek once advised: "Let your food be your medicine, and your medicine be your food"?	Hippocrates	0	t
145	GITHUB	Chicken is the leading cause of what food born illness?	Salmonella poisoning	0	t
146	GITHUB	Who invented Margarine in 1868?	Hyppolyte Merge-mouries	0	t
149	GITHUB	What food was considered the food of the Gods, and was said to bring eternal life to anyone who ate it?	Ambrosia	0	t
151	GITHUB	The song, Food, Glorious Food, was featured in which musical?	Oliver	0	t
152	GITHUB	Of the Worlds food crops, what percentage is pollinated by insects?	80 percent	0	t
154	GITHUB	Which entertainer on Conan O'Brien's show, choose NBC cafeteria chicken over his own brand in a blind taste test?	Kenny Rogers	0	t
155	GITHUB	What drink was sold as Diastoid when first introduced?	Malted milk	0	t
172	GITHUB	What is the main vegetable ingredient in the dish Borsht?	Beetroot	2	t
157	GITHUB	What type of creature builds a lodge in which to store food, rear its young, and pass the winter?	Beaver	0	t
158	GITHUB	What fruit or vegetable was dubbed the FlavrSavr and was the first genetically engineered food sold in the United States?	tomato	0	t
160	GITHUB	What morning food has a name derived from the German word for stirrup?	Bagel	0	t
161	GITHUB	In 1904, what food product was renamed Post Toasties cereal because the clergy objected to the original name?	Elijah's Manna	0	t
162	GITHUB	Which country does Rioja Wine come from?	Spain	0	t
163	GITHUB	The juice of which fruit will you find in a bloody mary?	Tomato	0	t
164	GITHUB	Homer Simpson drinks Which brand of beer regularly?	Duff	0	t
165	GITHUB	What is the main ingredient of paella?	Rice	0	t
166	GITHUB	What would you call a segment of garlic?	Clove	0	t
168	GITHUB	Sticky and sweet this food is produced in a hive?	Honey	0	t
169	GITHUB	This dairy product tastes good on crackers and sandwiches or on its own?	Cheese	0	t
170	GITHUB	In the dish of Beef Wellington, in what is the beef wrapped?	Pastry	0	t
171	GITHUB	What is The Teenage Mutant Ninja Turtles favourite food?	Pizza	0	t
173	GITHUB	Sauerkraut is pickled what?	Cabbage	0	t
190	GITHUB	What is the only fruit that grows its seeds on the outside?	Strawberry	1	t
181	GITHUB	In a Mcdonald's Big Mac how many pieces of bun are there?	3	0	t
184	GITHUB	Which country invented the Marmite alternative - Veggie mite?	Australia	0	t
186	GITHUB	Which fruit served with cream is eaten during the summer tennis tournament Wimbledon?	Strawberries	0	t
187	GITHUB	Apart from potato What is the other main ingredient of Bubble and Squeak?	Cabbage	0	t
188	GITHUB	Which food was popular with Popeye the Sailor?	Spinach	0	t
191	GITHUB	What other names are sardines known by?	Pilchards	0	t
192	GITHUB	Which city gave its name to a three-coloured Neapolitan ice-cream?	Naples	0	t
194	GITHUB	What are Pontefract cakes made from?	Liquorice	0	t
195	GITHUB	What is another name for almond paste?	Marzipan	0	t
196	GITHUB	What name can be a lettuce or a mass of floating frozen water?	Iceberg	0	t
197	GITHUB	What's Sauerkraut's main ingredient?	Cabbage	0	t
199	GITHUB	What type of salad do you need apple, celery, walnuts, raisins and mayonnaise mixed together?	Waldorf Salad	0	t
201	GITHUB	From which animal does haggis come?	Sheep	0	t
203	GITHUB	What cake do you keep a layer of to eat at the christening of your first child?	Wedding Cake	0	t
175	GITHUB	This fruit goes into the liqueur Kirsch?	Cherry	1	t
177	GITHUB	Which is the fruit that contains the most calories?	Avocado pear	1	t
625	GITHUB	What's the most malleable metal?	Gold	1	t
193	GITHUB	What would you be drinking if you were drinking Earl Grey?	Tea	1	t
159	GITHUB	What Olympic athlete could not run the 200-meter final in the 92 Olympics because of food poisoning?	Michael Johnson	1	t
139	GITHUB	What type of food did Linda McCartney launch?	Vegetarian food	1	t
200	GITHUB	Which fruit also shares its name with Gwyneth Paltrow's daughter?	Apple	1	t
180	GITHUB	Which food has a name which means on a skewer?	Kebab	1	t
183	GITHUB	A Calzone Is A Folded Stuffed What?	Pizza	1	t
147	GITHUB	What group of people were the first to use freeze-drying on potatoes?	Incas	1	t
142	GITHUB	The FDA approved what fat substitute for use in snack foods even though there were reports of side affects like cramps and diarrhea?	Olestra	1	t
150	GITHUB	What was the convenience food that Joel Cheek developed?	Instant Coffee	1	t
198	GITHUB	What's the only rock edible to man?	Salt	2	t
182	GITHUB	Oyster, Chestnut, or Shitaki are types of which vegetable?	Mushrooms	1	t
176	GITHUB	A bloomer is what type of food?	Bread	1	t
189	GITHUB	What is Scooby Doo`s favourite food?	Scooby Snacks	1	t
179	GITHUB	What fruit grows on the blackthorn tree?	Sloe	1	t
153	GITHUB	The Giant panda's favorite food is what?	Bamboo shoots	1	t
148	GITHUB	What was the Teenage Mutant Ninja Turtles favorite food?	Pizza	1	t
202	GITHUB	In cockney rhyming slang what is "Ruby Murray"?	Curry	1	t
167	GITHUB	A canteloupe is what kind of fruit?	Melon	2	t
185	GITHUB	Which country does the dish Mousakka come from?	Greece	1	t
204	GITHUB	Which brand of frozen ice cream cone was advertised to the tune of Italian song "O Sole Mio"?	Cornetto	0	t
207	GITHUB	In Eggs Florentine which vegetable is a main ingredient?	Spinach	0	t
262	GITHUB	Marzipan is made from which nuts?	Almonds	1	t
212	GITHUB	Port Salut is what?	Cheese	0	t
214	GITHUB	Who, according to the TV commercial, ‘makes exceedingly good cakes’?	Mr Kipling	0	t
215	GITHUB	What vegetable is sold mainly before 30th October?	Pumpkin	0	t
216	GITHUB	Whats the english translation for the french word crepe?	Pancake	0	t
217	GITHUB	What is a macadamia?	Nut	0	t
218	GITHUB	In ancient Egypt what was liquorice used for?	Medicine	0	t
221	GITHUB	Baked beans are made from which beans?	Haricot	0	t
222	GITHUB	What are small cubes of toasted or fried bread?	Croutons	0	t
223	GITHUB	What would you call a cluster of bananas?	hand	0	t
227	GITHUB	Which celebrity chef was nicknamed 'The Naked Chef'?	Jamie Oliver	0	t
228	GITHUB	What daily vegetable do typical boxer's ears look like?	Cauliflower	0	t
229	GITHUB	What's a small pickled cucumber?	Gherkin	0	t
232	GITHUB	Which brand of beer features a kangaroo on the packaging?	Fosters	0	t
235	GITHUB	In Ancient China what variety of meat was reserved exclusively for the emperor?	Pork	0	t
236	GITHUB	Which song mentions saveloy, mustard, jelly, custard and sausages in the lyrics?	Food Glorious Food	0	t
237	GITHUB	Jasmine and long grain are both types of what?	Rice	0	t
240	GITHUB	What sort of pastry is used to make profiteroles?	Choux	0	t
241	GITHUB	What is the national dish of Hungary?	Goulash	0	t
242	GITHUB	Which nut is used to flavour traditional Bakewell Tart?	Almond	0	t
243	GITHUB	In the dish of Beef Wellington, in what is the beef wrapped?	Pastry	0	t
246	GITHUB	Which fruit is used in the making of a Black Forest Gateau?	Black Cherries	0	t
250	GITHUB	Which country consumes the most pasta per person per year?	Italy	0	t
253	GITHUB	In the Hansel and Gretel tale what was the wicked witch's house made of?	Gingerbread	0	t
254	GITHUB	What take-away is traditional in England at the seaside?	Fish and chips	0	t
255	GITHUB	What meat is Coq au vin made with ?	Chicken	0	t
256	GITHUB	Which cheese is made in reverse?	Edam	0	t
257	GITHUB	What variety of banana shares its name with the title of a Bond movie?	Goldfinger	0	t
259	GITHUB	Which product is advertised on TV with the slogan, “Once you pop you can’t stop”?	Pringles	0	t
260	GITHUB	What is the official national cheese of Greece?	Feta	0	t
263	GITHUB	During brewing what is converted into alcohol?	Sugar	0	t
265	GITHUB	Grolsch lager is from which country?	Holland	0	t
269	GITHUB	Bacardi Rum's logo features which creature?	Bat	0	t
270	GITHUB	An egg plant is also known as which vegetable?	Aubergine	0	t
272	GITHUB	What is the plant that wards off vampires?	Garlic	0	t
208	GITHUB	In a French restaurant what would you be eating if you chose escargots?	Snails	1	t
219	GITHUB	What type of thin pancake is eaten in Mexico?	Tortilla	1	t
206	GITHUB	Which fruit does one of Bob Geldofs' daughter share a name with?	Peaches	1	t
271	GITHUB	What is a light round bun usually served hot?	Muffin	1	t
234	GITHUB	What is advertised on TV with the slogan "You either Love it or Hate it"?	Marmite	1	t
225	GITHUB	If you had frijoles refritos in a Mexican restaurant it would be refried what?	beans	1	t
239	GITHUB	What fruit was originally called a Chinese gooseberry	Kiwi Fruit	1	t
205	GITHUB	If I take two apples out of a basket containing six apples how many apples do I have ?	2	1	t
238	GITHUB	What might you be eating at Wimbledon if you had a Cambridge Rival in your mouth?	Strawberry	1	t
244	GITHUB	What is the main vegetable used to make Borsch?	Beetroot	1	t
213	GITHUB	Who talked of eating human liver washed down with Chianti?	Hannibal Lecter	1	t
273	GITHUB	The Teenage Mutant Ninja Turtles favourite food is?	Pizza	1	t
220	GITHUB	If steak was blue how would it be cooked?	Very Rare	1	t
231	GITHUB	What name's given to a small, deep fried chinese dumpling with a savoury filing?	Won ton	1	t
224	GITHUB	What nuts are used to flavour amaretto?	Almonds	1	t
266	GITHUB	This carbohydrate fruit is high in potassium?	Banana	1	t
251	GITHUB	What was the favourite food of Paddington Bear?	Marmalade	1	t
245	GITHUB	What is Bombay Duck?	Fish	1	t
274	GITHUB	The main vegetable ingredient in the dish Borsht is what?	Beetroot	1	t
267	GITHUB	What overtook coca-cola as the most well known brand name (in the world) in 1996?	McDonalds	1	t
249	GITHUB	How many calories are there in a stick of celery?	None	2	t
275	GITHUB	Sauerkraut is pickled what?	Cabbage	2	t
252	GITHUB	Which family of vegatables are Chives from?	Onions	1	t
233	GITHUB	A mint with a hole?	Polo	1	t
226	GITHUB	This city is famous for its oranges?	Seville	1	t
248	GITHUB	The name of what food, when translated, means twice-cooked?	Biscuit	2	t
210	GITHUB	What flavour is Ouzo?	Aniseed	1	t
276	GITHUB	Chicory was a war time substitute for what drink?	Coffee	2	t
268	GITHUB	The 'M' in the McDonalds logo is what colour?	Yellow	1	t
258	GITHUB	Conference, Bartlett and Kaiser are all varieties of which fruit?	Pear	1	t
230	GITHUB	What's cockney rhyming slang for eyes?	Mince Pies	2	t
261	GITHUB	Which variety of orange was named after a Japanese province?	Satsuma	1	t
264	GITHUB	This chick pea pureé is flavoured with tahini and served as a dip?	Hummus	1	t
209	GITHUB	Which meat is usally in a Shish Kebab?	Lamb	3	t
277	GITHUB	What vegetable is also known as zucchini in the USA?	Courgette	0	t
278	GITHUB	This fruit goes into the liqueur Kirsch?	Cherry	0	t
279	GITHUB	A bloomer is What type of food?	Bread	0	t
281	GITHUB	What soft drink uses this slogan, "What's the worst that could happen"	Dr Pepper	0	t
282	GITHUB	Which is the fruit that contains the most calories?	Avocado pear	0	t
283	GITHUB	What are dried prunes?	Plums	0	t
284	GITHUB	The main cereal ingredient of flapkacks (Hudson Bars in USA)?	Oats	0	t
285	GITHUB	What is the correct spelling of a Cadbury Creame/Creem/Creme/Cream Egg?	Creme	0	t
286	GITHUB	What is Uganda's staple crop, which each adult consumes over 3 times bodyweight annually?	Bananas	0	t
289	GITHUB	Homer Simpson drinks what brand of beer?	Duff	0	t
292	GITHUB	This spirit is the base for a Black Russian cocktail?	Vodka	0	t
293	GITHUB	What country is home to Grolsch lager?	Holland	0	t
294	GITHUB	A crapulous person is full of what?	Alcohol	0	t
296	GITHUB	What's colour of the inside of a pistachio nut?	Green	0	t
299	GITHUB	When a wine is described as 'brut' what does it mean about the taste?	Very Dry	0	t
300	GITHUB	The usual main meat ingredient of a Shish Kebab is?	Lamb	0	t
302	GITHUB	The "D" where milk is processed?	Dairy	0	t
303	GITHUB	What spice gives piccalilli and curries its yellow colour?	Turmeric	0	t
306	GITHUB	The main ingredient of a Paella is what?	Rice	0	t
307	GITHUB	The main ingredient of Sauerkraut is what?	Cabbage	0	t
308	GITHUB	This food has a name which means on a skewer?	Kebab	0	t
309	GITHUB	In a Mcdonald's Big Mac how many pieces of bun are there?	3	0	t
310	GITHUB	Oyster, Chestnut, or Shitaki are types of which vegetable?	Mushrooms	0	t
311	GITHUB	What is the only fruit named for its colour?	Orange	0	t
312	GITHUB	Traditionally at a fair ground what fruit would be covered with toffee?	Apple	0	t
316	GITHUB	Which city is called Kapstad in Afrikaans?	Cape Town	0	t
317	GITHUB	Which language apart from English is an official language of Canada?	French	0	t
320	GITHUB	Lesotho is a southern African Kingdom surrounded by which country?	South Africa	0	t
324	GITHUB	The Chinese city of Beijing was previously known as what?	Peking	0	t
341	GITHUB	Which tourist attraction is the only living structure visible from outer space?	Great Barrier Reef	1	t
328	GITHUB	Edinburgh is in which country?	Scotland	0	t
329	GITHUB	What is the Great Barrier Reef made from?	Coral	0	t
330	GITHUB	Which Chinese landmark was viewed from space?	Great Wall of China	0	t
318	GITHUB	Okinawa is a volcano in which country?	Japan	1	t
333	GITHUB	How was the Cote D'Ivoire previously known?	Ivory Coast	0	t
334	GITHUB	Buckingham Palace is in which English City.	London	0	t
336	GITHUB	The Victoria Falls are shared between Zimbabwe and which other country beginning with the same letter?	Zambia	0	t
338	GITHUB	The Channel Tunnel links England with which European country?	France	0	t
340	GITHUB	Which Australian province has New at the beginning of its name?	South Wales	0	t
342	GITHUB	Which House in London did the Queen Mother live?	Clarence House	0	t
343	GITHUB	Which Scandinavian Capital Begins And Ends With The Same Letter?	Oslo	0	t
345	GITHUB	How many stars are on the flag of New Zealand?	4	0	t
347	GITHUB	Which country is The Prado Art Museum?	Spain	0	t
348	GITHUB	Where is the Louvre Art Museum?	Paris	0	t
349	GITHUB	Which English city would you find Piccadilly Circus?	London	0	t
301	GITHUB	What do the brits call a Weenie?	hot dog	1	t
304	GITHUB	Hash Browns are normally made from which vegetables?	Potatoes	1	t
321	GITHUB	Madagascar is off which coast of Africa?	East	1	t
335	GITHUB	The River Seine runs through which European capital city?	Paris	1	t
298	GITHUB	This herb is used to make a Pesto sauce?	Basil	1	t
325	GITHUB	Argentina's east coast lies on which ocean?	Atlantic	2	t
344	GITHUB	What colour is the far left stripe on the French flag?	Blue	1	t
295	GITHUB	What is the name of this hot red chilli pepper it is often dried and ground?	Cayenne Pepper	1	t
322	GITHUB	Antigua and Barbuda lie in which Sea?	Caribbean	1	t
288	GITHUB	What fruit grows on the blackthorn tree?	Sloe	1	t
290	GITHUB	A crapulous person is full of what?	Alcohol	1	t
339	GITHUB	What are the Islas Canarias in English?	Canary Islands	1	t
305	GITHUB	Prunes stuffed with almonds are wrapped in what to make Devils on horseback?	Bacon	1	t
327	GITHUB	What is the largest country in South America?	Brazil	1	t
287	GITHUB	What's lava bread?	Seaweed	2	t
280	GITHUB	This type of milk is a basic ingredient in Thai cookery?	Coconut milk	1	t
313	GITHUB	This herb is used to flavour Pernod?	Aniseed	2	t
291	GITHUB	What spanish drink consists of sweet red wine, lemonade or soda water and decorated with fruit?	Sangria	1	t
337	GITHUB	Which US state is famous for Disneyland and the film industry?	California	1	t
315	GITHUB	 lemurs?	Madagascar	1	t
314	GITHUB	This milk is a basic ingredient in Thai cookery?	Coconut milk	1	t
331	GITHUB	For most of the 20th century ST. Petersburg has been named after which Soviet Hero?	Lenin	1	t
346	GITHUB	What aboriginal name is Ayers Rock also known as?	Uluru	1	t
323	GITHUB	Ottawa is which country's capital?	Canada	1	t
297	GITHUB	This is converted into alcohol during brewing?	Sugar	1	t
319	GITHUB	In which country is an Afghani a unit of currency?	Afghanistan	2	t
352	GITHUB	The city of Vienna stands on which river?	Danube	0	t
353	GITHUB	The town of Tequila is in which country?	Mexico	0	t
355	GITHUB	Stonehenge is in which English county?	Wiltshire	0	t
356	GITHUB	Which Country produces the world's best cigars?	Cuba	0	t
358	GITHUB	Acapulco is in which country?	Mexico	0	t
359	GITHUB	This City has the oldest Metro System in the world?	London	0	t
361	GITHUB	What sense is most closely linked to memory?	smell	0	t
363	GITHUB	What animals did the Ricardos and Mertzes attempt to raise for profit upon moving to Connecticut?	Chickens	0	t
364	GITHUB	What player squats an average of 300 times during a doubleheader?	catcher	0	t
365	GITHUB	What woman was arrested for voting in the 1872 election for U.S. president?	Susan B. Anthony	0	t
367	GITHUB	What was the largest city in the U.S. when the first census was taken in 1790?	Philadelphia	0	t
401	GITHUB	What woman holds the record for most Wimbledon tennis championships?	Billie Jean King	1	t
369	GITHUB	How many rings are there on a five-zone archery target?	4	0	t
370	GITHUB	How many of every four Americans say that they believe in astrology?	1	0	t
371	GITHUB	What snack food did a University of South Florida engineering professor spend six years studying the crunch of?	Potato Chips	0	t
372	GITHUB	What’s the top selling campus snack according to the American Association of College Stores?	Oreo Cookies	0	t
375	GITHUB	What sport did the Philadelphia Atoms and the Dallas Tornado play in the 1970's?	Soccer	0	t
378	GITHUB	What sport causes 18,000 facial injuries each year in U.S. kids aged 5 to 14?	Baseball	0	t
379	GITHUB	What team sport's rules were first printed in 1892 in the newspaper of a Springfield, Massachusetts YMCA training school?	Basketball	0	t
380	GITHUB	What sport the most folks on Sports Magazine's list of the nine highest-paid athletes of 1990?	Boxing	0	t
381	GITHUB	What day of the week did the Romans call dies solis?	Sunday	0	t
383	GITHUB	What’s the fastest swimming marine mammal?	killer whale	0	t
384	GITHUB	What mammals travel with yellowfin tuna?	Dolphins	0	t
385	GITHUB	What team won the first national college football championship?	Yale	0	t
386	GITHUB	What U.S. city was once know as Federal City?	Washington, D.C.	0	t
387	GITHUB	What U.S. city did Indiana Jones take off from on his adventures in Raiders of the Lost Ark?	San Francisco	0	t
390	GITHUB	Who told the American public in 1974: "Our long national nightmare is over"?	Gerald Ford	0	t
391	GITHUB	Who was the only U.S. president to have earned a Ph.D.?	Woodrow Wilson	0	t
392	GITHUB	What president had solar panels installed on the white house roof?	Jimmy Carter	0	t
393	GITHUB	What do you fear will stick to the roof of your mouth if you have arachibutyrophobia?	Peanut Butter	0	t
397	GITHUB	What state’s gourmets devour 3.6 cans of Spam per second, double the rate of the rest of the U.S.?	Hawaii	0	t
398	GITHUB	What was Rhoda's maiden name?	Morgenstern	0	t
399	GITHUB	What army publishes the newspaper The War Cry?	Salvation Army	0	t
400	GITHUB	What French port did 200,000 British troops flee on June 4, 1940?	Dunkirk	0	t
402	GITHUB	What future sitcom megastar began wearing her hair red in 1942?	Lucille Ball	0	t
404	GITHUB	What was the nickname of frontierswoman Martha Jane Burk?	Calamity Jane	0	t
407	GITHUB	How long does it take the moon to revolve around the Earth, to the nearest day?	27A	0	t
408	GITHUB	How many original seasons of Gilligan's Island were TV viewers subjected to?	3	0	t
409	GITHUB	How many minor league homeruns did Babe Ruth hit?	1	0	t
413	GITHUB	What U.S. president's middle initial "S" did not stand for a name?	Harry S Truman	0	t
396	GITHUB	What U.S. state boasts the famous Calumet race on horse farms?	Kentucky	2	t
373	GITHUB	What U.S. state boasts the most car owners?	California	2	t
374	GITHUB	What western state led the U.S. in percent increase in population from 1980 to 1989?	Nevada	1	t
366	GITHUB	What U.S. city’s drivers log 142 million miles daily, as far as from Earth to Mars?	Los Angeles	1	t
376	GITHUB	What sport did two teams of Union Army soldiers play before a crowd of 40,000 at Hilton Head, South Carolina in 1862?	Baseball	1	t
389	GITHUB	How many furlongs to a mile?	8	1	t
357	GITHUB	The official language of Austria is what?	German	1	t
360	GITHUB	Which country is the maple leaf the national symbol?	Canada	1	t
350	GITHUB	Which one of England's biggest shipping ports is famous for being the port that the Titanic left from?	Southampton	1	t
354	GITHUB	You will find the world famous Raffles Hotel in which country?	Singapore	1	t
410	GITHUB	How many nose jobs has Michael Jackson had, as of 1991, according to the book Michael Jackson: The Magic and the Madness?	6	1	t
412	GITHUB	Who was the first U.S. President to hold a televised news conference?	Dwight Eisenhower	1	t
406	GITHUB	How many colors are there in a rainbow?	7	1	t
394	GITHUB	What did cleaning crews remove 600 pounds of from the Statue of Liberty in 1990?	Chewing Gum	1	t
377	GITHUB	What became America’s first organized sport, in 1664?	Horse racing	2	t
395	GITHUB	Which of the 48 contiguous U.S. states has the fewest people?	Wyoming	1	t
411	GITHUB	What former U.S. president's son began hosting his own nightly talk show in 1991?	Ronald Reagan	1	t
405	GITHUB	How many days after John F Kennedy's assassination was Lee Harvey Oswald shot?	2	1	t
388	GITHUB	How many Rocky movies were made by 1990?	5	1	t
382	GITHUB	What weekday do more colds begin on than any other?	Monday	1	t
351	GITHUB	This US state is the only one starting with 'H'?	Hawaii	2	t
362	GITHUB	What does Simon Wiesenthal hunt?	fugitive Nazis	1	t
414	GITHUB	What ex-president missed the slab of pork while showing off his ax-wielding skills to a group of Moscow butchers?	Richard Nixon	0	t
416	GITHUB	What lawn sport’s popularity put an abrupt end to the croquet craze if the late 1800’s?	tennis	0	t
418	GITHUB	What Canadian jockey, later crippled, rode Secretariat to the Triple Crown in 1973?	Ron Turcotte	0	t
420	GITHUB	What dickens character said: "Please, sir, I want some more"?	Oliver Twist	0	t
421	GITHUB	Who was ordered to apologize for slapping Private Paul G. Bennett in the fact?	General George S Patton, Jr.	0	t
422	GITHUB	What's the most commonly-spoken language in Belgium?	French	0	t
423	GITHUB	What two countries do Tyroleans come from?	Austria and Italy	0	t
424	GITHUB	What are Alvin, Simon, and Theodore?	chipmunks	0	t
425	GITHUB	What country's flag is made up of the Union Jack and the Southern Cross?	Australia's	0	t
426	GITHUB	What is Oprah Winfrey's real name?	Oprah Winfrey	0	t
429	GITHUB	Where were murdering sisters Delfina & Maria de Jesus Gonzales from?	Mexico	0	t
432	GITHUB	Who directed the classic movie High Noon?	Fred Zinnemann	0	t
434	GITHUB	The Sicilian Specialist by Norman Lewis is a thinly disguised fictional account of which assassination plot?	J. F. Kennedy	0	t
435	GITHUB	In which state is Temple University?	Pennsylvania	0	t
437	GITHUB	In square miles, how big is Lake Ontario?	7,550	0	t
441	GITHUB	What is Fidel Castro's real first name?	Ruz	0	t
445	GITHUB	Which veteran rock musician said, "If I had my time again I would like to take up archaeology?"	Bill Wyman	0	t
436	GITHUB	Which astronaut said, "Four days vacation and see the world?"	Jim Lovell	1	t
449	GITHUB	What were ladies asked not to wear at Prince Edward's UK wedding?	Hats	0	t
453	GITHUB	Which convenience food did Joel Cheek develop?	Instant coffee	0	t
457	GITHUB	By what name is Emmanuel Rudnitsky more widely known?	Man Ray	0	t
461	GITHUB	What star sign is shared by John Major and Sir David Frost?	Aries	0	t
462	GITHUB	Why was Finn Volmari Iso-Hollo's 1932 steeplechase win exceptional?	He ran an extra lap by mistake	0	t
464	GITHUB	Which middle name did UK Prime Minister Winston Churchill share with Charlie Chaplin?	Spencer	0	t
466	GITHUB	Which capital city has the fewest cinemas in relation to its population?	Cairo	0	t
454	GITHUB	Which controversial book contained the line, "You can't ravish a tin of sardines?"	Lady Chatterley's Lover	1	t
468	GITHUB	In which decade was Madonna born?	50s	0	t
470	GITHUB	Who plays against the USA in golf's Walker Cup?	Great Britain	0	t
471	GITHUB	Who had a huge 70s No 1 with Shadow Dancing?	Andy Gibb	0	t
473	GITHUB	Marlon Brando was born in which decade of the century?	20s	0	t
475	GITHUB	Martina Navratilova has been on the winning side in the Federation Cup for which two countries?	Czechoslovakia & USA	0	t
476	GITHUB	The cause of what color fever was discovered in 1900?	Yellow	0	t
442	GITHUB	Where is the world's largest soccer stadium?	Rio De Janeiro, Brazil	1	t
439	GITHUB	Stephens College is in which state?	Missouri	1	t
428	GITHUB	Discovered in the 30s, Jonker and President Vargas were types of what?	Diamond	1	t
417	GITHUB	What sport did Mr. Moto, Lou Thesz, and Big Daddy Lipscomb star in?	Professional Wrestling	1	t
438	GITHUB	How old would Otis Redding have been had he lived to the end of the 20th century?	58	1	t
450	GITHUB	Who was Prime Minister of Afghanistan from 1993 to 1994?	Gulbuddin Hematyar	1	t
469	GITHUB	Which initials did rapper Hammer lose?	M.C.	1	t
452	GITHUB	In what year did the US death toll in Vietnam first exceed that in Korea?	1969	1	t
415	GITHUB	What sport do Fuzzy Zoeller and Kermit Zarley play?	Golf	1	t
474	GITHUB	Who did Elton John originally duet with on Don't Go Breaking My Heart?	Kiki Dee	1	t
451	GITHUB	Which year marked the bi-centenary of Kentucky joining the Union?	1992	1	t
458	GITHUB	What is Meg Ryan's real name?	Margaret Hyra	1	t
459	GITHUB	Which Italian actress was voted the Most Beautiful Italian Girl in Tunis 1957?	Claudia Cardinale	1	t
444	GITHUB	Who was Herbert Hoover's Vice President?	Charles Curtis	1	t
448	GITHUB	What was the only hit single by Jaggerz?	Rapper	1	t
440	GITHUB	John F. Kennedy was one of how many children?	9	1	t
443	GITHUB	Who wrote that the female of the species is more deadly that the male?	Rudyard Kipling	2	t
433	GITHUB	Which Pope died in 1978 after a mere 33 days in office?	John Paul I	1	t
456	GITHUB	What did the M stand for in J M Barrie's name?	Matthew	1	t
477	GITHUB	Which actor is the dad of Jamie Lee Curtis?	Tony Curtis	2	t
446	GITHUB	What was Van Halen's first album after Dave Lee Roth left?	5150	1	t
479	GITHUB	What does the F stand for in FBI?	Federal	2	t
427	GITHUB	What star sign is "Gladys Knight?	Gemini	1	t
430	GITHUB	Who has been Pope the longest in the 20th century?	John Paul II	1	t
478	GITHUB	In football, where do the Chargers come from?	San Diego	1	t
472	GITHUB	In Canada what is the NHL?	National Hockey League	1	t
460	GITHUB	Who was the Chicago police commissioner at the time of the St Valentine's Day massacre?	William F Russell	1	t
465	GITHUB	What was officially called the Motion Picture Producers and Distributors of America?	Hays Office	1	t
419	GITHUB	Who played Sportin' Life in the film Porgy and Bess?	Sammy Davis Jr	2	t
431	GITHUB	How was film director Emil Anton Bundmann better known?	Anthony Mann	1	t
463	GITHUB	What was the profession of "Arnold Newman?	Photographer	1	t
481	GITHUB	Which state is called the volunteer State?	tennessee	0	t
482	GITHUB	How did Greta Gustafson become better known as an actress?	Greta Garbo	0	t
483	GITHUB	Albertville and Lillehammer were two 90s venues for which event?	Winter Olympics	0	t
486	GITHUB	Kirk Douglas was in which of the armed services in WWII?	Navy	0	t
490	GITHUB	In horse racing, which triple Crown race is held on Long Island?	Belmont	0	t
493	GITHUB	How was Billie Jean Moffitt later known in the tennis world?	Billie Jean King	0	t
494	GITHUB	Who won the Wimbledon singles in 1998 after twice losing in the final?	Jana Novotna	0	t
497	GITHUB	In which Park was the New York marathon run until 14970?	Central Park	0	t
498	GITHUB	The Walker Cup is competed for in which sport?	Golf	0	t
500	GITHUB	Brown-Eyed Handsome Man was a hit for which singer after his death?	Buddy Holly	0	t
501	GITHUB	In which state did both Kennedy and Johnson die?	Texas	0	t
502	GITHUB	The Fresh Prince of where was the subject of a sitcom of 140+ shows?	Bel Air	0	t
503	GITHUB	Who is younger, Serena or Venus Williams?	Serena	0	t
504	GITHUB	Which state is called the Golden state?	California	0	t
506	GITHUB	What was President Yeltsin's first name?	Boris	0	t
508	GITHUB	In which month does the Kentucky Derby take place?	May	0	t
509	GITHUB	Rugby's man mountain Jonah Lomu plays for which country?	New Zealand	0	t
513	GITHUB	What is the Aloha State?	Hawaii	0	t
514	GITHUB	The main cause of the condition known as Rickets is the lack of what?	Vitamin D	0	t
515	GITHUB	If you mix yellow and blue what colour do you get?	Green	0	t
516	GITHUB	An oak tree grows what kind of nut?	acorn	0	t
517	GITHUB	What is the centre of a hurricane called?	Eye	0	t
518	GITHUB	What are big chunks of ice that have broken off glaciers and drifted into the sea?	Icebergs	0	t
520	GITHUB	A young Spanish lady is called a what?	Senorita	0	t
538	GITHUB	The French underground is called what?	Metro	1	t
525	GITHUB	To listen is to 'here' or 'hear'?	Hear	0	t
531	GITHUB	Phrases - "It's better to ---- than to receive"	give	0	t
532	GITHUB	Phrases - "Keep your ---- to the grindstone"	nose	0	t
534	GITHUB	Phrases - "The whole --- and caboodle"	kit	0	t
535	GITHUB	Phrases - "Keep a stiff upper ---"	lip	0	t
537	GITHUB	Phrases - "Many a ---- word is spoken in jest"	true	0	t
539	GITHUB	In which musical would you hear 'Consider Yourself'?	Oliver	0	t
540	GITHUB	This tree's berries are used to flavour gin?	Juniper	0	t
541	GITHUB	Advertising Slogan - What product is - 'It's a bit of an animal'	Pepperami	0	t
542	GITHUB	On a cluedo board how many rooms are there?	9	0	t
543	GITHUB	Advertising Slogan - 'The future's bright'?	Orange	0	t
545	GITHUB	This gemstone is used to symbolize fourty years of marriage?	Ruby	0	t
548	GITHUB	What was it that frightened Miss Muffet away?	spider	0	t
551	GITHUB	Puff The Magic Dragon lived in which land?	Honalee	0	t
552	GITHUB	What did it say on the bottle Alice drank from when she shrank?	Drink Me	0	t
553	GITHUB	When the Amazon Lily opens What colour is the flower?	White	0	t
480	GITHUB	Tony Curtis was in which of the armed services in WWII?	Navy	1	t
499	GITHUB	In the charity AHA, what part of the body does H stand for?	Heart	1	t
505	GITHUB	What color is the M in McDonald's?	Yellow	1	t
530	GITHUB	Phrases - "It came like a bolt from the ----"	blue	1	t
533	GITHUB	Phrases - "A knight in shining ------"	armour	1	t
489	GITHUB	Which musical instrument did Pablo Casals play?	Cello	1	t
528	GITHUB	Phrases - "Have your guts for -------"	garters	1	t
544	GITHUB	The UK supermarket chain ASDA is owned by which american retail giant?	Walmart	1	t
496	GITHUB	Where does Greg Norman come from?	Australia	1	t
529	GITHUB	Phrases - "It's better to light a ------ than curse the darkness"	candle	1	t
524	GITHUB	To ponder is to 'wander' or 'wonder'?	Wonder	1	t
522	GITHUB	What word can go before - Jumping, Off and Down?	Show	2	t
491	GITHUB	In which country was the AIDS virus first recognized?	USA	1	t
488	GITHUB	Which shoe company did Michael Jordan famously promote?	Nike	1	t
519	GITHUB	In ancient eygpt the ploughs were first pulled by what?	People	1	t
511	GITHUB	What is the postal abbreviation for Idaho?	ID	1	t
546	GITHUB	Rhinitis affects which part of the body?	Nose	1	t
492	GITHUB	Scott Hamilton won Olympic gold for the USA on what surface?	Ice	1	t
527	GITHUB	What word can go before - Quartet, bean, and vest?	String	1	t
549	GITHUB	The Aorta is in which organ in the body?	Heart	1	t
550	GITHUB	This muscle is the only one not attached at both ends?	Tongue	2	t
495	GITHUB	In which decade did people last get the chance to see Halley's Comet?	1980s	1	t
487	GITHUB	What sport is the winner of the Harry Vardon trophy playing?	Golf	1	t
507	GITHUB	In fiction, what is the last name of Dr. Hannibal--the Cannibal?	Lecter	1	t
484	GITHUB	The US declared war on which country after the bombing of Pearl Harbor?	Japan	2	t
521	GITHUB	What's the smallest paper size - A3, A4 or A5?	A5	2	t
536	GITHUB	Phrases - "Man does not live by ----- alone"	bread	1	t
485	GITHUB	Where do the Super Bowl winning Cowboys come form?	Dallas	2	t
512	GITHUB	San Antonio international airport is in which state?	Texas	2	t
526	GITHUB	What part of the body is also the name of a punctuation mark?	Colon	1	t
547	GITHUB	The larvae of flies are called what?	Maggots	2	t
556	GITHUB	What is a bad Dream?	Nightmare	0	t
557	GITHUB	What is to hurt someone's feelings?	Offend	0	t
558	GITHUB	What is an explosive sound, fizzy drink and type of song?	Pop	0	t
560	GITHUB	What is a man's name — and means yes?	Roger	0	t
561	GITHUB	What is the crazy habit of inhaling noxious fumes?	Smoking	0	t
562	GITHUB	What is the London Underground?	Tube	0	t
563	GITHUB	What is your father's brother?	Uncle	0	t
581	GITHUB	This "F" is preserved from prehistoric times?	Fossil	1	t
568	GITHUB	What is a Rastafarian hair style?	Dreadlocks	0	t
569	GITHUB	What substance is used to make soil more productive and help plants grow?	Fertilizer	0	t
571	GITHUB	What comes before jet — and after mumbo?	Jumbo	0	t
572	GITHUB	Which are organs, which have the production of urine as their primary function?	Kidney	0	t
573	GITHUB	What is white-skinned and pink-eyed?	Albino	0	t
575	GITHUB	This chemical element has the shortest name (3 letters)?	Tin	0	t
576	GITHUB	An acrophobic fears what?	Heights	0	t
580	GITHUB	Ashton Kutcher's famous older wife is whom?	Demi Moore	0	t
582	GITHUB	Put the 5 vowels in order!	AEIOU	0	t
583	GITHUB	How many days are in the month of October?	31	0	t
585	GITHUB	What is a Jacaranda a type of?	Tree	0	t
586	GITHUB	Which part of the human body does Gingivitus affect?	Gums	0	t
587	GITHUB	A rubiks cube has how many colored squares?	54	0	t
588	GITHUB	The gingerbread man should not have jumped onto whose back?	Sly fox	0	t
589	GITHUB	Which sign of the Zodiac is represented by a crab?	Cancer	0	t
591	GITHUB	This part of the human anatomy shares its name with a punctuation mark?	Colon	0	t
592	GITHUB	What does the 'E stand for in Email?	Electronic	0	t
593	GITHUB	What is Deoxyribonucleic acid commonly referred to as?	DNA	0	t
594	GITHUB	What is Ribonucleic acid commonly referred to as?	RNA	0	t
596	GITHUB	What scale of zero to 14 is used to measure acidity or alkalinity?	pH scale	0	t
566	GITHUB	What 'Y' usually has 365 but sometimes 366?	Year	1	t
600	GITHUB	What's the common name for a cubic decimeter?	liter	0	t
602	GITHUB	What's removed from water in the process of desalination?	Salt	0	t
603	GITHUB	What species Amazonian electric variety packs a 650 volt wallop?	eel	0	t
605	GITHUB	What's the base unit of mass in the metric system?	kilogram	0	t
607	GITHUB	What's the only metal that's not a solid at room temperature?	Mercury	0	t
608	GITHUB	Which will yield the most BTUs of energy--a gallon of oil, a pound of coal or a gallon of gasoline?	gallon of oil	0	t
610	GITHUB	What method of underwater detection is short for "sound navigation and ranging"?	Sonar	0	t
612	GITHUB	What color does litmus turn when dipped into acid?	Pink	0	t
613	GITHUB	What process involves heating an ore to obtain a metal?	Smelting	0	t
614	GITHUB	What's the U. S. equivalent of 0.45 kilograms?	pound	0	t
615	GITHUB	What's defined as the distance between a lens and its focal point?	Focal Length	0	t
617	GITHUB	What founding father was knocked unconscious while attempting to electrocute a turkey?	Benjamin Franklin	0	t
619	GITHUB	What sea creature can have an eye measuring 16 inches across, the largest in the animal kingdom?	squid	0	t
620	GITHUB	What explosive cosmic event was seen with the naked eye in 1987, for the first time in 383 years?	supernova	0	t
621	GITHUB	What three terms are represented in Newton's second law of motion F = ma?	Force, mass, acceleration	0	t
622	GITHUB	How many of the nine planets have moons?	7	0	t
623	GITHUB	What were exterminated from Harvard's bio labs when they were found to be carrying radioactive chemicals into the walls?	Ants	0	t
579	GITHUB	The Playboy Magazine was founded by whom?	Hugh Hefner	1	t
584	GITHUB	The name of the RAF's aerobatics team is?	Red Arrows	1	t
555	GITHUB	What "D" do Americans call a pack of playing cards?	Deck	1	t
577	GITHUB	The Mona Lisa was painted by whom?	Leonardo Da Vinci	1	t
606	GITHUB	What cooking fuel is produced by heating wood without oxygen?	Charcoal	1	t
567	GITHUB	What 'Z' is far-out humour?	Zany	1	t
616	GITHUB	What energy unit is defined as the heat required to raise one kilogram of water by one degree Celsius?	Calorie	1	t
604	GITHUB	What C word defines a substance that speeds a chemical reaction without being consumed?	Catalyst	1	t
611	GITHUB	What hazardous substance is euphemistically referred to as "mineral fiber"?	Asbestos	1	t
618	GITHUB	What continent is subjected to the world's largest ozone hole?	Antarctica	2	t
564	GITHUB	What is a magazine, temporary fashion, and sung by Madonna?	Vogue	1	t
609	GITHUB	What unit of measure do you multiply by .39 to convert it to inches?	Centimeters	1	t
601	GITHUB	What measure of energy comes from the Latin word meaning "heat"?	calorie	1	t
570	GITHUB	What is to breathe in?	Inhale	1	t
598	GITHUB	What unit of electrical power is equal to one joule per second?	Watt	1	t
590	GITHUB	On Leonardo Da Vinci's painting 'The Last Supper'how many people are depicted?	13	2	t
599	GITHUB	What planet is closest in size to our moon?	Mercury	1	t
624	GITHUB	What type of trees yield the resin used to produce turpentine?	Pine trees	3	t
578	GITHUB	The Noddy Stories was written by whom?	Enid Blyton	1	t
595	GITHUB	What process involves treating rubber with sulfur to harden it?	Vulcanizing	2	t
559	GITHUB	What is a musical trill — and a curly potato snack?	Quaver	1	t
554	GITHUB	The Scapula is in which part of the body?	Shoulder blade	2	t
574	GITHUB	What is a gambling game played on numbered cards?	Bingo	2	t
627	GITHUB	What does a meteorologist study?	Weather	0	t
629	GITHUB	This word describes the force that pulls objects to the middle of the earth?	Gravity	0	t
632	GITHUB	Where in the human body would you find the scaphoid bone?	Wrist	0	t
634	GITHUB	What is Acetic Acid more commonly known as?	Vinegar	0	t
636	GITHUB	Which grow upwards Stalactites or Stalagmites?	Stalagmites	0	t
637	GITHUB	What can be Forked, Sheet or ball?	Lightning	0	t
640	GITHUB	The curved line between any two points on a circle is referred to as what?	arc	0	t
641	GITHUB	Cumulus and Cirrus are types of what?	Cloud	0	t
643	GITHUB	Sugar found in fruit is known by what name?	Fructose	0	t
644	GITHUB	This metal is liquid at room temperature?	Mercury	0	t
645	GITHUB	The most sensitive of the senses is what?	Smell	0	t
646	GITHUB	These creatures were used to bleed patients in the nineteeth century?	Leeches	0	t
647	GITHUB	Acid turns Litmus paper which colour?	Red	0	t
648	GITHUB	This is the most common element in the universe?	Hydrogen	0	t
653	GITHUB	In what game did Mario make his first appearance?	Donkey Kong	0	t
654	GITHUB	Who was Sega's mascot?	Sonic the Hedgehog	0	t
655	GITHUB	Who is the main character of Final Fantasy VIII?	Squall Lionheart	0	t
657	GITHUB	Who is the main character in Kingdom Hearts?	Sora	0	t
659	GITHUB	Who is the main character from Final Fantasy IX?	Zidane Tribal	0	t
661	GITHUB	What video game made the Golden Gun famous?	Goldeneye	0	t
662	GITHUB	Gran Turismo is exclusive to 1 console, what is it?	Sony Playstation	0	t
631	GITHUB	Nephrology is the study of which organs?	Kidneys	1	t
658	GITHUB	In the original Kingdom Hearts, who is Sora looking for?	Kairi	1	t
660	GITHUB	In what series of video games did Master Chief appear?	Halo	1	t
626	GITHUB	When drawing circles what instrument would you use?	Compass	1	t
638	GITHUB	When Litmus paper is in contact with Alkaline what colour does it become?	Blue	1	t
630	GITHUB	What has a face, hands and wheels?	Clock	1	t
649	GITHUB	What game made popular the phrase "Do a barrel roll?"	Star Fox 64	1	t
656	GITHUB	What game mixed both Disney characters with Final Fantasy characters?	Kingdom Hearts	1	t
639	GITHUB	The best conductor of electricity is which metal?	Silver	1	t
642	GITHUB	Calcium Carbonate is more commonly known as what?	Chalk	3	t
635	GITHUB	Cumulus and Cirrus are types of what?	Clouds	2	t
652	GITHUB	What was Mario's original name?	Jumpman	1	t
651	GITHUB	What is Mario's surname?	Mario	2	t
633	GITHUB	From the bark of which tree was aspirin originally obtained?	Willow	1	t
628	GITHUB	The chinese invented this black powder to make fireworks?	Gunpowder	1	t
\.


--
-- TOC entry 2178 (class 0 OID 0)
-- Dependencies: 201
-- Name: QUIZZ_ID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('"QUIZZ_ID_seq"', 1048, true);


--
-- TOC entry 2056 (class 2606 OID 16593)
-- Name: QUIZZ_pkey1; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY "QUIZZ"
    ADD CONSTRAINT "QUIZZ_pkey1" PRIMARY KEY ("ID");


-- Completed on 2016-10-13 23:30:35

--
-- PostgreSQL database dump complete
--

