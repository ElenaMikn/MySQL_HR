USE imones_sistema;

-- -----------------------------
-- KLIENTAI
-- -----------------------------

INSERT INTO `imones_sistema`.`klientai` (`idklientai`, `vardas_arba_imones_pav`, `telefono_numeris`, `email`) VALUES ('1', 'Tomas Tomauskas', '8605477784', 'tomas.tomauskas@gmail.com');
INSERT INTO `imones_sistema`.`klientai` (`idklientai`, `vardas_arba_imones_pav`, `telefono_numeris`, `email`) VALUES ('2', 'Petras Petrauskas', '+3705171451', 'petras@petrauskas.eu');
INSERT INTO `imones_sistema`.`klientai` (`idklientai`, `vardas_arba_imones_pav`, `telefono_numeris`, `email`) VALUES ('3', 'Imone, MB', '+370 217 67458', 'info@imone.lt');
INSERT INTO `imones_sistema`.`klientai` (`idklientai`, `vardas_arba_imones_pav`, `telefono_numeris`, `email`) VALUES ('4', 'Ona Onute', '867151848', 'ona@ona.lt');
INSERT INTO `imones_sistema`.`klientai` (`idklientai`, `vardas_arba_imones_pav`, `telefono_numeris`, `email`) VALUES ('5', 'Gintare Gintaryte', '+370548488488', 'gintaryte@gmail.com');

-- -----------------------------
-- DARBUOTOJAI
-- -----------------------------

INSERT INTO `imones_sistema`.`darbuotojai` (`iddarbuotojai`, `vardas_pavarde`, `telefonas`, `email`, `pareigos`, `etatas`, `atlyginimas`) VALUES ('1', 'Ugnius Ugniauskas', '86714547', 'ugnius@imone.lt', 'Programuotojas', '1', '1000');
INSERT INTO `imones_sistema`.`darbuotojai` (`iddarbuotojai`, `vardas_pavarde`, `telefonas`, `email`, `pareigos`, `etatas`, `atlyginimas`) VALUES ('2', 'Giedrius Giedriauskas', '+37057157484', 'giedrius@imone.lt', 'Programuotojas', '1', '1200');
INSERT INTO `imones_sistema`.`darbuotojai` (`iddarbuotojai`, `vardas_pavarde`, `telefonas`, `email`, `pareigos`, `etatas`, `atlyginimas`) VALUES ('3', 'Paulina Paulinienė', '+371451548', 'paulina@imone.lt', 'Programuotojas', '1', '1100');
INSERT INTO `imones_sistema`.`darbuotojai` (`iddarbuotojai`, `vardas_pavarde`, `telefonas`, `email`, `pareigos`, `etatas`, `atlyginimas`) VALUES ('4', 'Julita Julitienė', '+37216715', 'julita@imone.lt', 'Programuotojas', '1', '1150');
INSERT INTO `imones_sistema`.`darbuotojai` (`iddarbuotojai`, `vardas_pavarde`, `telefonas`, `email`, `pareigos`, `etatas`, `atlyginimas`) VALUES ('5', 'Vaida Vaidytė', '8671515484', 'vaida@imone.lt', 'Dizaineris', '1', '1300');
INSERT INTO `imones_sistema`.`darbuotojai` (`iddarbuotojai`, `vardas_pavarde`, `telefonas`, `email`, `pareigos`, `etatas`, `atlyginimas`) VALUES ('6', 'Judita Judytė', '867157155', 'judita@imone.lt', 'Dizaineris', '1', '1000');

-- -----------------------------
-- PROJEKTAI
-- -----------------------------

INSERT INTO `imones_sistema`.`projektai` (`idprojektai`, `pavadinimas`, `pradejimo_data`, `terminas`, `aprasymas`, `klientai_id`) VALUES ('1', 'E-shop batų parduotuvei', '2020-03-14', '2022-05-12', 'Specializuota batų parduotuvė nori prekiauti internete', '3');
INSERT INTO `imones_sistema`.`projektai` (`idprojektai`, `pavadinimas`, `pradejimo_data`, `terminas`, `klientai_id`) VALUES ('2', 'Asmeninė turinio valdymo sistema', '2021-07-12', '2021-12-01', '1');
INSERT INTO `imones_sistema`.`projektai` (`idprojektai`, `pavadinimas`, `pradejimo_data`, `terminas`, `aprasymas`, `klientai_id`) VALUES ('3', 'Batsiuvio rezervacijos sistema', '2023-04-10', '2024-01-01', 'Batų tvarkytojas batsiuvys nori rezervacijos sistemos, kad galėtų rezervuoti priėmimo ir atsiėmimo laikus.', '3');
INSERT INTO `imones_sistema`.`projektai` (`idprojektai`, `pavadinimas`, `pradejimo_data`, `terminas`, `aprasymas`, `klientai_id`) VALUES ('4', 'Tinklaraštis su dizainu', '2022-12-01', '2023-02-01', 'Žmogus ketina rašyti nuosavą tinklaraštį', '2');

