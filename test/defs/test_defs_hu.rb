# encoding: utf-8
require File.expand_path(File.dirname(__FILE__)) + '/../test_helper'

# This file is generated by the Ruby Holiday gem.
#
# Definitions loaded: data/hu.yaml
class HuDefinitionTests < Test::Unit::TestCase  # :nodoc:

  def test_hu
{Date.civil(2012,1,1) => 'Újév', 
 Date.civil(2011,1,1) => 'Újév', 
 Date.civil(2012,3,15) => '1848/49-es forradalom és szabadságharc ünnepe',
 Date.civil(2011,4,25) => 'Húsvét hétfő',
 Date.civil(2012,4,9) => 'Húsvét hétfő',
 Date.civil(2012,5,1) => 'A munka ünnepe',
 Date.civil(2011,6,13) => 'Pünkösd hétfő',
 Date.civil(2012,5,28) => 'Pünkösd hétfő',
 Date.civil(2012,8,20) => 'Az államalapítás ünnepe',
 Date.civil(2012,10,23) => '1956-os forradalom és szabadságharc ünnepe',
 Date.civil(2012,11,1) => 'Mindenszentek',
 Date.civil(2012,12,25) => 'Karácsony',
 Date.civil(2012,12,26) => 'Karácsony',}.each do |date, name|
  assert_equal name, (Holidays.on(date, :hu, :informal)[0] || {})[:name]
end

assert !Date.civil(2012,3,14).holiday?(:hu), '2012-03-14 is not a holiday in Hungary'

  end
end