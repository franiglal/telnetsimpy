# 
#	telrenault 
#	creado por Alberto Francisco Iglesias
#	de la empresa ENTELGY
#	version 0.2
#

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\CLASES//////////////////////////////////////////////////

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

#\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\METODOS//////////////////////////////////////////

#metodo para conectar al switches de renault
def conectar(menu, conmutador, conexion, cargar) 		
	if menu <= conexion
		  ip = File.open("switch.txt", "r") #seleccion de archivo donde estan las ips
  	  ips = ip.readlines 
	  	sede = Switch.new(cargar, ips[conmutador])
  		sede.telnet
  else
   		puts "ERROR ....  switch no encontrado\n\n"
    	system("pause")
  end
end

#metodo solo terciario
def terciario
	puts "\n\n\n Escoja tipo de red\n"
  #puts "\n\n\n (1) Industrial"
  puts "\n\n\n (1) Terciario"
  puts "\n\n\n (2) Otros\n\n\n\n\n\n"
  puts
end

#metodo solo industrial
def industrial
	puts "\n\n Escoja tipo de red\n\n"
  puts "\n\n (1) Industrial"
  puts "\n\n (2) Terciario"
  puts "\n\n (3) Otros"
  puts "\n\n\n\n"
end

#metods local tecnico solo para vll
def localvll
	puts "\n\nLOCAL TECNICO A ESCOJER: "
	puts "\n (1) local 1"
	puts "\n (3) local 3"
	puts "\n (4) local 4"
	puts "\n (5) local 5"
	puts "\n (6) local 6"
	puts "\n (7) otros"
	puts "\n\n\n\n\n"
end

def error
	puts "\n\n"
	puts "error de seleccion de switch"
	system ("pausse")
end

def bugtracker
	puts " albertofrancisco.iglesias@entelgy.com"
	puts " alberto.francisco-iglesias-renexter@renault.com"
	puts ""
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
puts "          *        Version 0.2             *\n"
puts "          *                                *\n"
puts "          **********************************\n\n"
bugtracker
	
#menu de selección de sede

puts "  Escoje una opcion...\n\n\n\n"
puts "  (1) BAR          (5) SEV\n"
puts "  (2) MAD          (6) VAL\n"
puts "  (3) PAL          (7) VLL\n"
puts "  (4) TAM"
puts 
print " >>> " 
lugar = gets.to_i #se guarda la variable para seleccionar la sede 

	
#----------- menu para BAR-------------------------------------------------
if lugar == 1
  cargar = ["es-mbar-2ac1-drll", "es-mbar-21", "es-mbar-22"]
  puts " \n\n--------------- SEDE TAM ----------------------\n\n\n\n\n"
  puts "  (1) es-mbar-2ac1-drll\n\n"
  puts "  (2) es-mbar-21\n\n"
  puts "  (3) es-mbar-22\n\n\n\n\n\n\n\n\n\n\n\n"
  puts
  print " BAR >>>  "
  sw = gets.to_i
  temporal = sw
  #menu de switch al que quererse conectar 
  conectar(sw, temporal, 3, cargar[sw-1])

#-----------menu para MAD --------------------------------------------
elsif lugar == 2 
	puts " \n\n--------------- SEDE MAD -------------------\n\n\n\n\n"
  terciario
  print " MAD >>> "
  tipo = gets.to_i
		
  #menu para MAD terciario
  if tipo == 1 
    cargar = ["es-smad-2a1-ter", "es-smad-2j1-ter", "es-smad-2b1-ter", "es-smad-2k1-ter", 
    	"es-smad-2c1-ter", "es-smad-2l1-ter", "es-smad-2d1-ter", "es-smad-2m1-ter", "es-smad-2e1-ter", 
    	"es-smad-2q1-ter", "es-smad-2f1-ter", "es-smad-2r1-ter", "es-smad-2g1-ter", "es-smad-2s1-ter", 
    	"es-smad-2h1-ter", "es-mmad-2sacore1-ter", "es-smad-2i1-ter", "es-mmad-2acore2-ter"]
    puts " \n\n--------------- SEDE MAD terciario --------------------\n\n\n"
    puts "\n\n (1) es-smad-2a1-ter           (9) es-smad-2j1-ter"
    puts "\n (2) es-smad-2b1-ter           (10) es-smad-2k1-ter"
		puts "\n (3) es-smad-2c1-ter           (11) es-smad-2l1-ter"
		puts "\n (4) es-smad-2d1-ter           (12) es-smad-2m1-ter"
		puts "\n (5) es-smad-2e1-ter           (13) es-smad-2q1-ter"
		puts "\n (6) es-smad-2f1-ter           (14) es-smad-2r1-ter"
		puts "\n (7) es-smad-2g1-ter           (15) es-smad-2s1-ter"
		puts "\n (8) es-smad-2h1-ter           (16) es-mmad-2sacore1-ter"
		puts "\n (9) es-smad-2i1-ter           (18) es-mmad-2acore2-ter"
		puts
		print " MAD/terciario >>> "
		sw = gets.to_i
		temporal = sw + 5
		conectar(sw, temporal, 18, cargar[sw] )

    #menu para MAD otros
  elsif tipo == 2
  	puts " \n\n--------------- SEDE MAD otros --------------------\n\n\n\n\n"
  	cargar = ["es-mad-21", "es-mad-22"]
		puts "\n\n\n (1) es-mad-21"
		puts "\n (2) es-mad-22"
	  puts "\n\n\n\n\n\n\n\n\n\n\n"
	  print " MAD/otros >>> "
	  sw = gets.to_i
	  temporal = sw + 25
	  conectar(sw, temporal, 2, cargar[sw-1])
		
	else 
		error()
  end
 #------------------------------------menu para PAL -----------------------------		
