class AskAPeerController < ApplicationController
     before_action :authenticate_user!
     def new
          @aapq = AskAPeerQuestion.new
     end
     
     def create
          @aapq = AskAPeerQuestion.new(q_params)
          @aapq.user = current_user
          if @aapq.save
               AskAPeerMailer.with(aapq: @aapq).aapq_email.deliver_now
               redirect_to root_path, flash: {notice: "Your question has been sent successfully. Someone will reach out to you shortly."}
          else
               render :new, status: :unprocessable_entity
          end
     end

     private
		def q_params
			params.require(:ask_a_peer_question).permit(:body)
		end
end
