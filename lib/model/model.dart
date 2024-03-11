class Model{
final String carName1;
final String carName2;
final String model;
final String luanchYear;
final String company;
final double price;
final String rating;
final String engine;
final String horsepower;
final String battery;
final String bigImage;
final String smallImage;

  Model({required this.carName1, required this.carName2, required this.model, required this.luanchYear, required this.company, required this.price, required this.rating, required this.engine, required this.horsepower, required this.battery, required this.bigImage, required this.smallImage});


  
}
class Car{
  Model audi=
    Model(carName1:'Audi R8 2023',carName2: '', model: 'XM', luanchYear: '2023', company: 'Audi', price: 160.90, rating: '8.5/10', engine: '4.4 L V8', horsepower: '644 hp', battery: '29.5 kilowatt/hour', bigImage: 'images/image 111.png', smallImage: 'images/image 1.png');

Model bmw=
Model(carName1: 'BMW XM 2023', carName2: '', model: 'XM', luanchYear: '2024', company: 'BMW', price: 159.995, rating: '9.5/10', engine: '5.4 L V8', horsepower: '654 hp', battery:'30.5 kilowatt/hour' , bigImage: 'images/image 5 (1).png', smallImage: 'images/image 2.png');

Model marcedec=
Model(carName1: 'Mercedes-Benz', carName2: 'G-Class 2024', model: 'Benz', luanchYear: '2024', company: 'Mercedes', price: 143.00, rating: '8/10', engine: '4 L V8', horsepower: '500 hp', battery: '30.5 kilowatt/hour', bigImage: 'images/image 13.png', smallImage: 'images/image.png');

Model kia=
Model(carName1: 'Kia K5 2024', carName2: '', model: 'Benz', luanchYear: '2022', company: 'Kia', price: 125.390, rating: '8/10', engine: '4.2 L V8', horsepower: '500 hp', battery: '30.5 kilowatt/hour', bigImage: 'images/image 44.png', smallImage: 'images/image 6.png');

Model chevrolet=
Model(carName1: 'Chevrolet Tahoe 2024', carName2: '', model: 'Benz', luanchYear: '2024', company: 'Chevrolet', price: 158.195, rating: '9/10', engine: '5.2 L V8', horsepower: '600 hp', battery: '40.5 kilowatt/hour', bigImage: 'images/image 110.png', smallImage: 'images/image 11.png');

}