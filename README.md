Rails Bootstrap Theme Sailor サンプル
=====================================

[![Build status][shield-build]](#)
[![MIT licensed][shield-license]](#)
[![Rails][shield-rails]][rails]

Rails 6 に [BootstrapMade.com][bootstrapmade] の [Sailor テンプレート](https://bootstrapmade.com/sailor-free-bootstrap-theme/) を適用するサンプル

フリーで利用する場合にはフッターのクレジットは削除できないのでご注意ください。

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
* [Bootstrap](https://getbootstrap.com/) 5.1.2
* [PostgreSQL][postgresql]
* [Heroku][heroku]

## Demo

* [Heroku](https://kyuuki-sample-rails-sailor.herokuapp.com)

## Getting started

### Rails アプリケーション作成

```sh
$ git clone git@github.com:kyuuki/sample-rails-base.git sample-rails-bootstrapmade-sailor
$ cd sample-rails-bootstrapmade-sailor
```

- GitHub に sample-rails-bootstrapmade-sailor という名前でリポジトリ追加

```sh
$ git remote set-url origin git@github.com:kyuuki/sample-rails-bootstrapmade-sailor.git
$ git push origin master
```

### Sailor テンプレート適用

- https://bootstrapmade.com/sailor-free-bootstrap-theme/ から Zip ファイルをダウンロードして展開

- assets を public にコピー (public/assets は .gitignore に設定されているのでコミット時に注意)

- 各 html ファイルを erb ファイルに分割してコピー

- タイトルをテンプレートファイルで指定できるように  
  https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/commit/839086b7456844bbe548a2b318ebfa89a2922766

- メニューの avtive をテンプレートファイルで指定できるように  
  https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/commit/8a4a2b35bd13892f33d46306124bee0498e3efa5

- パンくずリストを共通化  
  https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/commit/d7fd6e39ca2d0ebe029345aa17d4ad0a8ea28f70

## Deployment

Heroku にデプロイ

```sh
$ heroku create kyuuki-sample-rails-sailor
$ git push heroku master
```
<!-- $ heroku run rake db:migrate (今回は不要) -->

## Usage

```sh
$ git clone git@github.com:kyuuki/sample-rails-bootstrapmade-sailor.git
$ cd sample-rails-bootstrapmade-sailor
$ bundle install
$ yarn install
$ rails db:create
$ rails s -b 0.0.0.0
```
<!-- $ rails db:migrate (今回は不要) -->

### タイトルの変更方法

- 各テンプレートの `content_for :title` でタイトルを設定してください。  
  https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/blob/master/app/views/static_page/about.html.erb#L1

### アクティブメニューの変更方法

- 各テンプレートの `content_for :menu_setting` 内で `@menu` 変数にアクティブにするメニューのシンボルを代入してください。  
  https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/blob/master/app/views/static_page/about.html.erb#L3
- 各メニューのシンボルは https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/blob/master/app/views/layouts/_header.html.erb の各メニューの `@menu` と比較しているシンボルを参照してください。

### パンくずリストの変更方法

- パンくずリストの部分テンプレートに `breadcrumbs` 変数を渡してください。  
  https://github.com/kyuuki/sample-rails-bootstrapmade-sailor/blob/master/app/views/layouts/_header.html.erb
- `breadcrumbs` 変数は `[ [ <パンくずリストに表示する文字列>, <パス> ] ... ]` という形式になります。配列の順に左から順番に並びます。`<パス>` に `nil` を指定するとリンクではなくなります。
- `breadcrumbs` 変数の最後の要素の `<パンくずリストに表示する文字列>` はページの見出しにも利用されます。

## References

* [Sailor - Bootstrap Business Template](https://bootstrapmade.com/sailor-free-bootstrap-theme/)
* [Live Demo](https://bootstrapmade.com/demo/Sailor/)

## License

This is licensed under the [MIT](https://choosealicense.com/licenses/mit/) license.  
Copyright &copy; 2021 [Fuji Programming Laboratory](https://fuji-labo.com/)



[rails]: https://rubyonrails.org/
[postgresql]: https://www.postgresql.org/
[heroku]: https://www.heroku.com/home
[bootstrapmade]: https://bootstrapmade.com/

[shield-build]: https://img.shields.io/badge/build-passing-brightgreen.svg
[shield-license]: https://img.shields.io/badge/license-MIT-blue.svg
[shield-rails]: https://img.shields.io/badge/-Rails-CC0000.svg?logo=ruby-on-rails&style=flat
