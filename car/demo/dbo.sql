/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : SQL Server
 Source Server Version : 10001600
 Source Host           : 127.0.0.1:1433
 Source Catalog        : test
 Source Schema         : dbo

 Target Server Type    : SQL Server
 Target Server Version : 10001600
 File Encoding         : 65001

 Date: 29/05/2018 01:56:46
*/


-- ----------------------------
-- Table structure for accounts
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[accounts]') AND type IN ('U'))
	DROP TABLE [dbo].[accounts]
GO

CREATE TABLE [dbo].[accounts] (
  [name] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [password] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [isadmin] int  NULL
)
GO

ALTER TABLE [dbo].[accounts] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of accounts
-- ----------------------------
INSERT INTO [dbo].[accounts]  VALUES (N'csu', N'csu', N'1')
GO

INSERT INTO [dbo].[accounts]  VALUES (N'test001', N'csu', N'0')
GO


-- ----------------------------
-- Table structure for playerInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[playerInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[playerInfo]
GO

CREATE TABLE [dbo].[playerInfo] (
  [姓名] varchar(255) COLLATE Chinese_PRC_CI_AS  NOT NULL,
  [车号] int  NULL,
  [车队] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [出生地] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [生日] date  NULL,
  [国籍] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [身高] int  NULL,
  [体重] int  NULL,
  [处子秀] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [参赛场数] int  NULL,
  [最高完赛名次及次数] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [领奖台数] int  NULL,
  [个人网站] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [生涯] varchar(8000) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[playerInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of playerInfo
-- ----------------------------
INSERT INTO [dbo].[playerInfo]  VALUES (N'埃斯特班-奥康Esteban Ocon', N'31', N'印度力量', N'Evreux', N'1996-09-17', N'法国', N'173', N'63', N'2016BelgiumGP', N'33', N'5（2）', N'0', N'www.esteban-ocon.com', N'Esteban Ocon may have landed his F1 seat midseason in 2016, following the departure of Rio Haryanto from Manor, but the Frenchman arrived on the grid with plenty of relevant experience, having tested both that season’s Renault and Mercedes F1 machinery.
Born in Evreux, Normandy in 1996, Ocon predictably began his career with success in karting, before progressing to single-seaters in 2012, scoring three podium finishes in Formula Renault 2.0 with Koiranen Motorsport.
He moved to ART the following year, securing two wins en route to third place in the Euro standings, and also took a top-ten finish in the prestigious Macau F3 race. In addition he became a member of the Lotus F1 junior team...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'布兰登-哈特利Brendon Hartley', N'28', N'红牛青年', N'Palmerston North', N'1989-11-10', N'新西兰', N'180', N'68', N'2017AmericanGP', N'8', N'10（1）', N'0', N'www.brendonhartley.nz ', N'There was a certain irony to Brendon Hartley being given his F1 shot in late 2017 by Toro Rosso, given that only seven years earlier he’d been left at a career crossroads when he was dropped from Red Bull’s vaunted young driver programme.
Faced with a similar situation, many a driver might crumble or simply disappear from the racing stratosphere. But Hartley, perhaps infused with the same dogged determination that countrymen Bruce McLaren and Denny Hulme had shown when they made the same trip from New Zealand to Europe in the late 1950s, refused to give up on his racing dreams...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'查尔斯-勒克莱尔Charles Leclerc', N'16', N'索伯', N'Monte Carlo', N'1997-10-16', N'摩纳哥', N'173', N'62', N'2018AustralianGP', N'4', N'6（1）', N'0', N'www.charles-leclerc.com', N'He may be a rookie on the 2018 grid, but Charles Leclerc’s single-seater credentials are impressive. GP3 champion in 2016; F2 champion in 2017; Ferrari Driver Academy (FDA) member; F1 testing experience with Ferrari; and F1 practice outings with both Haas and Sauber.
Born on October 16, 1997, Leclerc is barely into his twenties, so it’s fair to say he looks to be firmly on the fast track to success. Hailing from Monaco, he was inevitably exposed to F1 at a young age, especially as his late father Herve was also a racing driver, who did well in F3 back in the Nineties...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'丹尼尔-里卡多Daniel Ricciardo', N'3', N'红牛', N'Perth', N'1989-07-01', N'澳大利亚', N'179', N'70', N'2011BritishGP', N'133', N'1（6）', N'28', N'www.danielricciardo.com ', N'"If you want to be successful at anything in life the primary thing is you have to enjoy it”. Those were the words of the ever-smiling Daniel Ricciardo as he reflected on his breakthrough 2014 season with Red Bull Racing - a season which saw the affable Australian not only win his first Grand Prix (and two more) but also leave four-time world champion team mate Sebastian Vettel trailing in his wake.
Born in Perth in 1989, Ricciardo started karting aged just nine after finding a hero in Ayrton Senna. After working his way through the go-kart ranks, in 2005 he entered the Australian Formula Ford series and, although driving an uncompetitive car, made enough of an impression to secure a scholarship for the following season’s Formula BMW Asia championship.
Claiming two wins and 10 podiums in his debut Formula BMW campaign with the Eurasia team, Ricciardo made an instant impression and finished third in the championship. He also enjoyed an outing in the British Formula BMW series, taking three points from two races, and another outing at the end-of-year World Finals, where he finished fifth...
')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'费尔南多-阿隆索Fernando Alonso', N'14', N'迈凯伦', N'Oviedo', N'1981-07-29', N'西班牙', N'171', N'68', N'2001AustralianGP', N'297', N'1（32）', N'97', N'www.fernandoalonso.com ', N'Fernando Alonso is the man who ended Michael Schumacher’s Formula 1 reign, and became the then-youngest champion in F1 history. A second consecutive crown was confirmation of his brilliance, and with Schumacher retiring, Alonso seemed certain to replace him as the sport’s dominant superstar.
Agonisingly, no titles have followed in the intervening years. A fractious first move to McLaren, and subsequent spells with Renault and Ferrari, yielded success in the form of 17 victories and three championship runner-up finishes - but not the one piece of silverware he really desires. Perhaps ironically, it has been in inferior machinery that Alonso has come to be regarded as one of the finest drivers not just on the current grid, but in history. Given his calibre, his relentless hunger and determination, there is still much to achieve...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'基米-莱科宁Kimi Raikkonen', N'7', N'法拉利', N'Espoo', N'1979-10-17', N'芬兰', N'175', N'62', N'2001AustralianGP', N'277', N'1（20）', N'94', N'www.kimiraikkonen.com', N'"He’s a man of few words,” Jenson Button once said of Kimi Raikkonen, “but he''s all about racing." Never the most loquacious out of the car, the mercurially-talented 2007 world champion has always preferred to let his driving do the talking, be that in a rally car, on a snowmobile, or, most successfully, in Formula 1 machinery. 

Widely regarded as one of the finest drivers of his generation, Raikkonen’s path to the top of F1 racing began in his hometown of Espoo in southern Finland when, as a sports-mad 11 year-old, he took up karting. The young racer swiftly stamped his authority on the local opposition before making his mark in international events. Surprisingly, he never won a karting title, but his early racing days singled him out as a future star.
"He’s a man of few words,” Jenson Button once said of Kimi Raikkonen, “but he''s all about racing." Never the most loquacious out of the car, the mercurially-talented 2007 world champion has always preferred to let his driving do the talking, be that in a rally car, on a snowmobile, or, most successfully, in Formula 1 machinery...
')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'卡洛斯-塞恩斯Carlos Sainz Jr.', N'55', N'雷诺', N'Madrid', N'1994-09-01', N'西班牙', N'171', N'66', N'2015AustralianGP', N'64', N'4（1）', N'0', N'www.carlossainz.es ', N'The son of a much-loved double world rally champion, it was perhaps inevitable that Carlos Sainz Junior would choose to pursue a career in motorsport. But unlike his famous father - namesake Carlos Sainz - the gifted young Spaniard chose to ply his trade on the track rather than on the loose.
It has proved to be a wise move: after establishing an enviable record in junior formulae the disarmingly mature Red Bull-backed driver earned an F1 seat at Toro Rosso, barely ten years on from his first competitive kart race...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'凯文-马格努森Kevin Magnussen', N'20', N'哈斯', N'Roskilde', N'1992-10-05', N'丹麦', N'174', N'68', N'2014AustralianGP', N'65', N'2（1）', N'1', N'www.kevinmagnussen.com ', N'In 1995, a promising young Dane made his Formula 1 debut with McLaren. That man was Jan Magnussen and in a delightful twist of fate, some 19 years later, the same team handed an F1 chance to his son, Kevin.
Born in the town of Roskilde in October 1992, Kevin began his racing career with success in karts before jumping into single-seaters in 2008. In his first season he won the Danish Formula Ford championship in dominant fashion, recording 11 wins, 12 podiums, six pole positions and 10 fastest laps...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'兰斯-斯特罗尔Lance Stroll', N'18', N'威廉姆斯', N'Montreal', N'1998-10-29', N'加拿大', N'180', N'70', N'2017AustralianGP', N'24', N'3（1）', N'1', N'www.lancestroll.com ', N'Born in Montreal, Canada in 1998, Stroll was bitten by the racing bug aged five when his father, eminent businessman and occasional amateur sportscar driver Lawrence Stroll, bought him a go-kart.
He won his first race and championship three years later, before being selected for Ferrari''s prestigious Driver Academy in 2010 following more karting success.
Stroll stepped up to single-seaters in 2014, competing in the Florida Winter Series before winning the Italian Formula 4 championship at his first attempt. Another title, in New Zealand’s Toyota Racing Series, followed in early 2015 before a learning year in European F3 in which he finished fifth with one win, but also had a couple of heavy crashes...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'刘易斯-汉密尔顿Lewis Hamilton', N'44', N'梅赛德斯', N'Twein', N'1985-01-07', N'英国', N'175', N'66', N'2007AustralianGP', N'212', N'1（63）', N'120', N'www.lewishamilton.com', N'Few drivers have entered Formula 1 racing with as big a bang as Lewis Hamilton, whose sensational maiden season in 2007 - in which he lost out on the world championship by a single point - remains one of the most remarkable rookie campaigns in history.
In the intervening period the supremely gifted British driver has won three world championships and established himself as one of the most complete drivers on the grid: a terrific qualifier, a tenacious racer and a fierce wheel-to-wheel combatant with a deadly eye for an overtake. Put simply, when it comes to driving a Formula 1 car, there are very few areas in which Hamilton does not excel.
Hamilton attributes much of his success to his humble upbringing in Stevenage, the English town in which he began racing as a hobby. Winning came naturally to the young driver and soon he was cutting his teeth in national events. By the age of 10 - with a little less than two years’ experience - he was crowned the youngest-ever winner of the British Cadet Kart championship...
')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'罗曼-格罗斯让Romain Grosjean', N'8', N'哈斯', N'Geneva', N'1986-04-17', N'法国', N'180', N'71', N'2009EuropeanGP', N'128', N'2（2）', N'10', N'www.romaingrosjean.com ', N'While Romain Grosjean has firmly established himself among the Formula 1 elite, his path to the top has been as turbulent as it has been glittering. Few earn a second chance in F1 racing; Grosjean won a reprieve not only after a stunted introduction in 2009, but again three years later when several accused him of being an accident waiting to happen during his 2012 comeback. Grosjean’s redemption came on the track, as a series of blistering performances the following season underlined his ability and transformed his reputation. 
The Frenchman now has several Grand Prix podiums to his name, and a burgeoning reputation as a team leader. Only wins and a full title challenge elude a man regarded in many quarters as a potential world champion in waiting...
')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'马克斯-维斯塔潘Max Verstappen', N'33', N'红牛', N'Hasselt', N'1997-09-30', N'荷兰', N'180', N'67', N'2015AustralianGP', N'64', N'1（3）', N'11', N'www.verstappen.nl ', N'By any measure, Max Verstappen’s rise has been unprecedented. After just one - extremely successful - season in single-seaters, Red Bull shocked the Formula 1 paddock by placing him with Toro Rosso for 2015. Never had one so young, and so inexperienced, lined up on an F1 grid.
But while the move had its critics, Red Bull’s faith in the Dutchman was unquestionable. And alongside a scintillating rookie season in F3, immediately impressive F1 outings hinted that Verstappen might really be the once-in-a-generation talent Red Bull believed they had unearthed.
Max Emilian Verstappen was born in Hasselt, in the east of Belgium, on September 30, 1997. Motorsport was in his blood: father Jos was competing in Formula 1 racing at the time - in fact he raced for Tyrrell in Japan 10 days after Max’s arrival - while mother Sophie Kumpen was a successful, and extremely quick, karter...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'马库斯-埃里克森Marcus Ericsson', N'9', N'索伯', N'Kumla', N'1990-09-02', N'瑞典', N'180', N'70', N'2014AustralianGP', N'80', N'8（1）', N'0', N'www.marcusericsson.com ', N'Prior to 2014, Stefan Johansson had been the last man to represent Sweden in a Formula 1 race. That mantle has now been passed to Marcus Ericsson, a racer who was not even a year old when Johansson made his 79th and final F1 start at the 1991 Canadian Grand Prix.
Born in the city of Kumla on September 2, 1990, like many of his contemporaries Ericsson cut his racing teeth in karts, quickly accumulating a host of trophies. Then in 2006 he met former Indy 500 winner and compatriot Kenny Brack, who along with fellow Swedish racer Eje Elgh helped him make a highly successful transition to single-seaters - in 2007 Ericsson won the British Formula BMW title at his first attempt with seven race victories...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'尼科-霍肯博格Nico Hülkenberg', N'27', N'雷诺', N'Emmerich am Rhein', N'1987-08-19', N'德国', N'184', N'74', N'2010BahrainGP', N'141', N'4（3）', N'0', N'www.nico-huelkenberg.de ', N'For many in the Formula 1 paddock, Nico Hulkenberg remains a world champion in waiting. A winner in every category he ever competed in before Formula 1 racing - and a champion in three of them - he appeared from an early age to be destined for greatness. 
Winning the GP2 crown in his rookie season - a feat only matched by Lewis Hamilton and Nico Rosberg - secured a move into F1 racing, and he duly delivered a shock first pole in an uncompetitive Williams in what was his maiden campaign. Despite such triumphs, however, a top line drive has eluded the German thus far. Even so, his incredible combination of pace and consistency has made the paddock sit up and take note...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'皮埃尔-加斯利Pierre Gasly', N'10', N'红牛青年', N'Rouen', N'1996-02-07', N'法国', N'177', N'66', N'2017MalaysianGP', N'9', N'4（1）', N'0', N'www.pierregasly.com ', N'Pierre Gasly’s name had been well known in F1 circles for some time prior to his mid-2017 race debut with Toro Rosso, particularly after he won the 2016 GP2 title in dramatic style at the Abu Dhabi season finale.
Born in Rouen, France on February 7, 1996, Gasly comes from a family of motorsport enthusiasts. His grandfather was a karter, while his father tried his hand at various racing disciplines.
The young Pierre also began his career in karts, where he competed from 2006 to 2010 before making his single-seater debut in the French F4 championship, where he finished third overall in an impressive 2011 maiden season...
')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'塞巴斯蒂安-维特尔Sebastian Vettel', N'5', N'法拉利', N'Heppenheim', N'1987-07-03', N'德国', N'176', N'64', N'2007AmericanGP', N'203', N'1（49）', N'101', N'www.sebastianvettel.de ', N'A tour de force as he swept to four straight world championship crowns and countless Formula 1 records, Sebastian Vettel’s relentless hunger for victory, as much as his outstanding talent, secure his place as one of the sport’s greats.

By his mid-20s he was already the dominant driver of his era, becoming the youngest polesitter, winner and champion in history. A second, third and fourth crown, won with either remarkable tenacity or crushing supremacy, only added to his glittering legacy.

The foundations for such a remarkable trajectory were laid early on. Vettel had been racing for more than a decade even while still a teenager, having started his career in 1995 at a local kart track in his native Germany, where he had been born in Heppenheim on July 3, 1987. It wasn’t long before he had notched up several regional championships, and bigger things beckoned. Tiring of the local competition, he began to race on a European level...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'塞尔吉奥-佩雷兹Sergio Perez', N'11', N'印度力量', N'Guadalajara', N'1990-01-26', N'墨西哥', N'173', N'63', N'2011AustralianGP', N'140', N'2（2）', N'8', N'www.sergioperezf1.com ', N'On his 2011 race debut, Sergio Perez Mendoza became only the fifth Mexican to make it into Formula 1racing. Seven seasons and two team moves later, he is a firmly established Formula 1 star who also flies the flag for his nation, Mexico City have returned to the F1 calendar in 2015.
Born in Guadalajara on January 26, 1990, Perez has been a member of Escuderia Telmex, which supports racing drivers in various categories, for a number of years, enjoying a close personal relationship with Telmex Chairman Carlos Slim Domit, who has taken a keen interest in his motorsport career.
Perez began his motorsport in karting, where he won a total of five championships, before making his single-seater debut in the US-based Skip Barber National Championship in 2004. With Telmex backing, he finished 11th overall, as well as taking seventh in the Skip Barber Dodge Midwestern series...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'斯托夫-范多恩Stoffel Vandoorne', N'2', N'迈凯伦', N'Kortrijk', N'1992-03-26', N'比利时', N'176', N'65', N'2016BahrainGP', N'25', N'7（2）', N'0', N'www.stoffelvandoorne.com', N'In the words of his McLaren team, it was always less a matter of ‘if’ Stoffel Vandoorne would race in Formula 1 than ‘when’ - and the ‘when’ arose after he was called up from his reserve role to deputise for the injured Fernando Alonso in Bahrain 2016.
Born in Kortrijk, Belgium, in 1992, Vandoorne began his motorsport career aged six and earned his first race and championship victories in national karting series, going on to finish runner-up in the KF2 World Cup in 2009. In 2010 he graduated to single-seaters, winning the F4 Eurocup series at his first attempt, scoring six victories as he wrapped up the title with two rounds in hand...')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'瓦尔特利-博塔斯Valtteri Bottas', N'77', N'梅赛德斯', N'Nastola', N'1989-08-28', N'芬兰', N'173', N'70', N'2013AustralianGP', N'102', N'1（3）', N'24', N'www.bottasvaltteri.com?', N'“Valtteri is quite simply one of the most talented young racing drivers I have come across and we expect great things from him in the future.” These were the words of Sir Frank Williams as he announced that the young man from Nastola in southern Finland would make his F1 debut as a Williams race driver for the 2013 season. Williams’ expectations were high, but Bottas did not disappoint.

Like so many of his contemporaries, Bottas’ motor racing career began early - he was just six years old when he first stepped into a go-kart and over the next 11 years he won numerous championships in his homeland and Europe. He made the jump into cars in 2007, coming third in his debut season in the Formula Renault 2.0 North European Cup. The following year Bottas dominated the same series and also scooped the Eurocup title, finishing the season with the enviable record of 17 wins from 28 starts...
')
GO

INSERT INTO [dbo].[playerInfo]  VALUES (N'谢尔盖-斯洛特金Sergey Sirotkin', N'35', N'威廉姆斯', N'Moscow', N'1995-08-27', N'俄罗斯', N'176', N'69', N'2018AustralianGP', N'4', N'15（2）', N'0', N'www.sirotkinsergey.com', N'It’s hard to believe that Sergey Sirotkin is only the third Russian driver to race in Formula 1, following in the footsteps of compatriots Vitaly Petrov and Daniil Kvyat.
Born in Moscow in 1995, Sirotkin’s love affair with motorsport began early when he started karting, aged just seven. By the time he was 11 he had secured his first karting championship and three years on – in 2010 – he made his single-seater debut.
Success came quickly. In 2011 he was champion and runner-up respectively in the European and Italian Formula Abarth series, before quickly moving up to bigger and quicker cars in 2012, scoring race wins in the likes of Auto GP and Formula 3...')
GO


-- ----------------------------
-- Table structure for playerRank
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[playerRank]') AND type IN ('U'))
	DROP TABLE [dbo].[playerRank]
GO

CREATE TABLE [dbo].[playerRank] (
  [年份] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [冠军] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [亚军] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [季军] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[playerRank] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of playerRank
-- ----------------------------
INSERT INTO [dbo].[playerRank]  VALUES (N'2017', N'刘易斯-汉密尔顿Lewis Hamilton', N'塞巴斯蒂安-维特尔Sebastian Vettel', N'瓦尔特利-博塔斯Valtteri Bottas')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2016', N'尼科-霍肯博格Nico Hülkenberg', N'刘易斯-汉密尔顿Lewis Hamilton', N'丹尼尔-里卡多Daniel Ricciardo')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2015', N'刘易斯-汉密尔顿Lewis Hamilton', N'尼科-霍肯博格Nico Hülkenberg', N'塞巴斯蒂安-维特尔Sebastian Vettel')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2014', N'刘易斯-汉密尔顿Lewis Hamilton', N'尼科-霍肯博格Nico Hülkenberg', N'丹尼尔-里卡多Daniel Ricciardo')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2013', N'塞巴斯蒂安-维特尔Sebastian Vettel', N'费尔南多-阿隆索Fernando Alonso', N'马克-韦伯')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2012', N'塞巴斯蒂安-维特尔Sebastian Vettel', N'费尔南多-阿隆索Fernando Alonso', N'基米-莱科宁Kimi Raikkonen')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2011', N'塞巴斯蒂安-维特尔Sebastian Vettel', N'简森-巴顿', N'马克-韦伯')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2010', N'塞巴斯蒂安-维特尔Sebastian Vettel', N'费尔南多-阿隆索Fernando Alonso', N'马克-韦伯')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2009', N'简森-巴顿', N'塞巴斯蒂安-维特尔Sebastian Vettel', N'鲁本斯-巴里切罗')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2008', N'刘易斯-汉密尔顿Lewis Hamilton', N'菲利普-马萨', N'基米-莱科宁Kimi Raikkonen')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2007', N'基米-莱科宁Kimi Raikkonen', N'刘易斯-汉密尔顿Lewis Hamilton', N'费尔南多-阿隆索Fernando Alonso')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2006', N'费尔南多-阿隆索Fernando Alonso', N'迈克尔-舒马赫', N'菲利普-马萨')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2005', N'费尔南多-阿隆索Fernando Alonso', N'基米-莱科宁Kimi Raikkonen', N'迈克尔-舒马赫')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2004', N'迈克尔-舒马赫', N'鲁本斯-巴里切罗', N'简森-巴顿')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2003', N'迈克尔-舒马赫', N'基米-莱科宁Kimi Raikkonen', N'胡安-蒙托亚')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2002', N'迈克尔-舒马赫', N'鲁本斯-巴里切罗', N'胡安-蒙托亚')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2001', N'迈克尔-舒马赫', N'大卫-库特哈德', N'鲁本斯-巴里切罗')
GO

