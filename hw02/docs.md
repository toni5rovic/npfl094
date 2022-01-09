# Homework 2
# NPFL094 - Morphological and Syntactic Analysis

Antonije Petrović

UFAL - Institute of Formal and Applied Linguistics

Charles University, Prague


# 1. How to run

TODO: Files with lexicon and phonological rules. Add a shell script that will invoke Foma (PCKIMMO) with these files and analyze all words in an input file; add a sample input file for the script. 

# 2. Lexical string format

Lexical string for **adjectives** is in the following format:

`[1]+Adj+[2]+[3]+[4]`

1) Degree of comparison
   - `Pos` = Positive, 
   - `Comp` = Comparative, 
   - `Sup` = Superlative
2) Gender
   - `Masc` = Masculine, 
   - `Fem` = Feminine, 
   - `Neut` = Neutral
3) Number
   - `Sg` = Singular, 
   - `Pl` = Plural
4) Case: 
   - `Nom` = Nominative, 
   - `Gen` = Genitive, 
   - `Dat` = Dative, 
   - `Acc` = Accusative, 
   - `Voc` = Vocative, 
   - `Ins` = Instrumental, 
   - `Loc` = Locative

# 3. Testing

TODO: For each inflection class list example words that your analyzer knows and that can be used for testing. 

# 4. Summary

TODO: Add a few paragraphs where you describe your decisions and point out the most interesting or difficult phenomena. 

# 5. Further improvements

I didn't cover negation of adjectives, so that could be added by introducing another part in the lexical string i.e. adding the 6th part with values `Neg` for negative forms, and `Def` for default forms (can't use `Pos` as it is used in the degree of comparison part)

There are some irregular forms that have not been covered here.