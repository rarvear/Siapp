class CreateBloggers < ActiveRecord::Migration[5.1]
  def change
    create_table :bloggers do |t|
      t.string :titulo
      t.string :resumen
      t.text :sec1
      t.text :sec2
      t.string :org
      t.string :categoria
      t.string :tag
      t.boolean :publico

      t.timestamps
    end
  end
end
