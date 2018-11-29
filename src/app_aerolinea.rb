class Aerolinea
    attr_reader :app_aerolinea, :started
  
        
     def initialize
       @embarque_animal = false    
       @embarque_aceptado = false    	
       @animales_cabina=0
       @animales_bodega=0
       @animles_permitidos_cabina = ['Perro','Gato']
       @animles_permitidos_avion = ['Perro','Gato','Cacatua','Leon']
    end
       

    def embarque_animal
      @embarque_animal = true
   end       
   
   def embarque_aceptado
      @embarque_aceptado
   end

    def embarcar_animal_en_cabina (num_animales=0)
       if (@embarque_animal)
              animales=num_animales +   @animales_cabina
              if (animales <=1)
                    @embarque_aceptado=true
                    @animales_cabina = animales
              end                
       else
              @embarque_aceptado=false    
       end     
    end   
  
    def embarcar_animal_en_bodega (num_animales=0)
       if (@embarque_animal)
              animales=num_animales +   @animales_bodega
              if (animales <=3)
                    @embarque_aceptado=true
                    @animales_bodega = animales
              end                
       else
              @embarque_aceptado=false
       end  
    end    
    
    def cargar_animal_cabina(animal="")
       @embarque_aceptado=false
       @animles_permitidos_cabina.each do |i|
          if (i==animal)
               @embarque_aceptado=true
           end
         end  
    end 
  
   def cargar_animal_bodega(animal="")
       @embarque_aceptado=false
       @animles_permitidos_avion.each do |i|
          if (i==animal)
               @embarque_aceptado=true
           end
         end  
    end 
end
