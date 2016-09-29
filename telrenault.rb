# 
#	telrenault 
#	creado por Alberto Francisco Iglesias
#	de la empresa ENTELGY
#	version 0.2
#

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\clases//////////////////////////////////////////////////

#clase switch
class Switch
	
	def initialize(nombre, ip)
		@@nombre = nombre
		@@ip = ip
	
	end
	def text
		puts "ip = #{@@ip}"
	end
	def telnet
		puts "conectando a #{@@nombre}"
		system ("telnet #{@@ip}")
	end
end

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\Funciones//////////////////////////////////////////

#funcion para conectar al router
def conectar(conmutador, conexion, cargar) 		
	if conmutador <= conexion
		  ip = File.open("switch.txt", "r") #seleccion de archivo donde estan las ips
  	  ips = ip.readlines 
	  	sede = Switch.new(cargar[conmutador], ips[conmutador])
  		sede.telnet
  else
   		puts "ERROR ....  switch no encontrado\n\n"
    	system("pause")
  end
end

#funcion solo terciario
def terciario
	puts "\n\n Escoja tipo de red\n"
  #puts "\n\n\n (1) Industrial"
  puts "\n\n\n (1) Terciario"
  puts "\n\n (2) Otros"
end

#funcion solo industrial
def industrial
	puts "\n\n Escoja tipo de red\n"
  puts "\n\n\n (1) Industrial"
  puts "\n\n\n (2) Terciario"
  puts "\n\n (3) Otros"
end

#funcion local tecnico solo para vll
def localvll
	puts "\n\n\n\n\n LOCAL TECNICO A ESCOJER: "
	puts "\n\n (1) local 1"
	puts "\n\n (3) local 3"
	puts "\n\n (4) local 4"
	puts "\n\n (5) local 5"
	puts "\n\n (6) local 6"
	puts "\n\n (7) otros"
end

def error
	puts "error de seleccion de switch"
	system ("pausse")
end

# \\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\main//////////////////////////////

lugar = 0 #seleccion de lugar
tipo  = 0 #seleccion de tipo
sw = 0 #seleccion de switch

#presentación
puts "          **********************************\n"
puts "          *                                *\n"
puts "          *         telrenault             *\n"
puts "          *                                *\n"
puts "          *     propiedad de Entelgy       *\n"
puts "          *                                *\n"
puts "          *    creado por Alberto F.I.     *\n"
puts "          *                                *\n"
puts "          *        Version 0.1             *\n"
puts "          *                                *\n"
puts "          **********************************\n\n"

	
#menu de selección de sede

puts "  Escoje una opcion...\n\n\n\n"
puts "  (1) BAR          (2) MAD\n"
puts "  (3) PAL          (4) SEV\n"
puts "  (5) TAM          (6) VAL\n"
puts "  (7) VLL"
puts 

lugar = gets.to_i #se guarda la variable para seleccionar la sede 

	
#----------- menu para BAR-------------------------------------------------
if lugar == 1
  cargar = ["es-mbar-2ac1-drll", "es-mbar-21", "es-mbar-22"]
  puts "\n\n\n  (1) es-mbar-2ac1-drll"
  puts "\n  (2) es-mbar-21"
  puts "\n  (3) es-mbar-22"
  puts
  sw = gets.to_i

  #menu de switch al que quererse conectar 
  conectar(sw, 3, cargar[sw])

#-----------menu para MAD --------------------------------------------
elsif lugar == 2 
  terciario()
  tipo = gets.to_i
		
  #menu para MAD terciario
  if tipo == 1 
    cargar = ["es-smad-2a1-ter", "es-smad-2j1-ter", "es-smad-2b1-ter", "es-smad-2k1-ter", 
    	"es-smad-2c1-ter", "es-smad-2l1-ter", "es-smad-2d1-ter", "es-smad-2m1-ter", "es-smad-2e1-ter", 
    	"es-smad-2q1-ter", "es-smad-2f1-ter", "es-smad-2r1-ter", "es-smad-2g1-ter", "es-smad-2s1-ter", 
    	"es-smad-2h1-ter", "es-mmad-2sacore1-ter", "es-smad-2i1-ter", "es-mmad-2acore2-ter"]
    puts "\n\n\n (1) es-smad-2a1-ter           (9) es-smad-2j1-ter"
    puts "\n (2) es-smad-2b1-ter           (10) es-smad-2k1-ter"
		puts "\n (3) es-smad-2c1-ter           (11) es-smad-2l1-ter"
		puts "\n (4) es-smad-2d1-ter           (12) es-smad-2m1-ter"
		puts "\n (5) es-smad-2e1-ter           (13) es-smad-2q1-ter"
		puts "\n (6) es-smad-2f1-ter           (14) es-smad-2r1-ter"
		puts "\n (7) es-smad-2g1-ter           (15) es-smad-2s1-ter"
		puts "\n (8) es-smad-2h1-ter           (16) es-mmad-2sacore1-ter"
		puts "\n (9) es-smad-2i1-ter           (18) es-mmad-2acore2-ter"

		sw = gets.to_i
		temporal = sw + 5
	  conectar(temporal, 18, cargar[sw] )

    #menu para MAD otros
  elsif tipo == 2
  	cargar = ["es-mad-21", "es-mad-22"]
		puts "\n\n\n (1) es-mad-21"
		puts "\n (2) es-mad-22"
	  
	  sw = gets.to_i
	  temporal = sw + 25
	  conectar(sw, 2, cargar[sw])
		
	else 

  
 		
