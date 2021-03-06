class AtelierPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def destroy?
    user == record.user
  end

  def edit?
    user == record.user
  end

  def update?
    edit?
  end

  def new?
    true
  end

  def create?
    true
  end


  def index?
    true
  end

end
