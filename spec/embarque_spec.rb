# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'Embarque' do
  include Actionwords

  it "Nº máximo animales con los que se puede viajar en cabina (uid:6f605c61-58b1-4bae-a5da-2a11e6f657f7)" do
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When el numero de animales solicitado es $1
    el_numero_de_animales_solicitado_es_1
    # Then la solicitud es aceptada
    la_solicitud_es_aceptada
  end
end