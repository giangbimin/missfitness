class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.role_id == 5
      can :manage, :all
      can :access, :rails_admin # needed to access RailsAdmin
      can :dashboard
    else
      can :read, :all
    end
  end
end
