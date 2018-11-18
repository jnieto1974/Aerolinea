# encoding: UTF-8
require 'spec_helper'
require_relative '../actionwords'

describe 'Embarque en cabina' do
  include Actionwords

  it "Nº máximo animales con los que se puede viajar en cabina es 1 (uid:6f605c61-58b1-4bae-a5da-2a11e6f657f7)" do
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When solicito embarcar "1" animales en cabina
    solicito_embarcar_numero_animales_animales_en_cabina(1)
    # Then la solicitud es aceptada
    la_solicitud_es_aceptada
  end

  it "Si el número de animales a embarcar en cabina es mayor que uno el embarque no se puede realizar (uid:e5a03b5b-6769-42ee-bfc6-1c7d7b813ff6)" do
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When solicito embarcar "3" animales en cabina
    solicito_embarcar_numero_animales_animales_en_cabina(3)
    # Then la operación es rechazada
    la_operacion_es_rechazada
  end
end