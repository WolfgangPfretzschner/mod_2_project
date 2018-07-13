class ApplicationController < ActionController::Base
  before_action :authorized?
  helper_method :get_logged_in_person


def log_in_person(person_id)
  session[:person_id] = person_id
end

def logged_in_person_id
  session[:person_id]
end

def get_logged_in_person
  @logged_in_person = Person.find(logged_in_person_id) if logged_in_person_id
end
def same_as_edit
  # if edit_person_path(@person)

end
def authorized?
  # if we do not have a valid user_id stored in cookie, kick us back over to login
  # byebug
  redirect_to register_path unless !!get_logged_in_person
end

end
