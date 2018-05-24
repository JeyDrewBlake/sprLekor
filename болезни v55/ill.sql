-- --------------------------------------------------------
-- Хост:                         127.0.0.1
-- Версия сервера:               10.1.32-MariaDB - mariadb.org binary distribution
-- Операционная система:         Win32
-- HeidiSQL Версия:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Дамп структуры базы данных illness
CREATE DATABASE IF NOT EXISTS `illness` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `illness`;

-- Дамп структуры для таблица illness.ill
CREATE TABLE IF NOT EXISTS `ill` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Symptoms` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Procedur` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Drug` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Txt` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Дамп данных таблицы illness.ill: ~15 rows (приблизительно)
/*!40000 ALTER TABLE `ill` DISABLE KEYS */;
INSERT INTO `ill` (`ID`, `Name`, `Symptoms`, `Procedur`, `Drug`, `Txt`, `Image`) VALUES
	(1, 'Акне', 'Появлением на лице (реже – на груди и спине) комедонов, мелких до 5 мм в диаметре бугорков ярко–красного цвета, иногда с гнойничком на поверхности.', 'Для лечения различных форм применяют разнообразные методики, выбор которых зависит от конкретного больного. Рациональная терапия определяется болезнетворными факторами, которые включают повышенное образование кожного сала, размножение пропионобактерий, по', 'Бензоилпероксид в виде геля или раствора 1–10% наносится 1 раз в сутки в течение 2–3 недель. Наиболее рационально применять его 3% раствор в комбинации с 3% эритромицином или 7% раствор с гликолевой кислотой.', 'Акне - это воспалительное заболевание кожи, вызываемое изменениями в пилосебационных структурах (состоят из волосяного фолликула и сальной железы).', 'akne.jpeg'),
	(2, 'Отит', '— боль внутри уха,\r\n—  поднимается температура тела (до 38°C и выше), \r\n— снижение слуха, \r\n— шум и звон в ухе. ', 'Наружный отит лечится амбулаторно. Назначается местная терапия: в слуховой проход вставляются турунды, пропитанные 70% спиртом, согревающие компрессы, витамины и физиопроцедуры. ', '— нафтизин, \r\n— галазолин сроком на 4-5 дней.', 'Отит - заболевание, представляющее собой воспалительный процесс в ухе.', 'ekssudativnyy-otit.jpg'),
	(3, 'ОРЗ', '— насморк, \r\n— сухой или влажный кашель,\r\n—  проявления острого тонзиллита, \r\n— боли в горле, \r\n— першение краснота.', 'Обильное питье, диета – теплое, протертое питание, постельный режим.', '— нурофен, \r\n— АЦЦ, \r\n— салин.', 'ОРЗ (острое респираторное заболевание) – это группа заболеваний инфекционного характера, характерной особенностью которых является заражение человека воздушно-капельным путем.', 'orz.jpg'),
	(4, 'ОРВИ', '— заложенность носа, \r\n— насморк, \r\n— чихание и зуд в носу,\r\n— першение в горле, \r\n— дискомфорт, \r\n— болезненность при глотании, \r\n— краснота в горле, \r\n— кашель (сухой или влажный). ', 'изоляция от других детей и взрослых, постельный режим, обильное потребление жидкости, питание по аппетиту. ', '— нурофен, \r\n— АЦЦ, \r\n— салин.', 'О́страя респирато́рная ви́русная инфе́кция (ОРВИ) — группа клинически и морфологически подобных острых воспалительных заболеваний органов дыхания, возбудителями которых являются пневмотропные вирусы. ', 'Illu_conducting_passages_rus.svg.png'),
	(5, 'Грипп', '— острое с резким недомоганием, \r\n— повышением температуры до высоких цифр, иногда до 39-40°C.', 'изоляция от других детей и взрослых, постельный режим, обильное потребление жидкости, питание по аппетиту. ', '— нурофен, \r\n— АЦЦ, \r\n— салин.', 'Грипп  — острое инфекционное заболевание дыхательных путей, вызываемое вирусом гриппа.', 'flu_2017.jpg'),
	(6, 'Корь ', '— общая слабость, \r\n— ломота в теле, \r\n— головные боли, \r\n— повышение температуры тела от 38 до 40 градусов.', ' ', 'кагоцел, мирамистин, ибупрофен.', 'Корь  — острое инфекционное вирусное заболевание с высоким уровнем восприимчивости.', '3a1quvsmallqil.jpg'),
	(7, 'Ботулизм', 'Развитие симптомов очень быстрое:\r\n—  тошнота, рвота, иногда до схваткообразные болеи в животе, жидкий стула без примесей.', 'Важную роль в диагностике ботулизма играет факт группового заболевания у людей, употреблявших в пищу один и тот же продукт (консервы, вяленая рыба, копчености, соки домашнего приготовления, консервированные овощи, грибы и мясо).', 'Промывать желудок сначала кипяченой водой, затем 2-процентным раствором соды; обильное частое питье; ввести внутримышечно или подкожно 2 мл 0,05-процентного прозерина.', 'Ботули́зм  — тяжёлое токсикоинфекционное заболевание, характеризующееся поражением нервной системы, преимущественно продолговатого и спинного мозга, протекающее с преобладанием офтальмоплегического и бульбарного синдромов. ', 'Clostridium_botulinum.jpg'),
	(8, 'Ожирение', 'Для диагностики ожирения измеряется отношение окружности талии (ОТ) к окружности бедер (ОБ). Абдоминальное ожирение (ожирение в области талии) диагностируется у мужчин при ОТ/ОБ больше 0,9, у женщин – больше 0,8.', '', 'Коррекция пищевого поведения и физической активности.', 'Ожире́ние — отложение жира, увеличение массы тела за счёт жировой ткани. ', 'Obesity_complications.jpg'),
	(9, 'Аритмия', '— ускоренное биение сердца;\r\n— замедленное биение сердца;\r\n— чувство сердцебиения и перебоев в груди;\r\n— боль или давление в груди;\r\n— одышка;\r\n— головокружение;\r\n— потеря сознания (или состояние близкое к этому).', 'Первоначально расспрашивают пациента о жалобах и осматривают, прослушивают сердце и исследуют пульс.', 'Препараты для стабилизации мембран клеток (прокаинамид, тримекаин, пропафенон),адреноблокаторы (атенолол, надолол), однако в последнее время предпочтение отдается таким препаратам, как конкор, эгилок, карведилол,блокаторы калиевых каналов (амиодарон),блок', 'Аритмии – это нарушение сердечной проводимости, а также частоты и регулярности сердечных сокращений, приводящее в итоге к нарушению нормальной работы сердца и субъективно неприятным симптомам. ', 'aritmia.jpeg'),
	(10, 'Бронхит', '— повышение температуры тела до 38°, а в редких случаях (чаще у детей) и до 40°,\r\n—  слабость, \r\n— усталость, \r\n— боли в суставах, \r\n— кашель.', 'При появлении  признаков бронхита нужно обратиться к врачу (терапевту или врачу общей практики), ведь не всегда кашель и повышение температуры свидетельствуют о бронхите.', '— гербион, \r\n— парацетомол, \r\nиз антибиотиков чаще всего используются 2 группы:  пенициллины (Амоксиклав) и макролиды (Клацид, фромилид), также возможно применение фторхинолонов (цифран).', 'Бронхит - заболевание дыхательной системы, при котором в воспалительный процесс вовлекаются бронхи.', 'image.jpg'),
	(11, 'Анемия', '— слабость, значительное снижение работоспособности,\r\n—  повышенная утомляемость, раздражительность, сонливость без видимых причин,\r\n— головные боли, шум в ушах, мелькание "мушек" перед глазами, головокружение.\r\n\r\n', '— осмотр врача со сбором анамнеза; лабораторная диагностика. \r\n— Проведение общего клинического анализа крови с обязательным определением: количества эритроцитов, количества ретикулоцитов, гемоглобина, гематокрита, среднего объема эритроцитов (MCV).', 'При железодефицитной форме анемии, применяются железосодержащие препараты, а после определения причины, вызвавшей анемию, принимаются меры для ее устранения. При анемии с недостаточностью витамина В12, назначают инъекции витамина В12.', 'Анемия - клинико-гематологический синдром, который характеризуется снижением концентрации гемоглобина в крови, при уменьшении числа эритроцитов.', 'Iron_deficiency_anemia.jpg'),
	(12, 'Лейкоцитоз', '—  повышенная температура тела,\r\n—  открытие кровотечений или частое образование кровоподтеков \r\n—  нарушения зрения \r\n—  затрудненное дыхание', 'Лейкоцитоз диагностируется по анализу крови на уровень лейкоцитов. Кроме того, пациент проходит полное медицинское обследование и при необходимости сдает другие анализы для установления причины, вызвавшей лейокцитоз.\r', '—  антибиотики,\r—  стероидные препараты,\r—  препараты для снижения уровня мочевой кислоты. Это помогает предотвратить разрушение тканей организма, последствием которого может стать лейкоцитоз.\r', 'Лейкоцитоз представляет собой изменение клеточного состава крови, для которого характерно увеличение числа лейкоцитов. На лейкоцитоз указывают показатели лейкоцитов более 10 000 в 1 мкл крови, а при низком исходном уровне – до 8000-9000 в 1 мкл.\r', 'otr_ponizhatsya_leykocity.jpg'),
	(13, 'Амнезия\r\n', '—  потеря памяти на определенный промежуток времени,\r—  трудности с запоминанием недавних и только что произошедших событий,\r—  конфабуляции (ложные воспоминания).\r', 'Диагностика амнезии основана на клинических проявлениях и данных анамнеза. В определенных случаях необходимо проведение тестов для определения функций памяти. Также проводится опрос родственников и друзей пациента.', '—  отказ от приема препаратов, способных ухудшать память (антидепрессанты, нейролептики), либо снижение их дозы,\r\n—  прием витамина В1 (при его недостатке),\r\n—  лекарственная терапия (препараты для улучшения питания головного мозга).', 'Амнезия – состояние,при котором человек не способен вспомнить недавние и отдаленные события. Амнезия бывает частичной или полной. Амнезия может иметь временный характер, в этом случае воспоминания восстанавливаются в хронологическом порядке постепенно. \r', 'amneziad.jpg'),
	(14, 'Гипотрофия', '— нарушение питания (снижение веса, иногда замедление роста),\r\n— нарушение переваривания и усвоения пищи (плохой аппетит, нарушение работы кишечника, рвота),\r\n— нарушение функций ЦНС (снижение тонуса мышц, нарушение эмоционального состояния и сна).', 'Гипотрофия диагностируется при наличии характерных внешних симптомов. В качестве вспомогательных используются лабораторные методы исследования (анализ крови, биохимия крови, анализ кала, общий анализ мочи). ', 'Лечение назначается исходя из причин развития гипотрофии. Врач подбирает диетотерапию, назначает прием ферментов для улучшения процессов пищеварения и всасывания пищи, витамины, биологически активные добавки (L-карнитин). ', 'Гипотрофия – тип дистрофии, хроническое расстройство питания и пищеварения у детей до 2 лет, которое приводит к развитию дефицита массы тела по отношению к росту.', 'slide-27.jpg'),
	(15, 'Ветрянка', 'От заражения до первых проявлений ветрянки обычно проходит 11–21 дней. Для этого заболевания характерно острое начало. Температура повышается до 38°С, возникает слабость, на коже (в т.ч. на волосистой части головы) появляется сыпь.\r', 'Диагноз позволяет поставить типичная клиническая картина. Лабораторная диагностика проводится довольно редко, в основном для подтверждения атипичных случаев болезни. С этой целью используют микроскопический метод.\r', 'Назначают постельный режим на 6-7 дней. При высокой температуре тела показаны жаропонижающие средства – ибупрофен, парацетамол.', 'Ветряная оспа – это острое вирусное заболевание, для которого характерны лихорадка и папуловезикулезная (узелково-пузырьковая) сыпь. Ветрянкой в основном болеют дети в возрасте до десяти лет, поэтому ее относят к группе «детских» инфекций. \r', 'fdd6a047-0185-4ac8-9f38-aa60529ec254.jpg');
