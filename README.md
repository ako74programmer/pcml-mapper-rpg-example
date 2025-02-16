[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

[English](#english-section) | [Polski](#polski-section)

<a name="english-section"></a>
## 🇬🇧 English

# PCML Mapper RPG Example

A Java library for mapping Java objects to and from IBM i PCML (Program Call Markup Language) documents. This library simplifies the integration between Java applications and IBM i (AS/400) systems by providing an intuitive annotation-based mapping framework.

## Overview

This module is an integral part of the integration testing suite for the [PCML Mapper](https://github.com/ako74programmer/pcml-mapper) project. It contains RPG code examples and test cases that demonstrate the functionality and proper usage of the PCML Mapper library.

## RPG Code Generation

The module supports the following RPG code generation steps:

### 1. Creating RPG Module

```
CRTRPGMOD MODULE(&CURLIB/&NAME) SRCSTMF('&RELATIVEPATH') 
         OPTION(*EVENTF) 
         DBGVIEW(*SOURCE) 
         TGTCCSID(*JOB) 
         PGMINFO(*PCML *ALL) 
         INFOSTMF('${sourcePath|Source path|&FULLPATH}')
```

Where `INFOSTMF` specifies the path where the .pcml file should be saved.

### 2. Creating Service Program

```
CRTSRVPGM SRVPGM(&CURLIB/${AAA|Service name|MYSRVPGM}) 
          MODULE(&CURLIB/&NAME) 
          EXPORT(*ALL) 
          BNDSRVPGM(*NONE) 
          BNDDIR(*NONE) 
          ACTGRP(*CALLER)
```

By default, the service name is set to `MYSRVPGM` in the format: `SRVPGM(&CURLIB/${AAA|Service name|MYSRVPGM})`

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

---

<a name="polski-section"></a>
## 🇵🇱 Polski

# PCML Mapper RPG Example

Biblioteka Java do mapowania obiektów Java na dokumenty PCML (Program Call Markup Language) IBM i oraz odwrotnie. Ta biblioteka upraszcza integrację między aplikacjami Java a systemami IBM i (AS/400) poprzez zapewnienie intuicyjnego frameworka mapowania opartego na adnotacjach.

## Przegląd

Ten moduł jest integralną częścią zestawu testów integracyjnych dla projektu [PCML Mapper](https://github.com/ako74programmer/pcml-mapper). Zawiera przykłady kodu RPG i przypadki testowe, które demonstrują funkcjonalność i prawidłowe użycie biblioteki PCML Mapper.

## Generowanie kodu RPG

Moduł wspiera następujące kroki generowania kodu RPG:

### 1. Tworzenie modułu RPG

```
CRTRPGMOD MODULE(&CURLIB/&NAME) SRCSTMF('&RELATIVEPATH') 
         OPTION(*EVENTF) 
         DBGVIEW(*SOURCE) 
         TGTCCSID(*JOB) 
         PGMINFO(*PCML *ALL) 
         INFOSTMF('${sourcePath|Source path|&FULLPATH}')
```

Gdzie `INFOSTMF` określa ścieżkę, gdzie ma zostać zapisany plik .pcml.

### 2. Tworzenie programu serwisowego

```
CRTSRVPGM SRVPGM(&CURLIB/${AAA|Service name|MYSRVPGM}) 
          MODULE(&CURLIB/&NAME) 
          EXPORT(*ALL) 
          BNDSRVPGM(*NONE) 
          BNDDIR(*NONE) 
          ACTGRP(*CALLER)
```

Domyślnie nazwa serwisu jest ustawiona na `MYSRVPGM` w formacie: `SRVPGM(&CURLIB/${AAA|Service name|MYSRVPGM})`

## Licencja

Ten projekt jest licencjonowany na podstawie licencji MIT - szczegóły znajdują się w pliku [LICENSE](LICENSE).
