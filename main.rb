require_relative 'chord_generator'
require_relative 'melody_generator'

puts "Bienvenido al Generador de Música para Piano"
puts "Por favor, introduce la nota tónica (ejemplo: C, D, E) y el estilo (common, jazz, pop, blues):"
key, style = gets.strip.split

chords = ChordGenerator.generate_chord_progression(key.upcase, style)
formatted_chords = chords.map { |chord| chord.join(" ") }

puts "Progresión de acordes generada: #{formatted_chords.join(" | ")}"

melody = MelodyGenerator.generate_melody(chords)
puts "Melodía generada: #{melody.join(" ")}"
