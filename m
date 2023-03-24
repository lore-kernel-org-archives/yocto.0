Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 13574C76196
	for <webhook@archiver.kernel.org>; Fri, 24 Mar 2023 13:41:17 +0000 (UTC)
Received: from mail.kapsi.fi (mail.kapsi.fi [91.232.154.25])
 by mx.groups.io with SMTP id smtpd.web11.101185.1679665268034790956
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Mar 2023 06:41:09 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: lakka.kapsi.fi, ip: 91.232.154.25, mailfrom: mcfrisk@lakka.kapsi.fi)
Received: from kapsi.fi ([2001:67c:1be8::11] helo=lakka.kapsi.fi)
	by mail.kapsi.fi with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1pfhfE-00A4CP-1m; Fri, 24 Mar 2023 15:41:04 +0200
Received: from mcfrisk by lakka.kapsi.fi with local (Exim 4.94.2)
	(envelope-from <mcfrisk@lakka.kapsi.fi>)
	id 1pfhfD-000Leh-Nh; Fri, 24 Mar 2023 15:41:03 +0200
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org
Cc: Mikko Rapeli <mikko.rapeli@linaro.org>
Subject: [meta-security][PATCH v2] parsec-service: update from 1.1.0 to 1.2.0-rc1
Date: Fri, 24 Mar 2023 15:40:54 +0200
Message-Id: <20230324134054.80995-1-mikko.rapeli@linaro.org>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspam-Score: -1.4 (-)
X-Rspam-Report: Action: no action
 Symbol: ARC_NA(0.00)
 Symbol: DMARC_POLICY_SOFTFAIL(0.10)
 Symbol: FROM_HAS_DN(0.00)
 Symbol: TO_DN_SOME(0.00)
 Symbol: R_MISSING_CHARSET(0.50)
 Symbol: R_SPF_ALLOW(-0.20)
 Symbol: MIME_GOOD(-0.10)
 Symbol: TO_MATCH_ENVRCPT_ALL(0.00)
 Symbol: RCVD_TLS_LAST(0.00)
 Symbol: RCPT_COUNT_TWO(0.00)
 Symbol: MID_CONTAINS_FROM(1.00)
 Symbol: NEURAL_HAM(-0.00)
 Symbol: FORGED_SENDER(0.30)
 Symbol: R_DKIM_NA(0.00)
 Symbol: MIME_TRACE(0.00)
 Symbol: ASN(0.00)
 Symbol: FROM_NEQ_ENVFROM(0.00)
 Symbol: BAYES_HAM(-3.00)
 Symbol: RCVD_COUNT_TWO(0.00)
 Message-ID: 20230324134054.80995-1-mikko.rapeli@linaro.org
X-SA-Exim-Connect-IP: 2001:67c:1be8::11
X-SA-Exim-Mail-From: mcfrisk@lakka.kapsi.fi
X-SA-Exim-Scanned: No (on mail.kapsi.fi); SAEximRunCond expanded to false
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Mar 2023 13:41:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59518

parsec-service 1.1.0 fails to compile with latest tpm2-tss update
in meta-security:

| error: failed to run custom build command for `tss-esapi v7.1.0`
|
| Caused by:
|   process didn't exit successfully:
`/oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.1.0-r0/build/target/release/build/tss-esapi-5b5d9342bd16db73/build-script-build`
(exit status: 101)
|   --- stderr
|   thread 'main' panicked at 'Unsupported TSS version: 4',
/oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.1.0-r0/cargo_home/bitbake/tss-esapi-7.1.0/build.rs:9:22

and also latest meta-clang changes break the build with:

