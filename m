Return-Path: <gowtham.sureshkumar@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5D6D0C4321E
	for <webhook@archiver.kernel.org>; Thu, 20 Oct 2022 12:39:36 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web09.9079.1666269567689148595
 for <yocto@lists.yoctoproject.org>;
 Thu, 20 Oct 2022 05:39:28 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: gowtham.sureshkumar@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id EF230ED1;
	Thu, 20 Oct 2022 05:39:32 -0700 (PDT)
Received: from e126345.cambridge.arm.com (e126345.cambridge.arm.com [10.1.28.174])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E00923F67D;
	Thu, 20 Oct 2022 05:39:25 -0700 (PDT)
From: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
To: yocto@lists.yoctoproject.org
Cc: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
Subject: [meta-security][PATCH] Update PARSEC recipe to latest v1.1.0 release
Date: Thu, 20 Oct 2022 13:39:17 +0100
Message-Id: <20221020123917.14834-1-gowtham.sureshkumar@arm.com>
X-Mailer: git-send-email 2.17.1
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 20 Oct 2022 12:39:36 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58381

This commit updates the parsec-service to v1.1.0 and the parsec-tool
to v0.5.4.

The buildpaths QA check has been disabled and relevant
issue links have been added to address this.

Signed-off-by: Gowtham Suresh Kumar <gowtham.sureshkumar@arm.com>
---
 meta-parsec/README.md                         |   1 +
 ...rvice_1.0.0.bb => parsec-service_1.1.0.bb} |   5 +
 ...ice_1.0.0.inc => parsec-service_1.1.0.inc} | 207 +++++++++---------
 .../parsec-tool/parsec-tool_0.5.2.inc         | 196 -----------------
 ...sec-tool_0.5.2.bb => parsec-tool_0.5.4.bb} |   5 +
 .../parsec-tool/parsec-tool_0.5.4.inc         | 176 +++++++++++++++
 6 files changed, 286 insertions(+), 304 deletions(-)
 rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.0.0.bb => parsec-service_1.1.0.bb} (95%)
 rename meta-parsec/recipes-parsec/parsec-service/{parsec-service_1.0.0.inc => parsec-service_1.1.0.inc} (52%)
 delete mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc
 rename meta-parsec/recipes-parsec/parsec-tool/{parsec-tool_0.5.2.bb => parsec-tool_0.5.4.bb} (71%)
 create mode 100644 meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.inc

diff --git a/meta-parsec/README.md b/meta-parsec/README.md
index 99935bc..9b231f6 100644
--- a/meta-parsec/README.md
+++ b/meta-parsec/README.md
@@ -48,6 +48,7 @@ PKCS11 and MBED-CRYPTO providers build-in.
 - DISTRO_FEATURES contains "tmp2" and
 - "tpm-layer" (meta-tpm) is included in BBLAYERS
 
+The trusted service provider depends on libts recipe from meta-arm layer. 
 
 You can use PACKAGECONFIG for Parsec servic recipe to define
 what providers should be built in. For example:
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
similarity index 95%
rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
rename to meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
index 931abee..218b776 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.bb
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.bb
@@ -83,3 +83,8 @@ FILES:${PN} += " \
 "
 
 require parsec-service_${PV}.inc