/*!40000 ALTER TABLE `ill` ENABLE KEYS */;


-- Дамп структуры базы данных medicoment
CREATE DATABASE IF NOT EXISTS `medicoment` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `medicoment`;

-- Дамп структуры для таблица medicoment.lecarstva
CREATE TABLE IF NOT EXISTS `lecarstva` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Count` int(11) DEFAULT '0',
  `Analog` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `TXT` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `Image` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Дамп данных таблицы medicoment.lecarstva: ~15 rows (приблизительно)
/*!40000 ALTER TABLE `lecarstva` DISABLE KEYS */;
INSERT INTO `lecarstva` (`ID`, `Name`, `Count`, `Analog`, `TXT`, `Image`) VALUES
	(1, 'АЦЦ', 30, '—  ацетилцистеин,\r\n—  мукалтин,\r\n—  бромгексин.', 'Муколитический препарат. Ацетилцистеин является производным аминокислоты цистеина. Оказывает муколитическое действие, облегчает отхождение мокроты за счет прямого воздействия на реологические свойства мокроты. ', 'dgfdh.jpg'),
	(2, 'Нурофен', 100, '—  парацетомол,\r\n—  анальгин,\r\n—  ацетилсалициловая кислота.', 'НПВС для наружного применения. Оказывает двойное действие: анальгезирующее и противовоспалительное. ', 'nurofen-1.jpg'),
	(3, 'Салин', 15, '—  акваМастер, \r\n—  нормасол,\r\n—  салорид.', 'Растворы NaCl оказывают на организм осмотическое влияние, поэтому выраженность их действия полностью зависит от концентрации. Салин воздействует как антиконгестивное, то есть противоотечное средство. \r\n', 'salin-617x700.jpg'),
	(4, 'Кагоцел', 50, '—  арбидол, \r\n—  анаферон, \r\n—  циклоферон.', 'Противовирусный препарат, индуктор синтеза интерферонов', 'Tabletki-kagotsel.jpg'),
	(5, 'Мирамистин', 10, '—  хлоргексидин', 'Мирамистин обладает широким спектром антимикробного действия, включая госпитальные штаммы, резистентные к антибиотикам. ', 'imgmxqd8-7.jpg'),
	(6, 'Ибупрофен', 30, '—  нурофен, \r\n—  миг.', 'НПВС, производное фенилпропионовой кислоты. Оказывает противовоспалительное, анальгезирующее и жаропонижающее действие. ', 'ibyp.jpg'),
	(7, 'Гербион', 25, '—  аскорил, \r\n—  бро-Зедекс.', 'Фитопрепарат с отхаркивающим и противовоспалительным действием\r\nПрепарат растительного происхождения. Оказывает отхаркивающее, противовоспалительное, противомикробное (бактериостатическое) действие.', 'Gerbion-ot-suhogo-kashlya.jpg'),
	(8, 'Парацетомол', 20, '—  нурофен,\r\n—  анальгин,\r\n—  ацетилсалициловая кислота.', 'Анальгетик-антипиретик. Обладает анальгезирующим, жаропонижающим и слабым противовоспалительным действием.', 'paracetomol.jpg'),
	(9, 'Галазолин', 35, '—  длянос, \r\n—  ксимелин, \r\n—  инфлюрин.', 'Сосудосуживающий препарат для местного применения в ЛОР-практике. Альфа-адреномиметик из группы производных имидазола', 'glaz.jpg'),
	(10, 'Нафтизин', 15, '—  длянос, \r\n—  ксимелин, \r\n—  инфлюрин.', 'Альфа-адреномиметик. При нанесении на слизистые оболочки оказывает быстрое, выраженное и продолжительное сосудосуживающее действие.', 'eb45bcbb887aef3f25e4f331d3567284.jpg'),
	(11, 'Спазмалгон', 78, '—  спазмалин, \r\n—  дротаверин, \r\n—  ношпа.', 'Спазмоанальгетик\r\nВ состав препарата входят: ненаркотический анальгетик метамизол натрия, миотропное спазмолитическое средство питофенон и м-холиноблокирующее средство фенпивериния бромид', 'original_spazmalgon.jpg'),
	(12, 'Активированный уголь', 200, '—  энторосгель, \r\n—  атоксил.', 'Адсорбирующее средство. Обладает большой поверхностной активностью и высокой сорбционной способностью. Уменьшает всасывание из ЖКТ токсических веществ, солей тяжелых металлов, алкалоидов и гликозидов, лекарственных веществ, способствуя их выведению из орг', 'img-14884101109896.jpg'),
	(13, 'Канефрон', 12, '—  фитолизин, \r\n—  цистон, \r\n—  уролесан.', 'Фитопрепарат, применяемый при заболеваниях почек и мочевыводящих путей\r\nДиуретическое средство растительного происхождения. Препарат оказывает мочегонное, спазмолитическое, противовоспалительное, противомикробное действие.', 'main-1.jpg'),
	(14, 'Бромгексин', 56, '—  мугоцил, \r\n—  бромобене,\r\n—  бисольвон.', 'Муколитическое средство с отхаркивающим действием. Снижает вязкость бронхиального секрета за счет деполяризации содержащихся в нем кислых полисахаридов и стимуляции секреторных клеток слизистой оболочки бронхов.', 'photo_es_CB8CA6B1-B023-44B6-AFD6-C4C1CB4FA2D5.jpg'),
	(15, 'Инфлюрин', 20, '—  длянос, \r\n—  ксимелин, \r\n—  инфлюрин.', 'Сосудосуживающее средство для местного применения в ЛОР-практике. Альфа-адреномиметик. При нанесении на слизистые оболочки вызывает сужение сосудов, в результате этого уменьшается местная гиперемия и отек.', 'dbdhfskj.jpg');
/*!40000 ALTER TABLE `lecarstva` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