INSERT INTO [dbo].[playerRank]  VALUES (N'2000', N'迈克尔-舒马赫', N'米卡-哈基宁', N'大卫-库特哈德')
GO


-- ----------------------------
-- Table structure for teamInfo
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[teamInfo]') AND type IN ('U'))
	DROP TABLE [dbo].[teamInfo]
GO

CREATE TABLE [dbo].[teamInfo] (
  [车队名] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [总部] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [领队] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [一号车手] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [二号车手] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [冠军数] int  NULL,
  [官方网站] varchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[teamInfo] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of teamInfo
-- ----------------------------
INSERT INTO [dbo].[teamInfo]  VALUES (N'梅赛德斯', N'Brackley,UK', N'托托-沃尔夫', N'刘易斯-汉密尔顿', N'瓦尔特利-博塔斯', N'68', N'www.mercedes-amg-f1.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'法拉利', N'Maranello，Italy', N'毛里吉奥-阿德里巴贝内', N'塞巴斯蒂安-维特尔', N'基米-莱科宁', N'232', N'www.ferrari.it')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'红牛', N'Milton Keynes，UK', N'克里斯蒂安-霍纳', N'丹尼尔-里卡多', N'马克斯-维斯塔潘', N'56', N'www.redbullracing.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'印度力量', N'Silverstone，UK', N'维杰-马里雅', N'塞尔吉奥-佩雷兹', N'埃斯特班-奥康', N'0', N'www.forceindiaf1.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'威廉姆斯', N'Grove，UK', N'克莱尔-威廉姆斯', N'兰斯-斯特罗尔', N'谢尔盖-斯洛特金', N'114', N'www.williamsf1.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'迈凯伦', N'Woking，UK', N'埃里克-布利尔', N'费尔南多-阿隆索', N'斯托夫-范多恩', N'182', N'www.mclaren.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'红牛青年', N'Faenza,Italy', N'弗朗兹-托斯特', N'皮埃尔-加斯利', N'布兰登-哈特利', N'1', N'www.scuderiatororosso.co')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'哈斯', N'Kannapolis,US', N'格伦瑟-斯坦纳', N'罗曼-格罗斯让', N'凯文-马格努森', N'0', N'www.haasf1team.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'雷诺', N'Enstone,UK', N'西里尔-阿比特波尔', N'尼科-霍肯博格', N'卡洛斯-塞恩斯', N'20', N'www.renaultsport.com')
GO

INSERT INTO [dbo].[teamInfo]  VALUES (N'索伯', N'Hinwil，Switzerland', N'弗雷德里克-瓦塞尔', N'马库斯-埃里克森', N'查尔斯-勒克莱尔', N'1', N'www.sauberf1team.com')
GO


-- ----------------------------
-- Table structure for teamRank
-- ----------------------------
IF EXISTS (SELECT * FROM sys.all_objects WHERE object_id = OBJECT_ID(N'[dbo].[teamRank]') AND type IN ('U'))
	DROP TABLE [dbo].[teamRank]
GO

CREATE TABLE [dbo].[teamRank] (
  [年份] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [冠军] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [季军] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL,
  [亚军] nvarchar(255) COLLATE Chinese_PRC_CI_AS  NULL
)
GO

ALTER TABLE [dbo].[teamRank] SET (LOCK_ESCALATION = TABLE)
GO


-- ----------------------------
-- Records of teamRank
-- ----------------------------
INSERT INTO [dbo].[teamRank]  VALUES (N'2017', N'梅赛德斯', N'法拉利', N'红牛')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2016', N'梅赛德斯', N'红牛', N'法拉利')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2015', N'梅赛德斯', N'法拉利', N'威廉姆斯')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2014', N'梅赛德斯', N'红牛', N'威廉姆斯')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2013', N'红牛', N'梅赛德斯', N'法拉利')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2012', N'红牛', N'法拉利', N'迈凯伦')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2011', N'红牛', N'迈凯伦', N'法拉利')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2010', N'红牛', N'迈凯伦', N'法拉利')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2009', N'梅赛德斯', N'红牛', N'迈凯伦')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2008', N'法拉利', N'迈凯伦', N'索伯')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2007', N'法拉利', N'索伯', N'雷诺')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2006', N'雷诺', N'法拉利', N'迈凯伦')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2005', N'雷诺', N'迈凯伦', N'法拉利')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2004', N'法拉利', N'本田', N'雷诺')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2003', N'法拉利', N'威廉姆斯', N'迈凯伦')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2002', N'法拉利', N'威廉姆斯', N'迈凯伦')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2001', N'法拉利', N'迈凯伦', N'威廉姆斯')
GO

INSERT INTO [dbo].[teamRank]  VALUES (N'2000', N'法拉利', N'迈凯伦', N'威廉姆斯')
GO


-- ----------------------------
-- Primary Key structure for table accounts
-- ----------------------------
ALTER TABLE [dbo].[accounts] ADD CONSTRAINT [PK__accounts__72E12F1A24927208] PRIMARY KEY CLUSTERED ([name])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO


-- ----------------------------
-- Primary Key structure for table playerInfo
-- ----------------------------
ALTER TABLE [dbo].[playerInfo] ADD CONSTRAINT [PK__playerIn__1D2EFD8320C1E124] PRIMARY KEY CLUSTERED ([姓名])
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON)  
ON [PRIMARY]
GO

