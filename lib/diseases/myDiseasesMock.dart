import 'package:my_app/diseases/diseasesMock.dart';

import '../vaccineClass.dart';

class MyDiseasesMock {
  Vaccine rubeola = new Vaccine();
  Vaccine sarampo = new Vaccine();
  Vaccine caxumba = new Vaccine();
  DiseasesMock mock = new DiseasesMock();

List<Vaccine> vacinas = new List<Vaccine>();
  setProperty() {
    mock.setProperty();
    rubeola.date = "12/05/2008";
    rubeola.name = mock.rubeola.name;
    rubeola.description = mock.rubeola.description;
    
    sarampo.name = mock.sarampo.name;
    sarampo.description = mock.sarampo.description;
    sarampo.date = "02/09/2009";

    caxumba.name = mock.caxumba.name;
    caxumba.description = mock.caxumba.description;
    caxumba.date = "13/04/2001";
    caxumba.upa = "UPA São José";
    
    vacinas.add(caxumba);
    vacinas.add(rubeola);
    vacinas.add(sarampo);
    
  }
}