require_relative 'helper'

describe 'Similie image load' do
  it 'should load image' do
    assert Similie.new(File.join($testdir, 'lena1.png'))
  end

  it 'should barf on invalid path' do
    assert_raises(ArgumentError) { Similie.new(File.join($testdir, 'foo')) }
  end

  it 'should hash image' do
    img = Similie.new(File.join($testdir, 'lena1.png'))
    assert img
    assert_equal 216455360913932544, img.hash
  end
end