#---------------menu para TAM--------------------------------------

elsif lugar == 4
  terciario()
	tipo = gets.to_i	
	
	#menu TAM terciario
	if tipo == 1
		cargar = ["es-tam-2da1-ter","es-tam-2de-ter", "es-tam2-da2-ter", 
			"es-tam-2df-ter", "es-mtad-2dacore1-ter", "es-tam-2dc-ter", 
			"es-mtam-2dgcore2-ter", "es-tam-2dd-ter"] 
		puts "\n\n\n (1) es-tam-2da1-ter     	(6) es-tam-2de-ter"
		puts "\n (2) es-tam2-da2-ter 		(7) es-tam-2df-ter"
		puts "\n (3) es-tam-2db-ter 		(8) es-mtad-2dacore1-ter"
		puts "\n (4) es-tam-2dc-ter 		(9) es-mtam-2dgcore2-ter"
		puts "\n (5) es-tam-2dd-ter"
		
		sw = gets.to_i
	  temporal = sw + 29
	  conectar(sw, 9, cargar[sw])
		

		
		#menu TAM otros
	elsif tipo == 2
		cargar = ["es-rtam-21", "es-rtam-22"]	
		puts "\n\n\n (1) es-rtam-21"
		puts "\n (2) es-rtam-22"
		
		sw = gets.to_i
	  temporal = sw + 29
	  conectar(sw, 2, cargar[sw])		
	
	else
		error()
	end

#------------------------------------menu para VAL-------------------------------
	
elsif lugar == 6
		
	puts "\n\n\n (1) es-rval-21"
	puts "\n (2) es-rval-22"
	
	sw = gets.to_i
	temporal = sw + 44
	conectar(sw, 2, cargar[sw])

  
