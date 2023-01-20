FactoryBot.define do
    factory :article do
      title { Faker::Lorem.sentence }
      body { Faker::Lorem.paragraph }
      # status: string = ['public', 'private', 'archived']
      # status always defaults to 'public'
      status { 'public' }
      transient do
        comments_count { 0 }
      end
      after(:create) do |article, evaluator|
        create_list(:comment, evaluator.comments_count, article: article)
      end
    end
  end
  