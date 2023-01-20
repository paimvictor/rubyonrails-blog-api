FactoryBot.define do
    factory :comment do
      commenter { Faker::Name.name }
      body { Faker::Lorem.sentence }
      # status: string = ['public', 'private', 'archived']
      # status always defaults to 'public'
      status { 'public' }
      association :article, factory: :article
    end
  end
  