|   thread 'main' panicked at '"enum_(unnamed_at_/oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1_1_0-r0/build/target/aarch64-trs-linux-gnu/release/build/psa-crypto-sys-b4f9ce2b7d8846b2/out/include/mbedtls/cipher_h_205_1)" is not a valid Ident', /oe/build/tmp_trs-qemuarm64/work/cortexa57-trs-linux/parsec-service/1.1.0-r0/cargo_home/bitbake/proc-macro2-1.0.43/src/fallback.rs:730:9
|   stack backtrace:
|      0: rust_begin_unwind
|      1: core::panicking::panic_fmt
|      2: proc_macro2::fallback::validate_ident
|      3: proc_macro2::fallback::Ident::_new
|      4: proc_macro2::fallback::Ident::new
|      5: proc_macro2::imp::Ident::new
|      6: proc_macro2::Ident::new
|      7: bindgen::ir::context::BindgenContext::rust_ident_raw
|      8: bindgen::ir::context::BindgenContext::rust_ident
|      9: <bindgen::ir::enum_ty::Enum as bindgen::codegen::CodeGenerator>::codegen
|     10: <bindgen::ir::ty::Type as bindgen::codegen::CodeGenerator>::codegen
|     11: <bindgen::ir::item::Item as bindgen::codegen::CodeGenerator>::codegen
|     12: <bindgen::ir::module::Module as bindgen::codegen::CodeGenerator>::codegen::{{closure}}
|     13: <bindgen::ir::module::Module as bindgen::codegen::CodeGenerator>::codegen
|     14: <bindgen::ir::item::Item as bindgen::codegen::CodeGenerator>::codegen
|     15: bindgen::codegen::codegen::{{closure}}
|     16: bindgen::ir::context::BindgenContext::gen
|     17: bindgen::codegen::codegen
|     18: bindgen::Bindings::generate
|     19: bindgen::Builder::generate
|     20: build_script_build::common::generate_mbed_crypto_bindings
|     21: build_script_build::operations::script_operations
|     22: build_script_build::main
|     23: core::ops::function::FnOnce::call_once
|   note: Some details are omitted, run with `RUST_BACKTRACE=full` for a verbose backtrace.

In both cases fix is to update to the master branch or 1.2.0-rc1 pre-release.
Porting the individual patches did not work due to complex rust crate depencies.

Added LICENSE file checksum. Using cargo-update-recipe-crates.bbclass from
poky to maintain list of crates in the .inc file, but removed entries
for fuzz/Cargo.lock. Tested on qemu that parsec.service stars correctly
and works with swtpm use cases.

Signed-off-by: Mikko Rapeli <mikko.rapeli@linaro.org>
---
 ...ce_1.1.0.inc => parsec-service-crates.inc} | 239 +++++++++---------
 ...e_1.1.0.bb => parsec-service_1.2.0-rc1.bb} |  14 +-
 2 files changed, 134 insertions(+), 119 deletions(-)
 rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.inc => parsec-service-crates.inc} (50%)
 rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.1.0.bb => parsec-service_1.2.0-rc1.bb} (91%)

v2: removed crates for fuzz/Cargo.lock from SRC_URI

v1: https://lists.yoctoproject.org/g/yocto/message/59495

diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
similarity index 50%
rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
rename to meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
index c04bcbd..fe80b42 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service-crates.inc
@@ -1,223 +1,232 @@
-# This file is created from parsec repository Cargo.lock using cargo-bitbake tool
+# Autogenerated with 'bitbake -c update_crates parsec-service'
 
