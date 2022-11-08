Return-Path: <amgadhs@codehill.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC960C4332F
	for <webhook@archiver.kernel.org>; Tue,  8 Nov 2022 08:21:58 +0000 (UTC)
Subject: Installing python package using maturin #python
To: yocto@lists.yoctoproject.org
From: amgadhs@codehill.com
X-Originating-Location: Dubai, AE (94.204.111.151)
X-Originating-Platform: Mac Chrome 107
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 08 Nov 2022 00:21:57 -0800
Message-ID: <gh7O.1667895717521589522.790K@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="rreDdG5DXW3HoRdRqhWr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Nov 2022 08:21:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58524

--rreDdG5DXW3HoRdRqhWr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I would greatly appreciate any help fixing this issue. I need to install th=
e Python package orjson from PyPI on our Kirkstone build. Since it requires=
 maturin to install I created a recipe for each one of them:

This is maturin-native_0.13.7.bb:

SUMMARY =3D "Build and publish crates with pyo3, rust-cpython and cffi bind=
ings as well as rust binaries as python packages"
DESCRIPTION =3D "Build and publish crates with pyo3, rust-cpython and cffi =
bindings as=C2=A0well as rust binaries as python packages"

LICENSE =3D "MIT | Apache-2.0"
LIC_FILES_CHKSUM =3D "file://license-apache;md5=3D1836efb2eb779966696f473ee=
8540542 \
file://license-mit;md5=3D85fd3b67069cff784d98ebfc7d5c0797"

SRC_URI[sha256sum] =3D "c0a77aa0c57f945649ca711c806203a1b6888ad49c2b8b85196=
ffdcf0421db77"

inherit cargo pypi native

