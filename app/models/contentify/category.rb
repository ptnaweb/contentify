module Contentify
  class Category < ActiveRecord::Base
    establish_connection Contentify.config.data_source

    has_many :contents

    acts_as_tree
  end
end