#------------------------------------menu para PAL -----------------------------		
elsif lugar == 3
	
	industrial()
  
  #menu PAL industrial
	if tipo = 1
		cargar = ["es-spal-7a1-ind", "es-spal-9a1-ind", "es-mpal-7lcore-ind", "es-spal-7b1-ind", 
			"es-spal-9b1-ind", "es-mpal-7hcore-ind" "es-spal-7c1-ind", "es-spal-9b2-ind", 
			"es-spal-7h-svr1-ind", "es-spal-7d1-ind", "es-spal-9c1-ind", "es-spal-7h-svr2-ind", 
			"es-spal-7d2-ind", "es-spal-9d1-ind", "es-spal-7l-svr1-ind", "es-spal-7e1-ind", 
			"es-spal-9e1-ind", "es-spal-7l-svr2-ind", "es-spal-7f1-ind", "es-spal-9e2-ind", 
			"es-spal-dissol-7c1-ind", "es-spal-7g1-ind", "es-spal-9f1-ind", "es-spal-dissol-7d1-ind", 
			"es-spal-7h1-ind", "es-spal-9g1-ind", "es-spal-dispin-7f1-ind", "es-spal-7i1-ind",
			"es-spal-9g2-ind", "es-spal-dismon-7h1-ind", "es-spal-7i2-ind", "es-spal-9h1-ind",
			"es-spal-7j1-ind", "es-spal-9i1-ind", "es-spal-7k1-ind", "es-spal-9j1-ind", 
			"es-spal-7m1-ind", "es-spal-9j2-ind", "es-spal-7n1-ind", "es-spal-9k1-ind", 
			"es-spal-7o1-ind", "es-spal-9n1-ind", "es-spal-7p1-ind", "es-spal-9o1-ind", 
			"es-spal-7q1-ind", "es-spal-9p1-ind", "es-spal-7r1-ind", "es-spal-9p2-ind", 
			"es-spal-7s1-ind", "es-spal-9q1-ind", "es-spal-7t1-ind", "es-spal-9r1-ind", 
			"es-spal-7u1-ind", "es-spal-9s1-ind", "es-spal-7v1-ind", "es-spal-9w1-ind", 
			"es-spal-7w1-ind", "es-spal-9x1-ind", "es-spal-7x1-ind", "es-spal-7y1-ind", 
			"(27) es-spal-7z1-ind", "(28) es-spal-7z2-ind"]

		puts "\n\n\n (1)  es-spal-7a1-ind      (29) es-spal-9a1-ind     (53) es-mpal-7lcore-ind"
		puts "\n (2)  es-spal-7b1-ind      (30) es-spal-9b1-ind     (54) es-mpal-7hcore-ind"
		puts "\n (3)  es-spal-7c1-ind      (31) es-spal-9b2-ind     (55) es-spal-7h-svr1-ind"
		puts "\n (4)  es-spal-7d1-ind      (32) es-spal-9c1-ind     (56) es-spal-7h-svr2-ind"
		puts "\n (5)  es-spal-7d2-ind      (33) es-spal-9d1-ind     (57) es-spal-7l-svr1-ind"
		puts "\n (6)  es-spal-7e1-ind      (34) es-spal-9e1-ind     (58) es-spal-7l-svr2-ind"
		puts "\n (7)  es-spal-7f1-ind      (35) es-spal-9e2-ind     (59) es-spal-dissol-7c1-ind"
		puts "\n (8)  es-spal-7g1-ind      (36) es-spal-9f1-ind     (60) es-spal-dissol-7d1-ind"
    puts "\n (9)  es-spal-7h1-ind      (37) es-spal-9g1-ind     (61) es-spal-dispin-7f1-ind"
    puts "\n (10) es-spal-7i1-ind      (38) es-spal-9g2-ind     (62) es-spal-dismon-7h1-ind"
    puts "\n (11) es-spal-7i2-ind      (39) es-spal-9h1-ind"
    puts "\n (12) es-spal-7j1-ind      (40) es-spal-9i1-ind"
    puts "\n (13) es-spal-7k1-ind      (41) es-spal-9j1-ind"
    puts "\n (14) es-spal-7m1-ind      (42) es-spal-9j2-ind"
    puts "\n (15) es-spal-7n1-ind      (43) es-spal-9k1-ind"
    puts "\n (16) es-spal-7o1-ind      (44) es-spal-9n1-ind"
    puts "\n (17) es-spal-7p1-ind      (45) es-spal-9o1-ind"
  	puts "\n (18) es-spal-7q1-ind      (46) es-spal-9p1-ind"
    puts "\n (19) es-spal-7r1-ind      (47) es-spal-9p2-ind"
    puts "\n (20) es-spal-7s1-ind      (48) es-spal-9q1-ind"
    puts "\n (21) es-spal-7t1-ind      (49) es-spal-9r1-ind"
    puts "\n (22) es-spal-7u1-ind      (50) es-spal-9s1-ind"
    puts "\n (23) es-spal-7v1-ind      (51) es-spal-9w1-ind"
    puts "\n (24) es-spal-7w1-ind      (52) es-spal-9x1-ind"
    puts "\n (25) es-spal-7x1-ind"
    puts "\n (26) es-spal-7y1-ind"
    puts "\n (27) es-spal-7z1-ind"
    puts "\n (28) es-spal-7z2-ind"

    sw = gets.to_i
		temporal = sw + 48
		conectar(sw, 62, cargar[sw])

	#menu PAL terciario
	elsif tipo == 2
		cargar = ["es-spal-7a1-ter", "es-spal-9a1-ter", "es-mpal-7lcore-ter", "es-spal-7b1-ter", 
			"es-spal-9b1-ter", "es-mpal-7hcore-ter", "es-spal-7c1-ter", "es-spal-9c1-ter",
			"es-spal-7h-srv1-ter", "es-spal-7d1-ter", "es-spal-9d1-ter", "es-spal-7h-srv2-ter",
			"es-spal-7d2-ter", "es-spal-9e1-ter", "es-spal-7l-srv1-ter", "es-spal-7e1-ter",
			"es-spal-9f1-ter", "es-spal-7l-srv2-ter", "es-spal-7f1-ter", "es-spal-9g1-ter",
			"es-spal-dissol-7c2-ter", "es-spal-7g1-ter", "es-spal-9h1-ter", "es-spal-dissol-7d2-ter",
			"es-spal-7h1-ter", "es-spal-9i1-ter", "es-spal-dispin-7f1-ter", "es-spal-7i1-ter",
			"es-spal-9j1-ter", "es-spal-dismon-7h1-ter", "es-spal-7i2-ter", "es-spal-9k1-ter",
			"es-spal-7j1-ter", "es-spal-9l1-ter", "es-spal-7j3-ter", "(41) es-spal-9m1-ter",
			"es-spal-7k1-ter", "es-spal-9n1-ter", "es-spal-7k2-ter" "es-spal-9o1-ter", "es-spal-7l1-ter",
			"es-spal-9n1-ind", "es-spal-7l2-ter", "es-spal-9p1-ter", "es-spal-7m1-ter", "es-spal-9q1-ter",
			"es-spal-7n1-ter", "es-spal-9r1-ter", "es-spal-7r1-ter", "es-spal-9s1-ter", "es-spal-7s1-ter",
			"es-spal-9t1-ter", "es-spal-7t1-ter", "es-spal-9u1-ter", "es-spal-7u1-ter", "es-spal-9w1-ter",
			"es-spal-7v1-ter", "es-spal-9x1-ter", "es-spal-7w1-ter", "es-spal-7x1-ter", "es-spal-7y1-ter",
			"es-spal-7z1-ter"]
  	puts "\n\n\n (1)  es-spal-7a1-ter      (29) es-spal-9a1-ter     (53) es-mpal-7lcore-ter");
    puts "\n (2)  es-spal-7b1-ter      (30) es-spal-9b1-ter     (54) es-mpal-7hcore-ter");
    puts "\n (3)  es-spal-7c1-ter      (31) es-spal-9c1-ter     (55) es-spal-7h-srv1-ter");
    puts "\n (4)  es-spal-7d1-ter      (32) es-spal-9d1-ter     (56) es-spal-7h-srv2-ter");
    puts "\n (5)  es-spal-7d2-ter      (33) es-spal-9e1-ter     (57) es-spal-7l-srv1-ter");
    puts "\n (6)  es-spal-7e1-ter      (34) es-spal-9f1-ter     (58) es-spal-7l-srv2-ter");
    puts "\n (7)  es-spal-7f1-ter      (35) es-spal-9g1-ter     (59) es-spal-dissol-7c2-ter");
    puts "\n (8)  es-spal-7g1-ter      (36) es-spal-9h1-ter     (60) es-spal-dissol-7d2-ter");
    puts "\n (9)  es-spal-7h1-ter      (37) es-spal-9i1-ter     (61) es-spal-dispin-7f1-ter");
    puts "\n (10) es-spal-7i1-ter      (38) es-spal-9j1-ter     (62) es-spal-dismon-7h1-ter");
    puts "\n (11) es-spal-7i2-ter      (39) es-spal-9k1-ter"
    puts "\n (12) es-spal-7j1-ter      (40) es-spal-9l1-ter"
    puts "\n (13) es-spal-7j3-ter      (41) es-spal-9m1-ter"
    puts "\n (14) es-spal-7k1-ter      (42) es-spal-9n1-ter"
    puts "\n (15) es-spal-7k2-ter      (43) es-spal-9o1-ter"
    puts "\n (16) es-spal-7l1-ter      (44) es-spal-9n1-ind"
    puts "\n (17) es-spal-7l2-ter      (45) es-spal-9p1-ter"
    puts "\n (18) es-spal-7m1-ter      (46) es-spal-9q1-ter"
    puts "\n (19) es-spal-7n1-ter      (47) es-spal-9r1-ter"
    puts "\n (20) es-spal-7r1-ter      (48) es-spal-9s1-ter"
    puts "\n (21) es-spal-7s1-ter      (49) es-spal-9t1-ter"
    puts "\n (22) es-spal-7t1-ter      (50) es-spal-9u1-ter"
    puts "\n (23) es-spal-7u1-ter      (51) es-spal-9w1-ter"
    puts "\n (24) es-spal-7v1-ter      (52) es-spal-9x1-ter"
    puts "\n (25) es-spal-7w1-ter"
    puts "\n (26) es-spal-7x1-ter"
    puts "\n (27) es-spal-7y1-ter"
    puts "\n (28) es-spal-7z1-ter"
    
    sw = gets.to_i
		temporal = sw + 114
		conectar(sw, 52, cargar[sw])

            
	#menu PAL otros
  elsif tipo == 3
    carga = ["es-spal-7c-RedConsolas", "es-spal-7h-iao", "es-spal-7l-iao", 
    	"es-spal-7S-iao", "es-rpal-21", "es-rpal-22"]    
    puts "\n\n\n (1) es-spal-7c-RedConsolas"
    puts "\n (2) es-spal-7h-iao"
    puts "\n (3) es-spal-7l-iao"
    puts "\n (4) es-spal-7S-iao"
    puts "\n (5) es-rpal-21"
    puts "\n (6) es-rpal-22"
            
    sw = gets.to_i
		temporal = sw + 181
		conectar(sw, 6, cargar[sw])

	else
		error()
	end


