require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection

class Artists < ActiveRecord::Base
    has_many :albums
end

class Albums < ActiveRecord::Base
    belongs_to :artists
end