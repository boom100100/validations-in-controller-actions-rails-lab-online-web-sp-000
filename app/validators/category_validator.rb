class CategoryValidator < ActiveModel::Validator
  def validate(record)
    unless record.category.match?(/Fiction|Non-Fiction/)
      record.errors[:name] << "We're only allowed to have people who work for the company in the database!"
    end
  end
end
