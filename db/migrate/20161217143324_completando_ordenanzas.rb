class CompletandoOrdenanzas < ActiveRecord::Migration
  def change
    add_column :ordenanzas, :numero, :string
    add_column :ordenanzas, :anio, :string
    add_column :ordenanzas, :tema, :string
    add_column :ordenanzas, :sintesis, :string
    add_column :ordenanzas, :vigente, :string
    add_column :ordenanzas, :unidad_id, :string
    add_column :ordenanzas, :generalidad_id, :string
  end
end
