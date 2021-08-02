class CreatePrivatemessages < ActiveRecord::Migration[5.2]
  def change
    create_table :privatemessages do |t|
      t.text :content
      t.belongs_to :user, optional: true
      t.timestamps
    end
  end
end
