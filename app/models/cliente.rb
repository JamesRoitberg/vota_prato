class Cliente < ActiveRecord::Base
	validates_presence_of :nome, :message => "Deve ser preenchido"
	validates_uniqueness_of :nome, :message => "Soh pode haver 1"
	validates_numericality_of :idade, :greater_than => 0, :less_than => 120, :message => "Idade deve ser entre 0 e 120"

	has_many :qualificacaos
end

