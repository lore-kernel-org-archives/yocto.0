Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6C49EC19F2A
	for <webhook@archiver.kernel.org>; Sat, 30 Jul 2022 19:40:46 +0000 (UTC)
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com
 [209.85.216.47])
 by mx.groups.io with SMTP id smtpd.web08.6261.1659210040694541943
 for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=ch3ZonHW;
 spf=pass (domain: gmail.com, ip: 209.85.216.47,
 mailfrom: akuster808@gmail.com)
Received: by mail-pj1-f47.google.com with SMTP id
 q7-20020a17090a7a8700b001f300db8677so8203108pjf.5
        for <yocto@lists.yoctoproject.org>;
 Sat, 30 Jul 2022 12:40:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=ydvtEPIWUo6HPMN8fg+TzD+yoNz1QSccZOuZB4fTKCo=;
        b=ch3ZonHWio1XdWNv+5HWrOUmxvzDMxPqkPcMpvrchpALccBSPkt3jI5p9Tyk66Wyof
         uDdloy87CdTgKMmuRQfMDncPicg1CM+jrPwMeSdB3lSQ5YlFwdiRN1FmO/ByMM1mTa2h
         q0FTGDX54NsTISzPPVMPI0P0Swy1/fLfGe/24LNiENSszmvdbWnkiwojxGL9IkDmiRAs
         pz+3Y/p2bQitGilu//JKB3TpnU7BLuJ3KlacnS277RlsUe4/lbGrKmW1ENAXuLoYYMIt
         ORcw0Mfdw1t98Bm3ZCd9ZdDFUrjrYedBWWYXz3iMlHiwLLgEzUnVwlO4TtsCcAt1Bbqr
         Mkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=ydvtEPIWUo6HPMN8fg+TzD+yoNz1QSccZOuZB4fTKCo=;
        b=vHYk1NmmYcPGmvIhZGgNW8FKQMpaOeYAv6GFFa0vlXxt7bC9Y5plxW3GNfFjJuKkP7
         ZgBvq7wBaY8ttb/Vx/+SIRvJMy8xHm8PxRYBLVynQ1man6CjGpyhT1ebejOFFeweKVmL
         mf/m0M1Q2XchUSjnjzHBrIkQa2Rk5vtxbpaZGM8HKBhdUVw1oxBi1UY7UWuuNpRuQgOy
         7m5aVgqtAvsmMCLt8cw7I2Z/xa7+rZIzZPoC+W8TTRr3H2Z30grOv7Ru58PXTUXmvQaS
         JtI05n+t6SX2bnPnpSTfF8MJphmPpMFQgZfcpxnd+tinsQfqIMWmtfezP/VmsMBQDOJz
         1O1g==
X-Gm-Message-State: ACgBeo1kQUuVJLxsoWWtsLVZf7hlb9AAeiP2/sHSQ8wxP1YdRYF8RJ3A
	W/4PLdb853SwYK6+URo3Ere+2SM4M/0=
X-Google-Smtp-Source: 
 AA6agR6a/unYzWnG8Ah2GANrUhlrs3BrKMtEoMlg7O1D+3LV6Th05kn3Ss16bADGXMva26tVqsMK2g==
X-Received: by 2002:a17:903:2ca:b0:16c:d18d:bb51 with SMTP id
 s10-20020a17090302ca00b0016cd18dbb51mr9285803plk.33.1659210039341;
        Sat, 30 Jul 2022 12:40:39 -0700 (PDT)
Received: from keaua.hsd1.ca.comcast.net
 (c-67-181-203-136.hsd1.ca.comcast.net. [67.181.203.136])
        by smtp.gmail.com with ESMTPSA id
 p2-20020a170902a40200b0016a0bf0ce32sm6115665plq.70.2022.07.30.12.40.38
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Jul 2022 12:40:38 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH 3/4] krill: update to 0.9.6
Date: Sat, 30 Jul 2022 12:38:33 -0700
Message-Id: <20220730193834.1084392-3-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220730193834.1084392-1-akuster808@gmail.com>
References: <20220730193834.1084392-1-akuster808@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 30 Jul 2022 19:40:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57696

add UPGRADE_CHECK vars

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 recipes-security/krill/krill.inc              | 397 +++++++-----------
 .../krill/{krill_0.9.1.bb => krill_0.9.6.bb}  |  12 +-
 2 files changed, 163 insertions(+), 246 deletions(-)
 rename recipes-security/krill/{krill_0.9.1.bb => krill_0.9.6.bb} (79%)

