module Etsy4r
  class FeedbackCommands < Etsy4r::Commands
    
    def get_feedback(feedback_id)
      @client.process("/feedback/#{feedback_id}")
    end
    
    def get_feedback_for_user(user_id, optional_params = {})
      @client.process("/users/#{user_id}/feedback", optional_params)
    end
    
    def get_feedback_as_buyer(user_id, optional_params = {})
      @client.process("/users/#{user_id}/feedback/buyer", optional_params)
    end
    
    def get_feedback_for_others(user_id, optional_params = {})
      @client.process("/users/#{user_id}/feedback/others", optional_params)
    end
    
    def get_feedback_as_seller(user_id, optional_params = {})
      @client.process("/users/#{user_id}/feedback/seller", optional_params)
    end
    
  end
end
