
import 'package:my_app/diseases/diseasesMock.dart';

import '../vaccineClass.dart';

class VaccineMock {
  Vaccine rubeola = new Vaccine();
  Vaccine sarampo = new Vaccine();
  Vaccine caxumba = new Vaccine();
  DiseasesMock mock = new DiseasesMock();

List<Vaccine> vacinas = new List<Vaccine>();
  setProperty() {
    mock.setProperty();
    rubeola.date = "21/05/2019";
    rubeola.upa = "UPA São José";
    rubeola.name = mock.rubeola.name;
    rubeola.description = mock.rubeola.description;
    
    sarampo.name = mock.sarampo.name;
    sarampo.description = mock.sarampo.description;
    sarampo.date = "21/05/2019";
    sarampo.upa = "UPA São José";

    caxumba.name = mock.caxumba.name;
    caxumba.description = mock.caxumba.description;
    caxumba.date = "21/05/2019";
    caxumba.upa = "UPA São José";
    
    vacinas.add(caxumba);
    vacinas.add(rubeola);
    vacinas.add(sarampo);
    
  }
}
