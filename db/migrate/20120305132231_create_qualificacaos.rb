class CreateQualificacaos < ActiveRecord::Migration
  def self.up
    create_table :qualificacaos do |t|
    	t.integer :cliente_id
    	t.integer :restaurante_id
    	t.float :nota
    	t.float :valor_gasto
		t.timestamps
    end

    add_index( :qualificacaos, :cliente_id )
    add_index( :qualificacaos, :restaurante_id )
  end

  def self.down
  	drop_table :qualificacaos
  end
end
