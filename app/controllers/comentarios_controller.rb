class ComentariosController < ApplicationController
	def index
		@comentarios = Comentario.all

		respond_with @comentarios
	end

	def show
		@comentario = Comentario.find( params[ :id ])
	end

	def new
		@comentario = Comentario.new
	end

	def create
		@comentario = Comentario.new( params[ :comentario ])
		if @comentario.save
			redirect_to( :action => "show", :id => @comentario )
		else
			render :action => "new"
		end
	end

	def edit
		@comentario = Comentario.find( params[ :id ])
	end

	def update
		@comentario = Comentario.find( params[ :id ])
		if @comentario.update_attributes( params[ :comentario ])
			redirect_to( :action => "show", :id => @comentario )
		else
			render :action => "edit"
		end
	end

	def destroy
		@comentario = Comentario.find( params[ :id ] )
		@comentario.destroy

		respond_to do |format|
			format.json { head :ok }
			format.js { head :ok }
		end
	end
end