#--------------------------------menu SEV industrial--------------------------------------------------------------------------
elsif
	industial()

	#menu SEV industrial
	if lugar == 1 
    carga = ["es-ssev-8b1-ind", "es-msev-8qcore1-ind", "es-ssev-8c1-ind", "es-msev-8qcore2-ind",
     "es-ssev-8c2-ind", "es-ssev-8g-svr1-ind", "es-ssev-8d1-ind", "es-ssev-8g-svr2-ind",
     "es-ssev-8e1-ind", "es-ssev-8q-svr1-ind", "es-ssev-8f1-ind", "es-msev-8q-rvr2-ind",
     "es-ssev-8i1-ind", "es-ssev-8i2-ind", "es-ssev-8k1-ind", "es-ssev-8l1-ind", "es-ssev-8m1-ind",
     "es-ssev-8n1-ind", "es-ssev-8o1-ind", "es-ssev-8p1-ind", "es-ssev-8p2-ind", "es-ssev-8q1-ind",
     "es-ssev-8r1-ind"]      
  	puts "\n\n\n (1) es-ssev-8b1-ind      (18) es-msev-8qcore1-ind"
		puts "\n (2)  es-ssev-8c1-ind      (19) es-msev-8qcore2-ind" 
		puts "\n (3)  es-ssev-8c2-ind      (20) es-ssev-8g-svr1-ind"
  	puts "\n (4)  es-ssev-8d1-ind      (21) es-ssev-8g-svr2-ind"
		puts "\n (5)  es-ssev-8e1-ind      (22) es-ssev-8q-svr1-ind"
		puts "\n (6)  es-ssev-8f1-ind      (23) es-msev-8q-rvr2-ind"
		puts "\n (7)  es-ssev-8i1-ind"
 		puts "\n (8)  es-ssev-8i2-ind"
		puts "\n (9)  es-ssev-8k1-ind"
		puts "\n (10) es-ssev-8l1-ind"
 		puts "\n (11) es-ssev-8m1-ind"  
		puts "\n (12) es-ssev-8n1-ind"  
 		puts "\n (13) es-ssev-8o1-ind" 
		puts "\n (14) es-ssev-8p1-ind" 
 		puts "\n (15) es-ssev-8p2-ind"
		puts "\n (16) es-ssev-8q1-ind" 
		puts "\n (17) es-ssev-8r1-ind"
    
    sw = gets.to_i
		temporal = sw + 189
		conectar(sw, 23, cargar[sw])
         	
  #menu SEV terciario
	elsif tipo == 2
		cargar = ["es-ssev-8a1-ter", "es-ssev-8dr5-ter", "es-ssev-8b1-ter", "es-msev-8gcore-ter",
		 "es-ssev-8b2-ter", "es-msev-8qcore-ter", "es-ssev-8c1-ter", "es-ssev-8g-svr1-ter",
		 "es-ssev-8d1-ter", "es-ssev-8g-svr2-ter", "es-ssev-8e1-ter", "es-ssev-8q-svr1-ter", 
		 "es-ssev-8f1-ter", "es-ssev-8q-svr2-ter", "es-ssev-8g1-ter", "es-ssev-8i1-ter", 
		 "es-ssev-8k1-ter", "es-ssev-8l1-ter", "es-ssev-8m1-ter", "es-ssev-8n1-ter", 
		 "es-ssev-8o1-ter", "es-ssev-8p1-ter", "es-ssev-8q1-ter", "es-ssev-8r1-ter"]
		puts "\n\n\n (1) es-ssev-8a1-ter       (18) es-ssev-8dr5-ter"
		puts "\n (2) es-ssev-8b1-ter       (19) es-msev-8gcore-ter"
		puts "\n (3) es-ssev-8b2-ter       (20) es-msev-8qcore-ter" 
		puts "\n (4) es-ssev-8c1-ter       (21) es-ssev-8g-svr1-ter"
		puts "\n (5) es-ssev-8d1-ter       (22) es-ssev-8g-svr2-ter"
		puts "\n (6) es-ssev-8e1-ter       (23) es-ssev-8q-svr1-ter"
		puts "\n (7) es-ssev-8f1-ter       (24) es-ssev-8q-svr2-ter" 
		puts "\n (8) es-ssev-8g1-ter"
		puts "\n (9) es-ssev-8i1-ter" 
		puts "\n (10) es-ssev-8k1-ter"
		puts "\n (11) es-ssev-8l1-ter"
		puts "\n (12) es-ssev-8m1-ter"  
		puts "\n (13) es-ssev-8n1-ter"
		puts "\n (14) es-ssev-8o1-ter" 
		puts "\n (15) es-ssev-8p1-ter"   
		puts "\n (16) es-ssev-8q1-ter"
		puts "\n (17) es-ssev-8r1-ter"
    
    sw = gets.to_i
		temporal = sw + 214
		conectar(sw, 24, cargar[sw])     
    
		
	#menu SEV otros 
	elsif tipo == 3
		cargar = ["es-ssev-8a-iao", "es-ssev-8g-iao", "es-rsev-21", "es-rsev-2"]
		puts "\n\n\n (1) es-ssev-8a-iao"
		puts "\n (2) es-ssev-8g-iao"	
		puts "\n (3) es-rsev-21"
		puts "\n (4) es-rsev-22"
    
    sw = gets.to_i
		temporal = sw + 240
		conectar(sw, 4, cargar[sw])         
  
  else
  	error()
  end
