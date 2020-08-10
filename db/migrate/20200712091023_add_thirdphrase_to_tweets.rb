class AddThirdphraseToTweets < ActiveRecord::Migration[5.2]
  def change
    add_column :tweets, :thirdphrase, :text
  end
end
