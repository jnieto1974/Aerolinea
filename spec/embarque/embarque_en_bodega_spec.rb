# encoding: UTF-8
require 'spec_helper'
require_relative '../actionwords'

describe 'Embarque en Bodega' do
  include Actionwords

  it "Nº máximo animales con los que se puede viajar en bodega es 3 (uid:4874861c-99e0-43e4-b964-86438d2f280b)" do
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When solicito embarcar "3" animales en bodega
    solicito_embarcar_numero_animales_animales_en_bodega(3)
    # Then la solicitud es aceptada
    la_solicitud_es_aceptada
  end

  it "Si el Nº de animales con los que se solicita viajar en bodega es 4 la operación no es permitida (uid:7eeb5490-effa-4704-8a8e-49ef82c4fb55)" do
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When solicito embarcar "4" animales en bodega
    solicito_embarcar_numero_animales_animales_en_bodega(4)
    # Then la operación es rechazada
    la_operacion_es_rechazada
  end
end