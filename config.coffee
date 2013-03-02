module.exports =
  development:
    pkg: require './package.json'
    app:
      name: 'WordPrint'

    db: 'mongodb://localhost/wordprint_development'
    secret: 'keyboard cat'

  test:
    pkg: require './package.json'
    app:
      name: 'WordPrint'

    db: 'mongodb://localhost/wordprint_test'
    secret: 'keyboard cat'

  production:
    pkg: require './package.json'
    app:
      name: 'WordPrint'

    db: 'mongodb://localhost/wordprint_production'
    secret: 'keyboard cat'