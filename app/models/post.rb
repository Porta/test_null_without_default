class Post < ActiveRecord::Base

include ActiveRecord::Transitions

  state_machine do
    state :created
    state :published

    event :publish do
      transitions :to => :published, :from => :created
    end
  end



end

