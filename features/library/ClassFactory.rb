###########################################
#  This factory class is used to initialize support classes needed in step definitions
# Author : Nicholas Blantz
# Date Created  : 05/31/2018
# Last Modified : 05/31/2018
# Module : APITemplate
###########################################

class ClassFactory
  def initialize(assertion)
    Dir[File.dirname(__FILE__) + '/*.rb'].each {|file| require file }
	  @assertion = assertion
  end
  
  def name_operations
    NameOperations.new(@assertion)
  end
end