#------------------menu VLL -----------------------------

elsif lugar == 7
	industrial()

	#industrial 
	if tipo == 1
		local_vll()
		local_vll = gets.to_i
    
    #local 1
		if local_vll == 1
				
			puts "\n\n\n (1) )es-svll-1a1-ind"
			puts "\n (2) es-svll-1c1-ind"
			puts "\n (3) es-svll-1f1-ind"
			puts "\n (4) es-svll-1h1-ind"
			puts "\n (5) es-svll-1j1-ind"
			puts "\n (6) es-svll-1o1-ind"
				
			sw = gets.to_i
			temporal = sw + 247
			conectar(sw, 6, cargar[sw])         

	
		#local 3
		elsif local_vll == 2 || local_vll == 3
				
			puts "\n\n\n (1) es-svll-3a1-ind       (10) es-svll-3n1-ind "
			puts "\n (2) es-svll-3c1-ind       (11) es-svll-3o1-ind "
			puts "\n (3) es-svll-3e1-ind       (12) es-svll-3p1-ind "
			puts "\n (4) es-svll-3f1-ind       (13) es-svll-3r1-ind "
			puts "\n (5) es-svll-3g1-ind       (14) es-svll-3s1-ind "
			puts "\n (6) es-svll-3h1-ind       (15) es-svll-3v1-ind "
			puts "\n (7) es-svll-3j1-ind       (16) es-svll-3x1-ind "
 			puts "\n (8) es-svll-3l1-ind "
			puts "\n (9) es-svll-3m1-ind "
				
			sw = gets.to_i
			temporal = sw + 264
			conectar(sw, 16, cargar[sw])         

				
		#local 4	
		elsif local_vll == 4
				
			puts "\n\n\n (1)  es-svll-4a1-ind       (15) es-svll-4k3-ind"
			puts "\n (2)  es-svll-4b1-ind      (16) es-svll-4l1-ind"	
			puts "\n (3)  es-svll-4b2-ind      (17) es-svll-4m1-ind"
			puts "\n (4)  es-svll-4c1-ind      (18) es-svll-4n1-ind"
			puts "\n (5)  es-svll-4c2-ind      (19) es-svll-4n2-ind"
			puts "\n (6)  es-svll-4d1-ind      (20) es-svll-4o1-ind"
			puts "\n (7)  es-svll-4e1-ind      (21) es-svll-4p1-ind"
			puts "\n (8)  es-svll-4g1-ind      (22) es-svll-4p2-ind"
			puts "\n (9)  es-svll-4g2-ind      (23) es-svll-4q1-ind"
			puts "\n (10) es-svll-4h1-ind      (24) es-svll-4r1-ind"
			puts "\n (11) es-svll-4i1-ind      (25) es-svll-4s1-ind"
			puts "\n (12) es-svll-4j1-ind      (26) es-svll-4u1-ind"
			puts "\n (13) es-svll-4k1-ind      (27) es-svll-4v1-ind"
			puts "\n (14) es-svll-4k2-ind      (28) es-svll-4y1-ind"
				
			sw = gets.to_i
			temporal = sw + 264 #cambiar este valor
			conectar(sw, 16, cargar[sw])         


		#local 5
		elsif local_vll == 5

			puts "\n\n\n (1)  es-svll-5a1-ind      (14) es-svll-5r1-ind"
			puts "\n (2)  es-svll-5b1-ind      (15) es-svll-5r2-ind" 
			puts "\n (3)  es-svll-5d1-ind      (16) es-svll-5r3-ind"
			puts "\n (4)  es-svll-5f1-ind      (17) es-svll-5s1-ind "
			puts "\n (5)  es-svll-5f2-ind      (18) es-svll-5s2-ind "
			puts "\n (6)  es-svll-5h1-ind      (19) es-svll-5t1-ind"
			puts "\n (7)  es-svll-5i1-ind      (20) es-svll-5v1-ind "
			puts "\n (8)  es-svll-5k1-ind      (21) es-svll-5v2-ind "
			puts "\n (9)  es-svll-5k2-ind      (22) es-svll-5x1-ind "
			puts "\n (10) es-svll-5l1-ind      (23) es-svll-5y1-ind "
			puts "\n (11) es-svll-5n1-ind      (24) es-svll-5z1-ind "
			puts "\n (12) es-svll-5o1-ind      (25) es-svll-5z2-ind "
			puts "\n (13) es-svll-5p1-ind "
 		
 			sw = gets.to_i
			temporal = sw + 264 #cambiar este valor
			conectar(sw, 25, cargar[sw])  
			
		
		#local 6
		elsif local_vll == 6

			puts "\n\n\n (1) es-svll-6a1-ind     (6)  es-svll-6i1-ind "
			puts "\n (2) es-svll-6b1-ind     (7)  es-svll-6j1-ind "
			puts "\n (3) es-svll-6c1-ind     (8)  es-svll-6k1-ind "
			puts "\n (4) es-svll-6e1-ind     (9)  es-svll-6l1-ind "
			puts "\n (5) es-svll-6h1-ind     (10) es-svll-6m1-ind " 
	 		
	 		sw = gets.to_i
			temporal = sw + 264 #cambiar este valor
			conectar(sw, 25, cargar[sw]) 
 			
 		else
 			error()
 		end
 	else
 		error()
 	end