SRC_URI +=3D " \
crate://crates.io/addr2line/0.17.0 \
crate://crates.io/adler/1.0.2 \
crate://crates.io/aes/0.7.5 \
crate://crates.io/ahash/0.7.6 \
crate://crates.io/aho-corasick/0.7.19 \
crate://crates.io/anyhow/1.0.65 \
crate://crates.io/async-io/1.10.0 \
crate://crates.io/async-lock/2.6.0 \
crate://crates.io/atty/0.2.14 \
crate://crates.io/autocfg/1.1.0 \
crate://crates.io/backtrace/0.3.66 \
crate://crates.io/base64/0.13.1 \
crate://crates.io/bitflags/1.3.2 \
crate://crates.io/block-buffer/0.10.3 \
crate://crates.io/block-buffer/0.9.0 \
crate://crates.io/block-modes/0.8.1 \
crate://crates.io/block-padding/0.2.1 \
crate://crates.io/bstr/0.2.17 \
crate://crates.io/bumpalo/3.11.0 \
crate://crates.io/byteorder/1.4.3 \
crate://crates.io/bytes/1.2.1 \
crate://crates.io/bytesize/1.1.0 \
crate://crates.io/bzip2-sys/0.1.11+1.0.8 \
crate://crates.io/bzip2/0.4.3 \
crate://crates.io/cab/0.4.1 \
crate://crates.io/cache-padded/1.2.0 \
crate://crates.io/camino/1.1.1 \
crate://crates.io/cargo-options/0.3.1 \
crate://crates.io/cargo-platform/0.1.2 \
crate://crates.io/cargo-xwin/0.10.2 \
crate://crates.io/cargo-zigbuild/0.12.3 \
crate://crates.io/cargo_metadata/0.15.0 \
crate://crates.io/cbindgen/0.24.3 \
crate://crates.io/cc/1.0.73 \
crate://crates.io/cfb/0.7.3 \
crate://crates.io/cfg-if/1.0.0 \
crate://crates.io/charset/0.1.3 \
crate://crates.io/chunked_transfer/1.4.0 \
crate://crates.io/cipher/0.3.0 \
crate://crates.io/clap/3.2.23 \
crate://crates.io/clap_complete/3.2.5 \
crate://crates.io/clap_complete_fig/3.2.4 \
crate://crates.io/clap_derive/3.2.18 \
crate://crates.io/clap_lex/0.2.4 \
crate://crates.io/cli-table/0.4.7 \
crate://crates.io/combine/4.6.6 \
crate://crates.io/concurrent-queue/1.2.4 \
crate://crates.io/configparser/3.0.2 \
crate://crates.io/console/0.15.2 \
crate://crates.io/core-foundation-sys/0.8.3 \
crate://crates.io/core-foundation/0.9.3 \
crate://crates.io/cpufeatures/0.2.5 \
crate://crates.io/crc32fast/1.3.2 \
crate://crates.io/crossbeam-channel/0.5.6 \
crate://crates.io/crossbeam-deque/0.8.2 \
crate://crates.io/crossbeam-epoch/0.9.11 \
crate://crates.io/crossbeam-utils/0.8.12 \
crate://crates.io/crypto-common/0.1.6 \
crate://crates.io/crypto-mac/0.11.1 \
crate://crates.io/ctor/0.1.23 \
crate://crates.io/data-encoding/2.3.2 \
crate://crates.io/derivative/2.2.0 \
crate://crates.io/dialoguer/0.10.2 \
crate://crates.io/diff/0.1.13 \
crate://crates.io/digest/0.10.5 \
crate://crates.io/digest/0.9.0 \
crate://crates.io/dirs-sys/0.3.7 \
crate://crates.io/dirs/4.0.0 \
crate://crates.io/dunce/1.0.3 \
crate://crates.io/either/1.8.0 \
crate://crates.io/encode_unicode/0.3.6 \
crate://crates.io/encoding-index-japanese/1.20141219.5 \
crate://crates.io/encoding-index-korean/1.20141219.5 \
crate://crates.io/encoding-index-simpchinese/1.20141219.5 \
crate://crates.io/encoding-index-singlebyte/1.20141219.5 \
crate://crates.io/encoding-index-tradchinese/1.20141219.5 \
crate://crates.io/encoding/0.2.33 \
crate://crates.io/encoding_index_tests/0.1.4 \
crate://crates.io/encoding_rs/0.8.31 \
crate://crates.io/enumflags2/0.6.4 \
crate://crates.io/enumflags2_derive/0.6.4 \
crate://crates.io/errno-dragonfly/0.1.2 \
crate://crates.io/errno/0.2.8 \
crate://crates.io/event-listener/2.5.3 \
crate://crates.io/fastrand/1.8.0 \
crate://crates.io/fat-macho/0.4.5 \
crate://crates.io/filetime/0.2.17 \
crate://crates.io/flate2/1.0.24 \
crate://crates.io/fnv/1.0.7 \
crate://crates.io/foreign-types-shared/0.1.1 \
crate://crates.io/foreign-types/0.3.2 \
crate://crates.io/form_urlencoded/1.1.0 \
crate://crates.io/fs-err/2.8.1 \
crate://crates.io/futures-channel/0.3.25 \
crate://crates.io/futures-core/0.3.25 \
crate://crates.io/futures-executor/0.3.25 \
crate://crates.io/futures-io/0.3.25 \
crate://crates.io/futures-lite/1.12.0 \
crate://crates.io/futures-macro/0.3.25 \
crate://crates.io/futures-sink/0.3.25 \
crate://crates.io/futures-task/0.3.25 \
crate://crates.io/futures-util/0.3.25 \
crate://crates.io/futures/0.3.25 \
crate://crates.io/generic-array/0.14.6 \
crate://crates.io/getrandom/0.2.8 \
crate://crates.io/gimli/0.26.2 \
crate://crates.io/glob/0.3.0 \
crate://crates.io/globset/0.4.9 \
crate://crates.io/goblin/0.5.4 \
crate://crates.io/hashbrown/0.12.3 \
crate://crates.io/heck/0.4.0 \
crate://crates.io/hermit-abi/0.1.19 \
crate://crates.io/hkdf/0.11.0 \
crate://crates.io/hmac/0.11.0 \
crate://crates.io/human-panic/1.0.3 \
crate://crates.io/idna/0.3.0 \
crate://crates.io/ignore/0.4.18 \
crate://crates.io/indexmap/1.9.1 \
crate://crates.io/indicatif/0.17.0-rc.6 \
crate://crates.io/indoc/1.0.7 \
crate://crates.io/instant/0.1.12 \
crate://crates.io/io-lifetimes/0.7.4 \
crate://crates.io/itertools/0.10.5 \
crate://crates.io/itoa/1.0.4 \
crate://crates.io/js-sys/0.3.60 \
crate://crates.io/keyring/1.2.0 \
crate://crates.io/lazy_static/1.4.0 \
crate://crates.io/lddtree/0.3.1 \
crate://crates.io/libc/0.2.137 \
crate://crates.io/linux-raw-sys/0.0.46 \
crate://crates.io/lock_api/0.4.9 \
crate://crates.io/log/0.4.17 \
crate://crates.io/lzxd/0.1.4 \
crate://crates.io/mailparse/0.13.8 \
crate://crates.io/matchers/0.1.0 \
crate://crates.io/memchr/2.5.0 \
crate://crates.io/memoffset/0.6.5 \
crate://crates.io/mime/0.3.16 \
crate://crates.io/mime_guess/2.0.4 \
crate://crates.io/minijinja/0.20.0 \
crate://crates.io/miniz_oxide/0.5.4 \
crate://crates.io/msi/0.5.0 \
crate://crates.io/multipart/0.18.0 \
crate://crates.io/native-tls/0.2.10 \
crate://crates.io/nb-connect/1.2.0 \
crate://crates.io/nix/0.22.3 \
crate://crates.io/nu-ansi-term/0.46.0 \
crate://crates.io/num-bigint/0.4.3 \
crate://crates.io/num-complex/0.4.2 \
crate://crates.io/num-integer/0.1.45 \
crate://crates.io/num-iter/0.1.43 \
crate://crates.io/num-rational/0.4.1 \
crate://crates.io/num-traits/0.2.15 \
crate://crates.io/num/0.4.0 \
crate://crates.io/num_cpus/1.13.1 \
crate://crates.io/num_threads/0.1.6 \
crate://crates.io/number_prefix/0.4.0 \
crate://crates.io/object/0.29.0 \
crate://crates.io/once_cell/1.15.0 \
crate://crates.io/opaque-debug/0.3.0 \
crate://crates.io/openssl-macros/0.1.0 \
crate://crates.io/openssl-probe/0.1.5 \
crate://crates.io/openssl-src/111.22.0+1.1.1q \
crate://crates.io/openssl-sys/0.9.77 \
crate://crates.io/openssl/0.10.42 \
crate://crates.io/os_str_bytes/6.3.1 \
crate://crates.io/os_type/2.6.0 \
crate://crates.io/output_vt100/0.1.3 \
crate://crates.io/overload/0.1.1 \
crate://crates.io/parking/2.0.0 \
crate://crates.io/parking_lot/0.12.1 \
crate://crates.io/parking_lot_core/0.9.3 \
crate://crates.io/path-slash/0.2.1 \
crate://crates.io/pep440/0.2.0 \
crate://crates.io/percent-encoding/2.2.0 \
crate://crates.io/pin-project-lite/0.2.9 \
crate://crates.io/pin-utils/0.1.0 \
crate://crates.io/pkg-config/0.3.25 \
crate://crates.io/plain/0.2.3 \
crate://crates.io/platform-info/1.0.0 \
crate://crates.io/polling/2.3.0 \
crate://crates.io/ppv-lite86/0.2.16 \
crate://crates.io/pretty_assertions/1.3.0 \
crate://crates.io/proc-macro-crate/0.1.5 \
crate://crates.io/proc-macro-crate/1.2.1 \
crate://crates.io/proc-macro-error-attr/1.0.4 \
crate://crates.io/proc-macro-error/1.0.4 \
crate://crates.io/proc-macro2/1.0.47 \
crate://crates.io/pyproject-toml/0.3.1 \
crate://crates.io/python-pkginfo/0.5.4 \
crate://crates.io/quote/1.0.21 \
crate://crates.io/quoted_printable/0.4.5 \
crate://crates.io/rand/0.8.5 \
crate://crates.io/rand_chacha/0.3.1 \
crate://crates.io/rand_core/0.6.4 \
crate://crates.io/rayon-core/1.9.3 \
crate://crates.io/rayon/1.5.3 \
crate://crates.io/redox_syscall/0.2.16 \
crate://crates.io/redox_users/0.4.3 \
crate://crates.io/regex-automata/0.1.10 \
crate://crates.io/regex-syntax/0.6.27 \
crate://crates.io/regex/1.6.0 \
crate://crates.io/remove_dir_all/0.5.3 \
crate://crates.io/rfc2047-decoder/0.1.2 \
crate://crates.io/ring/0.16.20 \
crate://crates.io/rpassword/6.0.1 \
crate://crates.io/rustc-demangle/0.1.21 \
crate://crates.io/rustc_version/0.4.0 \
crate://crates.io/rustix/0.35.12 \
crate://crates.io/rustls/0.20.7 \
crate://crates.io/rustversion/1.0.9 \
crate://crates.io/ryu/1.0.11 \
crate://crates.io/same-file/1.0.6 \
crate://crates.io/schannel/0.1.20 \
crate://crates.io/scoped-tls/1.0.0 \
crate://crates.io/scopeguard/1.1.0 \
crate://crates.io/scroll/0.11.0 \
crate://crates.io/scroll_derive/0.11.0 \
crate://crates.io/sct/0.7.0 \
crate://crates.io/secret-service/2.0.2 \
crate://crates.io/security-framework-sys/2.6.1 \
crate://crates.io/security-framework/2.7.0 \
crate://crates.io/semver/1.0.14 \
crate://crates.io/serde/1.0.147 \
crate://crates.io/serde_derive/1.0.147 \
crate://crates.io/serde_json/1.0.87 \
crate://crates.io/serde_repr/0.1.9 \
crate://crates.io/sha2/0.10.6 \
crate://crates.io/sha2/0.9.9 \
crate://crates.io/sharded-slab/0.1.4 \
crate://crates.io/slab/0.4.7 \
crate://crates.io/smallvec/1.10.0 \
crate://crates.io/smawk/0.3.1 \
crate://crates.io/socket2/0.4.7 \
crate://crates.io/socks/0.3.4 \
crate://crates.io/spin/0.5.2 \
crate://crates.io/static_assertions/1.1.0 \
crate://crates.io/strsim/0.10.0 \
crate://crates.io/subtle/2.4.1 \
crate://crates.io/syn/1.0.103 \
crate://crates.io/tar/0.4.38 \
crate://crates.io/target-lexicon/0.12.4 \
crate://crates.io/tempfile/3.3.0 \
crate://crates.io/termcolor/1.1.3 \
crate://crates.io/terminal_size/0.1.17 \
crate://crates.io/terminal_size/0.2.1 \
crate://crates.io/textwrap/0.15.1 \
crate://crates.io/textwrap/0.16.0 \
crate://crates.io/thiserror-impl/1.0.37 \
crate://crates.io/thiserror/1.0.37 \
crate://crates.io/thread_local/1.1.4 \
crate://crates.io/time-macros/0.2.4 \
crate://crates.io/time/0.3.15 \
crate://crates.io/tinyvec/1.6.0 \
crate://crates.io/tinyvec_macros/0.1.0 \
crate://crates.io/toml/0.5.9 \
crate://crates.io/toml_edit/0.14.4 \
crate://crates.io/tracing-attributes/0.1.23 \
crate://crates.io/tracing-core/0.1.30 \
crate://crates.io/tracing-log/0.1.3 \
crate://crates.io/tracing-serde/0.1.3 \
crate://crates.io/tracing-subscriber/0.3.16 \
crate://crates.io/tracing/0.1.37 \
crate://crates.io/twox-hash/1.6.3 \
crate://crates.io/typenum/1.15.0 \
crate://crates.io/unicase/2.6.0 \
crate://crates.io/unicode-bidi/0.3.8 \
crate://crates.io/unicode-ident/1.0.5 \
crate://crates.io/unicode-linebreak/0.1.4 \
crate://crates.io/unicode-normalization/0.1.22 \
crate://crates.io/unicode-width/0.1.10 \
crate://crates.io/untrusted/0.7.1 \
crate://crates.io/ureq/2.5.0 \
crate://crates.io/url/2.3.1 \
crate://crates.io/uuid/0.8.2 \
crate://crates.io/uuid/1.2.1 \
crate://crates.io/valuable/0.1.0 \
crate://crates.io/vcpkg/0.2.15 \
crate://crates.io/version_check/0.9.4 \
crate://crates.io/waker-fn/1.1.0 \
crate://crates.io/walkdir/2.3.2 \
crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
crate://crates.io/wasm-bindgen-backend/0.2.83 \
crate://crates.io/wasm-bindgen-macro-support/0.2.83 \
crate://crates.io/wasm-bindgen-macro/0.2.83 \
crate://crates.io/wasm-bindgen-shared/0.2.83 \
crate://crates.io/wasm-bindgen/0.2.83 \
crate://crates.io/web-sys/0.3.60 \
crate://crates.io/webpki-roots/0.22.5 \
crate://crates.io/webpki/0.22.0 \
crate://crates.io/wepoll-ffi/0.1.2 \
crate://crates.io/which/4.3.0 \
crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
crate://crates.io/winapi-util/0.1.5 \
crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
crate://crates.io/winapi/0.3.9 \
crate://crates.io/windows-sys/0.36.1 \
crate://crates.io/windows_aarch64_msvc/0.36.1 \
crate://crates.io/windows_i686_gnu/0.36.1 \
crate://crates.io/windows_i686_msvc/0.36.1 \
crate://crates.io/windows_x86_64_gnu/0.36.1 \
crate://crates.io/windows_x86_64_msvc/0.36.1 \
crate://crates.io/xattr/0.2.3 \
crate://crates.io/xwin/0.2.5 \
crate://crates.io/yansi/0.5.1 \
crate://crates.io/zbus/1.9.3 \
crate://crates.io/zbus_macros/1.9.3 \
crate://crates.io/zip/0.6.2 \
crate://crates.io/zvariant/2.10.0 \
crate://crates.io/zvariant_derive/2.10.0 \
"

