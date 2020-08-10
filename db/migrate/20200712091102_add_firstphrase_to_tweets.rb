class AddFirstphraseToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :firstphrase, :text
  end
end