elsif lugar == 3
	puts " \n\n--------------- SEDE PAL -------------------\n\n\n\n\n"
	industrial
	print " PAL >>> "
	tipo = gets.to_i
  
  #menu PAL industrial
	if tipo == 1
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
		system ("cls")
		puts "--------------- SEDE PAL industrial --------------------------------------------\n\n"	
		puts " (1)  es-spal-7a1-ind      (29) es-spal-9a1-ind     (53) es-mpal-7lcore-ind"
		puts " (2)  es-spal-7b1-ind      (30) es-spal-9b1-ind     (54) es-mpal-7hcore-ind"
		puts " (3)  es-spal-7c1-ind      (31) es-spal-9b2-ind     (55) es-spal-7h-svr1-ind"
		puts " (4)  es-spal-7d1-ind      (32) es-spal-9c1-ind     (56) es-spal-7h-svr2-ind"
		puts " (5)  es-spal-7d2-ind      (33) es-spal-9d1-ind     (57) es-spal-7l-svr1-ind"
		puts " (6)  es-spal-7e1-ind      (34) es-spal-9e1-ind     (58) es-spal-7l-svr2-ind"
		puts " (7)  es-spal-7f1-ind      (35) es-spal-9e2-ind     (59) es-spal-dissol-7c1-ind"
		puts " (8)  es-spal-7g1-ind      (36) es-spal-9f1-ind     (60) es-spal-dissol-7d1-ind"
    puts " (9)  es-spal-7h1-ind      (37) es-spal-9g1-ind     (61) es-spal-dispin-7f1-ind"
    puts " (10) es-spal-7i1-ind      (38) es-spal-9g2-ind     (62) es-spal-dismon-7h1-ind"
    puts " (11) es-spal-7i2-ind      (39) es-spal-9h1-ind"
    puts " (12) es-spal-7j1-ind      (40) es-spal-9i1-ind"
    puts " (13) es-spal-7k1-ind      (41) es-spal-9j1-ind"
    puts " (14) es-spal-7m1-ind      (42) es-spal-9j2-ind"
    puts " (15) es-spal-7n1-ind      (43) es-spal-9k1-ind"
    puts " (16) es-spal-7o1-ind      (44) es-spal-9n1-ind"
    puts " (17) es-spal-7p1-ind      (45) es-spal-9o1-ind"
  	puts " (18) es-spal-7q1-ind      (46) es-spal-9p1-ind"
    puts " (19) es-spal-7r1-ind      (47) es-spal-9p2-ind"
    puts " (20) es-spal-7s1-ind      (48) es-spal-9q1-ind"
    puts " (21) es-spal-7t1-ind      (49) es-spal-9r1-ind"
    puts " (22) es-spal-7u1-ind      (50) es-spal-9s1-ind"
    puts " (23) es-spal-7v1-ind      (51) es-spal-9w1-ind"
    puts " (24) es-spal-7w1-ind      (52) es-spal-9x1-ind"
    puts " (25) es-spal-7x1-ind"
    puts " (26) es-spal-7y1-ind"
    puts " (27) es-spal-7z1-ind"
    puts " (28) es-spal-7z2-ind"
    puts
    print " PAL/industrial >>> "
    $sw = gets.to_i
		if $sw <= 28 
			$temporal = $sw + 48
		elsif $sw >= 29 && $sw <= 52
			$temporal = ($sw - 29) + 78
		elsif $sw >= 53
			$temporal = ($sw - 53) + 103
		end 
		conectar($sw, $temporal, 62, cargar[sw-1])

	#menu PAL terciario
	elsif tipo == 2
		system ("cls")
		puts "--------------- SEDE PAL terciario ---------------------------------------------\n\n"	
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
  	puts " (1)  es-spal-7a1-ter      (29) es-spal-9a1-ter     (53) es-mpal-7lcore-ter"
    puts " (2)  es-spal-7b1-ter      (30) es-spal-9b1-ter     (54) es-mpal-7hcore-ter"
    puts " (3)  es-spal-7c1-ter      (31) es-spal-9c1-ter     (55) es-spal-7h-srv1-ter"
    puts " (4)  es-spal-7d1-ter      (32) es-spal-9d1-ter     (56) es-spal-7h-srv2-ter"
    puts " (5)  es-spal-7d2-ter      (33) es-spal-9e1-ter     (57) es-spal-7l-srv1-ter"
    puts " (6)  es-spal-7e1-ter      (34) es-spal-9f1-ter     (58) es-spal-7l-srv2-ter"
    puts " (7)  es-spal-7f1-ter      (35) es-spal-9g1-ter     (59) es-spal-dissol-7c2-ter"
    puts " (8)  es-spal-7g1-ter      (36) es-spal-9h1-ter     (60) es-spal-dissol-7d2-ter"
    puts " (9)  es-spal-7h1-ter      (37) es-spal-9i1-ter     (61) es-spal-dispin-7f1-ter"
    puts " (10) es-spal-7i1-ter      (38) es-spal-9j1-ter     (62) es-spal-dismon-7h1-ter"
    puts " (11) es-spal-7i2-ter      (39) es-spal-9k1-ter"
    puts " (12) es-spal-7j1-ter      (40) es-spal-9l1-ter"
    puts " (13) es-spal-7j3-ter      (41) es-spal-9m1-ter"
    puts " (14) es-spal-7k1-ter      (42) es-spal-9n1-ter"
    puts " (15) es-spal-7k2-ter      (43) es-spal-9o1-ter"
    puts " (16) es-spal-7l1-ter      (44) es-spal-9n1-ind"
    puts " (17) es-spal-7l2-ter      (45) es-spal-9p1-ter"
    puts " (18) es-spal-7m1-ter      (46) es-spal-9q1-ter"
    puts " (19) es-spal-7n1-ter      (47) es-spal-9r1-ter"
    puts " (20) es-spal-7r1-ter      (48) es-spal-9s1-ter"
    puts " (21) es-spal-7s1-ter      (49) es-spal-9t1-ter"
    puts " (22) es-spal-7t1-ter      (50) es-spal-9u1-ter"
    puts " (23) es-spal-7u1-ter      (51) es-spal-9w1-ter"
    puts " (24) es-spal-7v1-ter      (52) es-spal-9x1-ter"
    puts " (25) es-spal-7w1-ter"
    puts " (26) es-spal-7x1-ter"
    puts " (27) es-spal-7y1-ter"
    puts " (28) es-spal-7z1-ter"
    puts
    print " PAL/terciario >>> "
    $sw = gets.to_i
    if $sw <= 28 
			$temporal = $sw + 114
		elsif $sw >= 29 && $sw <= 52
			$temporal = ($sw - 29) + 144
		elsif $sw >= 53
			$temporal = ($sw - 53) + 169
		end 
		conectar($sw, $temporal, 62, cargar[$sw-1])

            
	#menu PAL otros
  elsif tipo == 3
  	puts " \n\n--------------- SEDE PAL otros --------------------\n\n\n\n\n"
    cargar = ["es-spal-7c-RedConsolas", "es-spal-7h-iao", "es-spal-7l-iao", 
    	"es-spal-7S-iao", "es-rpal-21", "es-rpal-22"]    
    puts "\n\n\n (1) es-spal-7c-RedConsolas"
    puts "\n (2) es-spal-7h-iao"
    puts "\n (3) es-spal-7l-iao"
    puts "\n (4) es-spal-7S-iao"
    #puts "\n (5) es-rpal-21"
    #puts "\n (6) es-rpal-22"
    puts "\n\n\n\n\n\n\n"
    print " PAL/otros >>> "        
    sw = gets.to_i
		temporal = sw + 180
		conectar(sw, temporal, 4, cargar[sw-1])

	else
		error
	end
		
