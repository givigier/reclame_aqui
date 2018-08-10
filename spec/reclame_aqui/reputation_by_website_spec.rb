# frozen_string_literal: true

require 'spec_helper'

describe ReclameAqui::ReputationByWebsite do
  context 'when passing an invalid website' do
    let!(:reclame_aqui) do
      ReclameAqui::ReputationByWebsite.new('http://').reputation
    end
    let!(:error) { reclame_aqui[:error] }
    let!(:reputation) { reclame_aqui[:reputation] }

    it 'should return a hash with error equal true' do
      expect(error).to eq true
    end

    it 'should return an empty reputation' do
      expect(reputation).to eq Hash.new({})
    end
  end

  context 'when passing a valid website' do
    let!(:reclame_aqui) do
      ReclameAqui::ReputationByWebsite
        .new('http://ricardoeletro.com.br').reputation
    end
    let!(:error) { reclame_aqui[:error] }
    let!(:reputation) { reclame_aqui[:reputation] }

    it 'should return a hash with error equal false' do
      expect(error).to eq false
    end

    it 'should return the reputation with id' do
      expect(reputation[:id]).to eq 10708
    end

    it 'should return the reputation with name' do
      expect(reputation[:name]).to eq 'Ricardo Eletro  - Loja Online'
    end

    it 'should return the reputation with period' do
      expect(reputation[:period]).to_not eq nil
    end

    it 'should return the reputation with status' do
      expect(reputation[:status]).to_not eq nil
    end

    it 'should return the reputation with complaints' do
      expect(reputation[:complaints]).to_not eq nil
    end

    it 'should return the reputation with answered' do
      expect(reputation[:answered]).to_not eq nil
    end

    it 'should return the reputation with not_answered' do
      expect(reputation[:not_answered]).to_not eq nil
    end

    it 'should return the reputation with measured' do
      expect(reputation[:measured]).to_not eq nil
    end

    it 'should return the reputation with solution_index' do
      expect(reputation[:solution_index]).to_not eq nil
    end

    it 'should return the reputation with would_return' do
      expect(reputation[:would_return]).to_not eq nil
    end

    it 'should return the reputation with grade' do
      expect(reputation[:grade]).to_not eq nil
    end

    it 'should return the reputation with time_to_response' do
      expect(reputation[:time_to_response]).to_not eq nil
    end

    it 'should return the reputation with chat' do
      expect(reputation[:chat]).to_not eq nil
    end

    it 'should return the reputation with fone' do
      expect(reputation[:fone]).to_not eq nil
    end

    it 'should return the reputation with show_selo' do
      expect(reputation[:show_selo]).to_not eq nil
    end
  end
end
