# encoding: UTF-8
require_relative '../src/app_aerolinea'

module Actionwords

  def sut
    @sut ||= Aerolinea.new
  end

  def una_solicitud_de_embarque_con_animales
	 sut.embarque_animal
  end

  def solicito_embarcar_numero_animales_animales_en_cabina(numero_animales = 0)
   sut.embarcar_animal_en_cabina (numero_animales)
  end

  def la_solicitud_es_aceptada
     expect(sut.embarque_aceptado).to be_truthy
  end
  
  def la_solicitud_es_rechazada
     expect(sut.embarque_aceptado).to be_falsey
  end
  
   def el_animal_a_cargar_es_animal(animal="")
      sut.cargar_animal(animal)
  end
  def solicito_embarcar_numero_animales_animales_en_bodega(numero_animales = 0)
      sut.embarcar_animal_en_bodega(numero_animales)
  end
end