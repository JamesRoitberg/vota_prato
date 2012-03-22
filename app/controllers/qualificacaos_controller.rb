class QualificacaosController < ApplicationController
	def index
		@qualificacaos = Qualificacao.order( "nota DESC" )

		respond_with @qualificacaos
		
	end

	def show
		@qualificacao = Qualificacao.find( params[ :id ])
	end

	def new
		@qualificacao = Qualificacao.new

		if params[ :cliente ]
			@qualificacao.cliente = Cliente.find( params[ :cliente ] )
		end

		if params[ :restaurante ]
			@qualificacao.restaurante = Restaurante.find( params [ :restaurante ] )
		end
	end

	def create
		@qualificacao = Qualificacao.new( params[ :qualificacao ])
		if @qualificacao.save
			redirect_to( :action => "show", :id => @qualificacao )
		else
			render :action => "new"
		end
	end

	def edit
		@qualificacao = Qualificacao.find( params[ :id ])
	end

	def update
		@qualificacao = Qualificacao.find( params[ :id ])
		if @qualificacao.update_attributes( params[ :qualificacao ])
			redirect_to( :action => "show", :id => @qualificacao )
		else
			render :action => "edit"
		end
	end
end