+
+# The QA check has been temporarily disabled. An issue has been created 
+# upstream to fix this. 
+# https://github.com/parallaxsecond/parsec/issues/645
+INSANE_SKIP:${PN}-dbg += "buildpaths"
diff --git a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
similarity index 52%
rename from meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc
rename to meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
index b6934f8..c04bcbd 100644
--- a/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.0.0.inc
+++ b/meta-parsec/recipes-parsec/parsec-service/parsec-service_1.1.0.inc
@@ -2,61 +2,59 @@
 
 SRC_URI += " \
     crate://crates.io/ahash/0.7.6 \
-    crate://crates.io/aho-corasick/0.7.18 \
+    crate://crates.io/aho-corasick/0.7.19 \
     crate://crates.io/ansi_term/0.12.1 \
-    crate://crates.io/anyhow/1.0.56 \
-    crate://crates.io/arrayvec/0.5.2 \
+    crate://crates.io/anyhow/1.0.64 \
+    crate://crates.io/asn1-rs-derive/0.1.0 \
+    crate://crates.io/asn1-rs-impl/0.1.0 \
+    crate://crates.io/asn1-rs/0.3.1 \
     crate://crates.io/atty/0.2.14 \
     crate://crates.io/autocfg/1.1.0 \
-    crate://crates.io/base64/0.12.3 \
     crate://crates.io/base64/0.13.0 \
     crate://crates.io/bincode/1.3.3 \
     crate://crates.io/bindgen/0.57.0 \
     crate://crates.io/bindgen/0.59.2 \
     crate://crates.io/bitfield/0.13.2 \
     crate://crates.io/bitflags/1.3.2 \
-    crate://crates.io/bitvec/0.19.6 \
-    crate://crates.io/bumpalo/3.9.1 \
-    crate://crates.io/bytes/1.1.0 \
+    crate://crates.io/bumpalo/3.11.0 \
+    crate://crates.io/bytes/1.2.1 \
     crate://crates.io/cc/1.0.73 \
     crate://crates.io/cexpr/0.4.0 \
     crate://crates.io/cexpr/0.6.0 \
     crate://crates.io/cfg-if/1.0.0 \
-    crate://crates.io/chrono/0.4.19 \
-    crate://crates.io/clang-sys/1.3.1 \
+    crate://crates.io/clang-sys/1.3.3 \
     crate://crates.io/clap/2.34.0 \
     crate://crates.io/cmake/0.1.45 \
-    crate://crates.io/const-oid/0.6.2 \
+    crate://crates.io/const-oid/0.7.1 \
     crate://crates.io/cryptoauthlib-sys/0.2.2 \
-    crate://crates.io/cryptoki-sys/0.1.3 \
-    crate://crates.io/cryptoki/0.2.1 \
+    crate://crates.io/cryptoki-sys/0.1.4 \
+    crate://crates.io/cryptoki/0.3.0 \
     crate://crates.io/data-encoding/2.3.2 \
-    crate://crates.io/der-oid-macro/0.4.0 \
-    crate://crates.io/der-parser/5.1.2 \
-    crate://crates.io/der/0.4.5 \
+    crate://crates.io/der-parser/7.0.0 \
+    crate://crates.io/der/0.5.1 \
     crate://crates.io/derivative/2.2.0 \
-    crate://crates.io/either/1.6.1 \
-    crate://crates.io/enumflags2/0.7.3 \
-    crate://crates.io/enumflags2_derive/0.7.3 \
+    crate://crates.io/displaydoc/0.2.3 \
+    crate://crates.io/either/1.8.0 \
+    crate://crates.io/enumflags2/0.7.5 \
+    crate://crates.io/enumflags2_derive/0.7.4 \
     crate://crates.io/env_logger/0.8.4 \
     crate://crates.io/env_logger/0.9.0 \
     crate://crates.io/fallible-iterator/0.2.0 \
     crate://crates.io/fallible-streaming-iterator/0.1.9 \
-    crate://crates.io/fastrand/1.7.0 \
+    crate://crates.io/fastrand/1.8.0 \
     crate://crates.io/fixedbitset/0.2.0 \
     crate://crates.io/form_urlencoded/1.0.1 \
-    crate://crates.io/funty/1.1.0 \
-    crate://crates.io/futures-channel/0.3.21 \
-    crate://crates.io/futures-core/0.3.21 \
-    crate://crates.io/futures-executor/0.3.21 \
-    crate://crates.io/futures-io/0.3.21 \
-    crate://crates.io/futures-macro/0.3.21 \
-    crate://crates.io/futures-sink/0.3.21 \
-    crate://crates.io/futures-task/0.3.21 \
-    crate://crates.io/futures-util/0.3.21 \
-    crate://crates.io/futures/0.3.21 \
-    crate://crates.io/generic-array/0.14.5 \
-    crate://crates.io/getrandom/0.2.5 \
+    crate://crates.io/futures-channel/0.3.24 \
+    crate://crates.io/futures-core/0.3.24 \
+    crate://crates.io/futures-executor/0.3.24 \
+    crate://crates.io/futures-io/0.3.24 \
+    crate://crates.io/futures-macro/0.3.24 \
+    crate://crates.io/futures-sink/0.3.24 \
+    crate://crates.io/futures-task/0.3.24 \
+    crate://crates.io/futures-util/0.3.24 \
+    crate://crates.io/futures/0.3.24 \
+    crate://crates.io/generic-array/0.14.6 \
+    crate://crates.io/getrandom/0.2.7 \
     crate://crates.io/glob/0.3.0 \
     crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
     crate://crates.io/grpcio/0.9.1 \
