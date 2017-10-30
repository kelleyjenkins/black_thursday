require_relative 'test_helper'
require_relative '../lib/item'
require 'minitest/autorun'
require 'minitest/pride'
require 'bigdecimal'
require 'time'


class ItemTest < Minitest::Test
  def test_it_exists
    item = Item.new({
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => BigDecimal.new(10.99,4),
  :created_at  => Time.now,
  :updated_at  => Time.now,
})

    assert_instance_of Item, item
  end

  def test_it_has_a_name
    item = Item.new({
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => BigDecimal.new(10.99,4),
  :created_at  => Time.now,
  :updated_at  => Time.now,
})

  assert_equal "Pencil", item.name
  end

  def test_it_has_a_description
    item = Item.new({
  :name        => "Pencil",
  :description => "You can use it to write things",
  :unit_price  => BigDecimal.new(10.99,4),
  :created_at  => Time.now,
  :updated_at  => Time.now,
})

  assert_equal "You can use it to write things", item.description
  end
end
