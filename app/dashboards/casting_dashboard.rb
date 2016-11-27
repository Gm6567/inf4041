require "administrate/base_dashboard"

class CastingDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    film: Field::BelongsTo,
    episode: Field::BelongsTo,
    id: Field::Number,
    noma: Field::String,
    linka: Field::String,
    nomb: Field::String,
    linkb: Field::String,
    nomc: Field::String,
    linkc: Field::String,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :film,
    :episode,
    :id,
    :noma,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :film,
    :episode,
    :id,
    :noma,
    :linka,
    :nomb,
    :linkb,
    :nomc,
    :linkc,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :film,
    :episode,
    :noma,
    :linka,
    :nomb,
    :linkb,
    :nomc,
    :linkc,
  ].freeze

  # Overwrite this method to customize how castings are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(casting)
  #   "Casting ##{casting.id}"
  # end

 def display_resource(casting)
   casting.noma
  end
end