+# from Cargo.lock
 SRC_URI += " \
     crate://crates.io/ahash/0.7.6 \
-    crate://crates.io/aho-corasick/0.7.19 \
+    crate://crates.io/aho-corasick/0.7.20 \
     crate://crates.io/ansi_term/0.12.1 \
-    crate://crates.io/anyhow/1.0.64 \
+    crate://crates.io/anyhow/1.0.69 \
+    crate://crates.io/asn1-rs/0.3.1 \
     crate://crates.io/asn1-rs-derive/0.1.0 \
     crate://crates.io/asn1-rs-impl/0.1.0 \
-    crate://crates.io/asn1-rs/0.3.1 \
     crate://crates.io/atty/0.2.14 \
     crate://crates.io/autocfg/1.1.0 \
-    crate://crates.io/base64/0.13.0 \
+    crate://crates.io/base64/0.13.1 \
     crate://crates.io/bincode/1.3.3 \
     crate://crates.io/bindgen/0.57.0 \
-    crate://crates.io/bindgen/0.59.2 \
+    crate://crates.io/bindgen/0.63.0 \
     crate://crates.io/bitfield/0.13.2 \
     crate://crates.io/bitflags/1.3.2 \
-    crate://crates.io/bumpalo/3.11.0 \
-    crate://crates.io/bytes/1.2.1 \
-    crate://crates.io/cc/1.0.73 \
+    crate://crates.io/bumpalo/3.12.0 \
+    crate://crates.io/bytes/1.4.0 \
+    crate://crates.io/cc/1.0.79 \
     crate://crates.io/cexpr/0.4.0 \
     crate://crates.io/cexpr/0.6.0 \
     crate://crates.io/cfg-if/1.0.0 \
-    crate://crates.io/clang-sys/1.3.3 \
+    crate://crates.io/clang-sys/1.6.0 \
     crate://crates.io/clap/2.34.0 \
     crate://crates.io/cmake/0.1.45 \
     crate://crates.io/const-oid/0.7.1 \
     crate://crates.io/cryptoauthlib-sys/0.2.2 \
-    crate://crates.io/cryptoki-sys/0.1.4 \
-    crate://crates.io/cryptoki/0.3.0 \
-    crate://crates.io/data-encoding/2.3.2 \
-    crate://crates.io/der-parser/7.0.0 \
+    crate://crates.io/cryptoki/0.3.1 \
+    crate://crates.io/cryptoki-sys/0.1.5 \
+    crate://crates.io/data-encoding/2.3.3 \
     crate://crates.io/der/0.5.1 \
+    crate://crates.io/der-parser/7.0.0 \
     crate://crates.io/derivative/2.2.0 \
     crate://crates.io/displaydoc/0.2.3 \
-    crate://crates.io/either/1.8.0 \
+    crate://crates.io/either/1.8.1 \
     crate://crates.io/enumflags2/0.7.5 \
     crate://crates.io/enumflags2_derive/0.7.4 \
     crate://crates.io/env_logger/0.8.4 \
-    crate://crates.io/env_logger/0.9.0 \
+    crate://crates.io/errno/0.2.8 \
+    crate://crates.io/errno-dragonfly/0.1.2 \
     crate://crates.io/fallible-iterator/0.2.0 \
     crate://crates.io/fallible-streaming-iterator/0.1.9 \
-    crate://crates.io/fastrand/1.8.0 \
+    crate://crates.io/fastrand/1.9.0 \
     crate://crates.io/fixedbitset/0.2.0 \
-    crate://crates.io/form_urlencoded/1.0.1 \
-    crate://crates.io/futures-channel/0.3.24 \
-    crate://crates.io/futures-core/0.3.24 \
-    crate://crates.io/futures-executor/0.3.24 \
-    crate://crates.io/futures-io/0.3.24 \
-    crate://crates.io/futures-macro/0.3.24 \
-    crate://crates.io/futures-sink/0.3.24 \
-    crate://crates.io/futures-task/0.3.24 \
-    crate://crates.io/futures-util/0.3.24 \
-    crate://crates.io/futures/0.3.24 \
+    crate://crates.io/form_urlencoded/1.1.0 \
+    crate://crates.io/futures/0.3.27 \
+    crate://crates.io/futures-channel/0.3.27 \
+    crate://crates.io/futures-core/0.3.27 \
+    crate://crates.io/futures-executor/0.3.27 \
+    crate://crates.io/futures-io/0.3.27 \
+    crate://crates.io/futures-macro/0.3.27 \
+    crate://crates.io/futures-sink/0.3.27 \
+    crate://crates.io/futures-task/0.3.27 \
+    crate://crates.io/futures-util/0.3.27 \
     crate://crates.io/generic-array/0.14.6 \
-    crate://crates.io/getrandom/0.2.7 \
-    crate://crates.io/glob/0.3.0 \
-    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
+    crate://crates.io/getrandom/0.2.8 \
+    crate://crates.io/glob/0.3.1 \
     crate://crates.io/grpcio/0.9.1 \
-    crate://crates.io/hashbrown/0.11.2 \
-    crate://crates.io/hashlink/0.7.0 \
+    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
+    crate://crates.io/hashbrown/0.12.3 \
+    crate://crates.io/hashlink/0.8.1 \
     crate://crates.io/heck/0.3.3 \
     crate://crates.io/hermit-abi/0.1.19 \
