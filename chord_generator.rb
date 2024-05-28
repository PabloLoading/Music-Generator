require_relative 'music_data'

module ChordGenerator
  def self.generate_chord_progression(key, style='common')
    chords_in_key = MusicData::CHORDS.map do |name, notes|
      transposed_chord = transpose_chord(notes, key)
      [name, transposed_chord]
    end.to_h
    progression_formula = MusicData::PROGRESSIONS[style].sample
    progression_formula.map { |degree| chords_in_key[MusicData::DEGREE_MAP[degree]] }
  end

  def self.transpose_chord(notes, key)
    key_scale = MusicData::SCALES[key].dup
    notes.map do |note|
      index = key_scale.index(note)
      key_scale[(index + 3) % key_scale.size]
    end
  end
end