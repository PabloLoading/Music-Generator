module MusicData
  CHORDS = {
    "C" => ["C", "E", "G"],
    "Dm" => ["D", "F", "A"],
    "Em" => ["E", "G", "B"],
    "F" => ["F", "A", "C"],
    "G" => ["G", "B", "D"],
    "Am" => ["A", "C", "E"],
    "Bdim" => ["B", "D", "F"]
  }

  SCALES = {
    "C" => ["C", "D", "E", "F", "G", "A", "B"],
    "Dm" => ["D", "E", "F", "G", "A", "B", "C"],
    "Em" => ["E", "F", "G", "A", "B", "C", "D"],
    "F" => ["F", "G", "A", "B", "C", "D", "E"],
    "G" => ["G", "A", "B", "C", "D", "E", "F"],
    "Am" => ["A", "B", "C", "D", "E", "F", "G"],
    "Bdim" => ["B", "C", "D", "E", "F", "G", "A"]
  }

  PROGRESSIONS = {
    "common" => [["I", "IV", "V", "I"]],
    "jazz" => [["II", "V", "I"]],
    "pop" => [["I", "V", "VI", "IV"]],
    "blues" => [["I", "IV", "I", "V", "IV", "I"]]
  }

  DEGREE_MAP = {
    "I" => "C",
    "II" => "Dm",
    "III" => "Em",
    "IV" => "F",
    "V" => "G",
    "VI" => "Am",
    "VII" => "Bdim"
  }

end