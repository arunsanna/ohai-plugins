require 'spec_helper'

magento = OHAI['webapps']['magento']

describe 'Magento Plugin' do
  it 'should be a hash' do
    expect(magento['magento.example.com']).to be_a(Hash)
  end

  it 'should report vhost' do
    expect(magento.keys.join).to eql('magento.example.com')
  end

  it 'should report path' do
    expect(magento['magento.example.com']['path']).to eql(
      '/srv/magento/app/Mage.php')
  end

  it 'should report version' do
    expect(magento['magento.example.com']['version']).to be_a(String)
  end

  it 'should report edition' do
    expect(magento['magento.example.com']['edition']).to be_a(String)
  end

end
