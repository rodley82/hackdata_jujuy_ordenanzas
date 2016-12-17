class AgregarIndices < ActiveRecord::Migration
  def change
    add_index :ordenanzas, :anio
    add_index :ordenanzas, :tema
    add_index :ordenanzas, :numero
  end
end
