require 'spec_helper'

describe Berkshelf::GithubLocation do
  subject { described_class.new('artifact', '~> 1.0.0', github: 'RiotGames/artifact') }

  describe '#to_s' do
    before { subject.stub(:api_uri).and_return('http://cookbooks.example.com') }

    it 'includes the berkshelf path' do
      expect(subject.to_s).to eq("#<Berkshelf::GithubLocation RiotGames/artifact>")
    end
  end

  describe '#inspect' do
    before { subject.stub(:api_uri).and_return('http://cookbooks.example.com') }

    it 'includes the cookbooks directory' do
      expect(subject.inspect).to eq("#<Berkshelf::GithubLocation RiotGames/artifact@master, name: artifact, protocol: git>")
    end
  end
end