#---------------menu para TAM--------------------------------------

elsif lugar == 4
	puts " \n\n--------------- SEDE TAM -------------------\n\n\n\n\n"
  terciario()
  print " TAM >>> "
	tipo = gets.to_i	
	
	#menu TAM terciario
	if tipo == 1
		puts " \n\n--------------- SEDE TAM terciario -------------------\n\n\n\n\n"
		cargar = ["es-tam-2da1-ter","es-tam-2de-ter", "es-tam2-da2-ter", 
			"es-tam-2df-ter", "es-mtad-2dacore1-ter", "es-tam-2dc-ter", 
			"es-mtam-2dgcore2-ter", "es-tam-2dd-ter"] 
		puts "\n\n\n (1) es-tam-2da1-ter     	(6) es-tam-2de-ter"
		puts "\n (2) es-tam2-da2-ter 		(7) es-tam-2df-ter"
		puts "\n (3) es-tam-2db-ter 		(8) es-mtad-2dacore1-ter"
		puts "\n (4) es-tam-2dc-ter 		(9) es-mtam-2dgcore2-ter"
		puts "\n (5) es-tam-2dd-ter"
		puts "\n\n\n\n\n"
		print " TAM/terciario >>> "
		sw = gets.to_i
	  temporal = sw + 29
	  conectar(sw, temporal, 9, cargar[sw-1])
		

		
		#menu TAM otros
	elsif tipo == 2
		puts " \n\n--------------- SEDE TAM terciario -------------------\n\n\n\n\n"
		cargar = ["es-rtam-21", "es-rtam-22"]	
		puts "\n\n\n (1) es-rtam-21"
		puts "\n (2) es-rtam-22"
		puts "\n\n\n\n\n\n\n\n\n\n\n\n"
		print " TAM/otros >>> "
		sw = gets.to_i
	  temporal = sw + 40
	  conectar(sw, temporal, 2, cargar[sw-1])		
	
	else
		error()
	end
