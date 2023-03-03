class CreatePrototypes < ActiveRecord::Migration[6.0]
  def change
    create_table :prototypes do |t|
      t.string :title, null: false
      t.text :catch_copy, null: false
      t.text :concept, null: false
      #referencesメソッド。has manyやbelong toとかの引数として外部キーとなるカラム名を指定
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
