class RestaurantPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def update?
    record.user == user
  end

  def create?
    update?
  end

  def destroy?
    update?
  end
end