And this is python3-orjson_3.8.0.bb:

SUMMARY =3D "Fast, correct Python JSON library supporting dataclasses, date=
times, and numpy"
HOMEPAGE =3D "https://github.com/ijl/orjson"
LICENSE =3D "Apache-2.0 | MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE-MIT;md5=3Db377b220f43d747efdec40d69fca=
a69d"

inherit pypi python_setuptools_build_meta python_pyo3 cargo

SRC_URI +=3D " \
crate://crates.io/ahash/0.8.0 \
crate://crates.io/arrayvec/0.7.2 \
crate://crates.io/associative-cache/1.0.1 \
crate://crates.io/autocfg/1.1.0 \
crate://crates.io/beef/0.5.2 \
crate://crates.io/bytecount/0.6.3 \
crate://crates.io/castaway/0.2.2 \
crate://crates.io/cc/1.0.73 \
crate://crates.io/cfg-if/1.0.0 \
crate://crates.io/chrono/0.4.19 \
crate://crates.io/compact_str/0.6.1 \
crate://crates.io/encoding_rs/0.8.31 \
crate://crates.io/itoa/1.0.4 \
crate://crates.io/libc/0.2.132 \
crate://crates.io/libm/0.1.4 \
crate://crates.io/num-integer/0.1.45 \
crate://crates.io/num-traits/0.2.15 \
crate://crates.io/once_cell/1.13.1 \
crate://crates.io/packed_simd_2/0.3.8 \
crate://crates.io/pyo3-build-config/0.17.0 \
crate://crates.io/pyo3-ffi/0.17.0 \
crate://crates.io/rustversion/1.0.9 \
crate://crates.io/ryu/1.0.11 \
crate://crates.io/serde/1.0.144 \
crate://crates.io/simdutf8/0.1.4 \
crate://crates.io/smallvec/1.9.0 \
crate://crates.io/target-lexicon/0.12.4 \
crate://crates.io/version_check/0.9.4 \
"

