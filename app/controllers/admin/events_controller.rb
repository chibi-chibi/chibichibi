module Admin
  class EventsController < Admin::ApplicationController
    load_and_authorize_resource
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = Event.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
     #def find_resource(param)
      #Event.find_by!(slug: param)
     #end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information
  end
end
