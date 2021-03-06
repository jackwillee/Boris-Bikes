# frozen_string_literal: true

require 'bike.rb'
require 'docking_station.rb'
describe DockingStation do
  it 'instances should respond to release_bike method' do
    expect(subject).to respond_to(:release_bike)
  end
  it 'should check if the bike is working?' do
   bike = Bike.new
   expect(bike.working?).to eq(true)
  end 


  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  it ' should check whether a bike can be stored' do 
  expect(subject).to respond_to(:dock).with(1).argument

  end 

  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
   
    expect(subject.bike).to eq bike
  end

  
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq(bike)
    end
    describe '#release_bike' do
        it 'raises an error when there are no bikes available' do
          expect { subject.release_bike }.to raise_error 'dock is empty'
        end
      end
  end