=begin
  
		     
/*		   
es-svll-1b-redsalvados-a 
 es-svll-5q-redsalvados-a 
 es-svll-5r-redsalvados-a 



es-svll-1a1-ter 

es-svll-1c1-ter 
es-svll-1d1-ter 
es-svll-1e1-ter 
 
es-svll-1f1-ter 
es-svll-1g1-ter 
es-svll-1h1-ter 
es-svll-1h2-ter 
 
es-svll-1i2-ter 
es-svll-1i4-toip 
es-svll-1j1-ter 

es-svll-1k1-ter 
es-svll-1m1-ter 
es-svll-1n1-ter 
es-svll-1o2-toip 

 es-svll-1o2-ter 
 es-svll-1q1-ter 
 es-svll-1r1-ter 
es-svll-3a1-ter 


es-svll-3c1-ter 
es-svll-3e1-ter 
 
es-svll-3f1-ter 

 
es-svll-3g1-ter 
es-svll-3h1-ter 

es-svll-3j1-ter 
 
es-svll-3l1-ter 
es-svll-3m1-ter 
 
es-svll-3n1-ter 

es-svll-3o1-ter 

 es-svll-3p1-ter 

es-svll-3q1-ter 
es-svll-3r1-ter 

 es-svll-3s1-ter 

es-svll-3t1-ter 
 es-svll-3u1-ter 
es-svll-3v1-ter 

 es-svll-3x1-ter 

 
es-svll-4a1-ter 


es-svll-4b1-ter 
 

es-svll-4c1-ter 
 
es-svll-4d1-ter 
es-svll-4d2-ter 

es-svll-4e1-ter 
 es-svll-4f2-ter 


es-svll-4g1-ter 
es-svll-4h1-ter 


es-svll-4i2-ter 
es-svll-4j1-ter 


 
 
es-svll-4k1-ter 

es-svll-4l1-ter 

es-svll-4m2-ter 

 
es-svll-4n2-ter 
 
es-svll-4o1-ter 
 

es-svll-4p1-ter 
 
es-svll-4q1-ter 

es-svll-4r1-ter 
 
es-svll-4s1-ter 
es-svll-4t1-ter 
 
es-svll-4u1-ter 
 
es-svll-4v1-ter 
es-svll-4x1-ter 
 
es-svll-4y2-ter 
es-svll-5a1-ter 
es-svll-5a1-ind 
es-svll-5b1-ind 
es-svll-5b1-te
es-svll-5c1-ter 
es-svll-5d1-ter 
es-svll-5d1-ind 
es-svll-5e1-ter 
es-svll-5f1-ter 
es-svll-5f1-ind 
es-svll-5f2-ind 
es-svll-5g1-ter 
es-svll-5h1-ter 
es-svll-5h1-ind 
es-svll-5i1-ind 
es-svll-5i1-ter 
es-svll-5i2-ter 
es-svll-5i3-ter 
es-svll-5j1-ter 
es-svll-5k1-ter 
es-svll-5k1-ind 
es-svll-5k2-ind 
es-svll-5l1-ind 
es-svll-5m1-ter 
es-svll-5n1-ter 
es-svll-5n1-ind 
es-svll-5o1-ter 
es-svll-5o1-ind 
es-svll-5o2-ter 
es-svll-5p1-ter 
es-svll-5p1-ind 
es-svll-5r1-ind 
es-svll-5r2-ind 
es-svll-5r3-ter 
es-svll-5r3-ind 
es-svll-5s1-ind 
es-svll-5s2-ind 
es-svll-5s2-ter 
es-svll-5t1-ter 
es-svll-5t1-ind 
es-svll-5u1-ter 
es-svll-5v1-ter 
es-svll-5v1-ind 
es-svll-5v2-ind 
es-svll-5w1-ter 
es-svll-5x1-ter 
es-svll-5x1-ind 
es-svll-5y1-ter 
es-svll-5y1-ind 
es-svll-5z1-ter 
es-svll-5z1-ind 
es-svll-5z2-ind 
es-svll-6a1-ind 
es-svll-6a1-ter 
es-svll-6b1-ter 
es-svll-6b1-ind 
es-svll-6c1-ter 
es-svll-6c1-ind 
es-svll-6e1-ind 
es-svll-6e1-ter 
es-svll-6f1-ter 
es-svll-6h1-ter 
es-svll-6h1-ind 
es-svll-6i1-ter 
es-svll-6i1-ind 
es-svll-6j1-ind 
es-svll-6j2-ter 
es-svll-6k1-ter 
es-svll-6k1-ind 
es-svll-6l1-ter 
es-svll-6l1-ind 
es-svll-6m1-ter 
es-svll-6m1-ind 
es-svll-pistapruebas-ter 
es-mvll-5qcore-ter 
es-mvll-1bcore-ter 
es-mvll-1bcore-ind 
es-mvll-5qcore-ind 
es-svll-1b-svr1-ind 
es-svll-1b-svr2-ind 
es-svll-5q-svr1-ind 
es-svll-5q-svr2-ind 
es-svll-1b-svr1-ter 
es-svll-1b-svr2-ter 
es-svll-5q-svr1-ter 
es-svll-5q-svr2-ter 
es-svll-discar-3c-ter 
es-svll-discar-3c1-ind 
es-svll-discar-3e-ter 
es-svll-discar-3e1-ind 
es-svll-disest-1b-ter 
es-svll-disest-1b1-ind 
es-svll-disest-1c-ter 
es-svll-disest-1c1-ind 
es-svll-dismon-4a-ter 
es-svll-dismon-4a1-ind 
es-svll-dismon-4a2-ind 
es-svll-dismon-4c-ter 
es-svll-dismon-4c1-ind 
es-svll-dismon-4c2-ind 
es-svll-dismon-6a1-ind 
es-svll-dismon-6b1-ind 
es-svll-dismot-5d-ter 
es-svll-dismot-5d1-ind 
es-svll-dismot-5k-ter 
es-svll-dismot-5k1-ind 
es-svll-01 
es-svll-02 
*
		   
		 
		 
		 
		 
		 
        
    }
	
	
	else {
		printf(" seleccion erronea, se cierra el programa");
		bugtracker();
		system("pause");
	}							
	
	return 0;
		
}

//funcion menu local vall 
void localvall()
{
	
	
	
	//return (void);		
}

void pront(){
	
	printf("\n\n >>> ");

}

void swerror(){
	
	printf("\n\nERROR ....  switch no encontrado");
	bugtracker();
	system("pause");
}

void bugtracker(){
	
	printf("\n\nbugtracker albertofracisco.iglesias@entelgy.com\n\n");
	
}
=end

elsif 
	error()
end