diff --git a/recipes-security/krill/krill.inc b/recipes-security/krill/krill.inc
index f86468b..bb40f57 100644
--- a/recipes-security/krill/krill.inc
+++ b/recipes-security/krill/krill.inc
@@ -1,325 +1,240 @@
 # please note if you have entries that do not begin with crate://
 # you must change them to how that package can be fetched
 SRC_URI += " \
-    crate://crates.io/addr2line/0.14.1 \
+    crate://crates.io/addr2line/0.17.0 \
     crate://crates.io/adler/1.0.2 \
     crate://crates.io/adler32/1.2.0 \
-    crate://crates.io/aho-corasick/0.7.15 \
-    crate://crates.io/ansi_term/0.11.0 \
+    crate://crates.io/aho-corasick/0.7.18 \
     crate://crates.io/ansi_term/0.12.1 \
-    crate://crates.io/arrayref/0.3.6 \
-    crate://crates.io/arrayvec/0.5.2 \
-    crate://crates.io/ascii-canvas/2.0.0 \
+    crate://crates.io/ascii-canvas/3.0.0 \
     crate://crates.io/ascii/1.0.0 \
     crate://crates.io/atty/0.2.14 \
-    crate://crates.io/autocfg/0.1.7 \
-    crate://crates.io/autocfg/1.0.1 \
-    crate://crates.io/backtrace/0.3.56 \
-    crate://crates.io/base64/0.10.1 \
-    crate://crates.io/base64/0.12.3 \
+    crate://crates.io/autocfg/1.1.0 \
+    crate://crates.io/backtrace/0.3.64 \
     crate://crates.io/base64/0.13.0 \
     crate://crates.io/basic-cookies/0.1.4 \
-    crate://crates.io/bcder/0.5.1 \
+    crate://crates.io/bcder/0.6.1 \
     crate://crates.io/bit-set/0.5.2 \
     crate://crates.io/bit-vec/0.6.3 \
-    crate://crates.io/bitflags/1.2.1 \
-    crate://crates.io/blake2b_simd/0.5.11 \
+    crate://crates.io/bitflags/1.3.2 \
     crate://crates.io/block-buffer/0.9.0 \
-    crate://crates.io/bumpalo/3.6.1 \
-    crate://crates.io/byteorder/1.4.3 \
-    crate://crates.io/bytes/0.4.12 \
-    crate://crates.io/bytes/0.5.6 \
-    crate://crates.io/bytes/1.0.1 \
-    crate://crates.io/cc/1.0.67 \
-    crate://crates.io/cfg-if/0.1.10 \
+    crate://crates.io/bumpalo/3.9.1 \
+    crate://crates.io/bytes/1.1.0 \
+    crate://crates.io/cc/1.0.73 \
     crate://crates.io/cfg-if/1.0.0 \
     crate://crates.io/chrono/0.4.19 \
     crate://crates.io/chunked_transfer/1.4.0 \
     crate://crates.io/cipher/0.2.5 \
-    crate://crates.io/clap/2.33.3 \
-    crate://crates.io/clokwerk/0.3.4 \
-    crate://crates.io/cloudabi/0.0.3 \
-    crate://crates.io/constant_time_eq/0.1.5 \
-    crate://crates.io/cookie/0.12.0 \
-    crate://crates.io/cookie_store/0.7.0 \
-    crate://crates.io/core-foundation-sys/0.8.2 \
-    crate://crates.io/core-foundation/0.9.1 \
-    crate://crates.io/cpuid-bool/0.1.2 \
-    crate://crates.io/crc32fast/1.2.1 \
-    crate://crates.io/crossbeam-deque/0.7.3 \
-    crate://crates.io/crossbeam-epoch/0.8.2 \
-    crate://crates.io/crossbeam-queue/0.2.3 \
-    crate://crates.io/crossbeam-utils/0.7.2 \
-    crate://crates.io/crossbeam-utils/0.8.3 \
+    crate://crates.io/clap/2.34.0 \
+    crate://crates.io/core-foundation-sys/0.8.3 \
+    crate://crates.io/core-foundation/0.9.3 \
+    crate://crates.io/cpufeatures/0.2.1 \
+    crate://crates.io/crc32fast/1.3.2 \
     crate://crates.io/crunchy/0.2.2 \
-    crate://crates.io/crypto-mac/0.10.0 \
-    crate://crates.io/ctrlc/3.1.9 \
+    crate://crates.io/crypto-mac/0.10.1 \
+    crate://crates.io/ctrlc/3.2.1 \
     crate://crates.io/deunicode/0.4.3 \
     crate://crates.io/diff/0.1.12 \
     crate://crates.io/digest/0.9.0 \
-    crate://crates.io/dirs/1.0.5 \
-    crate://crates.io/dtoa/0.4.8 \
+    crate://crates.io/dirs-next/2.0.0 \
+    crate://crates.io/dirs-sys-next/0.1.2 \
     crate://crates.io/either/1.6.1 \
     crate://crates.io/ena/0.14.0 \
-    crate://crates.io/encoding_rs/0.8.28 \
+    crate://crates.io/encoding_rs/0.8.30 \
     crate://crates.io/error-chain/0.11.0 \
-    crate://crates.io/failure/0.1.8 \
-    crate://crates.io/failure_derive/0.1.8 \
+    crate://crates.io/fastrand/1.7.0 \
     crate://crates.io/fern/0.5.9 \
     crate://crates.io/fixedbitset/0.2.0 \
-    crate://crates.io/flate2/1.0.20 \
     crate://crates.io/fnv/1.0.7 \
     crate://crates.io/foreign-types-shared/0.1.1 \
     crate://crates.io/foreign-types/0.3.2 \
     crate://crates.io/form_urlencoded/1.0.1 \
-    crate://crates.io/fuchsia-cprng/0.1.1 \
-    crate://crates.io/fuchsia-zircon-sys/0.3.3 \
-    crate://crates.io/fuchsia-zircon/0.3.3 \
-    crate://crates.io/futures-channel/0.3.14 \
-    crate://crates.io/futures-core/0.3.14 \
-    crate://crates.io/futures-cpupool/0.1.8 \
-    crate://crates.io/futures-executor/0.3.14 \
-    crate://crates.io/futures-io/0.3.14 \
-    crate://crates.io/futures-macro/0.3.14 \
-    crate://crates.io/futures-sink/0.3.14 \
-    crate://crates.io/futures-task/0.3.14 \
-    crate://crates.io/futures-util/0.3.14 \
-    crate://crates.io/futures/0.1.31 \
-    crate://crates.io/futures/0.3.14 \
-    crate://crates.io/generic-array/0.14.4 \
-    crate://crates.io/getrandom/0.1.16 \
-    crate://crates.io/getrandom/0.2.2 \
-    crate://crates.io/gimli/0.23.0 \
-    crate://crates.io/h2/0.1.26 \
-    crate://crates.io/h2/0.2.7 \
-    crate://crates.io/hashbrown/0.9.1 \
-    crate://crates.io/hermit-abi/0.1.18 \
+    crate://crates.io/fslock/0.2.1 \
+    crate://crates.io/futures-channel/0.3.21 \
+    crate://crates.io/futures-core/0.3.21 \
+    crate://crates.io/futures-executor/0.3.21 \
+    crate://crates.io/futures-io/0.3.21 \
+    crate://crates.io/futures-macro/0.3.21 \
+    crate://crates.io/futures-sink/0.3.21 \
+    crate://crates.io/futures-task/0.3.21 \
+    crate://crates.io/futures-util/0.3.21 \
+    crate://crates.io/futures/0.3.21 \
+    crate://crates.io/generic-array/0.14.5 \
+    crate://crates.io/getrandom/0.2.4 \
+    crate://crates.io/gimli/0.26.1 \
+    crate://crates.io/h2/0.3.11 \
+    crate://crates.io/hashbrown/0.11.2 \
+    crate://crates.io/hermit-abi/0.1.19 \
     crate://crates.io/hex/0.4.3 \
     crate://crates.io/hmac/0.10.1 \
-    crate://crates.io/http-body/0.1.0 \
-    crate://crates.io/http-body/0.3.1 \
-    crate://crates.io/http/0.1.21 \
-    crate://crates.io/http/0.2.4 \
-    crate://crates.io/httparse/1.3.6 \
-    crate://crates.io/httpdate/0.3.2 \
-    crate://crates.io/hyper-tls/0.3.2 \
-    crate://crates.io/hyper-tls/0.4.3 \
-    crate://crates.io/hyper/0.12.36 \
-    crate://crates.io/hyper/0.13.10 \
-    crate://crates.io/idna/0.1.5 \
-    crate://crates.io/idna/0.2.2 \
-    crate://crates.io/impl-trait-for-tuples/0.2.1 \
-    crate://crates.io/indexmap/1.6.2 \
-    crate://crates.io/intervaltree/0.2.6 \
-    crate://crates.io/iovec/0.1.4 \
-    crate://crates.io/ipnet/2.3.0 \
-    crate://crates.io/itertools/0.10.0 \
+    crate://crates.io/http-body/0.4.4 \
+    crate://crates.io/http/0.2.6 \
+    crate://crates.io/httparse/1.6.0 \
+    crate://crates.io/httpdate/1.0.2 \
+    crate://crates.io/hyper-tls/0.5.0 \
+    crate://crates.io/hyper/0.14.17 \
+    crate://crates.io/idna/0.2.3 \
+    crate://crates.io/impl-trait-for-tuples/0.2.2 \
+    crate://crates.io/indexmap/1.8.0 \
+    crate://crates.io/instant/0.1.12 \
+    crate://crates.io/intervaltree/0.2.7 \
+    crate://crates.io/ipnet/2.3.1 \
+    crate://crates.io/itertools/0.10.3 \
     crate://crates.io/itertools/0.9.0 \
-    crate://crates.io/itoa/0.4.7 \
+    crate://crates.io/itoa/1.0.1 \
     crate://crates.io/jmespatch/0.3.0 \
-    crate://crates.io/js-sys/0.3.50 \
-    crate://crates.io/kernel32-sys/0.2.2 \
-    crate://crates.io/lalrpop-util/0.19.5 \
-    crate://crates.io/lalrpop/0.19.5 \
+    crate://crates.io/js-sys/0.3.56 \
+    crate://crates.io/lalrpop-util/0.19.7 \
+    crate://crates.io/lalrpop/0.19.7 \
     crate://crates.io/lazy_static/1.4.0 \
-    crate://crates.io/libc/0.2.93 \
-    crate://crates.io/libflate/1.0.4 \
-    crate://crates.io/libflate_lz77/1.0.0 \
-    crate://crates.io/lock_api/0.3.4 \
+    crate://crates.io/libc/0.2.119 \
+    crate://crates.io/libflate/1.1.2 \
+    crate://crates.io/libflate_lz77/1.1.0 \
+    crate://crates.io/lock_api/0.4.6 \
     crate://crates.io/log/0.4.14 \
     crate://crates.io/maplit/1.0.2 \
     crate://crates.io/matchers/0.0.1 \
-    crate://crates.io/matches/0.1.8 \
-    crate://crates.io/maybe-uninit/2.0.0 \
-    crate://crates.io/memchr/2.3.4 \
-    crate://crates.io/memoffset/0.5.6 \
+    crate://crates.io/matches/0.1.9 \
+    crate://crates.io/memchr/2.4.1 \
+    crate://crates.io/memoffset/0.6.5 \
     crate://crates.io/mime/0.3.16 \
-    crate://crates.io/mime_guess/2.0.3 \
     crate://crates.io/miniz_oxide/0.4.4 \
-    crate://crates.io/mio/0.6.23 \
-    crate://crates.io/miow/0.2.2 \
-    crate://crates.io/native-tls/0.2.7 \
-    crate://crates.io/net2/0.2.37 \
+    crate://crates.io/mio/0.8.0 \
+    crate://crates.io/miow/0.3.7 \
+    crate://crates.io/native-tls/0.2.8 \
     crate://crates.io/new_debug_unreachable/1.0.4 \
-    crate://crates.io/nix/0.20.0 \
+    crate://crates.io/nix/0.23.1 \
+    crate://crates.io/ntapi/0.3.7 \
+    crate://crates.io/num-bigint/0.4.3 \
     crate://crates.io/num-integer/0.1.44 \
     crate://crates.io/num-traits/0.2.14 \
-    crate://crates.io/num_cpus/1.13.0 \
-    crate://crates.io/oauth2/4.0.0 \
-    crate://crates.io/object/0.23.0 \
-    crate://crates.io/once_cell/1.7.2 \
+    crate://crates.io/num_cpus/1.13.1 \
+    crate://crates.io/oauth2/4.1.0 \
+    crate://crates.io/object/0.27.1 \
+    crate://crates.io/once_cell/1.9.0 \
     crate://crates.io/opaque-debug/0.3.0 \
-    crate://crates.io/openidconnect/2.0.0 \
-    crate://crates.io/openssl-probe/0.1.2 \
-    crate://crates.io/openssl-src/111.15.0+1.1.1k \
-    crate://crates.io/openssl-sys/0.9.61 \
-    crate://crates.io/openssl/0.10.33 \
+    crate://crates.io/openidconnect/2.2.0 \
+    crate://crates.io/openssl-probe/0.1.5 \
+    crate://crates.io/openssl-src/111.17.0+1.1.1m \
+    crate://crates.io/openssl-sys/0.9.72 \
+    crate://crates.io/openssl/0.10.38 \
     crate://crates.io/ordered-float/1.1.1 \
-    crate://crates.io/oso/0.12.0 \
-    crate://crates.io/parking_lot/0.9.0 \
-    crate://crates.io/parking_lot_core/0.6.2 \
+    crate://crates.io/oso/0.12.4 \
+    crate://crates.io/parking_lot/0.11.2 \
+    crate://crates.io/parking_lot_core/0.8.5 \
     crate://crates.io/pbkdf2/0.7.5 \
-    crate://crates.io/percent-encoding/1.0.1 \
     crate://crates.io/percent-encoding/2.1.0 \
     crate://crates.io/petgraph/0.5.1 \
-    crate://crates.io/phf_shared/0.8.0 \
-    crate://crates.io/pico-args/0.4.0 \
-    crate://crates.io/pin-project-internal/1.0.6 \
-    crate://crates.io/pin-project-lite/0.1.12 \
-    crate://crates.io/pin-project-lite/0.2.6 \
-    crate://crates.io/pin-project/1.0.6 \
+    crate://crates.io/phf_shared/0.10.0 \
+    crate://crates.io/pico-args/0.4.2 \
+    crate://crates.io/pin-project-lite/0.2.8 \
     crate://crates.io/pin-utils/0.1.0 \
-    crate://crates.io/pkg-config/0.3.19 \
-    crate://crates.io/polar-core/0.12.0 \
-    crate://crates.io/ppv-lite86/0.2.10 \
+    crate://crates.io/pkg-config/0.3.24 \
+    crate://crates.io/polar-core/0.12.4 \
+    crate://crates.io/ppv-lite86/0.2.16 \
     crate://crates.io/precomputed-hash/0.1.1 \
-    crate://crates.io/proc-macro-hack/0.5.19 \
-    crate://crates.io/proc-macro-nested/0.1.7 \
-    crate://crates.io/proc-macro2/1.0.26 \
-    crate://crates.io/publicsuffix/1.5.6 \
-    crate://crates.io/quick-xml/0.19.0 \
-    crate://crates.io/quote/1.0.9 \
-    crate://crates.io/rand/0.6.5 \
-    crate://crates.io/rand/0.7.3 \
-    crate://crates.io/rand/0.8.3 \
-    crate://crates.io/rand_chacha/0.1.1 \
-    crate://crates.io/rand_chacha/0.2.2 \
-    crate://crates.io/rand_chacha/0.3.0 \
-    crate://crates.io/rand_core/0.3.1 \
-    crate://crates.io/rand_core/0.4.2 \
-    crate://crates.io/rand_core/0.5.1 \
-    crate://crates.io/rand_core/0.6.2 \
-    crate://crates.io/rand_hc/0.1.0 \
-    crate://crates.io/rand_hc/0.2.0 \
-    crate://crates.io/rand_hc/0.3.0 \
-    crate://crates.io/rand_isaac/0.1.1 \
-    crate://crates.io/rand_jitter/0.1.4 \
-    crate://crates.io/rand_os/0.1.3 \
-    crate://crates.io/rand_pcg/0.1.2 \
-    crate://crates.io/rand_xorshift/0.1.1 \
-    crate://crates.io/rdrand/0.4.0 \
-    crate://crates.io/redox_syscall/0.1.57 \
-    crate://crates.io/redox_syscall/0.2.5 \
-    crate://crates.io/redox_users/0.3.5 \
-    crate://crates.io/regex-automata/0.1.9 \
-    crate://crates.io/regex-syntax/0.6.23 \
-    crate://crates.io/regex/1.4.5 \
+    crate://crates.io/priority-queue/1.2.1 \
+    crate://crates.io/proc-macro2/1.0.36 \
+    crate://crates.io/quick-xml/0.22.0 \
+    crate://crates.io/quote/1.0.15 \
+    crate://crates.io/rand/0.8.5 \
+    crate://crates.io/rand_chacha/0.3.1 \
+    crate://crates.io/rand_core/0.6.3 \
+    crate://crates.io/redox_syscall/0.2.10 \
+    crate://crates.io/redox_users/0.4.0 \
+    crate://crates.io/regex-automata/0.1.10 \
+    crate://crates.io/regex-syntax/0.6.25 \
+    crate://crates.io/regex/1.5.5 \
     crate://crates.io/remove_dir_all/0.5.3 \
-    crate://crates.io/reqwest/0.10.10 \
-    crate://crates.io/reqwest/0.9.24 \
+    crate://crates.io/reqwest/0.11.9 \
     crate://crates.io/ring/0.16.20 \
-    crate://crates.io/rle-decode-fast/1.0.1 \
+    crate://crates.io/rle-decode-fast/1.0.3 \
     crate://crates.io/rpassword/5.0.1 \
-    crate://crates.io/rpki/0.10.1 \
-    crate://crates.io/rust-argon2/0.8.3 \
-    crate://crates.io/rustc-demangle/0.1.18 \
+    crate://crates.io/rpki/0.13.2 \
+    crate://crates.io/rustc-demangle/0.1.21 \
     crate://crates.io/rustc_version/0.2.3 \
-    crate://crates.io/rustls/0.18.1 \
-    crate://crates.io/ryu/1.0.5 \
+    crate://crates.io/rustls/0.19.1 \
+    crate://crates.io/rustversion/1.0.6 \
+    crate://crates.io/ryu/1.0.9 \
     crate://crates.io/salsa20/0.7.2 \
     crate://crates.io/schannel/0.1.19 \
     crate://crates.io/scopeguard/1.1.0 \
     crate://crates.io/scrypt/0.6.5 \
     crate://crates.io/sct/0.6.1 \
-    crate://crates.io/security-framework-sys/2.2.0 \
-    crate://crates.io/security-framework/2.2.0 \
+    crate://crates.io/security-framework-sys/2.6.1 \
+    crate://crates.io/security-framework/2.6.1 \
     crate://crates.io/semver-parser/0.7.0 \
     crate://crates.io/semver/0.9.0 \
     crate://crates.io/serde-value/0.6.0 \
-    crate://crates.io/serde/1.0.125 \
-    crate://crates.io/serde_derive/1.0.125 \
-    crate://crates.io/serde_json/1.0.64 \
-    crate://crates.io/serde_path_to_error/0.1.4 \
-    crate://crates.io/serde_urlencoded/0.5.5 \
-    crate://crates.io/serde_urlencoded/0.7.0 \
-    crate://crates.io/sha2/0.9.3 \
-    crate://crates.io/sharded-slab/0.1.1 \
-    crate://crates.io/siphasher/0.3.5 \
-    crate://crates.io/slab/0.4.2 \
+    crate://crates.io/serde/1.0.136 \
+    crate://crates.io/serde_derive/1.0.136 \
+    crate://crates.io/serde_json/1.0.79 \
+    crate://crates.io/serde_path_to_error/0.1.7 \
+    crate://crates.io/serde_urlencoded/0.7.1 \
+    crate://crates.io/sha2/0.9.9 \
+    crate://crates.io/sharded-slab/0.1.4 \
+    crate://crates.io/siphasher/0.3.9 \
+    crate://crates.io/slab/0.4.5 \
     crate://crates.io/slug/0.1.4 \
-    crate://crates.io/smallvec/0.6.14 \
-    crate://crates.io/smallvec/1.6.1 \
-    crate://crates.io/socket2/0.3.19 \
+    crate://crates.io/smallvec/1.8.0 \
+    crate://crates.io/socket2/0.4.4 \
     crate://crates.io/spin/0.5.2 \
-    crate://crates.io/string/0.2.1 \
-    crate://crates.io/string_cache/0.8.1 \
+    crate://crates.io/string_cache/0.8.3 \
     crate://crates.io/strsim/0.8.0 \
-    crate://crates.io/subtle/2.4.0 \
-    crate://crates.io/syn/1.0.69 \
-    crate://crates.io/synstructure/0.12.4 \
+    crate://crates.io/subtle/2.4.1 \
+    crate://crates.io/syn/1.0.86 \
     crate://crates.io/syslog/4.0.1 \
-    crate://crates.io/tempfile/3.2.0 \
-    crate://crates.io/term/0.5.2 \
+    crate://crates.io/tempfile/3.3.0 \
+    crate://crates.io/term/0.7.0 \
     crate://crates.io/textwrap/0.11.0 \
-    crate://crates.io/thiserror-impl/1.0.24 \
-    crate://crates.io/thiserror/1.0.24 \
-    crate://crates.io/thread_local/1.1.3 \
-    crate://crates.io/time/0.1.44 \
+    crate://crates.io/thiserror-impl/1.0.30 \
+    crate://crates.io/thiserror/1.0.30 \
+    crate://crates.io/thread_local/1.1.4 \
+    crate://crates.io/time/0.1.43 \
     crate://crates.io/tiny-keccak/2.0.2 \
-    crate://crates.io/tiny_http/0.8.0 \
-    crate://crates.io/tinyvec/1.2.0 \
+    crate://crates.io/tiny_http/0.8.2 \
+    crate://crates.io/tinyvec/1.5.1 \
     crate://crates.io/tinyvec_macros/0.1.0 \
-    crate://crates.io/tokio-buf/0.1.1 \
-    crate://crates.io/tokio-current-thread/0.1.7 \
-    crate://crates.io/tokio-executor/0.1.10 \
-    crate://crates.io/tokio-io/0.1.13 \
-    crate://crates.io/tokio-macros/0.2.6 \
-    crate://crates.io/tokio-reactor/0.1.12 \
-    crate://crates.io/tokio-rustls/0.14.1 \
-    crate://crates.io/tokio-sync/0.1.8 \
-    crate://crates.io/tokio-tcp/0.1.4 \
-    crate://crates.io/tokio-threadpool/0.1.18 \
-    crate://crates.io/tokio-timer/0.2.13 \
-    crate://crates.io/tokio-tls/0.3.1 \
-    crate://crates.io/tokio-util/0.3.1 \
-    crate://crates.io/tokio/0.1.22 \
-    crate://crates.io/tokio/0.2.25 \
+    crate://crates.io/tokio-macros/1.7.0 \
+    crate://crates.io/tokio-native-tls/0.3.0 \
+    crate://crates.io/tokio-rustls/0.22.0 \
+    crate://crates.io/tokio-util/0.6.9 \
+    crate://crates.io/tokio/1.17.0 \
     crate://crates.io/toml/0.5.8 \
     crate://crates.io/tower-service/0.3.1 \
-    crate://crates.io/tracing-attributes/0.1.15 \
-    crate://crates.io/tracing-core/0.1.17 \
-    crate://crates.io/tracing-futures/0.2.5 \
+    crate://crates.io/tracing-attributes/0.1.19 \
+    crate://crates.io/tracing-core/0.1.22 \
     crate://crates.io/tracing-log/0.1.2 \
-    crate://crates.io/tracing-serde/0.1.2 \
-    crate://crates.io/tracing-subscriber/0.2.17 \
-    crate://crates.io/tracing/0.1.25 \
+    crate://crates.io/tracing-serde/0.1.3 \
+    crate://crates.io/tracing-subscriber/0.2.25 \
+    crate://crates.io/tracing/0.1.31 \
     crate://crates.io/try-lock/0.2.3 \
-    crate://crates.io/try_from/0.3.2 \
-    crate://crates.io/typenum/1.13.0 \
-    crate://crates.io/unicase/2.6.0 \
-    crate://crates.io/unicode-bidi/0.3.5 \
-    crate://crates.io/unicode-normalization/0.1.17 \
-    crate://crates.io/unicode-width/0.1.8 \
-    crate://crates.io/unicode-xid/0.2.1 \
+    crate://crates.io/typenum/1.15.0 \
+    crate://crates.io/unicode-bidi/0.3.7 \
+    crate://crates.io/unicode-normalization/0.1.19 \
+    crate://crates.io/unicode-width/0.1.9 \
+    crate://crates.io/unicode-xid/0.2.2 \
     crate://crates.io/untrusted/0.7.1 \
-    crate://crates.io/unwrap/1.2.1 \
-    crate://crates.io/url/1.7.2 \
-    crate://crates.io/url/2.2.1 \
+    crate://crates.io/url/2.2.2 \
     crate://crates.io/urlparse/0.7.3 \
-    crate://crates.io/uuid/0.7.4 \
     crate://crates.io/uuid/0.8.2 \
-    crate://crates.io/vcpkg/0.2.11 \
+    crate://crates.io/valuable/0.1.0 \
+    crate://crates.io/vcpkg/0.2.15 \
     crate://crates.io/vec_map/0.8.2 \
-    crate://crates.io/version_check/0.9.3 \
-    crate://crates.io/want/0.2.0 \
+    crate://crates.io/version_check/0.9.4 \
     crate://crates.io/want/0.3.0 \
-    crate://crates.io/wasi/0.10.0+wasi-snapshot-preview1 \
-    crate://crates.io/wasi/0.9.0+wasi-snapshot-preview1 \
-    crate://crates.io/wasm-bindgen-backend/0.2.73 \
-    crate://crates.io/wasm-bindgen-futures/0.4.23 \
-    crate://crates.io/wasm-bindgen-macro-support/0.2.73 \
-    crate://crates.io/wasm-bindgen-macro/0.2.73 \
-    crate://crates.io/wasm-bindgen-shared/0.2.73 \
-    crate://crates.io/wasm-bindgen/0.2.73 \
-    crate://crates.io/web-sys/0.3.50 \
+    crate://crates.io/wasi/0.10.2+wasi-snapshot-preview1 \
+    crate://crates.io/wasm-bindgen-backend/0.2.79 \
+    crate://crates.io/wasm-bindgen-futures/0.4.29 \
+    crate://crates.io/wasm-bindgen-macro-support/0.2.79 \
+    crate://crates.io/wasm-bindgen-macro/0.2.79 \
+    crate://crates.io/wasm-bindgen-shared/0.2.79 \
+    crate://crates.io/wasm-bindgen/0.2.79 \
+    crate://crates.io/web-sys/0.3.56 \
     crate://crates.io/webpki/0.21.4 \
-    crate://crates.io/winapi-build/0.1.1 \
     crate://crates.io/winapi-i686-pc-windows-gnu/0.4.0 \
     crate://crates.io/winapi-x86_64-pc-windows-gnu/0.4.0 \
-    crate://crates.io/winapi/0.2.8 \
     crate://crates.io/winapi/0.3.9 \
-    crate://crates.io/winreg/0.6.2 \
     crate://crates.io/winreg/0.7.0 \
-    crate://crates.io/ws2_32-sys/0.2.1 \
-    crate://crates.io/xml-rs/0.8.3 \
+    crate://crates.io/xml-rs/0.8.4 \
 "
