# encoding: UTF-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)

#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
#---
# Excerpted from "Agile Web Development with Rails, 4rd Ed.",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(:title => 'Web Design for Developers',
  :description =>
    %{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We'll help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
  :image_url =>   '/images/wd4d.jpg',
  :price => 42.95,
  :locale => 'en')
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => '/images/ruby.jpg',
  :price => 49.50,
  :locale => 'en')
# . . .
Product.create(:title => 'Rails Test Prescriptions',
  :description =>
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  :image_url => '/images/rtp.jpg',
  :price => 43.75,
  :locale => 'en')

Product.create(:title => '深入浅出设计模式(影印版)',
  :description =>
    %{<p>
        <em>《深入浅出设计模式》</em>(影印版)的编写运用许多最新的研究，包括神经生物学
        、认知科学以及学习理论，这使得《深入浅出设计模式》(影印版)能够将这些设计模式深深
        地烙印在你的脑海中，不容易被遗忘。你将会更擅长于解决软件设计中的问题，并能够和
        你的团队成员用模式的语言来更好地沟通。
      </p>},
  :image_url => '/images/headfirstdp.jpg',
  :price => 98.00,
  :locale => 'cn')

Product.create(:title => '重构:改善既有代码的设计',
  :description =>
    %{<p>
        <em>重构</em>是一本很好的书。Martin Fowler和《重构:改善既有代码的设计》(中文版)
        另几位作者清楚揭示了重构过程，他们为面向对象软件开发所做的贡献，难以衡量。
        《重构:改善既有代码的设计》(中文版)解释重构的原理（principles）和最佳实践方式
        （best practices），并指出何时何地你应该开始挖掘你的代码以求改善。
        《重构:改善既有代码的设计》(中文版)的核心是一份完整的重构名录
        （catalog of refactoring），其中每一项都介绍一种经过实证的代码变换手法
        （code transformation）的动机和技术。某些项目如Extract Method和Move Field
        看起来可能很浅显，但不要掉以轻心，因为理解这类技术正是有条不紊地进行重构的关键。
        点击进入该书更多详细信息。
      </p>},
  :image_url => '/images/refactor.jpg',
  :price => 68.00,
  :locale => 'cn')

PaymentType.delete_all
PaymentType.create(:name => 'Check')
PaymentType.create(:name => 'Credit card')
PaymentType.create(:name => 'Purchase order')

