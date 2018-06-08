class Ability
  include CanCan::Ability

        def initialize(user)
        can :create, Post
        can :read, Post
        can :update, Post do |post|
          post.user == user
        end
        can :delete, Post do |post|
         post.user == user
        end
    end
    
end