require 'rails_helper'

describe Movie do
    it 'should find movies with the same director' do
        movie1 = Movie.create!(title: 'Inception', director: 'Christopher Nolan')
        movie2 = Movie.create!(title: 'Interstella', director: 'Christopher Nolan')
        results = Movie.same_directors('Christopher Nolan')
        expect(results).to eq([movie1, movie2])
    end

    it 'should return nil when no director present ' do
        movie1 = Movie.create(title: 'Fast and Furious')
        results = Movie.same_directors(movie1.id)
        expect(results).to be_empty
    end
end  