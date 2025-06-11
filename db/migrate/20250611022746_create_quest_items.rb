class CreateQuestItems < ActiveRecord::Migration[8.0]
  def change
    create_table :quest_items do |t|
      t.string :content
      t.boolean :completed

      t.timestamps
    end
  end
end