+    crate://crates.io/hermit-abi/0.2.6 \
     crate://crates.io/hex/0.4.3 \
     crate://crates.io/hostname-validator/1.1.1 \
     crate://crates.io/humantime/2.1.0 \
-    crate://crates.io/idna/0.2.3 \
-    crate://crates.io/indexmap/1.8.2 \
+    crate://crates.io/idna/0.3.0 \
+    crate://crates.io/indexmap/1.9.2 \
     crate://crates.io/instant/0.1.12 \
-    crate://crates.io/itertools/0.10.3 \
-    crate://crates.io/itoa/1.0.3 \
-    crate://crates.io/js-sys/0.3.59 \
+    crate://crates.io/io-lifetimes/1.0.6 \
+    crate://crates.io/itertools/0.10.5 \
+    crate://crates.io/itoa/1.0.6 \
+    crate://crates.io/js-sys/0.3.61 \
     crate://crates.io/jsonwebkey/0.3.5 \
-    crate://crates.io/jsonwebtoken/8.1.1 \
+    crate://crates.io/jsonwebtoken/8.2.0 \
     crate://crates.io/lazy_static/1.4.0 \
     crate://crates.io/lazycell/1.3.0 \
-    crate://crates.io/libc/0.2.132 \
-    crate://crates.io/libloading/0.7.3 \
-    crate://crates.io/libsqlite3-sys/0.23.2 \
+    crate://crates.io/libc/0.2.140 \
+    crate://crates.io/libloading/0.7.4 \
+    crate://crates.io/libsqlite3-sys/0.25.2 \
     crate://crates.io/libz-sys/1.1.8 \
-    crate://crates.io/lock_api/0.4.8 \
+    crate://crates.io/linux-raw-sys/0.1.4 \
+    crate://crates.io/lock_api/0.4.9 \
     crate://crates.io/log/0.4.17 \
-    crate://crates.io/matches/0.1.9 \
     crate://crates.io/mbox/0.6.0 \
     crate://crates.io/memchr/2.5.0 \
     crate://crates.io/minimal-lexical/0.2.1 \
     crate://crates.io/multimap/0.8.3 \
     crate://crates.io/nom/5.1.2 \
-    crate://crates.io/nom/7.1.1 \
+    crate://crates.io/nom/7.1.3 \
+    crate://crates.io/num/0.4.0 \
     crate://crates.io/num-bigint/0.4.3 \
-    crate://crates.io/num-complex/0.4.2 \
+    crate://crates.io/num-complex/0.4.3 \
     crate://crates.io/num-derive/0.3.3 \
     crate://crates.io/num-integer/0.1.45 \
     crate://crates.io/num-iter/0.1.43 \
     crate://crates.io/num-rational/0.4.1 \
     crate://crates.io/num-traits/0.2.15 \
-    crate://crates.io/num/0.4.0 \
-    crate://crates.io/num_cpus/1.13.1 \
+    crate://crates.io/num_cpus/1.15.0 \
     crate://crates.io/num_threads/0.1.6 \
-    crate://crates.io/oid-registry/0.4.0 \
     crate://crates.io/oid/0.2.1 \
-    crate://crates.io/once_cell/1.14.0 \
+    crate://crates.io/oid-registry/0.4.0 \
+    crate://crates.io/once_cell/1.17.1 \
     crate://crates.io/parking_lot/0.11.2 \
-    crate://crates.io/parking_lot_core/0.8.5 \
-    crate://crates.io/parsec-interface/0.27.0 \
+    crate://crates.io/parking_lot_core/0.8.6 \
+    crate://crates.io/parsec-interface/0.28.0 \
     crate://crates.io/peeking_take_while/0.1.2 \
-    crate://crates.io/pem/1.1.0 \
-    crate://crates.io/percent-encoding/2.1.0 \
-    crate://crates.io/pest/2.3.0 \
+    crate://crates.io/pem/1.1.1 \
+    crate://crates.io/percent-encoding/2.2.0 \
+    crate://crates.io/pest/2.5.6 \
     crate://crates.io/petgraph/0.5.1 \
