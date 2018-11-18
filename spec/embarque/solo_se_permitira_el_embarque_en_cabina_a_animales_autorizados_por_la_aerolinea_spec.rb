# encoding: UTF-8
require 'spec_helper'
require_relative '../actionwords'

describe 'Solo se permitirá el embarque en cabina a animales autorizados por la aerolínea' do
  include Actionwords

  context "Animales no permitidos en cabina" do
    def animales_no_permitidos_en_cabina(animal)
      # Given Una solicitud de embarque con animales
      una_solicitud_de_embarque_con_animales
      # And solicito embarcar "1" animales en cabina
      solicito_embarcar_numero_animales_animales_en_cabina(1)
      # When el animal a cargar es "<animal>"
      el_animal_a_cargar_es_animal(animal)
      # Then la solicitud es rechazada
      la_solicitud_es_rechazada
    end

    it "animal_cacatua (uid:30fd54d6-4708-4a8c-87c5-244e45f18cf7)" do
      animales_no_permitidos_en_cabina('Cacatua')
    end

    it "animal_leon (uid:6e2a169e-7610-4358-99f3-9952d3ca0b62)" do
      animales_no_permitidos_en_cabina('Leon')
    end

    it "animal_elefante (uid:d9afdcb3-ffdc-41f0-89e9-de034fcbcad1)" do
      animales_no_permitidos_en_cabina('Elefante')
    end
  end

  context "Animales permitidos en cabina" do
    def animales_permitidos_en_cabina(animal)
      # Given Una solicitud de embarque con animales
      una_solicitud_de_embarque_con_animales
      # And solicito embarcar "1" animales en cabina
      solicito_embarcar_numero_animales_animales_en_cabina(1)
      # When el animal a cargar es "<animal>"
      el_animal_a_cargar_es_animal(animal)
      # Then la solicitud es aceptada
      la_solicitud_es_aceptada
    end

    it "animal_perro (uid:b22776bf-eceb-4288-b7d8-071b03adb707)" do
      animales_permitidos_en_cabina('Perro')
    end

    it "animal_gato (uid:2fcbd09e-13de-40ad-a517-dfc97eb70078)" do
      animales_permitidos_en_cabina('Gato')
    end
  end
end