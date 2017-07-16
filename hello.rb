#! /usr/bin/env ruby

require 'rubygems'
require 'nokogiri'   
require 'open-uri'

PAGE_URL01 = "http://annuaire-des-mairies.com/val-d-oise.html"
PAGE_URL02 = "http://annuaire-des-mairies.com/95/vaureal.html"
page_url02 = "http://annuaire-des-mairies.com"
requete = /\w+\.?\+?\w+?@\w+-?\w+\.\w+/


x=[]
url01 = Nokogiri::HTML(open(PAGE_URL01))
url01.xpath('//tr//td/p/a').each do |node| 
 email = node['href']
 x.push(email)
end

y=[]
x.each {|etape| y.push([page_url02,etape].join)}

puts y



y.each do |tampis|
   url02 = Nokogiri::HTML(open(tampis))
   url02.xpath('//tr//td[@class = "style27"]/p[@class = "Style22"]/font').each do |node| 
   end

end

puts y