PYPI_PACKAGE =3D "orjson"
SRC_URI[md5sum] =3D "d460b188ddaafa36a767abaed541cd10"
SRC_URI[sha256sum] =3D "fb42f7cf57d5804a9daa6b624e3490ec9e2631e042415f3aebe=
9f35a8492ba6c"

DEPENDS +=3D "maturin-native"

However, my solution did not work and I got this error:

ERROR: python3-orjson-3.8.0-r0 do_compile: ExecutionError('/home/amgedr/os/=
build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/python3-orjson/3.=
8.0-r0/temp/run.do_compile.451732', 101, None, None)
ERROR: Logfile of failure stored in: /home/amgedr/os/build/tmp/work/cortexa=
7t2hf-neon-vfpv4-poky-linux-gnueabi/python3-orjson/3.8.0-r0/temp/log.do_com=
pile.451732
Log data follows:
| DEBUG: Executing shell function do_compile
| NOTE: pkg-config:
| NOTE: cargo =3D /home/amgedr/os/build/tmp/work/cortexa7t2hf-neon-vfpv4-po=
ky-linux-gnueabi/python3-orjson/3.8.0-r0/recipe-sysroot-native/usr/bin/carg=
o
| NOTE: rustc =3D
| NOTE: cargo build -v --target arm-poky-linux-gnueabi --release --manifest=
-path=3D/home/amgedr/os/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-g=
nueabi/python3-orjson/3.8.0-r0/orjson-3.8.0//Cargo.toml
|=C2=A0 =C2=A0 =C2=A0Updating crates.io index
| warning: spurious network error (2 tries remaining): failed to resolve ad=
dress for github.com: Name or service not known; class=3DNet (12)
| warning: spurious network error (1 tries remaining): failed to resolve ad=
dress for github.com: Name or service not known; class=3DNet (12)
| error: failed to get `ahash` as a dependency of package `orjson v3.8.0 (/=
home/amgedr/os/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/py=
thon3-orjson/3.8.0-r0/orjson-3.8.0)`
|
| Caused by:
|=C2=A0 =C2=A0failed to load source for dependency `ahash`
|
| Caused by:
|=C2=A0 =C2=A0Unable to update registry `crates-io`
|
| Caused by:
|=C2=A0 =C2=A0failed to fetch `https://github.com/rust-lang/crates.io-index=
`
|
| Caused by:
|=C2=A0 =C2=A0network failure seems to have happened
|=C2=A0 =C2=A0if a proxy or similar is necessary `net.git-fetch-with-cli` m=
ay help here
|=C2=A0 =C2=A0https://doc.rust-lang.org/cargo/reference/config.html#netgit-=
fetch-with-cli
|
| Caused by:
|=C2=A0 =C2=A0failed to resolve address for github.com: Name or service not=
 known; class=3DNet (12)
| WARNING: exit code 101 from a shell command.
ERROR: Task (/home/amgedr/os/build/meta-hub/recipes-requirements/python3-or=
json_3.8.0.bb:do_compile) failed with exit code '1'

What should I do to get it building python3-orjson?

Thanks in advance,
Amged

--rreDdG5DXW3HoRdRqhWr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hello,</div>
<div>&nbsp;</div>
<div>I would greatly appreciate any help fixing this issue. I need to insta=
ll the Python package orjson from PyPI on our Kirkstone build. Since it req=
uires maturin to install I created a recipe for each one of them:</div>
<div>&nbsp;</div>
<div>This is maturin-native_0.13.7.bb:</div>
<div>&nbsp;</div>
<div>SUMMARY =3D "Build and publish crates with pyo3, rust-cpython and cffi=
 bindings as well as rust binaries as python packages"</div>
<div>DESCRIPTION =3D "Build and publish crates with pyo3, rust-cpython and =
cffi bindings as&nbsp;well as rust binaries as python packages"</div>
<div>&nbsp;</div>
<div>LICENSE =3D "MIT | Apache-2.0"</div>
<div>LIC_FILES_CHKSUM =3D "file://license-apache;md5=3D1836efb2eb779966696f=
473ee8540542 \</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
file://license-mit;md5=3D85fd3b67069cff784d98ebfc7d5c0797"</div>
<div>&nbsp;</div>
<div>SRC_URI[sha256sum] =3D "c0a77aa0c57f945649ca711c806203a1b6888ad49c2b8b=
85196ffdcf0421db77"</div>
<div>&nbsp;</div>
<div>inherit cargo pypi native</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D " \</div>
<div>&nbsp; &nbsp; crate://crates.io/addr2line/0.17.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/adler/1.0.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/aes/0.7.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ahash/0.7.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/aho-corasick/0.7.19 \</div>
<div>&nbsp; &nbsp; crate://crates.io/anyhow/1.0.65 \</div>
<div>&nbsp; &nbsp; crate://crates.io/async-io/1.10.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/async-lock/2.6.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/atty/0.2.14 \</div>
<div>&nbsp; &nbsp; crate://crates.io/autocfg/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/backtrace/0.3.66 \</div>
<div>&nbsp; &nbsp; crate://crates.io/base64/0.13.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bitflags/1.3.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/block-buffer/0.10.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/block-buffer/0.9.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/block-modes/0.8.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/block-padding/0.2.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bstr/0.2.17 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bumpalo/3.11.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/byteorder/1.4.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bytes/1.2.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bytesize/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bzip2-sys/0.1.11+1.0.8 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bzip2/0.4.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cab/0.4.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cache-padded/1.2.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/camino/1.1.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cargo-options/0.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cargo-platform/0.1.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cargo-xwin/0.10.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cargo-zigbuild/0.12.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cargo_metadata/0.15.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cbindgen/0.24.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cc/1.0.73 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cfb/0.7.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cfg-if/1.0.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/charset/0.1.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/chunked_transfer/1.4.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cipher/0.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/clap/3.2.23 \</div>
<div>&nbsp; &nbsp; crate://crates.io/clap_complete/3.2.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/clap_complete_fig/3.2.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/clap_derive/3.2.18 \</div>
<div>&nbsp; &nbsp; crate://crates.io/clap_lex/0.2.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cli-table/0.4.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/combine/4.6.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/concurrent-queue/1.2.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/configparser/3.0.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/console/0.15.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/core-foundation-sys/0.8.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/core-foundation/0.9.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cpufeatures/0.2.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crc32fast/1.3.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crossbeam-channel/0.5.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crossbeam-deque/0.8.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crossbeam-epoch/0.9.11 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crossbeam-utils/0.8.12 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crypto-common/0.1.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/crypto-mac/0.11.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ctor/0.1.23 \</div>
<div>&nbsp; &nbsp; crate://crates.io/data-encoding/2.3.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/derivative/2.2.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/dialoguer/0.10.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/diff/0.1.13 \</div>
<div>&nbsp; &nbsp; crate://crates.io/digest/0.10.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/digest/0.9.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/dirs-sys/0.3.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/dirs/4.0.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/dunce/1.0.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/either/1.8.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encode_unicode/0.3.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding-index-japanese/1.20141219.5 \=
</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding-index-korean/1.20141219.5 \</=
div>
<div>&nbsp; &nbsp; crate://crates.io/encoding-index-simpchinese/1.20141219.=
5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding-index-singlebyte/1.20141219.5=
 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding-index-tradchinese/1.20141219.=
5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding/0.2.33 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding_index_tests/0.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding_rs/0.8.31 \</div>
<div>&nbsp; &nbsp; crate://crates.io/enumflags2/0.6.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/enumflags2_derive/0.6.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/errno-dragonfly/0.1.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/errno/0.2.8 \</div>
<div>&nbsp; &nbsp; crate://crates.io/event-listener/2.5.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/fastrand/1.8.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/fat-macho/0.4.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/filetime/0.2.17 \</div>
<div>&nbsp; &nbsp; crate://crates.io/flate2/1.0.24 \</div>
<div>&nbsp; &nbsp; crate://crates.io/fnv/1.0.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/foreign-types-shared/0.1.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/foreign-types/0.3.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/form_urlencoded/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/fs-err/2.8.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-channel/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-core/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-executor/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-io/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-lite/1.12.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-macro/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-sink/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-task/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures-util/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/futures/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/generic-array/0.14.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/getrandom/0.2.8 \</div>
<div>&nbsp; &nbsp; crate://crates.io/gimli/0.26.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/glob/0.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/globset/0.4.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/goblin/0.5.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/hashbrown/0.12.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/heck/0.4.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/hermit-abi/0.1.19 \</div>
<div>&nbsp; &nbsp; crate://crates.io/hkdf/0.11.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/hmac/0.11.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/human-panic/1.0.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/idna/0.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ignore/0.4.18 \</div>
<div>&nbsp; &nbsp; crate://crates.io/indexmap/1.9.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/indicatif/0.17.0-rc.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/indoc/1.0.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/instant/0.1.12 \</div>
<div>&nbsp; &nbsp; crate://crates.io/io-lifetimes/0.7.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/itertools/0.10.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/itoa/1.0.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/js-sys/0.3.60 \</div>
<div>&nbsp; &nbsp; crate://crates.io/keyring/1.2.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/lazy_static/1.4.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/lddtree/0.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/libc/0.2.137 \</div>
<div>&nbsp; &nbsp; crate://crates.io/linux-raw-sys/0.0.46 \</div>
<div>&nbsp; &nbsp; crate://crates.io/lock_api/0.4.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/log/0.4.17 \</div>
<div>&nbsp; &nbsp; crate://crates.io/lzxd/0.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/mailparse/0.13.8 \</div>
<div>&nbsp; &nbsp; crate://crates.io/matchers/0.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/memchr/2.5.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/memoffset/0.6.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/mime/0.3.16 \</div>
<div>&nbsp; &nbsp; crate://crates.io/mime_guess/2.0.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/minijinja/0.20.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/miniz_oxide/0.5.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/msi/0.5.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/multipart/0.18.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/native-tls/0.2.10 \</div>
<div>&nbsp; &nbsp; crate://crates.io/nb-connect/1.2.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/nix/0.22.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/nu-ansi-term/0.46.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-bigint/0.4.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-complex/0.4.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-integer/0.1.45 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-iter/0.1.43 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-rational/0.4.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-traits/0.2.15 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num/0.4.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num_cpus/1.13.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num_threads/0.1.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/number_prefix/0.4.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/object/0.29.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/once_cell/1.15.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/opaque-debug/0.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/openssl-macros/0.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/openssl-probe/0.1.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/openssl-src/111.22.0+1.1.1q \</div>
<div>&nbsp; &nbsp; crate://crates.io/openssl-sys/0.9.77 \</div>
<div>&nbsp; &nbsp; crate://crates.io/openssl/0.10.42 \</div>
<div>&nbsp; &nbsp; crate://crates.io/os_str_bytes/6.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/os_type/2.6.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/output_vt100/0.1.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/overload/0.1.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/parking/2.0.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/parking_lot/0.12.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/parking_lot_core/0.9.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/path-slash/0.2.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pep440/0.2.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/percent-encoding/2.2.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pin-project-lite/0.2.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pin-utils/0.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pkg-config/0.3.25 \</div>
<div>&nbsp; &nbsp; crate://crates.io/plain/0.2.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/platform-info/1.0.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/polling/2.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ppv-lite86/0.2.16 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pretty_assertions/1.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/proc-macro-crate/0.1.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/proc-macro-crate/1.2.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/proc-macro-error-attr/1.0.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/proc-macro-error/1.0.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/proc-macro2/1.0.47 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pyproject-toml/0.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/python-pkginfo/0.5.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/quote/1.0.21 \</div>
<div>&nbsp; &nbsp; crate://crates.io/quoted_printable/0.4.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rand/0.8.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rand_chacha/0.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rand_core/0.6.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rayon-core/1.9.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rayon/1.5.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/redox_syscall/0.2.16 \</div>
<div>&nbsp; &nbsp; crate://crates.io/redox_users/0.4.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/regex-automata/0.1.10 \</div>
<div>&nbsp; &nbsp; crate://crates.io/regex-syntax/0.6.27 \</div>
<div>&nbsp; &nbsp; crate://crates.io/regex/1.6.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/remove_dir_all/0.5.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rfc2047-decoder/0.1.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ring/0.16.20 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rpassword/6.0.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rustc-demangle/0.1.21 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rustc_version/0.4.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rustix/0.35.12 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rustls/0.20.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rustversion/1.0.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ryu/1.0.11 \</div>
<div>&nbsp; &nbsp; crate://crates.io/same-file/1.0.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/schannel/0.1.20 \</div>
<div>&nbsp; &nbsp; crate://crates.io/scoped-tls/1.0.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/scopeguard/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/scroll/0.11.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/scroll_derive/0.11.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/sct/0.7.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/secret-service/2.0.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/security-framework-sys/2.6.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/security-framework/2.7.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/semver/1.0.14 \</div>
<div>&nbsp; &nbsp; crate://crates.io/serde/1.0.147 \</div>
<div>&nbsp; &nbsp; crate://crates.io/serde_derive/1.0.147 \</div>
<div>&nbsp; &nbsp; crate://crates.io/serde_json/1.0.87 \</div>
<div>&nbsp; &nbsp; crate://crates.io/serde_repr/0.1.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/sha2/0.10.6 \</div>
<div>&nbsp; &nbsp; crate://crates.io/sha2/0.9.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/sharded-slab/0.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/slab/0.4.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/smallvec/1.10.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/smawk/0.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/socket2/0.4.7 \</div>
<div>&nbsp; &nbsp; crate://crates.io/socks/0.3.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/spin/0.5.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/static_assertions/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/strsim/0.10.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/subtle/2.4.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/syn/1.0.103 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tar/0.4.38 \</div>
<div>&nbsp; &nbsp; crate://crates.io/target-lexicon/0.12.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tempfile/3.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/termcolor/1.1.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/terminal_size/0.1.17 \</div>
<div>&nbsp; &nbsp; crate://crates.io/terminal_size/0.2.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/textwrap/0.15.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/textwrap/0.16.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/thiserror-impl/1.0.37 \</div>
<div>&nbsp; &nbsp; crate://crates.io/thiserror/1.0.37 \</div>
<div>&nbsp; &nbsp; crate://crates.io/thread_local/1.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/time-macros/0.2.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/time/0.3.15 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tinyvec/1.6.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tinyvec_macros/0.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/toml/0.5.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/toml_edit/0.14.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tracing-attributes/0.1.23 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tracing-core/0.1.30 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tracing-log/0.1.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tracing-serde/0.1.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tracing-subscriber/0.3.16 \</div>
<div>&nbsp; &nbsp; crate://crates.io/tracing/0.1.37 \</div>
<div>&nbsp; &nbsp; crate://crates.io/twox-hash/1.6.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/typenum/1.15.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/unicase/2.6.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/unicode-bidi/0.3.8 \</div>
<div>&nbsp; &nbsp; crate://crates.io/unicode-ident/1.0.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/unicode-linebreak/0.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/unicode-normalization/0.1.22 \</div>
<div>&nbsp; &nbsp; crate://crates.io/unicode-width/0.1.10 \</div>
<div>&nbsp; &nbsp; crate://crates.io/untrusted/0.7.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ureq/2.5.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/url/2.3.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/uuid/0.8.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/uuid/1.2.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/valuable/0.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/vcpkg/0.2.15 \</div>
<div>&nbsp; &nbsp; crate://crates.io/version_check/0.9.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/waker-fn/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/walkdir/2.3.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \</=
div>
<div>&nbsp; &nbsp; crate://crates.io/wasm-bindgen-backend/0.2.83 \</div>
<div>&nbsp; &nbsp; crate://crates.io/wasm-bindgen-macro-support/0.2.83 \</d=
iv>
<div>&nbsp; &nbsp; crate://crates.io/wasm-bindgen-macro/0.2.83 \</div>
<div>&nbsp; &nbsp; crate://crates.io/wasm-bindgen-shared/0.2.83 \</div>
<div>&nbsp; &nbsp; crate://crates.io/wasm-bindgen/0.2.83 \</div>
<div>&nbsp; &nbsp; crate://crates.io/web-sys/0.3.60 \</div>
<div>&nbsp; &nbsp; crate://crates.io/webpki-roots/0.22.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/webpki/0.22.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/wepoll-ffi/0.1.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/which/4.3.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \</di=
v>
<div>&nbsp; &nbsp; crate://crates.io/winapi-util/0.1.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \</=
div>
<div>&nbsp; &nbsp; crate://crates.io/winapi/0.3.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/windows-sys/0.36.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/windows_aarch64_msvc/0.36.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/windows_i686_gnu/0.36.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/windows_i686_msvc/0.36.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/windows_x86_64_gnu/0.36.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/windows_x86_64_msvc/0.36.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/xattr/0.2.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/xwin/0.2.5 \</div>
<div>&nbsp; &nbsp; crate://crates.io/yansi/0.5.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/zbus/1.9.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/zbus_macros/1.9.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/zip/0.6.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/zvariant/2.10.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/zvariant_derive/2.10.0 \</div>
<div>"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>And this is python3-orjson_3.8.0.bb:</div>
<div>&nbsp;</div>
<div>SUMMARY =3D "Fast, correct Python JSON library supporting dataclasses,=
 datetimes, and numpy"</div>
<div>HOMEPAGE =3D "https://github.com/ijl/orjson"</div>
<div>LICENSE =3D "Apache-2.0 | MIT"</div>
<div>LIC_FILES_CHKSUM =3D "file://LICENSE-MIT;md5=3Db377b220f43d747efdec40d=
69fcaa69d"</div>
<div>&nbsp;</div>
<div>inherit pypi python_setuptools_build_meta python_pyo3 cargo</div>
<div>&nbsp;</div>
<div>SRC_URI +=3D " \</div>
<div>&nbsp; &nbsp; crate://crates.io/ahash/0.8.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/arrayvec/0.7.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/associative-cache/1.0.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/autocfg/1.1.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/beef/0.5.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/bytecount/0.6.3 \</div>
<div>&nbsp; &nbsp; crate://crates.io/castaway/0.2.2 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cc/1.0.73 \</div>
<div>&nbsp; &nbsp; crate://crates.io/cfg-if/1.0.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/chrono/0.4.19 \</div>
<div>&nbsp; &nbsp; crate://crates.io/compact_str/0.6.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/encoding_rs/0.8.31 \</div>
<div>&nbsp; &nbsp; crate://crates.io/itoa/1.0.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/libc/0.2.132 \</div>
<div>&nbsp; &nbsp; crate://crates.io/libm/0.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-integer/0.1.45 \</div>
<div>&nbsp; &nbsp; crate://crates.io/num-traits/0.2.15 \</div>
<div>&nbsp; &nbsp; crate://crates.io/once_cell/1.13.1 \</div>
<div>&nbsp; &nbsp; crate://crates.io/packed_simd_2/0.3.8 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pyo3-build-config/0.17.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/pyo3-ffi/0.17.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/rustversion/1.0.9 \</div>
<div>&nbsp; &nbsp; crate://crates.io/ryu/1.0.11 \</div>
<div>&nbsp; &nbsp; crate://crates.io/serde/1.0.144 \</div>
<div>&nbsp; &nbsp; crate://crates.io/simdutf8/0.1.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/smallvec/1.9.0 \</div>
<div>&nbsp; &nbsp; crate://crates.io/target-lexicon/0.12.4 \</div>
<div>&nbsp; &nbsp; crate://crates.io/version_check/0.9.4 \</div>
<div>"</div>
<div>&nbsp;</div>
<div>PYPI_PACKAGE =3D "orjson"</div>
<div>SRC_URI[md5sum] =3D "d460b188ddaafa36a767abaed541cd10"</div>
<div>SRC_URI[sha256sum] =3D "fb42f7cf57d5804a9daa6b624e3490ec9e2631e042415f=
3aebe9f35a8492ba6c"</div>
<div>&nbsp;</div>
<div>DEPENDS +=3D "maturin-native"</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>However, my solution did not work and I got this error:</div>
<div>&nbsp;</div>
<div>&nbsp;</div>
<div>ERROR: python3-orjson-3.8.0-r0 do_compile: ExecutionError('/home/amged=
r/os/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnueabi/python3-orjs=
on/3.8.0-r0/temp/run.do_compile.451732', 101, None, None)</div>
<div>ERROR: Logfile of failure stored in: /home/amgedr/os/build/tmp/work/co=
rtexa7t2hf-neon-vfpv4-poky-linux-gnueabi/python3-orjson/3.8.0-r0/temp/log.d=
o_compile.451732</div>
<div>Log data follows:</div>
<div>| DEBUG: Executing shell function do_compile</div>
<div>| NOTE: pkg-config:</div>
<div>| NOTE: cargo =3D /home/amgedr/os/build/tmp/work/cortexa7t2hf-neon-vfp=
v4-poky-linux-gnueabi/python3-orjson/3.8.0-r0/recipe-sysroot-native/usr/bin=
/cargo</div>
<div>| NOTE: rustc =3D</div>
<div>| NOTE: cargo build -v --target arm-poky-linux-gnueabi --release --man=
ifest-path=3D/home/amgedr/os/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-li=
nux-gnueabi/python3-orjson/3.8.0-r0/orjson-3.8.0//Cargo.toml</div>
<div>|&nbsp; &nbsp; &nbsp;Updating crates.io index</div>
<div>| warning: spurious network error (2 tries remaining): failed to resol=
ve address for github.com: Name or service not known; class=3DNet (12)</div=
>
<div>| warning: spurious network error (1 tries remaining): failed to resol=
ve address for github.com: Name or service not known; class=3DNet (12)</div=
>
<div>| error: failed to get `ahash` as a dependency of package `orjson v3.8=
.0 (/home/amgedr/os/build/tmp/work/cortexa7t2hf-neon-vfpv4-poky-linux-gnuea=
bi/python3-orjson/3.8.0-r0/orjson-3.8.0)`</div>
<div>|</div>
<div>| Caused by:</div>
<div>|&nbsp; &nbsp;failed to load source for dependency `ahash`</div>
<div>|</div>
<div>| Caused by:</div>
<div>|&nbsp; &nbsp;Unable to update registry `crates-io`</div>
<div>|</div>
<div>| Caused by:</div>
<div>|&nbsp; &nbsp;failed to fetch `https://github.com/rust-lang/crates.io-=
index`</div>
<div>|</div>
<div>| Caused by:</div>
<div>|&nbsp; &nbsp;network failure seems to have happened</div>
<div>|&nbsp; &nbsp;if a proxy or similar is necessary `net.git-fetch-with-c=
li` may help here</div>
<div>|&nbsp; &nbsp;https://doc.rust-lang.org/cargo/reference/config.html#ne=
tgit-fetch-with-cli</div>
<div>|</div>
<div>| Caused by:</div>
<div>|&nbsp; &nbsp;failed to resolve address for github.com: Name or servic=
e not known; class=3DNet (12)</div>
<div>| WARNING: exit code 101 from a shell command.</div>
<div>ERROR: Task (/home/amgedr/os/build/meta-hub/recipes-requirements/pytho=
n3-orjson_3.8.0.bb:do_compile) failed with exit code '1'</div>
<div>&nbsp;</div>
<div>What should I do to get it building python3-orjson?<br /><br />Thanks =
in advance,</div>
<div>Amged</div>
<div>&nbsp;</div>

--rreDdG5DXW3HoRdRqhWr--