#--------------------------------menu SEV industrial--------------------------------------------------------------------------
elsif lugar == 5
	puts " \n\n--------------- SEDE SEV -------------------\n\n\n\n\n"
	industrial
	print " SEV >>> "
	tipo = gets.to_i

	#menu SEV industrial
	if tipo == 1 
		puts " \n\n--------------- SEDE SEV industrial -------------------\n\n\n"
    cargar = ["es-ssev-8b1-ind", "es-msev-8qcore1-ind", "es-ssev-8c1-ind", "es-msev-8qcore2-ind",
     "es-ssev-8c2-ind", "es-ssev-8g-svr1-ind", "es-ssev-8d1-ind", "es-ssev-8g-svr2-ind",
     "es-ssev-8e1-ind", "es-ssev-8q-svr1-ind", "es-ssev-8f1-ind", "es-msev-8q-rvr2-ind",
     "es-ssev-8i1-ind", "es-ssev-8i2-ind", "es-ssev-8k1-ind", "es-ssev-8l1-ind", "es-ssev-8m1-ind",
     "es-ssev-8n1-ind", "es-ssev-8o1-ind", "es-ssev-8p1-ind", "es-ssev-8p2-ind", "es-ssev-8q1-ind",
     "es-ssev-8r1-ind"]      
  	puts "(1)  es-ssev-8b1-ind      (18) es-msev-8qcore1-ind"
		puts "(2)  es-ssev-8c1-ind      (19) es-msev-8qcore2-ind" 
		puts "(3)  es-ssev-8c2-ind      (20) es-ssev-8g-svr1-ind"
  	puts "(4)  es-ssev-8d1-ind      (21) es-ssev-8g-svr2-ind"
		puts "(5)  es-ssev-8e1-ind      (22) es-ssev-8q-svr1-ind"
		puts "(6)  es-ssev-8f1-ind      (23) es-msev-8q-rvr2-ind"
		puts "(7)  es-ssev-8i1-ind"
 		puts "(8)  es-ssev-8i2-ind"
		puts "(9)  es-ssev-8k1-ind"
		puts "(10) es-ssev-8l1-ind"
 		puts "(11) es-ssev-8m1-ind"  
		puts "(12) es-ssev-8n1-ind"  
 		puts "(13) es-ssev-8o1-ind" 
		puts "(14) es-ssev-8p1-ind" 
 		puts "(15) es-ssev-8p2-ind"
		puts "(16) es-ssev-8q1-ind" 
		puts "(17) es-ssev-8r1-ind"
    puts "\n\n\n"
    print "SEV/industrial >>> "
    sw = gets.to_i
		temporal = sw + 188
		conectar(sw, temporal, 23, cargar[sw-1])
         	
  #menu SEV terciario
	elsif tipo == 2
		puts " \n\n--------------- SEDE SEV terciario -------------------\n\n\n\n\n"
		cargar = ["es-ssev-8a1-ter", "es-ssev-8dr5-ter", "es-ssev-8b1-ter", "es-msev-8gcore-ter",
		 "es-ssev-8b2-ter", "es-msev-8qcore-ter", "es-ssev-8c1-ter", "es-ssev-8g-svr1-ter",
		 "es-ssev-8d1-ter", "es-ssev-8g-svr2-ter", "es-ssev-8e1-ter", "es-ssev-8q-svr1-ter", 
		 "es-ssev-8f1-ter", "es-ssev-8q-svr2-ter", "es-ssev-8g1-ter", "es-ssev-8i1-ter", 
		 "es-ssev-8k1-ter", "es-ssev-8l1-ter", "es-ssev-8m1-ter", "es-ssev-8n1-ter", 
		 "es-ssev-8o1-ter", "es-ssev-8p1-ter", "es-ssev-8q1-ter", "es-ssev-8r1-ter"]
		puts " (1)  es-ssev-8a1-ter       (18) es-ssev-8dr5-ter"
		puts " (2)  es-ssev-8b1-ter       (19) es-msev-8gcore-ter"
		puts " (3)  es-ssev-8b2-ter       (20) es-msev-8qcore-ter" 
		puts " (4)  es-ssev-8c1-ter       (21) es-ssev-8g-svr1-ter"
		puts " (5)  es-ssev-8d1-ter       (22) es-ssev-8g-svr2-ter"
		puts " (6)  es-ssev-8e1-ter       (23) es-ssev-8q-svr1-ter"
		puts " (7)  es-ssev-8f1-ter       (24) es-ssev-8q-svr2-ter" 
		puts " (8)  es-ssev-8g1-ter"
		puts " (9)  es-ssev-8i1-ter" 
		puts " (10) es-ssev-8k1-ter"
		puts " (11) es-ssev-8l1-ter"
		puts " (12) es-ssev-8m1-ter"  
		puts " (13) es-ssev-8n1-ter"
		puts " (14) es-ssev-8o1-ter" 
		puts " (15) es-ssev-8p1-ter"   
		puts " (16) es-ssev-8q1-ter"
		puts " (17) es-ssev-8r1-ter"
    puts ""
    print " TAM/terciario >>> "
    sw = gets.to_i
		temporal = sw + 213
		conectar(sw, temporal, 24, cargar[sw-1])     
    
		
	#menu SEV otros 
	elsif tipo == 3
		puts " \n\n--------------- SEDE SEV otros -------------------\n\n\n\n\n"
		cargar = ["es-ssev-8a-iao", "es-ssev-8g-iao", "es-rsev-21", "es-rsev-2"]
		puts "\n (1) es-ssev-8a-iao"
		puts "\n (2) es-ssev-8g-iao"	
		puts "\n (3) es-rsev-21"
		puts "\n (4) es-rsev-22"
    puts "\n\n\n\n\n\n\n\n\n"
    print " TAM/otros >>> "
    sw = gets.to_i
		temporal = sw + 230
		conectar(sw, temporal, 4, cargar[sw-1])         
  
  else
  	error
  end
#------------------------------------menu para VAL-------------------------------
	
elsif lugar == 6
	puts " \n\n--------------- SEDE VAL -------------------\n\n\n\n\n"
	cargar =	["es-rval-21", "es-rval-22"]
	puts "\n\n\n (1) es-rval-21"
	puts "\n (2) es-rval-22"
	puts "\n\n\n\n\n\n\n\n\n\n\n"
	print " VAL >>> "
	sw = gets.to_i
	temporal = sw + 44
	conectar(sw, temporal, 2, cargar[sw-1])


 
#------------------menu VLL --------------------------------------------------------------------------------------