@@ -65,140 +63,134 @@ SRC_URI += " \
     crate://crates.io/heck/0.3.3 \
     crate://crates.io/hermit-abi/0.1.19 \
     crate://crates.io/hex/0.4.3 \
-    crate://crates.io/hostname-validator/1.1.0 \
+    crate://crates.io/hostname-validator/1.1.1 \
     crate://crates.io/humantime/2.1.0 \
     crate://crates.io/idna/0.2.3 \
-    crate://crates.io/indexmap/1.8.0 \
+    crate://crates.io/indexmap/1.8.2 \
     crate://crates.io/instant/0.1.12 \
     crate://crates.io/itertools/0.10.3 \
-    crate://crates.io/itoa/1.0.1 \
-    crate://crates.io/js-sys/0.3.56 \
-    crate://crates.io/jsonwebkey/0.3.2 \
-    crate://crates.io/jsonwebtoken/7.2.0 \
+    crate://crates.io/itoa/1.0.3 \
+    crate://crates.io/js-sys/0.3.59 \
+    crate://crates.io/jsonwebkey/0.3.5 \
+    crate://crates.io/jsonwebtoken/8.1.1 \
     crate://crates.io/lazy_static/1.4.0 \
     crate://crates.io/lazycell/1.3.0 \
-    crate://crates.io/lexical-core/0.7.6 \
-    crate://crates.io/libc/0.2.120 \
+    crate://crates.io/libc/0.2.132 \
     crate://crates.io/libloading/0.7.3 \
     crate://crates.io/libsqlite3-sys/0.23.2 \
-    crate://crates.io/libz-sys/1.1.5 \
-    crate://crates.io/lock_api/0.4.6 \
-    crate://crates.io/log/0.4.14 \
+    crate://crates.io/libz-sys/1.1.8 \
+    crate://crates.io/lock_api/0.4.8 \
+    crate://crates.io/log/0.4.17 \
     crate://crates.io/matches/0.1.9 \
     crate://crates.io/mbox/0.6.0 \
-    crate://crates.io/memchr/2.4.1 \
+    crate://crates.io/memchr/2.5.0 \
     crate://crates.io/minimal-lexical/0.2.1 \
     crate://crates.io/multimap/0.8.3 \
     crate://crates.io/nom/5.1.2 \
-    crate://crates.io/nom/6.1.2 \
     crate://crates.io/nom/7.1.1 \
-    crate://crates.io/num-bigint/0.2.6 \
-    crate://crates.io/num-bigint/0.3.3 \
     crate://crates.io/num-bigint/0.4.3 \
-    crate://crates.io/num-complex/0.3.1 \
+    crate://crates.io/num-complex/0.4.2 \
     crate://crates.io/num-derive/0.3.3 \
-    crate://crates.io/num-integer/0.1.44 \
-    crate://crates.io/num-iter/0.1.42 \
-    crate://crates.io/num-rational/0.3.2 \
-    crate://crates.io/num-traits/0.2.14 \
-    crate://crates.io/num/0.3.1 \
+    crate://crates.io/num-integer/0.1.45 \
+    crate://crates.io/num-iter/0.1.43 \
+    crate://crates.io/num-rational/0.4.1 \
+    crate://crates.io/num-traits/0.2.15 \
+    crate://crates.io/num/0.4.0 \
     crate://crates.io/num_cpus/1.13.1 \
-    crate://crates.io/oid-registry/0.1.5 \
+    crate://crates.io/num_threads/0.1.6 \
+    crate://crates.io/oid-registry/0.4.0 \
     crate://crates.io/oid/0.2.1 \
-    crate://crates.io/once_cell/1.10.0 \
+    crate://crates.io/once_cell/1.14.0 \
     crate://crates.io/parking_lot/0.11.2 \
     crate://crates.io/parking_lot_core/0.8.5 \
-    crate://crates.io/parsec-interface/0.26.0 \
+    crate://crates.io/parsec-interface/0.27.0 \
     crate://crates.io/peeking_take_while/0.1.2 \
-    crate://crates.io/pem/0.8.3 \
+    crate://crates.io/pem/1.1.0 \
     crate://crates.io/percent-encoding/2.1.0 \
-    crate://crates.io/pest/2.1.3 \
+    crate://crates.io/pest/2.3.0 \
     crate://crates.io/petgraph/0.5.1 \
     crate://crates.io/picky-asn1-der/0.2.5 \
     crate://crates.io/picky-asn1-x509/0.6.1 \
     crate://crates.io/picky-asn1/0.3.3 \
-    crate://crates.io/pin-project-lite/0.2.8 \
+    crate://crates.io/pin-project-lite/0.2.9 \
     crate://crates.io/pin-utils/0.1.0 \
-    crate://crates.io/pkcs8/0.7.6 \
-    crate://crates.io/pkg-config/0.3.24 \
+    crate://crates.io/pkcs8/0.8.0 \
+    crate://crates.io/pkg-config/0.3.25 \
     crate://crates.io/ppv-lite86/0.2.16 \
     crate://crates.io/proc-macro-error-attr/1.0.4 \
     crate://crates.io/proc-macro-error/1.0.4 \
-    crate://crates.io/proc-macro2/1.0.36 \
+    crate://crates.io/proc-macro2/1.0.43 \
     crate://crates.io/prost-build/0.8.0 \
     crate://crates.io/prost-derive/0.8.0 \
     crate://crates.io/prost-types/0.8.0 \
     crate://crates.io/prost/0.8.0 \
     crate://crates.io/protobuf/2.27.1 \
-    crate://crates.io/psa-crypto-sys/0.9.2 \
-    crate://crates.io/psa-crypto/0.9.1 \
-    crate://crates.io/quote/1.0.15 \
-    crate://crates.io/radium/0.5.3 \
+    crate://crates.io/psa-crypto-sys/0.9.3 \
+    crate://crates.io/psa-crypto/0.9.2 \
+    crate://crates.io/quote/1.0.21 \
     crate://crates.io/rand/0.8.5 \
     crate://crates.io/rand_chacha/0.3.1 \
     crate://crates.io/rand_core/0.6.3 \
-    crate://crates.io/redox_syscall/0.2.11 \
-    crate://crates.io/regex-syntax/0.6.25 \
-    crate://crates.io/regex/1.5.5 \
+    crate://crates.io/redox_syscall/0.2.16 \
+    crate://crates.io/regex-syntax/0.6.27 \
+    crate://crates.io/regex/1.6.0 \
     crate://crates.io/remove_dir_all/0.5.3 \
     crate://crates.io/ring/0.16.20 \
     crate://crates.io/rusqlite/0.26.3 \
     crate://crates.io/rust-cryptoauthlib/0.4.5 \
     crate://crates.io/rustc-hash/1.1.0 \
     crate://crates.io/rustc_version/0.3.3 \
-    crate://crates.io/rusticata-macros/3.2.0 \
-    crate://crates.io/rustversion/1.0.6 \
-    crate://crates.io/ryu/1.0.9 \
+    crate://crates.io/rusticata-macros/4.1.0 \
+    crate://crates.io/ryu/1.0.11 \
     crate://crates.io/same-file/1.0.6 \
     crate://crates.io/scopeguard/1.1.0 \
     crate://crates.io/sd-notify/0.2.0 \
     crate://crates.io/secrecy/0.7.0 \
     crate://crates.io/semver-parser/0.10.2 \
     crate://crates.io/semver/0.11.0 \
-    crate://crates.io/serde/1.0.136 \
-    crate://crates.io/serde_bytes/0.11.5 \
-    crate://crates.io/serde_derive/1.0.136 \
-    crate://crates.io/serde_json/1.0.79 \
+    crate://crates.io/serde/1.0.144 \
+    crate://crates.io/serde_bytes/0.11.7 \
+    crate://crates.io/serde_derive/1.0.144 \
+    crate://crates.io/serde_json/1.0.85 \
     crate://crates.io/shlex/0.1.1 \
     crate://crates.io/shlex/1.1.0 \
     crate://crates.io/signal-hook-registry/1.4.0 \
-    crate://crates.io/signal-hook/0.3.13 \
-    crate://crates.io/simple_asn1/0.4.1 \
-    crate://crates.io/simple_asn1/0.5.4 \
-    crate://crates.io/slab/0.4.5 \
-    crate://crates.io/smallvec/1.8.0 \
-    crate://crates.io/spiffe/0.2.0 \
+    crate://crates.io/signal-hook/0.3.14 \
+    crate://crates.io/simple_asn1/0.6.2 \
+    crate://crates.io/slab/0.4.7 \
+    crate://crates.io/smallvec/1.9.0 \
+    crate://crates.io/spiffe/0.2.1 \
     crate://crates.io/spin/0.5.2 \
-    crate://crates.io/spki/0.4.1 \
+    crate://crates.io/spki/0.5.4 \
     crate://crates.io/stable_deref_trait/1.2.0 \
-    crate://crates.io/static_assertions/1.1.0 \
     crate://crates.io/strsim/0.8.0 \
     crate://crates.io/structopt-derive/0.4.18 \
     crate://crates.io/structopt/0.3.26 \
     crate://crates.io/strum_macros/0.21.1 \
-    crate://crates.io/syn/1.0.88 \
+    crate://crates.io/syn/1.0.99 \
     crate://crates.io/synstructure/0.12.6 \
-    crate://crates.io/tap/1.0.1 \
-    crate://crates.io/target-lexicon/0.12.3 \
+    crate://crates.io/target-lexicon/0.12.4 \
     crate://crates.io/tempfile/3.3.0 \
     crate://crates.io/termcolor/1.1.3 \
     crate://crates.io/textwrap/0.11.0 \
-    crate://crates.io/thiserror-impl/1.0.30 \
-    crate://crates.io/thiserror/1.0.30 \
+    crate://crates.io/thiserror-impl/1.0.33 \
+    crate://crates.io/thiserror/1.0.33 \
     crate://crates.io/threadpool/1.8.1 \
-    crate://crates.io/time/0.1.44 \
-    crate://crates.io/tinyvec/1.5.1 \
+    crate://crates.io/time-macros/0.2.4 \
+    crate://crates.io/time/0.3.14 \
+    crate://crates.io/tinyvec/1.6.0 \
     crate://crates.io/tinyvec_macros/0.1.0 \
-    crate://crates.io/toml/0.5.8 \
+    crate://crates.io/toml/0.5.9 \
     crate://crates.io/tss-esapi-sys/0.3.0 \
-    crate://crates.io/tss-esapi/7.0.1 \
+    crate://crates.io/tss-esapi/7.1.0 \
     crate://crates.io/typenum/1.15.0 \
-    crate://crates.io/ucd-trie/0.1.3 \
-    crate://crates.io/unicode-bidi/0.3.7 \
-    crate://crates.io/unicode-normalization/0.1.19 \
+    crate://crates.io/ucd-trie/0.1.4 \
+    crate://crates.io/unicode-bidi/0.3.8 \
+    crate://crates.io/unicode-ident/1.0.3 \
+    crate://crates.io/unicode-normalization/0.1.21 \
     crate://crates.io/unicode-segmentation/1.9.0 \
     crate://crates.io/unicode-width/0.1.9 \
-    crate://crates.io/unicode-xid/0.2.2 \
+    crate://crates.io/unicode-xid/0.2.3 \
     crate://crates.io/untrusted/0.7.1 \
     crate://crates.io/url/2.2.2 \
     crate://crates.io/users/0.11.0 \
@@ -208,22 +200,21 @@ SRC_URI += " \
     crate://crates.io/version/3.0.0 \
     crate://crates.io/version_check/0.9.4 \
     crate://crates.io/walkdir/2.3.2 \
