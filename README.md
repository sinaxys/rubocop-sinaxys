# rubocop-sinaxys

Apesar do Ruby on Rails ter excelentes guidelines desenvolvidas pela comunidade, com o tempo adaptamos nossa própria forma de escrita de código na Sinaxys. Por exemplo, declarar `and return` em todos os renders (que pode disparar alertas de returns redundantes), do uso dos literais `[]` mais explícitos ao invés de `%i()`, e de sempre usar `->` ao invés do operador `lambda`, mesmo em multilinhas.

Assim como mantemos os métodos encadeados intentados a esquerda, por exemplo:

```ruby
# Não fazemos assim
professional = Professional.includes(:city, :state, :profession)
                           .where(is_enabled: true)
                           .limit(ITEMS_PER_PAGE)
                           .offset(params[:page])

# Fazemos assim
professional = Professional.includes(:city, :state, :profession)
  .where(is_enabled: true)
  .limit(ITEMS_PER_PAGE)
  .offset(params[:page])
```

Essa gem também inclui outras gems contendo regras de melhorias de performance e de segurança, evitando, por exemplo, loops aninhados e outros pontos de gargalo.

## Instalação

Primeiro, adicione a seguinte linha no Gemfile do projeto dentro do grupo `:development`:

```ruby
gem 'rubocop-sinaxys', require: false, github: 'sinaxys/rubocop-sinaxys', branch: 'main'
```

Em seguida, rode `bundle install`, e então `bundle binstubs rubocop`.

Por fim, crie um arquivo `.rubocop.yml` na raiz do projeto (se não existir) com as linhas:

```yml
inherit_gem:
  rubocop-sinaxys: rubocop.yml
```

E pronto! Com a extensão [Ruby LSP](https://marketplace.visualstudio.com/items?itemName=Shopify.ruby-lsp) instalada, o Visual Studio Code irá formatar automaticamente seu documento, informar os erros de padrões e outros alertas e sugestões de melhoria de código automaticamente.
