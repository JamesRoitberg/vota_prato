class Prato < ActiveRecord::Base
	validates_presence_of :nome, :message => "Nome deve ser preenchido"

	has_and_belongs_to_many :restaurantes
	has_one :receita

	validate :validate_presence_of_more_than_one_restaurante

	private
	def validate_presence_of_more_than_one_restaurante
		errors.add( "restaurantes", "deve haver ao menos 1 restaurante" ) if restaurantes.empty?
	end

end
