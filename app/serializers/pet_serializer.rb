class PetSerializer < ActiveModel::Serializer
  attributes :id, :name, :human, :age

  # Want to return something in the json output that's not in the data
  # def fluffy
  #   "I'm fluffy"
  # end
end

# name needs to match the model singular
