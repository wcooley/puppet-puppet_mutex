# encoding: UTF-8

require 'spec_helper'

describe 'conflicthost' do
  context 'puppet_mutex in effect' do
    it do
      expect {
        should compile
      }.to raise_error(Puppet::Error, /Duplicate declaration/)
    end
  end
end
