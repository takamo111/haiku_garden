class AddSecondphraseToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :secondphrase, :text
  end
end
