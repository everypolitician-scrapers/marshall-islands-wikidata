#!/bin/env ruby
# encoding: utf-8
# frozen_string_literal: true

require 'wikidata/fetcher'

names = EveryPolitician::Wikidata.wikipedia_xpath( 
  url: 'https://en.wikipedia.org/w/index.php?title=Legislature_of_the_Marshall_Islands&oldid=672387367',
  after: '//span[@id="Members_of_Nitijela"]',
  before: '//span[@id="See_also"]',
  xpath: '//li//a[not(position()=1)][not(@class="new")]/@title',
)

EveryPolitician::Wikidata.scrape_wikidata(names: { en: names })
