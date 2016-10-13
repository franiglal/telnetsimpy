require 'tk'

class Principal
  def initialize
    p = [proc {sede(1)}, proc {sede(2)}, proc {sede(3)}, 
      proc {sede(4)}, proc {sede(5)}, proc {sede(6)}]
    ph = {'padx' => 10, 'pady' => 10}
    root = TkRoot.new do
      title "TelRenault - Entelgy go for it -- alpha 0.3.0"
      minsize(400,300)
    end
    top = TkFrame.new(root)
    TkLabel.new(top) do
      text 'Escoje Sede'
      pack(ph)
    end
    TkButton.new(top) {text 'bar'; command p[0]; pack ph }
    TkButton.new(top) {text 'mad'; command p[1]; pack ph } 
    TkButton.new(top) {text 'pal'; command p[2]; pack ph }
    TkButton.new(top) {text 'sev'; command p[3]; pack ph }
    TkButton.new(top) {text 'tam'; command p[4]; pack ph }
    TkButton.new(top) {text 'vll'; command p[5]; pack ph }
    top.pack('fill' => 'both', 'side' => 'top')
  end

  def sede(lugar)
    if lugar == 1
      puts "bar"
      exit
    elsif lugar == 2
      puts "mad"
      exit
    elsif lugar == 3
      puts "pal"
      exit
    elsif lugar == 4
      puts "sev"
      exit
    elsif lugar == 5
      pust "tam"
      exit
    elsif lugar == 6
      puts "vll"
      exit
    end
  end
end

class Terciario
  def initialize
    p = proc {sede}
    ph = {'padx' => 10, 'pady' => 10}
    root = TkRoot.new do
      title "TelRenault - Entelgy go for it"
    end
    top = TkFrame.new(root)
    TkLabel.new(top) do
      text 'Escoje sede'
      pack(ph)
    end
    TkButton.new(top) {text 'terciario'; command p; pack ph }
    TkButton.new(top) {text 'otros'; command p; pack ph } 
    top.pack('fill' => 'both', 'side' => 'top')
  end

  def sede
    puts "prueba realizada correctamente"
    exit
  end
end

=begin
class sede

end 

p = proc {system ("ping www.google.es")}
principal = TkRoot.new do
  title "TelRenault - Entelgy go for it"
  minsize(400,400)  
end

TkButton.new(principal) do
  text 'prueba'
  pack( "side" => "right", "fill"=>"y" )
  command p
end

TkLabel.new(principal) do
  text 'hello world'
  foreground 'red'
  pack { padx 15; pady 15; side 'left' }
end
=end

Principal.new

Tk.mainloop