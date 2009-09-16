#--
#
# Chingu -- Game framework built on top of the opengl accelerated gamelib Gosu
# Copyright (C) 2009 ippa / ippa@rubylicio.us
#
# This library is free software; you can redistribute it and/or
# modify it under the terms of the GNU Lesser General Public
# License as published by the Free Software Foundation; either
# version 2.1 of the License, or (at your option) any later version.
#
# This library is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the GNU
# Lesser General Public License for more details.
#
# You should have received a copy of the GNU Lesser General Public
# License along with this library; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
#
#++


#
# Core extensions to GOSU
# Some of these require the gem 'texplay'
#
module Gosu
  
  class Image
    #
    # Returns true if the pixel at x, y is 100% transperant (good for collisiondetection)
    # Requires texplay
    #
    def transparent_pixel?(x, y)
      begin
        self.get_pixel(x,y)[3] == 0
      rescue
        puts "Error in get_pixel at x/y: #{x}/#{y}"
      end
    end
    
  end
end