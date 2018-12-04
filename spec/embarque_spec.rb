# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'Embarque' do
  include Actionwords

  it "El Nº de animales con los se puede viaje en el avión es 4 (uid:86fe83c3-8876-483e-8629-eb600fda4165)" do
    # Se permite viajar con 3 animales en bodega y 1 cabina
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When solicito embarcar "3" animales en bodega
    solicito_embarcar_numero_animales_animales_en_bodega(3)
    # And solicito embarcar "1" animales en cabina
    solicito_embarcar_numero_animales_animales_en_cabina(1)
    # Then la solicitud es aceptada
    la_solicitud_es_aceptada
  end

  it "No se puede viajar con 2 animales en cabina y 2 animales en bodega (uid:3da1f3f5-e9fa-41fc-a96a-df714be34595)" do
    # No se permite viajar con 2 animales en cabina y 2 animales en bodega aunque el número no exceda el número máximo de animales en embarque que es 4
    # Given Una solicitud de embarque con animales
    una_solicitud_de_embarque_con_animales
    # When solicito embarcar "2" animales en bodega
    solicito_embarcar_numero_animales_animales_en_bodega(2)
    # And solicito embarcar "2" animales en cabina
    solicito_embarcar_numero_animales_animales_en_cabina(2)
    # Then la solicitud es aceptada
    la_solicitud_es_rechazada
  end
end
