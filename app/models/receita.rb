class Receita < ActiveRecord::Base
		validates_presence_of :conteudo, :message => "Deve ser preenchido"

		belongs_to :prato

		validates_presence_of :prato_id
		validates_association_of :prato
end
