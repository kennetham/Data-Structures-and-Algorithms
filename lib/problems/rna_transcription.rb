class RNATranscription
=begin

Write a program that, given a DNA strand, returns its RNA complement (per RNA transcription).

Both DNA and RNA strands are a sequence of nucleotides.

The four nucleotides found in DNA are adenine (A), cytosine (C),
guanine (G) and thymine (T).

The four nucleotides found in RNA are adenine (A), cytosine (C),
guanine (G) and uracil (U).

Given a DNA strand, its transcribed RNA strand is formed by replacing
each nucleotide with its complement:

G -> C
C -> G
T -> A
A -> U
=end

  def initialize
    @sequence = {}
    @sequence['T'] = 'U'
  end

  def transcribe(dna)
    transcribed_rna = ''
    for i in 0..dna.length
      if dna[i].eql?('T')
        transcribed_rna += @sequence[dna[i]].to_s
      else
        transcribed_rna += dna[i].to_s
      end
    end

    transcribed_rna
  end
end