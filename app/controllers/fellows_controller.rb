class FellowsController < ApplicationController
  def findex
 @fellows = Fellow.all  
 end

  def findexen
 @fellows = Fellow.all  
 end
end
