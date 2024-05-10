# Architecture_Patterns

Architecture patterns, also known as architectural styles or design patterns, are well-proven solutions to common problems in software architecture. These patterns provide templates or guidelines on how to structure software applications to manage complexities, enhance maintainability, improve performance, and ensure scalability and security. The choice of an appropriate architecture pattern can significantly influence the functionality, quality, and lifecycle of an application.

## Examples : 
MVC, MVP, and MVVM are three popular design patterns in software development. Let’s have a look on one by one.
<br>
  <img src="https://github.com/Koru-zed/Architecture_Patterns/assets/97313235/943765c0-6ea7-453b-b9d3-c2ecbd3cb14e" alt="examples">
<br>

all this Architecture have 3 layers and 2 layers ``` View and Model ``` are the same.

**Model** : Model means data that is required to display in the view. Model represents a collection of classes that describes the business logic (business model and the data model). It also defines the business rules for data means as how the data can be changed and manipulated.

**View** : The View represents UI components like XML, HTML etc. View displays the data that is received from the controller as the outcome. In MVC pattern View monitors the model for any state change and displays updated model. Model and View interact with each other using the Observer pattern.

The Diffrence is the ``Translator`` :

- **MVC Have Controller** : The Controller is responsible to process incoming requests. It processes the user’s data through the Model and passing back the results to View. It normally acts as a mediator between the View and the Model.

- **MVP Have Presenter** : The Presenter receives the input from users via View, then process the user’s data with the help of Model and passing the results back to the View. Presenter communicates with view through interface. Interface is defined in presenter class, to which it pass the required data. Activity/fragment or any other view component implement this interface and renders the data in a way they want.

In the MVP design pattern, the presenter manipulates the model and also updates the view. In MVP View and Presenter are completely decoupled from each other’s and communicate to each other’s by an interface. Because if decoupling mocking of the view is easier and unit testing of applications that leverage the MVP design pattern over the MVC design pattern are much easier.

- **MVC Have ViewModel** : It is responsible for exposing methods, commands, and other properties that help to maintain the state of the view, manipulate the model as the result of actions on the view, and trigger events in the view itself. View has a reference to View-Model but View-Model has no information about the View. There is many-to-one relationship between View and View-Model means many Views can be mapped to one View-Model. It is completely independent of Views.

The bi-directional data binding or the two way data binding between the view and the View-Model ensures that the models and properties in the View-Model is in sync with the view. The MVVM design pattern is well suited in applications that need support for bi-directional data binding.
