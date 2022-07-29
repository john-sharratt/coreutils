#!/bin/bash -e
#cargo build --target wasm32-wasi \
#-p uu_arch \
#-p uu_base32 \
#-p uu_base64 \
#-p uu_basename \
#-p uu_cksum \
#-p uu_comm \
#-p uu_csplit \
#-p uu_cut \
#-p uu_date \
#-p uu_dircolors \
#-p uu_dirname \
#-p uu_echo \
#-p uu_env \
#-p uu_expand \
#-p uu_factor \
#-p uu_false \
#-p uu_fmt \
#-p uu_fold \
#-p uu_hashsum \
#-p uu_head \
#-p uu_join \
#-p uu_link \
#-p uu_logname \
#-p uu_mktemp \
#-p uu_mv \
#-p uu_nl \
#-p uu_nproc \
#-p uu_numfmt \
#-p uu_od \
#-p uu_paste \
#-p uu_printenv \
#-p uu_printf \
#-p uu_ptx \
#-p uu_pwd \
#-p uu_readlink \
#-p uu_realpath \
#-p uu_relpath \
#-p uu_rm \
#-p uu_rmdir \
#-p uu_seq \
#-p uu_shred \
#-p uu_shuf \
#-p uu_sleep \
#-p uu_sum \
#-p uu_tee \
#-p uu_touch \
#-p uu_tr \
#-p uu_true \
#-p uu_truncate \
#-p uu_tsort \
#-p uu_unexpand \
#-p uu_uniq \
#-p uu_unlink \
#-p uu_wc \
#-p uu_yes

#cp -f target/wasm32-wasi/debug/*.wasm ..//tokera/tokterm/wasm

cargo wasix build
chmod +x target/wasm32-wasmer-wasi/debug/coreutils.wasm

cp -f target/wasm32-wasmer-wasi/debug/coreutils.wasm ../ate/wasmer-web/public/bin/coreutils.wasm
