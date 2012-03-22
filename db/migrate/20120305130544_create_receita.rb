class CreateReceita < ActiveRecord::Migration
  def change
    create_table :receita do |t|
    	t.integer :prato_id
    	t.text :conteudo
    	t.timestamps
    end
  end
end