+    crate://crates.io/picky-asn1/0.3.3 \
     crate://crates.io/picky-asn1-der/0.2.5 \
     crate://crates.io/picky-asn1-x509/0.6.1 \
-    crate://crates.io/picky-asn1/0.3.3 \
     crate://crates.io/pin-project-lite/0.2.9 \
     crate://crates.io/pin-utils/0.1.0 \
     crate://crates.io/pkcs8/0.8.0 \
-    crate://crates.io/pkg-config/0.3.25 \
-    crate://crates.io/ppv-lite86/0.2.16 \
-    crate://crates.io/proc-macro-error-attr/1.0.4 \
+    crate://crates.io/pkg-config/0.3.26 \
+    crate://crates.io/ppv-lite86/0.2.17 \
     crate://crates.io/proc-macro-error/1.0.4 \
-    crate://crates.io/proc-macro2/1.0.43 \
+    crate://crates.io/proc-macro-error-attr/1.0.4 \
+    crate://crates.io/proc-macro2/1.0.52 \
+    crate://crates.io/prost/0.8.0 \
     crate://crates.io/prost-build/0.8.0 \
     crate://crates.io/prost-derive/0.8.0 \
     crate://crates.io/prost-types/0.8.0 \
-    crate://crates.io/prost/0.8.0 \
-    crate://crates.io/protobuf/2.27.1 \
-    crate://crates.io/psa-crypto-sys/0.9.3 \
-    crate://crates.io/psa-crypto/0.9.2 \
-    crate://crates.io/quote/1.0.21 \
+    crate://crates.io/protobuf/2.28.0 \
+    crate://crates.io/psa-crypto/0.10.0 \
+    crate://crates.io/psa-crypto-sys/0.10.0 \
+    crate://crates.io/quote/1.0.26 \
     crate://crates.io/rand/0.8.5 \
     crate://crates.io/rand_chacha/0.3.1 \
-    crate://crates.io/rand_core/0.6.3 \
+    crate://crates.io/rand_core/0.6.4 \
     crate://crates.io/redox_syscall/0.2.16 \
-    crate://crates.io/regex-syntax/0.6.27 \
-    crate://crates.io/regex/1.6.0 \
-    crate://crates.io/remove_dir_all/0.5.3 \
+    crate://crates.io/regex/1.7.1 \
+    crate://crates.io/regex-syntax/0.6.28 \
     crate://crates.io/ring/0.16.20 \
-    crate://crates.io/rusqlite/0.26.3 \
+    crate://crates.io/rusqlite/0.28.0 \
     crate://crates.io/rust-cryptoauthlib/0.4.5 \
     crate://crates.io/rustc-hash/1.1.0 \
     crate://crates.io/rustc_version/0.3.3 \
     crate://crates.io/rusticata-macros/4.1.0 \
-    crate://crates.io/ryu/1.0.11 \
+    crate://crates.io/rustix/0.36.9 \
+    crate://crates.io/ryu/1.0.13 \
     crate://crates.io/same-file/1.0.6 \
     crate://crates.io/scopeguard/1.1.0 \
-    crate://crates.io/sd-notify/0.2.0 \
+    crate://crates.io/sd-notify/0.3.0 \
     crate://crates.io/secrecy/0.7.0 \
-    crate://crates.io/semver-parser/0.10.2 \
     crate://crates.io/semver/0.11.0 \
-    crate://crates.io/serde/1.0.144 \
-    crate://crates.io/serde_bytes/0.11.7 \
-    crate://crates.io/serde_derive/1.0.144 \
-    crate://crates.io/serde_json/1.0.85 \
+    crate://crates.io/semver-parser/0.10.2 \
+    crate://crates.io/serde/1.0.156 \
+    crate://crates.io/serde_bytes/0.11.9 \
+    crate://crates.io/serde_derive/1.0.156 \
+    crate://crates.io/serde_json/1.0.94 \
     crate://crates.io/shlex/0.1.1 \
     crate://crates.io/shlex/1.1.0 \
