require_relative 'chord_generator'

module MelodyGenerator
  def self.generate_melody(chords, length: 8)
    melody = chords.flat_map do |chord|
      notes = chord.flat_map { |note| [note, note, note, note] }
      notes.sample(length)
    end
    melody
  end
end
