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

![WhatsApp Image 2024-06-25 at 08 20 27](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/3f24cb50-22ce-4bd9-b430-70eea61b30f8)
![WhatsApp Image 2024-06-25 at 08 20 26](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/f8204527-5f2c-43ef-81c3-a59ba2f5fb87)
![WhatsApp Image 2024-06-25 at 08 20 26 (1)](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/f7691a1f-1735-4a91-8835-590d64ff48be)
![WhatsApp Image 2024-06-25 at 08 20 25](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/3d3f4679-003f-4b2e-b877-4da05db2cd9e)
![WhatsApp Image 2024-06-25 at 08 20 24](https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/a210780c-2f6b-4838-972a-c3791d43d959)

# 25.06.2024
Am cautat cum pot adauga sistem de notificari si imbunatatire a performantelor aplicatiei
- Am adaugat sistem de notificari in momentul in care user-ul salveaza un produs (un mesaj de confirmare)
  
<img width="479" alt="Screenshot 2024-06-25 at 09 44 37" src="https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/ce378eab-1830-47d4-8ca4-427ef675880d">
<img width="480" alt="Screenshot 2024-06-25 at 09 44 58" src="https://github.com/floreaGabriel/IOS-Swift_App/assets/137055373/a75bc6a6-a667-40ea-bde1-b34f51430c99">

- Am imbunatatit performanta astfel incat sa nu imi mai incarce produsele de fiecare data pe pagina cu produse!
# 26.06.2024
Am ajustat scriptul in care aplicatia face scraping-ul.
- M-am documentat pe YouTube despre web scraping
- M-am uitat pe documentatia web scraping-ului: https://webscraper.io/documentation
- Am imbunatatit performantele scriptului
