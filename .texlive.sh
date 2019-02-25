#!/usr/bin/env sh

# This script is used for testing using Travis CI
# It is intended to work with dist: trusty
# A minimal current TL is installed adding only the packages that are required

# See if there is a cached version of TL available
export PATH=/tmp/texlive/bin/x86_64-linux:$PATH
#if ! command -v texlua > /dev/null; then
  # Obtain TeX Live
wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
#wget http://mirror.hmc.edu/ctan/systems/texlive/tlnet/install-tl-unx.tar.gz
tar -xzf install-tl-unx.tar.gz
cd install-tl-*

# Install a minimal system
./install-tl --profile=../.texlive.profile
cd ..
#fi

# Default to letter-size paper
tlmgr paper letter

# Required to build plain TeX
tlmgr install cm etex knuth-lib tex tex-ini-files unicode-data xetex pdftex

# Setup LaTeX extensions
tlmgr install latex latex-bin latexconfig latex-fonts tools

# Assuming a 'basic' font set up, metafont is required to avoid
# warnings with some packages and errors with others
tlmgr install metafont mfware

# Setup graphics
tlmgr install graphics graphics-cfg graphics-def oberdiek

# Contrib packages for testing
tlmgr install --no-depends fontspec

# Add contrib packages for building commonheader.sty
tlmgr install \
    exam \
    algorithms \
    algorithmicx \
    amsfonts \
    amsmath \
    cm-super \
    comment \
    ec \
    enumitem \
    etoolbox \
    fancybox \
    float \
    hyperref \
    ifxetex \
    import \
    listings \
    lm \
    lm-math \
    paralist \
    parskip \
    pgf \
    preprint \
    tikz-qtree \
    upquote \
    url \
    wasy \
    wasy2-ps \
    wasysym \
    wrapfig \
    xcolor \
    xkeyval \
    inconsolata

# Keep no backups (not required, simply makes cache bigger)
tlmgr option -- autobackup 0

# Update the TL install but add nothing new
tlmgr update --self --all --no-auto-install
