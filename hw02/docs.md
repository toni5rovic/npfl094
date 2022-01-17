# Homework 2
# NPFL094 - Morphological and Syntactic Analysis

Antonije Petrović

UFAL - Institute of Formal and Applied Linguistics

Charles University, Prague


# 1. How to run

Run `script.sh` file

# 2. Lexical string format

Lexical string for **adjectives** is in the following format:

`[Sup]+[Neg]+[1]+Adj+[2]+[3]+[4]`

`Sup` - it is found in superlative forms, otherwise it is not stated

`Neg` - it is found in negative forms, otherwise it is not stated

1) Degree of comparison
   - `Pos` = Positive, 
   - `Comp` = Comparative
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

Task: For each inflection class list example words that your analyzer knows and that can be used for testing. 

|   Inflection class          |    Example Words          |
|-----------------------------|---------------------------|
| AdjDefiniteComparative_IJ   |  crveni, rani, ružni      |
| AdjDefiniteComparative_SH   | laki, meki, lepi          |
| AdjDefiniteComparative_J    | beli, mladi               |
| AdjIndefiniteComparative_IJ | aktivan, verovatan, važan |
| AdjIndefiniteComparative_J  | mlad, beo                 |
| AdjIndefiniteComparative_SH | lak, mek, lep             |
| AdjDefinite                 | nemački, etički, srpski   |

# 4. Summary

Task: Add a few paragraphs where you describe your decisions and point out the most interesting or difficult phenomena. 


Most of the descriptional adjectives have two forms: short (indefinite) and long (definite). The difference between those two is that indefinite forms represent an attribute of a previously unknown entity, while definite form is used with nouns which are already known in the context. 

Example: 
Među štrajfkorima koji su se smenjivali na kapiji bio je jedan *mlad* čovek, Rus iz istočne Galicije, po imenu Gregor Fedun... (...) Tako je *mladi* čovek, koji je pogrešio na kapiji, ostao zauvek u kasabi.
(Ivo Andrić, Na Drini ćuprija)

Two main phonological changes have been implemented:
- Fleeting A
  - a phenomenon of short /a/ making a random appearance and disappearing in certain inflected forms of nouns. Actually, it usually exists only in nominative sg. and vocative sg. forms, while in all other singular forms it disappears
  - it is important to note that this happens only in words with more than one syllable, as removing /a/ from one-syllable word would leave the word without vowels
  - examples:
    - borac ('fighter' nom. sg.) > borca (gen. sg.)
- Iotation
  - it is a form of palatalization that occurs when a consonant comes into contact with a palatal approximant /j/
  - changes that occur:
    - /b/ > /bʎ/ (orthographically: b > blj)
    - /p/ > /pʎ/ (orthographically: p > plj)
    - /v/ > /vʎ/ (orthographically: v > vlj)
    - /z/ > /ʐ/  (orthographically: z > ž)
    - /s/ > /ʂ/  (orthographically: s > š)
    - /d/ > /dʑ/ (orthographically: d > đ)
    - /t/ > /tɕ/ (orthographically: t > ć)

# 5. Further improvements

Even though phonological change called "Fleeting A" is implemented, it shouldn't be executed in every environment `Consonant _ Consonant`. Concretely, in single-syllable adjectives, we don't want to lose 'a' since it is the only vowel. Example: 
- mlad > *mldog (masc. sg. gen.)
- instead: mlad > mladog (masc. sg. gen.)

So, counting syllables should be implemented somehow, or such cases would be implemented as exceptions.

There are some irregular forms when it comes to comparative forms that have not been covered here.
Examples: 
- dobar ('good' pos. masc. sg. nom.) > bolji (comp. masc. sg. nom.)
- mali ('small' pos. masc. sg. nom.) > manji (comp. masc. sg. nom.)

Sometimes there is a distinction between animate and inanimate, and such cases have not been covered here.

Negative forms of some adjectives are not simply created by suffixation using the suffix 'ne'. Instead, the negative form (antonym) is completely different. Those cases should be implemented as exceptions to the general rules.