-    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
-    crate://crates.io/wasm-bindgen-backend/0.2.79 \
-    crate://crates.io/wasm-bindgen-macro-support/0.2.79 \
-    crate://crates.io/wasm-bindgen-macro/0.2.79 \
-    crate://crates.io/wasm-bindgen-shared/0.2.79 \
-    crate://crates.io/wasm-bindgen/0.2.79 \
-    crate://crates.io/web-sys/0.3.56 \
-    crate://crates.io/which/4.2.4 \
+    crate://crates.io/wasi/0.11.0+wasi-snapshot-preview1 \
+    crate://crates.io/wasm-bindgen-backend/0.2.82 \
+    crate://crates.io/wasm-bindgen-macro-support/0.2.82 \
+    crate://crates.io/wasm-bindgen-macro/0.2.82 \
+    crate://crates.io/wasm-bindgen-shared/0.2.82 \
+    crate://crates.io/wasm-bindgen/0.2.82 \
+    crate://crates.io/web-sys/0.3.59 \
+    crate://crates.io/which/4.3.0 \
     crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
     crate://crates.io/winapi-util/0.1.5 \
     crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
     crate://crates.io/winapi/0.3.9 \
-    crate://crates.io/wyz/0.2.0 \
-    crate://crates.io/x509-parser/0.9.2 \
-    crate://crates.io/yasna/0.3.2 \
-    crate://crates.io/zeroize/1.3.0 \
+    crate://crates.io/x509-parser/0.13.2 \
+    crate://crates.io/yasna/0.4.0 \
+    crate://crates.io/zeroize/1.5.7 \
     crate://crates.io/zeroize_derive/1.3.2 \
 "
 
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc
deleted file mode 100644
index d17ec25..0000000
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.inc
+++ /dev/null
@@ -1,196 +0,0 @@
-# This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
-
-SRC_URI += " \
-    crate://crates.io/aho-corasick/0.7.18 \
-    crate://crates.io/ansi_term/0.12.1 \
-    crate://crates.io/anyhow/1.0.56 \
-    crate://crates.io/arrayvec/0.5.2 \
-    crate://crates.io/atty/0.2.14 \
-    crate://crates.io/autocfg/1.1.0 \
-    crate://crates.io/base64/0.12.3 \
-    crate://crates.io/base64/0.13.0 \
-    crate://crates.io/bincode/1.3.3 \
-    crate://crates.io/bindgen/0.57.0 \
-    crate://crates.io/bitflags/1.3.2 \
-    crate://crates.io/bitvec/0.19.6 \
-    crate://crates.io/block-buffer/0.9.0 \
-    crate://crates.io/bumpalo/3.9.1 \
-    crate://crates.io/bytes/1.1.0 \
-    crate://crates.io/cc/1.0.73 \
-    crate://crates.io/cexpr/0.4.0 \
-    crate://crates.io/cfg-if/1.0.0 \
-    crate://crates.io/chrono/0.4.19 \
-    crate://crates.io/clang-sys/1.3.1 \
-    crate://crates.io/clap/2.34.0 \
-    crate://crates.io/clap/3.0.0-beta.5 \
-    crate://crates.io/clap_derive/3.0.0-beta.5 \
-    crate://crates.io/cmake/0.1.48 \
-    crate://crates.io/const-oid/0.6.2 \
-    crate://crates.io/cpufeatures/0.2.1 \
-    crate://crates.io/data-encoding/2.3.2 \
-    crate://crates.io/der-oid-macro/0.4.0 \
-    crate://crates.io/der-parser/5.1.2 \
-    crate://crates.io/der/0.4.5 \
-    crate://crates.io/derivative/2.2.0 \
-    crate://crates.io/digest/0.9.0 \
-    crate://crates.io/either/1.6.1 \
-    crate://crates.io/env_logger/0.8.4 \
-    crate://crates.io/form_urlencoded/1.0.1 \
-    crate://crates.io/funty/1.1.0 \
-    crate://crates.io/futures-channel/0.3.21 \
-    crate://crates.io/futures-core/0.3.21 \
-    crate://crates.io/futures-executor/0.3.21 \
-    crate://crates.io/futures-io/0.3.21 \
-    crate://crates.io/futures-macro/0.3.21 \
-    crate://crates.io/futures-sink/0.3.21 \
-    crate://crates.io/futures-task/0.3.21 \
-    crate://crates.io/futures-util/0.3.21 \
-    crate://crates.io/futures/0.3.21 \
-    crate://crates.io/generic-array/0.14.5 \
-    crate://crates.io/glob/0.3.0 \
-    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
-    crate://crates.io/grpcio/0.9.1 \
-    crate://crates.io/hashbrown/0.11.2 \
-    crate://crates.io/heck/0.3.3 \
-    crate://crates.io/hermit-abi/0.1.19 \
-    crate://crates.io/humantime/2.1.0 \
-    crate://crates.io/idna/0.2.3 \
-    crate://crates.io/indexmap/1.8.0 \
-    crate://crates.io/instant/0.1.12 \
-    crate://crates.io/itertools/0.10.3 \
-    crate://crates.io/itoa/1.0.1 \
-    crate://crates.io/js-sys/0.3.56 \
-    crate://crates.io/jsonwebkey/0.3.2 \
-    crate://crates.io/jsonwebtoken/7.2.0 \
-    crate://crates.io/lazy_static/1.4.0 \
-    crate://crates.io/lazycell/1.3.0 \
-    crate://crates.io/lexical-core/0.7.6 \
-    crate://crates.io/libc/0.2.120 \
-    crate://crates.io/libloading/0.7.3 \
-    crate://crates.io/libz-sys/1.1.5 \
-    crate://crates.io/lock_api/0.4.6 \
-    crate://crates.io/log/0.4.14 \
-    crate://crates.io/matches/0.1.9 \
-    crate://crates.io/memchr/2.4.1 \
-    crate://crates.io/nom/5.1.2 \
-    crate://crates.io/nom/6.1.2 \
-    crate://crates.io/num-bigint/0.2.6 \
-    crate://crates.io/num-bigint/0.3.3 \
-    crate://crates.io/num-bigint/0.4.3 \
-    crate://crates.io/num-complex/0.3.1 \
-    crate://crates.io/num-derive/0.3.3 \
-    crate://crates.io/num-integer/0.1.44 \
-    crate://crates.io/num-iter/0.1.42 \
-    crate://crates.io/num-rational/0.3.2 \
-    crate://crates.io/num-traits/0.2.14 \
-    crate://crates.io/num/0.3.1 \
-    crate://crates.io/num_threads/0.1.5 \
-    crate://crates.io/oid-registry/0.1.5 \
-    crate://crates.io/oid/0.2.1 \
-    crate://crates.io/once_cell/1.10.0 \
-    crate://crates.io/opaque-debug/0.3.0 \
-    crate://crates.io/os_str_bytes/4.1.1 \
-    crate://crates.io/parking_lot/0.11.2 \
-    crate://crates.io/parking_lot_core/0.8.5 \
-    crate://crates.io/parsec-client/0.14.0 \
-    crate://crates.io/parsec-interface/0.26.0 \
-    crate://crates.io/peeking_take_while/0.1.2 \
-    crate://crates.io/pem/0.8.3 \
-    crate://crates.io/pem/1.0.2 \
-    crate://crates.io/percent-encoding/2.1.0 \
-    crate://crates.io/picky-asn1-der/0.2.5 \
-    crate://crates.io/picky-asn1-x509/0.6.1 \
-    crate://crates.io/picky-asn1/0.3.3 \
-    crate://crates.io/pin-project-lite/0.2.8 \
-    crate://crates.io/pin-utils/0.1.0 \
-    crate://crates.io/pkcs8/0.7.6 \
-    crate://crates.io/pkg-config/0.3.24 \
-    crate://crates.io/proc-macro-error-attr/1.0.4 \
-    crate://crates.io/proc-macro-error/1.0.4 \
-    crate://crates.io/proc-macro2/1.0.36 \
-    crate://crates.io/prost-derive/0.8.0 \
-    crate://crates.io/prost/0.8.0 \
-    crate://crates.io/protobuf/2.27.1 \
-    crate://crates.io/psa-crypto-sys/0.9.2 \
-    crate://crates.io/psa-crypto/0.9.1 \
-    crate://crates.io/quote/1.0.15 \
-    crate://crates.io/radium/0.5.3 \
-    crate://crates.io/rcgen/0.9.2 \
-    crate://crates.io/redox_syscall/0.2.11 \
-    crate://crates.io/regex-syntax/0.6.25 \
-    crate://crates.io/regex/1.5.5 \
-    crate://crates.io/ring/0.16.20 \
-    crate://crates.io/rustc-hash/1.1.0 \
-    crate://crates.io/rusticata-macros/3.2.0 \
-    crate://crates.io/rustversion/1.0.6 \
-    crate://crates.io/ryu/1.0.9 \
-    crate://crates.io/same-file/1.0.6 \
-    crate://crates.io/scopeguard/1.1.0 \
-    crate://crates.io/secrecy/0.7.0 \
-    crate://crates.io/serde/1.0.136 \
-    crate://crates.io/serde_bytes/0.11.5 \
-    crate://crates.io/serde_derive/1.0.136 \
-    crate://crates.io/serde_json/1.0.79 \
-    crate://crates.io/sha2/0.9.9 \
-    crate://crates.io/shlex/0.1.1 \
-    crate://crates.io/simple_asn1/0.4.1 \
-    crate://crates.io/simple_asn1/0.5.4 \
-    crate://crates.io/slab/0.4.5 \
-    crate://crates.io/smallvec/1.8.0 \
-    crate://crates.io/spiffe/0.2.0 \
-    crate://crates.io/spin/0.5.2 \
-    crate://crates.io/spki/0.4.1 \
-    crate://crates.io/static_assertions/1.1.0 \
-    crate://crates.io/strsim/0.10.0 \
-    crate://crates.io/strsim/0.8.0 \
-    crate://crates.io/structopt-derive/0.4.18 \
-    crate://crates.io/structopt/0.3.26 \
-    crate://crates.io/syn/1.0.89 \
-    crate://crates.io/synstructure/0.12.6 \
-    crate://crates.io/tap/1.0.1 \
-    crate://crates.io/termcolor/1.1.3 \
-    crate://crates.io/textwrap/0.11.0 \
-    crate://crates.io/textwrap/0.14.2 \
-    crate://crates.io/thiserror-impl/1.0.30 \
-    crate://crates.io/thiserror/1.0.30 \
-    crate://crates.io/time/0.1.44 \
-    crate://crates.io/time/0.3.7 \
-    crate://crates.io/tinyvec/1.5.1 \
-    crate://crates.io/tinyvec_macros/0.1.0 \
-    crate://crates.io/typenum/1.15.0 \
-    crate://crates.io/unicase/2.6.0 \
-    crate://crates.io/unicode-bidi/0.3.7 \
-    crate://crates.io/unicode-normalization/0.1.19 \
-    crate://crates.io/unicode-segmentation/1.9.0 \
-    crate://crates.io/unicode-width/0.1.9 \
-    crate://crates.io/unicode-xid/0.2.2 \
-    crate://crates.io/untrusted/0.7.1 \
-    crate://crates.io/url/2.2.2 \
-    crate://crates.io/users/0.10.0 \
-    crate://crates.io/uuid/0.8.2 \
-    crate://crates.io/vcpkg/0.2.15 \
-    crate://crates.io/vec_map/0.8.2 \
-    crate://crates.io/version_check/0.9.4 \
-    crate://crates.io/walkdir/2.3.2 \
-    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
-    crate://crates.io/wasm-bindgen-backend/0.2.79 \
-    crate://crates.io/wasm-bindgen-macro-support/0.2.79 \
-    crate://crates.io/wasm-bindgen-macro/0.2.79 \
-    crate://crates.io/wasm-bindgen-shared/0.2.79 \
-    crate://crates.io/wasm-bindgen/0.2.79 \
-    crate://crates.io/web-sys/0.3.56 \
-    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
-    crate://crates.io/winapi-util/0.1.5 \
-    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
-    crate://crates.io/winapi/0.3.9 \
-    crate://crates.io/wyz/0.2.0 \
-    crate://crates.io/x509-parser/0.9.2 \
-    crate://crates.io/yasna/0.3.2 \
-    crate://crates.io/yasna/0.5.0 \
-    crate://crates.io/zeroize/1.3.0 \
-    crate://crates.io/zeroize_derive/1.3.2 \
-"
-
-LIC_FILES_CHKSUM = " \
-    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
-"
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.bb
similarity index 71%
rename from meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
rename to meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.bb
index 6ecce8e..0f62009 100644
--- a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.2.bb
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.bb
@@ -16,3 +16,8 @@ do_install() {
 }
 
 require parsec-tool_${PV}.inc
