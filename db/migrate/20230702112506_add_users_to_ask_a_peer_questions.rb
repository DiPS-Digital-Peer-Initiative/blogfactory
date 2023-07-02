class AddUsersToAskAPeerQuestions < ActiveRecord::Migration[7.0]
  def change
    add_reference :ask_a_peer_questions, :user, null: false, foreign_key: true
  end
end
