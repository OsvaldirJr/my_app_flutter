import 'package:my_app/prevention/preventionClass.dart';

class PreventionMock{
  Prevention anticon    = new Prevention();
  Prevention adesivo    = new Prevention();
  Prevention injec      = new Prevention();
  Prevention diu        = new Prevention();
  Prevention implante   = new Prevention();
  Prevention anel       = new Prevention();
  Prevention espermi    = new Prevention();
  Prevention emer       = new Prevention();
  Prevention camisinhaM = new Prevention();
  Prevention camisinhaF = new Prevention();
  Prevention diafragma  = new Prevention();
  Prevention capuz      = new Prevention();
  Prevention esponja    = new Prevention();
  Prevention laqueadura = new Prevention();
  Prevention vazectomia = new Prevention();

  List<Prevention> preventivemethods = new List<Prevention>();
  
setProperty(){
  anticon.name            ="Pílula Anticoncepcional";
  anticon.description     = "\n\nÉ um comprimido, tomado todos os dias, que têm uma combinação de hormônios, normalmente estrogênio e progesterona sintéticos, o que impede que a mulher ovule. Consequentemente impedindo a gestação. Se a mulher vomita ou tem diarreia logo depois de ingerir a pílula existe a possibilidade dela não funcionar como deveria.";
  adesivo.name            ="Adesivo Anticoncepcional";
  adesivo.description     = "\n\nÉ feito de um material aderente (como um esparadrapo), que ao ser colado na pele libera uma combinação de hormônios sintéticos, que entram na corrente sanguínea, o que impede a ovulação. Normalmente é trocado semanalmente.";
  injec.name              ="Anticoncepcional Injetável::";
  injec.description       = "\n\nÉ uma injeção aplicada todos mês ou de três em três meses, é uma combinação de hormônios que impede o corpo da mulher de liberar óvulos. Pode ser aplicada nos postos de saúde ou na farmácia.";
  diu.name                ="DIU";
  diu.description         ="\n\nO dispositivo intrauterino (DIU), um dispositivo que tem o formato de T ou Y que é colocado dentro do útero da mulher, pode durar de 5 a 10 anos, e libera substâncias que fazem com que o espermatozóide não sobrevida no útero. ";
  implante.name           ="Implante Contraceptivo";
  implante.description    ="\n\nÉ um dispositivo que tem aproximadamente do tamanho de um palito de dente, é flexível e é colocado dentro do braço da mulher, logo abaixo da pele,  pela profissional de saúde. Esse dispositivo libera uma combinação de hormônios que impede a ovulação. Dura uma média de 3 anos";
  anel.name               ="Anel";
  anel.description        ="\n\nSe parece com uma pulseira ou elástico de cabelo, é um anel transparente e flexível que é inserido dentro da vagina, deve ser trocado todos os meses, e libera uma combinação de hormônios que impede a produção dos óvulos. O anel fica encostado na parede da vagina e é colocado do mesmo jeito que sim absorvente interno (OB).";
  espermi.name            ="Espermicidas";
  espermi.description     ="\n\nOs espermicidas NÃO são eficientes sozinhos, precisam ser combinados com algum outro método contraceptivo. São vendidos no formato de gel, creme ou espuma. Devem ser colocados na vagina de 5 minutos a 90 minutos antes do sexo e deve ser mantido lá de 6 horas a 8 horas após o sexo, portanto a vagina não deve ser lavada, de forma alguma, logo após o ato.";
  emer.name               ="Contraceptivos de Emergência";
  emer.description        ="\n\nTambém chamados de pílulas do dia seguinte, esse comprimido deve ser tomado o mais rápido possível depois do ato sexual desprotegido, sua ação é impedir ou atrasar a produção dos óvulos. Não deve ser usado com frequência, pois mantém uma dose muito alta de hormônios, que fazem quando inglês nessa quantidade.";
  camisinhaM.name         ="Camisinha Masculina";
  camisinhaM.description  ="\n\nÉ uma forma simples e barata de se proteger contra a gravidez e DST’s (Doenças Sexualmente Transmissíveis), ele captura o esperma (funcionando como um saco) e impedindo que os espermatozóides entrem em contato com a vagina. É UM DOS ÚNICOS MÉTODOS CONTRACEPTIVOS QUE PROTEGE CONTRA AS DOENÇAS SEXUALMENTE TRANSMISSÍVEIS, por isso deve ser usado junto com outros métodos contraceptivos.";
  camisinhaF.name         ="Camisinha Feminina";
  camisinhaF.description  ="\n\nEssa camisinha lembra o formato de um saco com dois anéis nas pontas, pega-se o anel da ponta que está fechada e coloca-se dentro da vagina. Funciona da mesma forma que a camisinha masculina, impedindo que o esperma entre em contato com a vagina. É UM DOS ÚNICOS MÉTODOS CONTRACEPTIVOS QUE PROTEGE CONTRA AS DOENÇAS SEXUALMENTE TRANSMISSÍVEIS, por isso deve ser usado em conjunto com outro método contraceptivo.";
  diafragma.name          ="Diafragma";
  diafragma.description   ="\n\nParece com um chapéu muito pequeno e flexível que é introduzido na vagina, o que impede que o esperma chegue até o útero. Precisa-se consultar um profissional de saúde para saber o tamanho ideal do diafragma para cada pessoa.";
  capuz.name              ="Capuz Cervical";
  capuz.description       ="\n\nÉ uma espécie de capuz com uma ponta arredondada e com uma borda mais firme, que serve para cobrir o colo do útero, o que forma uma barreira que impede que o esperma chegue até o útero. O capuz cervical pode não se encaixar de forma perfeita com mulheres que já tiveram filhos. Aconselha-se usar um espermicida junto com o capuz. Deve ser mantido dentro da vagina por, no mínimo,  6 horas depois do sexo e no máximo 48 horas.";
  esponja.name            ="Esponja";
  esponja.description     ="\n\nÉ um pedaço de espuma que tem a forma de um disco e tem uma alça, é introduzida na vagina até perto do útero e começa a liberar espermicidas que protegem a mulher por até 48 horas.";
  laqueadura.name         ="Laqueadura";
  laqueadura.description  ="\n\nA laqueadura ou ligadura das tubárias é uma cirurgia em que as trompas da mulher são amarradas ou cortadas, evitando assim que os óvulos e os espermatozóides se encontrem, o que impede a gravidez.";
  vazectomia.name         ="Vasectomia";
  vazectomia.description  ="\n\nA vasectomia é o fechamento dos canais deferentes do homem. É uma pequena cirurgia feita em cima do escroto (saco), onde corta-se os canais que levam os espermatozóides para onde se produzirá o esperma. A ejaculação continuará acontecendo ";
  

  preventivemethods.add(anticon);
  preventivemethods.add(adesivo);
  preventivemethods.add(injec);
  preventivemethods.add(diu);
  preventivemethods.add(implante);
  preventivemethods.add(anel);
  preventivemethods.add(espermi);
  preventivemethods.add(emer);
  preventivemethods.add(camisinhaM);
  preventivemethods.add(camisinhaF);
  preventivemethods.add(diafragma);
  preventivemethods.add(capuz);
  preventivemethods.add(esponja);
  preventivemethods.add(laqueadura);
  preventivemethods.add(vazectomia);
}

}
     