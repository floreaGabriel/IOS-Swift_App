# IOS-Swift_App
Aplicatie IOS - Browser Scraping using SELENIUM ( python scripting )
Scopul aplicatiei este acela de a extrage de pe un site de vanzare de produse, produsele din categoria best sellers si de a le afisa in interfata grafica a aplicatiei.
# 17.06.2024
Documentare despre tema aleasa. 
- Am cautat pe Youtube detalii despre cum se face o aplicatie IOS
- Detalii despre limbajul Swift (istorie + sintaxa)
# 18.06.2024
Documentare scraping Web
- Am cautat pe YouTube informatii despre Selenium
- Am cautat in documentatia Selenium cum sa localizez elemente dintr-o pagina Web
- https://selenium-python.readthedocs.io/locating-elements.html -> documentatia Selenium
# 19.06.2024
Am facut primii pasi in crearea aplicatiei IOS, folosind ca IDE XCODE (MacBook)
- Am simulat aplicatia pe telefonul meu (IPhone - IOS)
- Functioneaza
- Am lucrat la interfata grafica a aplicatiei
# 20.06.2024
Am creat scriptul in pyhton pentru interactiunea cu site-ul https://alibaba.com, site-ul de pe care aplicatia extrage produsele best sellers.
- Am integrat rularea scriptului in aplicatie cu ajutorul API-ului FLASK
- Flask este un micro-framework pentru Python care permite dezvoltarea rapidă a aplicațiilor web. În contextul aplicației, Flask este utilizat pentru a crea un API care sa serveasca datele catre aplicatie.
- Documentatie FLASK: https://flask.palletsprojects.com/en/3.0.x/
- Am introdus interactiunea cu site-ul in aplicatie.
- Am adaugat buton de vizualizare produse, si pagina in care apar produsele selectate. 
<img width="394" alt="Screenshot 2024-06-20 at 11 12 12" src="https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/d8d7b29d-c9fc-47eb-9352-d70902e84a2d">
<img width="394" alt="Screenshot 2024-06-20 at 11 12 42" src="https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/3f940307-9556-4662-b01f-765a65cdbdfb">
# 21.06.2024
M-am documentat despre interfata grafica a aplicatiei, si cum pot adauga functionalitati noi aplicatiei.
- Am adaugat filtrarea produselor dupa nume
- Am adaugat interactiune cu fiecare produs in parte
- Am adauugat un buton de salvare cat si un buton de "Produse Salvate" pe pagina principala a aplicatiei.
- Butonul "Produse salvate", salveaza produsele selectate local pe device, ceea ce face ca produsele salvate sa ramana aceleasi pentru orice instanta a aplicatiei.
- Am adaugat buton de trimitere catre pagina web a produsului. 
![WhatsApp Image 2024-06-25 at 08 20 24](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/9152fe49-84cb-487c-b60d-d3f31a653dab)
![WhatsApp Image 2024-06-25 at 08 20 25](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/8a40553a-5ecd-475a-8bc6-b8736dce73c2)
![WhatsApp Image 2024-06-25 at 08 20 26 (1)](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/d8fcb9bc-d7fc-4114-8e23-ab845bc5077f)
![WhatsApp Image 2024-06-25 at 08 20 26](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/4c183a71-2931-4cf8-811f-cf1c45757400)
![WhatsApp Image 2024-06-25 at 08 20 27](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/5e7c23e6-0544-453c-81ab-18f30661464a)
