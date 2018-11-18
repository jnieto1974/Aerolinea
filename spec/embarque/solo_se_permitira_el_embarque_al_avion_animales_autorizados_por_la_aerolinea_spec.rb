# encoding: UTF-8
require 'spec_helper'
require_relative '../actionwords'

describe 'Solo se permitirá el embarque al avión animales autorizados por la aerolínea' do
  include Actionwords

  context "Animales permitidos en avion" do
    def animales_permitidos_en_avion(animal)
      # Given Una solicitud de embarque con animales
      una_solicitud_de_embarque_con_animales
      # And solicito embarcar "1" animales en bodega
      solicito_embarcar_numero_animales_animales_en_bodega(1)
      # When el animal a carga en avion es "<animal>"
      el_animal_a_carga_en_avion_es_animal(animal)
      # Then la solicitud es aceptada
      la_solicitud_es_aceptada
    end

    it "animal_perro (uid:75321e1f-c94c-4fbd-867a-886b7d1a9769)" do
      animales_permitidos_en_avion('Perro')
    end

    it "animal_gato (uid:49e11d58-252b-4c42-bca2-fde39c740071)" do
      animales_permitidos_en_avion('Gato')
    end

    it "animal_cacatua (uid:9e2c49e0-1883-4d54-b40e-3e16124ae4d5)" do
      animales_permitidos_en_avion('Cacatua')
    end

    it "animal_leon (uid:4cfe5e55-e548-45f9-addd-2092ed180b6f)" do
      animales_permitidos_en_avion('Leon')
    end
  end
end