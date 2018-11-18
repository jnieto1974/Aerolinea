class Aerolinea
    attr_reader :app_aerolinea, :started
  
   
     
     def initialize
       @embarque_animal_cabina = false    
       @embarque_aceptado = false    	
       @animales_cabina=0
       @animales_bodega=0
       @animles_permitidos_cabina = ['Perro','Gato']
    end
       

    def embarque_animal_cabina
      @embarque_animal_cabina = true
   end       
   
   def embarque_aceptado
      @embarque_aceptado
   end

    def embarcar_animal (num_animales=0)
       if (@embarque_animal_cabina)
            if (num_animales > 1) 
                @embarque_aceptado=false
            else
              @animales_bodega=1
              @embarque_aceptado=true
            end 
      else
            @animales_bodega=num_animales
            @embarque_aceptado=true 
      end    
    end   
  
    def cargar_animal(animal="")
       @embarque_aceptado=false
       @animles_permitidos_cabina.each do |i|
          if (i==animal)
               @embarque_aceptado=true
           end
         end  
    end 
  
end