-- -----------------------------
-- REIKALAVIMAI
-- -----------------------------

INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('1', 'Turimų prekių atvaizdavimas', 'Turi būti atvaizduojamos turimos prekės bei informacija apie jas.', '5', '5', '2021-01-01', '1');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('2', 'Prekių pridėjimas į krepšelį', 'Turi būti galimybė pridėti norimas prekes į prekių krepšelį.', '5', '5', '2021-04-01', '1');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('3', 'Prekių pirkimas', 'Prekių krepšelį turi būti galima nupirkti.', '5', '5', '2021-06-01', '1');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('4', 'Užsakymo būsena', 'Turi būti užsakymo būsenos, bei vartotojas informuojamas apie pasikeitimus.', '5', '3', '2022-05-12', '1');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('5', 'Rezervacijų kalendoriaus peržiūra', 'Turi būti galimybė peržiūrėti rezervacijų kalendorių', '5', '5', '2023-10-01', '3');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('6', 'Laiko rezervavimas', 'Turi būti galimybė rezervuoti norimą laiką norimam veiksmui.', '5', '5', '2024-01-01', '3');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('7', 'Informacijos CRUD', '5', '4', NULL, '2');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('8', 'Nupieštas ir suprogramuotas unikalus dizainas', 'Dizainas turi būti pritaikytas prie projekto poreikių', '5', '4', '2023-01-01', '4');
INSERT INTO `imones_sistema`.`reikalavimai` (`idreikalavimai`, `pavadinimas`, `aprasymas`, `pasitenkinimas_igyvendinus`, `nepasitenkinimas_neigyvendinus`, `terminas`, `projektai_id`) VALUES ('9', 'Turinio valdymas', 'Turi būti galima pridėti, atnaujinti ir šalinti turinį.', '5', '5', '2023-02-01', '4');

-- -----------------------------
-- UŽDUOTYS
-- -----------------------------

INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('1', 'Dizaino nupiešimas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('2', 'Dizaino suprogramavimas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('3', 'Frontend testavimas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('4', 'Turinio užpildymas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('5', 'Prekių krepšelio dizainas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('6', 'Prekių krepšelio veikimas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('7', 'Pirkimas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('8', 'Užsakymo būsenos veikimas', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `aprasymas`, `projektai_id`) VALUES ('9', 'Informacinių laiškų siuntimas', 'Kai yra pasikeitimų su užsakymo būsena, tuomet siunčiami informaciniai laiškai', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `aprasymas`, `projektai_id`) VALUES ('10', 'Apmokymas dirbti su sistema', 'Vyr. programuotojas apmokys klientą dirbti su sistema.', '1');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('11', 'Dizaino piešimas', '2');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('12', 'Dizaino programavimas', '2');
INSERT INTO `imones_sistema`.`uzduotys` (`iduzduotys`, `pavadinimas`, `projektai_id`) VALUES ('13', 'Testavimas', '2');

-- -----------------------------
-- DARBUOTOJAI VYKDO PROJEKTUS
-- -----------------------------

INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('1', '1');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('1', '2');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('1', '3');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('1', '4');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('1', '5');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('2', '6');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('2', '2');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('2', '3');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('3', '1');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('3', '2');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('3', '3');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('3', '4');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('3', '6');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('4', '5');
INSERT INTO `imones_sistema`.`darbuotojai_vykdo_projektus` (`projektai_id`, `darbuotojai_id`) VALUES ('4', '1');

-- -----------------------------
-- SĄSKAITOS FAKTŪROS
-- -----------------------------

INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('1', '10', '2020-06-01', '2020-06-15', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '1', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('2', '11', '2020-12-01', '2020-12-15', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '1', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('3', '12', '2021-02-01', '2021-02-15', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '1', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('4', '13', '2021-06-01', '2021-06-15', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '1', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('5', '14', '2022-01-01', '2022-01-15', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '1', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('6', '15', '2022-05-12', '2022-05-20', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '1', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('7', '16', '2021-07-12', '2021-07-25', 'Įmonėlė, MB', 'Žmogus žmogus, ABC, 84155', '2', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('8', '17', '2021-09-01', '2021-09-15', 'Įmonėlė, MB', 'Žmogus žmogus, ABC, 84155', '2', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('9', '18', '2021-12-01', '2021-12-15', 'Įmonėlė, MB', 'Žmogus žmogus, ABC, 84155', '2', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('10', '19', '2022-06-01', '2022-07-01', 'Įmonėlė, MB', 'Įmonė, MB, 55455', '3', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('11', '20', '2022-12-01', '2022-12-15', 'Įmonėlė, MB', 'Petrutis, 465878', '4', '0');
INSERT INTO `imones_sistema`.`saskaitos_fakturos` (`idsaskaitos_fakturos`, `numeris`, `israsymo_data`, `apmoketi_iki`, `pardavejo_rekvizitai`, `pirkejo_rekvizitai`, `projektai_id`, `bendra_nuolaida`) VALUES ('12', '21', '2023-02-01', '2023-02-15', 'Įmonėlė, MB', 'Petrutis, 465878', '4', '0');

-- -----------------------------
-- SF PASLAUGOS IR PREKĖS
-- -----------------------------

INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('1', 'Dizaino piešimas', 'val.', '120', '40', '1', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('2', 'Dizaino programavimas', 'val.', '120', '40', '1', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('3', 'Programavimas', 'val.', '160', '40', '2', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('4', 'Testavimas', 'val.', '16', '30', '2', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('5', 'Programavimas', 'val.', '160', '40', '3', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('6', 'Testavimas', 'val.', '20', '30', '3', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('7', 'Programavimas', 'val.', '160', '40', '4', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('8', 'Testavimas', 'val.', '20', '30', '4', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('9', 'Programavimas', 'val.', '160', '40', '5', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('10', 'Testavimas', 'val.', '40', '30', '5', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('11', 'Programavimas', 'val.', '100', '40', '6', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('12', 'Testavimas', 'val.', '40', '30', '6', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('13', 'Dokumentacijos rengimas', 'val.', '50', '30', '6', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('14', 'Projekto parengimas darbui', 'val.', '30', '30', '6', '0');

INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('15', 'Dizaino piešimas', 'val.', '80', '40', '7', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('16', 'Dizaino programavimas', 'val.', '120', '40', '7', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('17', 'Testavimas', 'val.', '20', '30', '8', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('18', 'Programavimas', 'val.', '100', '40', '9', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('19', 'Testavimas', 'val.', '20', '30', '9', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('20', 'Projekto talpinimas', 'val.', '20', '30', '9', '0');

INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('21', 'Avansas', 'vnt.', '1', '1000', '10', '0');

INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('22', 'Dizaino piešimas', 'val.', '80', '40', '11', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('23', 'Dizaino programavimas', 'val.', '80', '40', '11', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('24', 'Testavimas', 'val.', '20', '30', '11', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('25', 'Programavimas', 'val.', '80', '40', '12', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('26', 'Testavimas', 'val.', '10', '30', '12', '0');
INSERT INTO `imones_sistema`.`sf_paslaugos_prekes` (`idsf_paslaugos_prekes`, `pavadinimas`, `matavimo_vnt`, `vienetu`, `vnt_kaina`, `saskaitos_fakturos_id`, `nuolaida`) VALUES ('27', 'Projekto talpinimas', 'val.', '10', '30', '12', '0');

-- -----------------------------
-- MOKĖJIMAI
-- -----------------------------

INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('1', '2020-06-10', '9600', '1');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('2', '2020-12-14', '6880', '2');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('3', '2021-02-03', '7000', '3');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('4', '2021-06-08', '7000', '4');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('5', '2022-01-16', '7600', '5');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('6', '2021-07-15', '8000', '7');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('7', '2021-09-10', '600', '8');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('8', '2021-12-02', '5200', '9');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('9', '2022-06-11', '1000', '10');
INSERT INTO `imones_sistema`.`mokejimai` (`idmokejimai`, `mokejimo_data`, `apmoketa_suma`, `saskaitos_fakturos_id`) VALUES ('10', '2022-12-03', '7000', '11');
