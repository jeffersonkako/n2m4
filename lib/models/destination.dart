class Destination {
  final String name;
  final String location;
  final String imagePath;
  final String description;

  Destination(this.name, this.location, this.imagePath, this.description);

  static List<Destination> getDestinations() {
    return [
      Destination('Fortaleza', 'Ceará', 'assets/fortaleza.jpeg',
          'Fortaleza é um vibrante caldeirão cultural no nordeste do Brasil, conhecido por suas belas praias urbanas como Praia de Iracema e Meireles. A cidade não só oferece sol o ano inteiro, mas também é um lugar repleto de festivais vibrantes, uma vida noturna animada e uma culinária rica, destacando-se os frutos do mar e a tradicional tapioca.'),
      Destination('Recife', 'Pernambuco', 'assets/recife.jpeg',
          'Conhecida como a "Veneza Brasileira" devido à sua complexa rede de rios, pontes e ilhas, Recife é a capital de Pernambuco e brilha com sua rica história e patrimônio cultural. O Carnaval de Recife é especialmente famoso, apresentando o frevo, dança acrobática que é um Patrimônio da Humanidade pela UNESCO. A cidade também é porta de entrada para fabulosas praias, incluindo Porto de Galinhas, frequentemente votada como uma das melhores do Brasil.'),
      Destination('Maceió', 'Alagoas', 'assets/alagoas.jpeg',
          'Maceió, a capital de Alagoas, é famosa por suas águas esmeralda cristalinas e suas extensas faixas de areia branca, como a Praia de Pajuçara e a Praia do Francês. Além das praias, a cidade oferece uma vibrante cena gastronômica com destaque para os frutos do mar frescos e o sururu, um molusco local que é uma iguaria regional. A hospitalidade dos maceioenses faz todos se sentirem em casa.'),
    ];
  }
}
