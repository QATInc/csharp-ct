###########################################
#  This hooks file is requred for cucumber to load all prerequisite inorder to run the scenarios successfully
# Author : Nicholas Blantz, Scott Miller
# Date Created  : 10/22/2017
# Last Modified : 11/22/2017
# Module : APITemplate
###########################################

Before do |scenario|
  #@assertion = BaseAssertion.new()
  @assertion = nil
  @class_factory = ClassFactory.new(@assertion)
end

After do |scenario|
  #@assertion.check_soft_assertions
end