class Ability
include CanCan::Ability

    def initialize(user)
        user ||= User.new(role: 2) # guest user (not logged in)
        if user.admin?
          can :manage, :all
        elsif user.owner?
          can :read, :all
          can [:create, :all, :update, :destroy], [Proyect, Task] , user_id: user.id
        else
          can :read, :all
        end
    end
end