-    crate://crates.io/signal-hook-registry/1.4.0 \
-    crate://crates.io/signal-hook/0.3.14 \
+    crate://crates.io/signal-hook/0.3.15 \
+    crate://crates.io/signal-hook-registry/1.4.1 \
     crate://crates.io/simple_asn1/0.6.2 \
-    crate://crates.io/slab/0.4.7 \
-    crate://crates.io/smallvec/1.9.0 \
+    crate://crates.io/slab/0.4.8 \
+    crate://crates.io/smallvec/1.10.0 \
     crate://crates.io/spiffe/0.2.1 \
     crate://crates.io/spin/0.5.2 \
     crate://crates.io/spki/0.5.4 \
     crate://crates.io/stable_deref_trait/1.2.0 \
     crate://crates.io/strsim/0.8.0 \
-    crate://crates.io/structopt-derive/0.4.18 \
     crate://crates.io/structopt/0.3.26 \
+    crate://crates.io/structopt-derive/0.4.18 \
     crate://crates.io/strum_macros/0.21.1 \
-    crate://crates.io/syn/1.0.99 \
+    crate://crates.io/syn/1.0.109 \
     crate://crates.io/synstructure/0.12.6 \
-    crate://crates.io/target-lexicon/0.12.4 \
-    crate://crates.io/tempfile/3.3.0 \
-    crate://crates.io/termcolor/1.1.3 \
+    crate://crates.io/target-lexicon/0.12.6 \
+    crate://crates.io/tempfile/3.4.0 \
+    crate://crates.io/termcolor/1.2.0 \
     crate://crates.io/textwrap/0.11.0 \
-    crate://crates.io/thiserror-impl/1.0.33 \
-    crate://crates.io/thiserror/1.0.33 \
+    crate://crates.io/thiserror/1.0.39 \
+    crate://crates.io/thiserror-impl/1.0.39 \
     crate://crates.io/threadpool/1.8.1 \
+    crate://crates.io/time/0.3.15 \
     crate://crates.io/time-macros/0.2.4 \
-    crate://crates.io/time/0.3.14 \
     crate://crates.io/tinyvec/1.6.0 \
-    crate://crates.io/tinyvec_macros/0.1.0 \
-    crate://crates.io/toml/0.5.9 \
-    crate://crates.io/tss-esapi-sys/0.3.0 \
-    crate://crates.io/tss-esapi/7.1.0 \
-    crate://crates.io/typenum/1.15.0 \
-    crate://crates.io/ucd-trie/0.1.4 \
-    crate://crates.io/unicode-bidi/0.3.8 \
-    crate://crates.io/unicode-ident/1.0.3 \
-    crate://crates.io/unicode-normalization/0.1.21 \
-    crate://crates.io/unicode-segmentation/1.9.0 \
-    crate://crates.io/unicode-width/0.1.9 \
-    crate://crates.io/unicode-xid/0.2.3 \
+    crate://crates.io/tinyvec_macros/0.1.1 \
+    crate://crates.io/toml/0.5.11 \
+    crate://crates.io/tss-esapi/7.2.0 \
+    crate://crates.io/tss-esapi-sys/0.4.0 \
+    crate://crates.io/typenum/1.16.0 \
+    crate://crates.io/ucd-trie/0.1.5 \
+    crate://crates.io/unicode-bidi/0.3.11 \
+    crate://crates.io/unicode-ident/1.0.8 \
+    crate://crates.io/unicode-normalization/0.1.22 \
+    crate://crates.io/unicode-segmentation/1.10.1 \
+    crate://crates.io/unicode-width/0.1.10 \
+    crate://crates.io/unicode-xid/0.2.4 \
     crate://crates.io/untrusted/0.7.1 \
-    crate://crates.io/url/2.2.2 \
+    crate://crates.io/url/2.3.1 \
     crate://crates.io/users/0.11.0 \
     crate://crates.io/uuid/0.8.2 \
     crate://crates.io/vcpkg/0.2.15 \
     crate://crates.io/vec_map/0.8.2 \
