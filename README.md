### Sobre
Este projeto é sobre automação de testes web utilizando as ferramentas Robot Framework e Selenium Webdriver.
Foi utilizada a biblioteca webdriver-manager, a fim de eliminar a necessidade de baixar e configurar manualmente os webdrivers.

### Ferramentas Utilizadas
- Robot Framework: robotframework.org
- Selenium Library: SeleniumLibrary
- Site de Teste: Sauce Demo

### Como Executar
1) Clone este repositório.
2) Instale as dependências necessárias:

```bash
pip install -r requirements.txt
```

3) Execute os testes:

```bash
robot -d ./logs tests
```

### Estrutura do Projeto

tests/: Contém os arquivos de teste.

keywords/: Contém as funções de cada teste.

pages/: Contém os elementos das páginas.

logs/: Onde os resultados dos testes serão armazenados.
