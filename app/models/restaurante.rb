#encoding: utf-8
class Restaurante < ActiveRecord::Base
	validates_presence_of :nome, :message => "Deve ser preencido"
	validates_presence_of :endereco, :message => "Deve ser preenchido"
	validates_presence_of :especialidade, :message => "Deve ser preenchido"
	validates_uniqueness_of :nome, :message => "Nome ja cadastrado"
	validates_uniqueness_of :endereco, :message => "Endereco ja cadastrado"
	validate :primeira_letra_deve_ser_maiuscula

	has_many :qualificacaos
	has_and_belongs_to_many :pratos

	has_many :comentarios, :as => :comentavel
	
	private 
	def primeira_letra_deve_ser_maiuscula
		errors.add("nome", "primeira letra deve ser maiuscula") unless nome =~ /[A-Z].*/
	end
end
