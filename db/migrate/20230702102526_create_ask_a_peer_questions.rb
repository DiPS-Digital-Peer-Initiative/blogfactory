class CreateAskAPeerQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :ask_a_peer_questions do |t|
      t.string :body

      t.timestamps
    end
  end
end
