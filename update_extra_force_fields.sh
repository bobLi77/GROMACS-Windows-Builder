#!/bin/bash
set -e
cd extra_force_fields
if curl --retry 10 -Lo 'charmm36-feb2026_cgenff-5.0.ff.tgz' 'https://mackerell.umaryland.edu/download.php?filename=CHARMM_ff_params_files/charmm36-feb2026_cgenff-5.0.ff.tgz'; then
  [ -e charmm36-feb2026_cgenff-5.0.ff ] && mv charmm36-feb2026_cgenff-5.0.ff charmm36-feb2026_cgenff-5.0.ff.bak || :
  tar -x --ungzip -f charmm36-feb2026_cgenff-5.0.ff.tgz
  sed -i '1cCHARMM36 all-atom force field (February 2026)' charmm36-feb2026_cgenff-5.0.ff/forcefield.doc
  rm -r charmm36-feb2026_cgenff-5.0.ff.*
else
  echo 'Fail to download charmm36-feb2026_cgenff-5.0.ff.tgz'
fi
if curl --retry 10 -Lo 'charmm36-feb2026_ljpme_cgenff-5.0.ff.tgz' 'https://mackerell.umaryland.edu/download.php?filename=CHARMM_ff_params_files/charmm36-feb2026_ljpme_cgenff-5.0.ff.tgz'; then
  [ -e charmm36-feb2026_ljpme_cgenff-5.0.ff ] && mv charmm36-feb2026_ljpme_cgenff-5.0.ff charmm36-feb2026_ljpme_cgenff-5.0.ff.bak || :
  tar -x --ungzip -f charmm36-feb2026_ljpme_cgenff-5.0.ff.tgz
  sed -i '1cCHARMM36 LJ-PME all-atom force field (February 2026)' charmm36-feb2026_ljpme_cgenff-5.0.ff/forcefield.doc
  rm -r charmm36-feb2026_ljpme_cgenff-5.0.ff.*
else
  echo 'Fail to download charmm36-feb2026_cgenff-5.0.ff.tgz'
fi