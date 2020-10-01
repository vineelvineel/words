class CreateRandomWords < ActiveRecord::Migration[6.0]
  def change
    create_table :random_words do |t|
      t.string :name

      t.timestamps
    end
  end
end
