Rails サンプルベース
====================

[![Build status][shield-build]](#)
[![MIT licensed][shield-license]](#)
[![Rails][shield-rails]][rails]

Rails サンプルを作成するためのベース

## Table of Contents

* [Technologies](#technologies)
* [Demo](#demo)
* [Getting started](#getting-started)
* [Deployment](#deployment)
* [Usage](#usage)
* [References](#references)
* [License](#license)

## Technologies

* [Rails][rails] 6.0.4.1
* [PostgreSQL][postgresql]
* [Heroku][heroku]

## Demo

* [Heroku](https://kyuuki-sample-rails-base.herokuapp.com)

## Getting started

### Rails アプリケーション作成

```sh
$ rails new sample-rails-base -d postgresql --skip-turbolinks
$ cd sample-rails-base
$ git add .
$ git commit -m "Initial commit"
```

### トップページ作成

```sh
$ rails g controller StaticPage top
```

- [config/routes.rb](config/routes.rb) を編集

```ruby
Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_page#top'
  # root to: 'static_page#top'  # 上記はこれの省略形
end
```

- [app/controllers/static_page_controller.rb](app/controllers/static_page_controller.rb) を編集

```ruby
class StaticPageController < ApplicationController
  def top
    # render :top  # これが省略されている
  end
end
```

- [app/views/static_page/top.html.erb](app/views/static_page/top.html.erb) を編集

```erb
<h1>トップページ</h1>

<p>
  トップページの内容。
</p>
```

### GitHub

- GitHub に sample-rails-base という名前でリポジトリ追加

```sh
$ git remote add origin git@github.com:kyuuki/sample-rails-base.git
$ git push -u origin master
```

## Deployment

Heroku にデプロイ

```sh
$ heroku create kyuuki-sample-rails-base
$ git push heroku master
```
<!-- $ heroku run rake db:migrate (今回は不要) -->

## Usage

```sh
$ git clone git@github.com:kyuuki/sample-rails-base.git
$ cd sample-rails-base
$ bundle install
$ yarn install
$ rails db:create
$ rails s -b 0.0.0.0
```
<!-- $ rails db:migrate (今回は不要) -->

## References

* [Ruby on Rails Guides (v6.0.x) (英)](https://guides.rubyonrails.org/v6.0/)
* [Ruby on Rails ガイド (日)](https://railsguides.jp/)

## License

This is licensed under the [MIT](https://choosealicense.com/licenses/mit/) license.  
Copyright &copy; 2021 [Fuji Programming Laboratory](https://fuji-labo.com/)



[rails]: https://rubyonrails.org/
[postgresql]: https://www.postgresql.org/
[heroku]: https://www.heroku.com/home

[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-rails]: https://img.shields.io/badge/-Rails-CC0000.svg?logo=ruby-on-rails&style=flat
