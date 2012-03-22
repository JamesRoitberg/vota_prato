module QualificacaosHelper

	def show_nome( obj, mascara )
		obj.nil? ? mascara : obj.nome
	end

end
