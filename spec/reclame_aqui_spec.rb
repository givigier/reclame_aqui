require "spec_helper"

describe ReclameAqui do
  let(:reclame_aqui){ ReclameAqui }
  let(:by_website){ double }

  it "should call get_reputation of ReputationByWebsite" do
    expect(ReclameAqui::ReputationByWebsite).to receive(:new).and_return(by_website)
    expect(by_website).to receive(:get_reputation)
    reclame_aqui.reputation("")
  end
end