diff --git a/recipes-security/krill/krill_0.9.1.bb b/recipes-security/krill/krill_0.9.6.bb
similarity index 79%
rename from recipes-security/krill/krill_0.9.1.bb
rename to recipes-security/krill/krill_0.9.6.bb
index 4dc61cf..c8b5b0c 100644
--- a/recipes-security/krill/krill_0.9.1.bb
+++ b/recipes-security/krill/krill_0.9.6.bb
@@ -5,14 +5,16 @@ LIC_FILES_CHKSUM = "file://LICENSE;md5=9741c346eef56131163e13b9db1241b3"
 
 DEPENDS = "openssl"
 
-include krill.inc
-
 # SRC_URI += "crate://crates.io/krill/0.9.1"
-SRC_URI += "git://github.com/NLnetLabs/krill.git;protocol=https;nobranch=1;branch=main"
-SRCREV = "d6c03b6f0199b1d10d252750a19a92b84576eb30"
-
+SRC_URI = "git://github.com/NLnetLabs/krill.git;protocol=https;branch=main"
+SRCREV = "95e6681d5b4024cac7a1892d47fb76abc68f34fb"
 SRC_URI += "file://panic_workaround.patch"
 
+include krill.inc
+
+UPSTREAM_CHECK_URI = "https://github.com/NLnetLabs/${BPN}/releases"
+UPSTREAM_CHECK_GITTAGREGEX = "v(?P<pver>\d+(\.\d+)+)"
+
 S = "${WORKDIR}/git"
 CARGO_SRC_DIR = ""
 
-- 
2.25.1


