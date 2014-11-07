# encoding: UTF-8

require 'spec_helper'

describe 'puppet_mutex' do
  context 'compile' do
    let(:title) { 'test-mutex' }
    it { should compile }
  end
end
