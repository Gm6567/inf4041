require "administrate/base_dashboard"

class FilmDashboard < Administrate::BaseDashboard
  # ATTRIBUTE_TYPES
  # a hash that describes the type of each of the model's fields.
  #
  # Each different type represents an Administrate::Field object,
  # which determines how the attribute is displayed
  # on pages throughout the dashboard.
  ATTRIBUTE_TYPES = {
    castings: Field::HasMany,
    episodes: Field::HasMany,
    id: Field::Number,
    title: Field::String,
    date: Field::Text,
    description: Field::Text,
    link: Field::String,
    slug: Field::String,
    titleen: Field::String,
    slugen: Field::String,
    descen: Field::Text,
    dateen: Field::Text,
    created_at: Field::DateTime,
    updated_at: Field::DateTime,
  }.freeze

  # COLLECTION_ATTRIBUTES
  # an array of attributes that will be displayed on the model's index page.
  #
  # By default, it's limited to four items to reduce clutter on index pages.
  # Feel free to add, remove, or rearrange items.
  COLLECTION_ATTRIBUTES = [
    :castings,
    :episodes,
    :id,
    :title,
  ].freeze

  # SHOW_PAGE_ATTRIBUTES
  # an array of attributes that will be displayed on the model's show page.
  SHOW_PAGE_ATTRIBUTES = [
    :castings,
    :episodes,
    :id,
    :title,
    :date,
    :description,
    :link,
    :slug,
    :titleen,
    :slugen,
    :descen,
    :dateen,
    :created_at,
    :updated_at,
  ].freeze

  # FORM_ATTRIBUTES
  # an array of attributes that will be displayed
  # on the model's form (`new` and `edit`) pages.
  FORM_ATTRIBUTES = [
    :castings,
    :episodes,
    :title,
    :date,
    :description,
    :link,
    :slug,
    :titleen,
    :slugen,
    :descen,
    :dateen,
  ].freeze

  # Overwrite this method to customize how films are displayed
  # across all pages of the admin dashboard.
  #
  # def display_resource(film)
  #   "Film ##{film.id}"
  # end

  def display_resource(film)
  film.title
   end
end
