# text-parsing
Webpage based on text detection techniques

## Setting Up

### Installing Requirements
```pip install -r requirements.txt```<br><br>

### To Run The Project
```python manage.py runserver```<br><br>
Runs the app in the development mode.
Open http://localhost:8000 to view it in the browser.

## Technology Used
### Text Parsing
[spaCy](https://spacy.io/) provides Industrial-Strength Natural Language Processing (in Python). <br>
In this project, we've adopted one of their most popular Linguistic Features - **Named Entity Recognition**

 > spaCy can recognize various types of named entities in a document, by asking the model for a prediction. Because models are statistical and strongly depend on the examples they were trained on, this doesn’t always work perfectly and might need some tuning later, depending on your use case.
 
 A parsing function is set up on `textparse/parse.py` - which returns the new body with entities, and a dictionary with all the entities and their original value
 
 ### Text-to-Speech
 
 The Text-to-Speech feature is implemented by using the *SpeechSynthesis* feature of the popular [Web Speech API](https://developer.mozilla.org/en-US/docs/Web/API/SpeechSynthesis)
 <br><br>Implementation is extremely simple, by using the following code<br>
 ```
  let utterance = new SpeechSynthesisUtterance("Hello world!");
  speechSynthesis.speak(utterance);
 ```
 
 ### Web App
 A simple web app is set up using Django. Input for Topic and Body are taken from the frontend, the body is parsed by parse function, and once the button is toggled ON - the parsed body is now visible.
 
 ### Database
 A simple database is set up on SQLite. Admin access is provided on http://localhost:800/admin<br>
 ( Go to textparse > Datas to access )
 <br> Use credentials from `creds.txt`
 
