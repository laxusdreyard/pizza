class Boletum < ActiveRecord::Base
  belongs_to :pizza1
  belongs_to :ingrediente
  belongs_to :usuario
end
