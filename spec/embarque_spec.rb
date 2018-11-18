# encoding: UTF-8
require 'spec_helper'
require_relative 'actionwords'

describe 'Embarque' do
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

  context "Animales no permitidos en cabina" do
    def animales_no_permitidos_en_cabina(animal)
      # Given Una solicitud de embarque con animales
      una_solicitud_de_embarque_con_animales
      # And solicito embarcar "1" animales en cabina
      solicito_embarcar_numero_animales_animales_en_cabina(1)
      # When el animal a cargar es "<animal>"
      el_animal_a_cargar_es_animal(animal)
      # Then la operación es rechazada
      la_operacion_es_rechazada
    end

    it "animal_leon (uid:6e2a169e-7610-4358-99f3-9952d3ca0b62)" do
      animales_no_permitidos_en_cabina('Leon')
    end

    it "animal_elefante (uid:d9afdcb3-ffdc-41f0-89e9-de034fcbcad1)" do
      animales_no_permitidos_en_cabina('Elefante')
    end
  end
end