+
+# The QA check has been temporarily disabled. An issue has been created 
+# upstream to fix this. 
+# https://github.com/parallaxsecond/parsec-tool/issues/94
+INSANE_SKIP:${PN}-dbg += "buildpaths"
diff --git a/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.inc b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.inc
new file mode 100644
index 0000000..36d98d3
--- /dev/null
+++ b/meta-parsec/recipes-parsec/parsec-tool/parsec-tool_0.5.4.inc
@@ -0,0 +1,176 @@
+# This file is created from parsec-tool repository Cargo.lock using cargo-bitbake tool
+
+SRC_URI += " \
+    crate://crates.io/aho-corasick/0.7.19 \
+    crate://crates.io/ansi_term/0.12.1 \
+    crate://crates.io/anyhow/1.0.64 \
+    crate://crates.io/asn1-rs-derive/0.1.0 \
+    crate://crates.io/asn1-rs-impl/0.1.0 \
+    crate://crates.io/asn1-rs/0.3.1 \
+    crate://crates.io/atty/0.2.14 \
+    crate://crates.io/autocfg/1.1.0 \
+    crate://crates.io/base64/0.13.0 \
+    crate://crates.io/bincode/1.3.3 \
+    crate://crates.io/bindgen/0.57.0 \
+    crate://crates.io/bitflags/1.3.2 \
+    crate://crates.io/block-buffer/0.9.0 \
+    crate://crates.io/bumpalo/3.11.0 \
+    crate://crates.io/bytes/1.2.1 \
+    crate://crates.io/cc/1.0.73 \
+    crate://crates.io/cexpr/0.4.0 \
+    crate://crates.io/cfg-if/1.0.0 \
+    crate://crates.io/clang-sys/1.3.3 \
+    crate://crates.io/clap/2.34.0 \
+    crate://crates.io/cmake/0.1.45 \
+    crate://crates.io/const-oid/0.7.1 \
+    crate://crates.io/cpufeatures/0.2.5 \
+    crate://crates.io/data-encoding/2.3.2 \
+    crate://crates.io/der-parser/7.0.0 \
+    crate://crates.io/der/0.5.1 \
+    crate://crates.io/derivative/2.2.0 \
+    crate://crates.io/digest/0.9.0 \
+    crate://crates.io/displaydoc/0.2.3 \
+    crate://crates.io/either/1.8.0 \
+    crate://crates.io/env_logger/0.8.4 \
+    crate://crates.io/form_urlencoded/1.1.0 \
+    crate://crates.io/futures-channel/0.3.24 \
+    crate://crates.io/futures-core/0.3.24 \
+    crate://crates.io/futures-executor/0.3.24 \
+    crate://crates.io/futures-io/0.3.24 \
+    crate://crates.io/futures-macro/0.3.24 \
+    crate://crates.io/futures-sink/0.3.24 \
+    crate://crates.io/futures-task/0.3.24 \
+    crate://crates.io/futures-util/0.3.24 \
+    crate://crates.io/futures/0.3.24 \
+    crate://crates.io/generic-array/0.14.6 \
+    crate://crates.io/glob/0.3.0 \
+    crate://crates.io/grpcio-sys/0.9.1+1.38.0 \
+    crate://crates.io/grpcio/0.9.1 \
+    crate://crates.io/heck/0.3.3 \
+    crate://crates.io/hermit-abi/0.1.19 \
+    crate://crates.io/humantime/2.1.0 \
+    crate://crates.io/idna/0.3.0 \
+    crate://crates.io/instant/0.1.12 \
+    crate://crates.io/itertools/0.10.3 \
+    crate://crates.io/itoa/1.0.3 \
+    crate://crates.io/js-sys/0.3.59 \
+    crate://crates.io/jsonwebkey/0.3.5 \
+    crate://crates.io/jsonwebtoken/8.1.1 \
+    crate://crates.io/lazy_static/1.4.0 \
+    crate://crates.io/lazycell/1.3.0 \
+    crate://crates.io/libc/0.2.132 \
+    crate://crates.io/libloading/0.7.3 \
+    crate://crates.io/libz-sys/1.1.8 \
+    crate://crates.io/lock_api/0.4.8 \
+    crate://crates.io/log/0.4.17 \
+    crate://crates.io/memchr/2.5.0 \
+    crate://crates.io/minimal-lexical/0.2.1 \
+    crate://crates.io/nom/5.1.2 \
+    crate://crates.io/nom/7.1.1 \
+    crate://crates.io/num-bigint/0.4.3 \
+    crate://crates.io/num-complex/0.4.2 \
+    crate://crates.io/num-derive/0.3.3 \
+    crate://crates.io/num-integer/0.1.45 \
+    crate://crates.io/num-iter/0.1.43 \
+    crate://crates.io/num-rational/0.4.1 \
+    crate://crates.io/num-traits/0.2.15 \
+    crate://crates.io/num/0.4.0 \
+    crate://crates.io/num_threads/0.1.6 \
+    crate://crates.io/oid-registry/0.4.0 \
+    crate://crates.io/oid/0.2.1 \
+    crate://crates.io/once_cell/1.14.0 \
+    crate://crates.io/opaque-debug/0.3.0 \
+    crate://crates.io/parking_lot/0.11.2 \
+    crate://crates.io/parking_lot_core/0.8.5 \
+    crate://crates.io/parsec-client/0.14.1 \
+    crate://crates.io/parsec-interface/0.27.0 \
+    crate://crates.io/peeking_take_while/0.1.2 \
+    crate://crates.io/pem/1.1.0 \
+    crate://crates.io/percent-encoding/2.2.0 \
+    crate://crates.io/picky-asn1-der/0.2.5 \
+    crate://crates.io/picky-asn1-x509/0.6.1 \
+    crate://crates.io/picky-asn1/0.3.3 \
+    crate://crates.io/pin-project-lite/0.2.9 \
+    crate://crates.io/pin-utils/0.1.0 \
+    crate://crates.io/pkcs8/0.8.0 \
+    crate://crates.io/pkg-config/0.3.25 \
+    crate://crates.io/proc-macro-error-attr/1.0.4 \
+    crate://crates.io/proc-macro-error/1.0.4 \
+    crate://crates.io/proc-macro2/1.0.43 \
+    crate://crates.io/prost-derive/0.8.0 \
+    crate://crates.io/prost/0.8.0 \
+    crate://crates.io/protobuf/2.27.1 \
+    crate://crates.io/psa-crypto-sys/0.9.3 \
+    crate://crates.io/psa-crypto/0.9.2 \
+    crate://crates.io/quote/1.0.21 \
+    crate://crates.io/rcgen/0.9.3 \
+    crate://crates.io/redox_syscall/0.2.16 \
+    crate://crates.io/regex-syntax/0.6.27 \
+    crate://crates.io/regex/1.6.0 \
+    crate://crates.io/ring/0.16.20 \
+    crate://crates.io/rustc-hash/1.1.0 \
+    crate://crates.io/rusticata-macros/4.1.0 \
+    crate://crates.io/ryu/1.0.11 \
+    crate://crates.io/same-file/1.0.6 \
+    crate://crates.io/scopeguard/1.1.0 \
+    crate://crates.io/secrecy/0.7.0 \
+    crate://crates.io/serde/1.0.144 \
+    crate://crates.io/serde_bytes/0.11.7 \
+    crate://crates.io/serde_derive/1.0.144 \
+    crate://crates.io/serde_json/1.0.85 \
+    crate://crates.io/sha2/0.9.9 \
+    crate://crates.io/shlex/0.1.1 \
+    crate://crates.io/simple_asn1/0.6.2 \
+    crate://crates.io/slab/0.4.7 \
+    crate://crates.io/smallvec/1.9.0 \
+    crate://crates.io/spiffe/0.2.1 \
+    crate://crates.io/spin/0.5.2 \
+    crate://crates.io/spki/0.5.4 \
+    crate://crates.io/strsim/0.8.0 \
+    crate://crates.io/structopt-derive/0.4.18 \
+    crate://crates.io/structopt/0.3.26 \
+    crate://crates.io/syn/1.0.99 \
+    crate://crates.io/synstructure/0.12.6 \
+    crate://crates.io/termcolor/1.1.3 \
+    crate://crates.io/textwrap/0.11.0 \
+    crate://crates.io/thiserror-impl/1.0.34 \
+    crate://crates.io/thiserror/1.0.34 \
+    crate://crates.io/time-macros/0.2.3 \
+    crate://crates.io/time/0.3.7 \
+    crate://crates.io/tinyvec/1.6.0 \
+    crate://crates.io/tinyvec_macros/0.1.0 \
+    crate://crates.io/typenum/1.15.0 \
+    crate://crates.io/unicode-bidi/0.3.8 \
+    crate://crates.io/unicode-ident/1.0.3 \
+    crate://crates.io/unicode-normalization/0.1.21 \
+    crate://crates.io/unicode-segmentation/1.9.0 \
+    crate://crates.io/unicode-width/0.1.9 \
+    crate://crates.io/unicode-xid/0.2.3 \
+    crate://crates.io/untrusted/0.7.1 \
+    crate://crates.io/url/2.3.1 \
+    crate://crates.io/users/0.11.0 \
+    crate://crates.io/uuid/0.8.2 \
+    crate://crates.io/vcpkg/0.2.15 \
+    crate://crates.io/vec_map/0.8.2 \
+    crate://crates.io/version_check/0.9.4 \
+    crate://crates.io/walkdir/2.3.2 \
+    crate://crates.io/wasm-bindgen-backend/0.2.82 \
+    crate://crates.io/wasm-bindgen-macro-support/0.2.82 \
+    crate://crates.io/wasm-bindgen-macro/0.2.82 \
+    crate://crates.io/wasm-bindgen-shared/0.2.82 \
+    crate://crates.io/wasm-bindgen/0.2.82 \
+    crate://crates.io/web-sys/0.3.59 \
+    crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
+    crate://crates.io/winapi-util/0.1.5 \
+    crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
+    crate://crates.io/winapi/0.3.9 \
+    crate://crates.io/x509-parser/0.13.2 \
+    crate://crates.io/yasna/0.4.0 \
+    crate://crates.io/yasna/0.5.0 \
+    crate://crates.io/zeroize/1.5.7 \
+    crate://crates.io/zeroize_derive/1.3.2 \
+"
+
+LIC_FILES_CHKSUM = " \
+    file://LICENSE;md5=3b83ef96387f14655fc854ddc3c6bd57 \
+"
-- 
2.17.1