elsif lugar == 7
	puts " \n\n--------------- SEDE VLL -------------------\n\n\n\n\n"
	industrial
	print " VLL >>> "
	tipo = gets.to_i
	#industrial 
	if tipo == 1
		puts " \n\n--------------- SEDE VLL industrial -------------------\n\n\n"
		localvll
		print " VLL/industrial >>> "
		local_vll = gets.to_i
    
    #local 1
		if local_vll == 1
			puts " \n\n--------------- SEDE VLL industrial -------------------\n\n\n\n\n"
			cargar = ["es-svll-1a1-ind", "es-svll-1c1-ind", "es-svll-1f1-ind", 
				"es-svll-1h1-ind", "es-svll-1j1-ind", "es-svll-1o1-ind"]
			puts " (1) es-svll-1a1-ind"
			puts "\n (2) es-svll-1c1-ind"
			puts "\n (3) es-svll-1f1-ind"
			puts "\n (4) es-svll-1h1-ind"
			puts "\n (5) es-svll-1j1-ind"
			puts "\n (6) es-svll-1o1-ind"
			puts "\n\n\n\n\n\n\n"
			print " VLL/industrial/local_1 >>> "	
			sw = gets.to_i
			temporal = sw  + 245
			conectar(sw, temporal, 6, cargar[sw-1])         

	
		#local 3
		elsif local_vll == 2 || local_vll == 3
			cargar = 	["es-svll-3a1-ind", "es-svll-3n1-ind", "es-svll-3c1-ind", "es-svll-3o1-ind", 
				"es-svll-3e1-ind", "es-svll-3p1-ind", "es-svll-3f1-ind", "es-svll-3r1-ind", 
				"es-svll-3g1-ind", "es-svll-3s1-ind", "es-svll-3h1-ind", "es-svll-3v1-ind", 
				"es-svll-3j1-ind", "es-svll-3x1-ind", "es-svll-3l1-ind", "es-svll-3m1-ind" ]
			puts " \n\n--------------- SEDE VLL industrial -------------------\n\n\n"
			puts " (1) es-svll-3a1-ind       (10) es-svll-3n1-ind"
			puts "\n (2) es-svll-3c1-ind       (11) es-svll-3o1-i8nd"
			puts "\n (3) es-svll-3e1-ind       (12) es-svll-3p1-ind"
			puts "\n (4) es-svll-3f1-ind       (13) es-svll-3r1-ind"
			puts "\n (5) es-svll-3g1-ind       (14) es-svll-3s1-ind"
			puts "\n (6) es-svll-3h1-ind       (15) es-svll-3v1-ind"
			puts "\n (7) es-svll-3j1-ind       (16) es-svll-3x1-ind"
 			puts "\n (8) es-svll-3l1-ind"
			puts "\n (9) es-svll-3m1-ind"
			puts "\n\n\n"
			print " VLL/industrial/local_3 >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 253
			conectar(sw, temporal, 16, cargar[sw]-1)         

				
		#local 4	
		elsif local_vll == 4
			cargar = ["es-svll-4a1-ind", "es-svll-4k3-ind", "es-svll-4b1-ind", "es-svll-4l1-ind", 
				"es-svll-4b2-ind", "es-svll-4m1-ind", "es-svll-4c1-ind", "es-svll-4n1-ind", 
				"es-svll-4c2-ind", "es-svll-4n2-ind", "es-svll-4d1-ind", "es-svll-4o1-ind", 
				"es-svll-4e1-ind", "es-svll-4p1-ind", "es-svll-4g1-ind", "es-svll-4p2-ind", 
				"es-svll-4g2-ind", "es-svll-4q1-ind", "es-svll-4h1-ind", "es-svll-4r1-ind", 
				"es-svll-4i1-ind", "es-svll-4s1-ind", "es-svll-4j1-ind", "es-svll-4u1-ind", 
				"es-svll-4k1-ind", "es-svll-4v1-ind", "es-svll-4k2-ind", "es-svll-4y1-ind"]	
			puts " \n\n--------------- SEDE VLL industrial -------------------\n\n\n\n\n"
			puts "(1)  es-svll-4a1-ind      (15) es-svll-4k3-ind"
			puts "(2)  es-svll-4b1-ind      (16) es-svll-4l1-ind"	
			puts "(3)  es-svll-4b2-ind      (17) es-svll-4m1-ind"
			puts "(4)  es-svll-4c1-ind      (18) es-svll-4n1-ind"
			puts "(5)  es-svll-4c2-ind      (19) es-svll-4n2-ind"
			puts "(6)  es-svll-4d1-ind      (20) es-svll-4o1-ind"
			puts "(7)  es-svll-4e1-ind      (21) es-svll-4p1-ind"
			puts "(8)  es-svll-4g1-ind      (22) es-svll-4p2-ind"
			puts "(9)  es-svll-4g2-ind      (23) es-svll-4q1-ind"
			puts "(10) es-svll-4h1-ind      (24) es-svll-4r1-ind"
			puts "(11) es-svll-4i1-ind      (25) es-svll-4s1-ind"
			puts "(12) es-svll-4j1-ind      (26) es-svll-4u1-ind"
			puts "(13) es-svll-4k1-ind      (27) es-svll-4v1-ind"
			puts "(14) es-svll-4k2-ind      (28) es-svll-4y1-ind"
			puts "\n\n\n\n"
			print " VLL/industrial/local_4 >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 270 #cambiar este valor
			conectar(sw, temporal, 28, cargar[sw-1])         


		#local 5
		elsif local_vll == 5
			cargar = ["es-svll-5a1-ind", "es-svll-5r1-ind", "es-svll-5b1-ind", "es-svll-5r2-ind", 
				"es-svll-5d1-ind", "es-svll-5r3-ind", "es-svll-5f1-ind", "es-svll-5s1-ind", 
				"es-svll-5f2-ind", "es-svll-5s2-ind", "es-svll-5h1-ind", "es-svll-5t1-ind", 
				"es-svll-5i1-ind", "es-svll-5v1-ind", "es-svll-5k1-ind", "es-svll-5v2-ind", 
				"es-svll-5k2-ind", "es-svll-5x1-ind", "es-svll-5l1-ind", "es-svll-5y1-ind", 
				"es-svll-5n1-ind", "es-svll-5z1-ind", "es-svll-5o1-ind", "es-svll-5z2-ind", 
				"es-svll-5p1-ind"]
			puts " \n\n--------------- SEDE VLL industrial -------------------\n\n\n\n\n"
			puts " (1)  es-svll-5a1-ind      (14) es-svll-5r1-ind"
			puts " (2)  es-svll-5a2-1-ind    (15) es-svll-5r2-ind" 
			puts " (3)  es-svll-5b1-ind      (16) es-svll-5r3-ind"
			puts " (4)  es-svll-5d1-ind      (17) es-svll-5s1-ind"
			puts " (5)  es-svll-5f1-ind      (18) es-svll-5s2-ind"
			puts " (6)  es-svll-5f2-ind      (19) es-svll-5t1-ind"
			puts " (7)  es-svll-5h1-ind      (20) es-svll-5v1-ind"
			puts " (8)  es-svll-5i1-ind      (21) es-svll-5v2-ind"
			puts " (9)  es-svll-5k1-ind      (22) es-svll-5x1-ind"
			puts " (10) es-svll-5k2-ind      (23) es-svll-5y1-ind"
			puts " (11) es-svll-5n1-ind      (24) es-svll-5z1-ind"
			puts " (12) es-svll-5o1-ind"
			puts " (13) es-svll-5p1-ind"
 			puts "\n\n\n\n\n"
 			print " VLL/industrial/local_5 >>> "
 			sw = gets.to_i
			temporal = (sw - 1) + 299 #cambiar este valor
			conectar(sw, temporal, 24, cargar[sw-1])  
			
		
		#local 6
		elsif local_vll == 6
			cargar = ["es-svll-6a1-ind", "es-svll-6i1-ind", "es-svll-6b1-ind", "es-svll-6j1-ind", "es-svll-6c1-ind", 
				"es-svll-6k1-ind", "es-svll-6e1-ind", "es-svll-6l1-ind", "es-svll-6h1-ind", "es-svll-6m1-ind"]
			puts "\n\n--------------- SEDE VLL industrial -------------------\n\n\n\n\n"
			puts " (1) es-svll-6a1-ind     (6)  es-svll-6i1-ind"
			puts "\n (2) es-svll-6b1-ind     (7)  es-svll-6j1-ind"
			puts "\n (3) es-svll-6c1-ind     (8)  es-svll-6k1-ind"
			puts "\n (4) es-svll-6e1-ind     (9)  es-svll-6l1-ind"
			puts "\n (5) es-svll-6h1-ind     (10) es-svll-6m1-ind"
			puts "\n\n\n\n\n\n\n\n\n" 
	 		print " VLL/industrial/local_6 >>> "
	 		sw = gets.to_i
			temporal = (sw - 1) + 324 #cambiar este valor
			conectar(sw, temporal, 10, cargar[sw-1]) 
 		#otros
 		elsif local_vll == 7
 			cargar = ["es-mvll-1bcore-ind", "es-svll-disest-1c1-ind", "es-mvll-5qcore-ind" "es-svll-dismon-4a1-ind", 
 				"es-svll-1b-svr1-ind", "es-svll-dismon-4a2-ind", "es-svll-1b-svr2-ind", "es-svll-dismon-4c1-ind", 
 				"es-svll-5q-svr1-ind", "es-svll-dismon-4c2-ind", "es-svll-5q-svr2-ind", "es-svll-dismon-6a1-ind", 
 				"es-svll-discar-3c1-ind", "es-svll-dismon-6b1-ind", "es-svll-discar-3e1-ind", "es-svll-dismot-5d1-ind", 
 				"es-svll-disest-1b1-ind", "es-svll-dismot-5k1-ind"]
 			puts " \n\n--------------- SEDE VLL industrial -------------------\n\n\n"
 			puts " (1) es-mvll-1bcore-ind       (10) es-svll-disest-1c1-ind"
			puts "\n (2) es-mvll-5qcore-ind       (11) es-svll-dismon-4a1-ind"
			puts "\n (3) es-svll-1b-svr1-ind      (12) es-svll-dismon-4a2-ind" 
			puts "\n (4) es-svll-1b-svr2-ind      (13) es-svll-dismon-4c1-ind" 
			puts "\n (5) es-svll-5q-svr1-ind      (14) es-svll-dismon-4c2-ind" 
			puts "\n (6) es-svll-5q-svr2-ind      (15) es-svll-dismon-6a1-ind" 
			puts "\n (7) es-svll-discar-3c1-ind   (16) es-svll-dismon-6b1-ind"
			puts "\n (8) es-svll-discar-3e1-ind   (17) es-svll-dismot-5d1-ind"
			puts "\n (9) es-svll-disest-1b1-ind   (18) es-svll-dismot-5k1-ind" 
 			puts "\n\n\n"
 			print " VLL/industrial/otros >>> "
 			sw = gets.to_i
			temporal = (sw - 1) + 335 #cambiar este valor
			conectar(sw, temporal, 18, cargar[sw - 1])

 		else
 			error
 		end
	
 	#terciario
	elsif tipo == 2
		puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n"
		localvll
		print " VLL/terciario >>> "
		local_vll = gets.to_i
 		
		if local_vll == 1
			cargar = ["es-svll-1a1-ter", "es-svll-1i2-ter", "es-svll-1c1-ter", 
				"es-svll-1j1-ter", "es-svll-1d1-ter", "es-svll-1k1-ter", "es-svll-1e1-ter", 
				"es-svll-1m1-ter", "es-svll-1f1-ter", "es-svll-1n1-ter", "es-svll-1g1-ter", 
				"es-svll-1o2-ter", "es-svll-1h1-ter", "es-svll-1q1-ter", "es-svll-1h2-ter", 
				"es-svll-1r1-ter"]
			puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n\n\n"
			puts " (1) #{cargar[0]}      (9)  #{cargar[8]}"		
			puts "\n (2) #{cargar[1]}      (10) #{cargar[9]}"	
			puts "\n (3) #{cargar[2]}      (11) #{cargar[10]}"	
			puts "\n (4) #{cargar[3]}      (12) #{cargar[11]}"	
			puts "\n (5) #{cargar[4]}      (13) #{cargar[12]}"	
			puts "\n (6) #{cargar[5]}      (14) #{cargar[13]}"	
			puts "\n (7) #{cargar[6]}      (15) #{cargar[14]}"	
			puts "\n (8) #{cargar[7]}      (16) #{cargar[15]}"	
			puts "\n\n\n"
			print " VLL/terciario/local_1 >>> "
			sw = gets.to_i
			temporal = sw + 354 #cambiar este valor
			conectar(sw, temporal, 16, cargar[sw-1])
 		
 		elsif local_vll == 2 || local_vll == 3
 			cargar = ["es-svll-3a1-ter", "es-svll-3c1-ter", "es-svll-3e1-ter", "es-svll-3f1-ter", 
 				"es-svll-3g1-ter" ,"es-svll-3h1-ter", "es-svll-3j1-ter", "es-svll-3l1-ter", 
 				"es-svll-3m1-ter", "es-svll-3n1-ter", "es-svll-3o1-ter", "es-svll-3p1-ter", 
 				"es-svll-3q1-ter", "es-svll-3r1-ter", "es-svll-3s1-ter", "es-svll-3t1-ter", 
 				"es-svll-3u1-ter", "es-svll-3v1-ter", "es-svll-3x1-ter"]
 			puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n\n\n"
 			puts " (1)  #{cargar[0]}      (11)  #{cargar[10]}"		
			puts " (2)  #{cargar[1]}      (12) #{cargar[11]}"	
			puts " (3)  #{cargar[2]}      (13) #{cargar[12]}"	
			puts " (4)  #{cargar[3]}      (14) #{cargar[13]}"	
			puts " (5)  #{cargar[4]}      (15) #{cargar[14]}"	
			puts " (6)  #{cargar[5]}      (16) #{cargar[15]}"	
			puts " (7)  #{cargar[6]}      (17) #{cargar[16]}"	
			puts " (8)  #{cargar[7]}      (18) #{cargar[17]}"	
			puts " (9)  #{cargar[8]}      (19) #{cargar[18]}"	
			puts " (10) #{cargar[9]}"	
			puts "\n\n\n\n\n\n\n\n"
			print " VLL/terciario/local_3 >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 372 #cambiar este valor
			conectar(sw, temporal, 19, cargar[sw-1])

		elsif local_vll == 4
			cargar = ["es-svll-4a1-ter", "es-svll-4b1-ter", "es-svll-4c1-ter", "es-svll-4d1-ter", 
				"es-svll-4e1-ter", "es-svll-4f2-ter", "es-svll-4g1-ter", "es-svll-4h1-ter", 
				"es-svll-4i2-ter", "es-svll-4j1-ter", "es-svll-4k1-ter", "es-svll-4l1-ter", 
				"es-svll-4m2-ter", "es-svll-4n2-ter", "es-svll-4o1-ter", "es-svll-4p1-ter", 
				"es-svll-4q1-ter", "es-svll-4r1-ter", "es-svll-4s1-ter", "es-svll-4t1-ter", 
				"es-svll-4u1-ter", "es-svll-4v1-ter", "es-svll-4x1-ter", "es-svll-4y2-ter"]	
 			puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n\n\n"
			puts "(1)  #{cargar[0]}      (13) #{cargar[12]}"		
			puts "(2)  #{cargar[1]}      (14) #{cargar[13]}"	
			puts "(3)  #{cargar[2]}      (15) #{cargar[14]}"	
			puts "(4)  #{cargar[3]}      (16) #{cargar[15]}"	
			puts "(5)  #{cargar[4]}      (17) #{cargar[16]}"	
			puts "(6)  #{cargar[5]}      (18) #{cargar[17]}"	
			puts "(7)  #{cargar[6]}      (19) #{cargar[18]}"	
			puts "(8)  #{cargar[7]}      (20) #{cargar[19]}"	
			puts "(9)  #{cargar[8]}      (21) #{cargar[20]}"
			puts "(10) #{cargar[9]}      (22) #{cargar[21]}"
			puts "(11) #{cargar[10]}      (23) #{cargar[22]}"
			puts "(12) #{cargar[11]}      (24) #{cargar[23]}"	
			puts "\n\n\n\n\n"
			print " VLL/terciario/local_4 >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 392 #cambiar este valor
			conectar(sw, temporal, 25, cargar[sw-1])

		elsif local_vll == 5
			cargar =["es-svll-5a1-ter","es-svll-5a2-1-ter", "es-svll-5b1-ter", "es-svll-5c1-ter", "es-svll-5d1-ter", 
				"es-svll-5e1-ter", "es-svll-5f1-ter", "es-svll-5g1-ter", "es-svll-5h1-ter", 
				"es-svll-5i1-ter", "es-svll-5i2-ter", "es-svll-5i3-ter", "es-svll-5j1-ter", 
				"es-svll-5k1-ter", "es-vll-5l1-ter", "es-svll-5m1-ter", "es-svll-5n1-ter", "es-svll-5o1-ter", 
				"es-svll-5o2-ter", "es-svll-5p1-ter", "es-svll-5r3-ter", "es-svll-5s2-ter", 
				"es-svll-5t1-ter", "es-svll-5u1-ter", "es-svll-5v1-ter", "es-svll-5w1-ter", 
				"es-svll-5x1-ter", "es-svll-5y1-ter", "es-svll-5z1-ter"]
 			puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n"
			puts " (1)  #{cargar[0]}      (16) #{cargar[15]}"		
			puts " (2)  #{cargar[1]}    (17) #{cargar[16]}"	
			puts " (3)  #{cargar[2]}      (18) #{cargar[17]}"	
			puts " (4)  #{cargar[3]}      (19) #{cargar[18]}"	
			puts " (5)  #{cargar[4]}      (20) #{cargar[19]}"	
			puts " (6)  #{cargar[5]}      (21) #{cargar[20]}"	
			puts " (7)  #{cargar[6]}      (22) #{cargar[21]}"	
			puts " (8)  #{cargar[7]}      (23) #{cargar[22]}"	
			puts " (9)  #{cargar[8]}      (24) #{cargar[23]}"
			puts " (10) #{cargar[9]}      (25) #{cargar[24]}"
			puts " (11) #{cargar[10]}      (26) #{cargar[25]}"
			puts " (12) #{cargar[11]}      (27) #{cargar[26]}"
			puts " (13) #{cargar[12]}      (28) #{cargar[27]}"
			puts " (14) #{cargar[13]}      (29) #{cargar[28]}"	
			puts " (15) #{cargar[14]}"
			puts "\n\n\n\n\n"
			print " VLL/terciario/local_5 >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 417 #cambiar este valor
			conectar(sw, temporal, 29, cargar[sw-1])

		elsif local_vll == 6
			cargar = ["es-svll-6a1-ter", "es-svll-6b1-ter", "es-svll-6c1-ter", "es-svll-6e1-ter", 
				"es-svll-6f1-ter", "es-svll-6h1-ter", "es-svll-6i1-ter", "es-svll-6j2-ter", 
				"es-svll-6k1-ter", "es-svll-6l1-ter", "es-svll-6m1-ter"]
 			puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n\n\n"
			puts " (1) #{cargar[0]}      (7)  #{cargar[6]}"		
			puts "\n (2) #{cargar[1]}      (8)  #{cargar[7]}"	
			puts "\n (3) #{cargar[2]}      (9)  #{cargar[8]}"	
			puts "\n (4) #{cargar[3]}      (10) #{cargar[9]}"	
			puts "\n (5) #{cargar[4]}      (11) #{cargar[10]}"	
			puts "\n (6) #{cargar[5]}"	
			puts "\n\n\n\n\n\n"
			print " VLL/terciario/local_6 >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 447 #cambiar este valor
			conectar(sw, temporal, 11, cargar[sw-1])

		elsif local_vll == 7
			cargar = ["es-svll-pistapruebas-ter", "es-mvll-5qcore-ter", "es-mvll-1bcore-ter", "es-svll-1b-svr1-ter", 
				"es-svll-1b-svr2-ter", "es-svll-5q-svr1-ter", "es-svll-5q-svr2-ter", "es-svll-discar-3c-ter", 
				"es-svll-discar-3e-ter", "es-svll-disest-1b-ter", "es-svll-disest-1c-ter", "es-svll-dismon-4a-ter", 
				"es-svll-dismon-4c-ter", "es-svll-dismot-5d-ter", "es-svll-dismot-5k-ter" ]
 			puts " \n\n--------------- SEDE VLL terciario -------------------\n\n\n\n\n"
			puts " (1) #{cargar[0]}      (8) #{cargar[7]}"		
			puts "\n (2) #{cargar[1]}            (9) #{cargar[8]}"	
			puts "\n (3) #{cargar[2]}            (10) #{cargar[9]}"	
			puts "\n (4) #{cargar[3]}           (11) #{cargar[10]}"	
			puts "\n (5) #{cargar[4]}           (12) #{cargar[11]}"	
			puts "\n (6) #{cargar[5]}           (13) #{cargar[12]}"	
			puts "\n (7) #{cargar[6]}"	
			puts "\n\n\n\n"
			print " VLL/terciario/otros >>> "
			sw = gets.to_i
			temporal = (sw - 1) + 459 #cambiar este valor
			conectar(sw, temporal, 25, cargar[sw-1])

 		else 
 			error
 		end
 
 #MENU OTROS
 	elsif tipo == 3
 		cargar = ["es-svll-1b-redsalvados-a", "es-svll-5q-redsalvados-a", "es-svll-5r-redsalvados-a", 
 			"es-svll-1i4-toip", "es-svll-1o2-toip", "es-svll-01", "es-svll-02"]
		puts " \n\n--------------- SEDE VLL otros -------------------\n\n\n\n\n"
 		puts " (1)  #{cargar[0]}"		
		puts "\n (2)  #{cargar[1]}"	
		puts "\n (3)  #{cargar[2]}"	
		puts "\n (4)  #{cargar[3]}"	
		puts "\n (5)  #{cargar[4]}"	
		puts "\n (6)  #{cargar[5]}"	
		puts "\n (7)  #{cargar[6]}"
		puts "\n\n\n\n\n"
		print " VLL/otros >>> "
		sw = gets.to_i
		temporal = sw + 475 #cambiar este valor
		conectar(sw, temporal, 7, cargar[sw-1])

 	else
 		error
 	end

#---------------------ERROR DE SWITCH -----------------------------------------------------------------------	
else 
	error
end