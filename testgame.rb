
require 'rubygems'
require 'gosu'
include Gosu


def draw
  draw_quad 0, 400, Color::WHITE, 640, 400, Color::WHITE, 640, 500, Color::WHITE, 0, 500, Color::WHITE
    if @dir == :left then
      offs_x = -25
      factor = 1.0
    else
      offs_x = 25
      factor = -1.0
  end
  @cur_image.draw(@x + offs_x, @y - 49, 0, factor, 1.0)
end

draw
