import 'package:my_app/diseases/diseasesMock.dart';

import '../vaccineClass.dart';

class MySurgeryMock {
  Vaccine rubeola = new Vaccine();
  Vaccine sarampo = new Vaccine();
  Vaccine caxumba = new Vaccine();

  DiseasesMock mock = new DiseasesMock();

List<Vaccine> vacinas = new List<Vaccine>();
  setProperty() {
    mock.setProperty();


    caxumba.name = "Rinoplastia" ;
    caxumba.description = mock.caxumba.description;
    caxumba.date = "11/01/2001";
    caxumba.upa = "Santa Casa";

     vacinas.add(caxumba);
    
  }
}