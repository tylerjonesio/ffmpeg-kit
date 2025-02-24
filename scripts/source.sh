#!/bin/bash

#
# 1. library name
# 2. source type 1/2/3
#
get_library_source() {
  case $1 in
  config)
    SOURCE_REPO_URL="https://github.com/tylerjonesio/gnu-config"
    SOURCE_ID="master"
    SOURCE_TYPE="BRANCH"
    ;;
  # chromaprint)
  #   SOURCE_REPO_URL="https://github.com/arthenica/chromaprint"
  #   SOURCE_ID="v1.5.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # cpu-features)
  #   SOURCE_REPO_URL="https://github.com/arthenica/cpu_features"
  #   SOURCE_ID="v0.8.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # dav1d)
  #   SOURCE_REPO_URL="https://github.com/arthenica/dav1d"
  #   SOURCE_ID="1.2.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # expat)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libexpat"
  #   SOURCE_ID="R_2_5_0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  ffmpeg)
    SOURCE_REPO_URL="https://github.com/tylerjonesio/FFmpeg"
    SOURCE_ID="7.1.1"
    SOURCE_TYPE="TAG"
    ;;
  # fontconfig)
  #   SOURCE_REPO_URL="https://github.com/arthenica/fontconfig"
  #   SOURCE_ID="2.14.2"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # freetype)
  #   SOURCE_REPO_URL="https://github.com/arthenica/freetype2"
  #   SOURCE_ID="VER-2-13-0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # fribidi)
  #   SOURCE_REPO_URL="https://github.com/arthenica/fribidi"
  #   SOURCE_ID="v1.0.13"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # giflib)
  #   SOURCE_REPO_URL="https://github.com/arthenica/giflib"
  #   SOURCE_ID="5.2.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  gmp)
    SOURCE_REPO_URL="https://github.com/tylerjonesio/gmp"
    SOURCE_ID="v6.2.1"
    SOURCE_TYPE="TAG"
    ;;
  gnutls)
    SOURCE_REPO_URL="https://gitlab.com/gnutls/gnutls/"
    SOURCE_ID="3.7.9"
    SOURCE_TYPE="TAG"
    ;;
  # harfbuzz)
  #   SOURCE_REPO_URL="https://github.com/arthenica/harfbuzz"
  #   SOURCE_ID="8.0.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # jpeg)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libjpeg-turbo"
  #   SOURCE_ID="3.0.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # kvazaar)
  #   SOURCE_REPO_URL="https://github.com/arthenica/kvazaar"
  #   SOURCE_ID="v2.2.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # lame)
  #   SOURCE_REPO_URL="https://github.com/arthenica/lame"
  #   SOURCE_ID="RELEASE__3_100"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # leptonica)
  #   SOURCE_REPO_URL="https://github.com/arthenica/leptonica"
  #   SOURCE_ID="1.83.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libaom)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libaom"
  #   SOURCE_ID="v3.6.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libass)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libass"
  #   SOURCE_ID="0.17.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libiconv)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libiconv"
  #   SOURCE_ID="v1.17"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libilbc)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libilbc"
  #   SOURCE_ID="v3.0.4"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libogg)
  #   SOURCE_REPO_URL="https://github.com/arthenica/ogg"
  #   SOURCE_ID="v1.3.5"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libpng)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libpng"
  #   SOURCE_ID="v1.6.40"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libsamplerate)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libsamplerate"
  #   SOURCE_ID="0.2.2"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libsndfile)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libsndfile"
  #   SOURCE_ID="1.2.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libtheora)
  #   SOURCE_REPO_URL="https://github.com/arthenica/theora"
  #   SOURCE_ID="v1.1.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libuuid)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libuuid"
  #   SOURCE_ID="libuuid-1.0.3"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libvidstab)
  #   SOURCE_REPO_URL="https://github.com/arthenica/vid.stab"
  #   SOURCE_ID="v1.1.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libvorbis)
  #   SOURCE_REPO_URL="https://github.com/arthenica/vorbis"
  #   SOURCE_ID="v1.3.7"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libvpx)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libvpx"
  #   SOURCE_ID="v1.13.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libwebp)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libwebp"
  #   SOURCE_ID="v1.3.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # libxml2)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libxml2"
  #   SOURCE_ID="v2.11.4"
  #   SOURCE_TYPE="TAG"
  #   ;;
  nettle)
    SOURCE_REPO_URL="https://git.lysator.liu.se/nettle/nettle"
    SOURCE_ID="nettle_3.8.1_release_20220727"
    SOURCE_TYPE="TAG"
    ;;
  # opencore-amr)
  #   SOURCE_REPO_URL="https://github.com/arthenica/opencore-amr"
  #   SOURCE_ID="v0.1.6"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # openh264)
  #   SOURCE_REPO_URL="https://github.com/arthenica/openh264"
  #   SOURCE_ID="v2.3.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # openssl)
  #   SOURCE_REPO_URL="https://github.com/arthenica/openssl"
  #   SOURCE_ID="openssl-3.1.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # opus)
  #   SOURCE_REPO_URL="https://github.com/arthenica/opus"
  #   SOURCE_ID="v1.4"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # rubberband)
  #   SOURCE_REPO_URL="https://github.com/arthenica/rubberband"
  #   SOURCE_ID="v1.8.2"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # sdl)
  #   SOURCE_REPO_URL="https://github.com/arthenica/SDL"
  #   SOURCE_ID="release-2.0.8"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # shine)
  #   SOURCE_REPO_URL="https://github.com/arthenica/shine"
  #   SOURCE_ID="3.1.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # snappy)
  #   SOURCE_REPO_URL="https://github.com/arthenica/snappy"
  #   SOURCE_ID="1.1.9"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # soxr)
  #   SOURCE_REPO_URL="https://github.com/arthenica/soxr"
  #   SOURCE_ID="0.1.3"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # speex)
  #   SOURCE_REPO_URL="https://github.com/arthenica/speex"
  #   SOURCE_ID="Speex-1.2.1"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # srt)
  #   SOURCE_REPO_URL="https://github.com/arthenica/srt"
  #   SOURCE_ID="v1.5.2"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # tesseract)
  #   SOURCE_REPO_URL="https://github.com/arthenica/tesseract"
  #   SOURCE_ID="5.3.2"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # tiff)
  #   SOURCE_REPO_URL="https://github.com/arthenica/libtiff"
  #   SOURCE_ID="v4.1.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # twolame)
  #   SOURCE_REPO_URL="https://github.com/arthenica/twolame"
  #   SOURCE_ID="0.4.0"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # vo-amrwbenc)
  #   SOURCE_REPO_URL="https://github.com/arthenica/vo-amrwbenc"
  #   SOURCE_ID="v0.1.3"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # x264)
  #   SOURCE_REPO_URL="https://github.com/arthenica/x264"
  #   SOURCE_ID="eaa68fad9e5d201d42fde51665f2d137ae96baf0"
  #   SOURCE_TYPE="COMMIT"
  #   ;;
  # x265)
  #   SOURCE_REPO_URL="https://github.com/arthenica/x265"
  #   SOURCE_ID="3.4"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # xvidcore)
  #   SOURCE_REPO_URL="https://github.com/arthenica/xvidcore"
  #   SOURCE_ID="release-1_3_7"
  #   SOURCE_TYPE="TAG"
  #   ;;
  # zimg)
  #   SOURCE_REPO_URL="https://github.com/arthenica/zimg"
  #   SOURCE_ID="release-3.0.5"
  #   SOURCE_TYPE="TAG"
  #   ;;
  esac

  case $2 in
  1)
    echo "${SOURCE_REPO_URL}"
    ;;
  2)
    echo "${SOURCE_ID}"
    ;;
  3)
    echo "${SOURCE_TYPE}"
    ;;
  esac
}
