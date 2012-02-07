class CreateTweets < ActiveRecord::Migration
  def change
    create_table :tweets do |t|
      t.string :user
      t.string :message
      t.string :status

      t.timestamps
    end
  end
end