-    crate://crates.io/version/3.0.0 \
     crate://crates.io/version_check/0.9.4 \
     crate://crates.io/walkdir/2.3.2 \
     crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
-    crate://crates.io/wasm-bindgen-backend/0.2.82 \
-    crate://crates.io/wasm-bindgen-macro-support/0.2.82 \
-    crate://crates.io/wasm-bindgen-macro/0.2.82 \
-    crate://crates.io/wasm-bindgen-shared/0.2.82 \
-    crate://crates.io/wasm-bindgen/0.2.82 \
-    crate://crates.io/web-sys/0.3.59 \
-    crate://crates.io/which/4.3.0 \
+    crate://crates.io/wasm-bindgen/0.2.84 \
+    crate://crates.io/wasm-bindgen-backend/0.2.84 \
+    crate://crates.io/wasm-bindgen-macro/0.2.84 \
+    crate://crates.io/wasm-bindgen-macro-support/0.2.84 \
+    crate://crates.io/wasm-bindgen-shared/0.2.84 \
+    crate://crates.io/web-sys/0.3.61 \
+    crate://crates.io/which/4.4.0 \
+    crate://crates.io/winapi/0.3.9 \
     crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
     crate://crates.io/winapi-util/0.1.5 \
     crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
-    crate://crates.io/winapi/0.3.9 \
+    crate://crates.io/windows-sys/0.42.0 \
+    crate://crates.io/windows-sys/0.45.0 \
+    crate://crates.io/windows-targets/0.42.2 \
+    crate://crates.io/windows_aarch64_gnullvm/0.42.2 \
+    crate://crates.io/windows_aarch64_msvc/0.42.2 \
+    crate://crates.io/windows_i686_gnu/0.42.2 \
+    crate://crates.io/windows_i686_msvc/0.42.2 \
+    crate://crates.io/windows_x86_64_gnu/0.42.2 \
+    crate://crates.io/windows_x86_64_gnullvm/0.42.2 \
+    crate://crates.io/windows_x86_64_msvc/0.42.2 \
     crate://crates.io/x509-parser/0.13.2 \
     crate://crates.io/yasna/0.4.0 \
     crate://crates.io/zeroize/1.5.7 \
-    crate://crates.io/zeroize_derive/1.3.2 \
-"
-
-LIC_FILES_CHKSUM = " \
-    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
+    crate://crates.io/zeroize_derive/1.3.3 \
 "
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0-rc1.bb
similarity index 91%
rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
rename to meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0-rc1.bb
index 218b776..7dfd214 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.2.0-rc1.bb
@@ -1,16 +1,22 @@
 SUMMARY = "Platform AbstRaction for SECurity Daemon"
 HOMEPAGE = "https://github.com/parallaxsecond/parsec"
 LICENSE = "Apache-2.0"
+LIC_FILES_CHKSUM = "file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57"
 
-inherit cargo pkgconfig
-DEPENDS = "clang-native"
+inherit cargo pkgconfig cargo-update-recipe-crates
 
-SRC_URI += "crate://crates.io/parsec-service/${PV} \
+DEPENDS += "clang-native"
+
+SRC_URI += "git://github.com/parallaxsecond/parsec;protocol=https;branch=main \
             file://parsec_init \
             file://systemd.patch \
             file://parsec-tmpfiles.conf \
 "
 
+SRCREV = "f7eda9396eae530771b24b097b709d35d54e40c8"
+
+S = "${WORKDIR}/git"
+
 PACKAGECONFIG ??= "PKCS11 MBED-CRYPTO"
 have_TPM = "${@bb.utils.contains('DISTRO_FEATURES', 'tpm2', 'TPM', '', d)}"
 PACKAGECONFIG:append = " ${@bb.utils.contains('BBFILE_COLLECTIONS', 'tpm-layer', '${have_TPM}', '', d)}"
@@ -82,7 +88,7 @@ FILES:${PN} += " \
     ${sysconfdir}/init.d/parsec \
 "
 
-require parsec-service_${PV}.inc
+require parsec-service-crates.inc
 
 # The QA check has been temporarily disabled. An issue has been created 
 # upstream to fix this. 
-- 
2.34.1


