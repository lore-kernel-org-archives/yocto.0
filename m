Received: from mail-pf1-f180.google.com (mail-pf1-f180.google.com [209.85.210.180])
 by mx.groups.io with SMTP id smtpd.web12.17401.1625635430375716950
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Jul 2021 22:23:50 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=unRZH7HV;
 spf=pass (domain: gmail.com, ip: 209.85.210.180, mailfrom: akuster808@gmail.com)
Received: by mail-pf1-f180.google.com with SMTP id y4so1083998pfi.9
        for <yocto@lists.yoctoproject.org>; Tue, 06 Jul 2021 22:23:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QK/+5gE8iVPKHnexN+5n+mu2Wo+rt5+20jr8SoPXuSM=;
        b=unRZH7HVAz1ASY8ZzB5jVKy8ui4WB+2pja1Kvj8sESNQ2/7RNiSEdOYGeA2iNUS94r
         WwTX2GMgj1vUDFPpK6g+ZNJmW0l222FkHo/xZ9fr8WosHb0OYI47ONif7JuYG2xvgwTZ
         4Yc6lItXt/tPIA8KL+wyKHuVnXW6vLizkJDvddjhCm2qHqczWt57txwu80JKuYEngBL4
         PVa5g5Rym2Kw+Gt8tEfXbRBJmXvKFpWEqAsCDSGFzEDYgsUXY4uYo1OUB6eFSjBM2+3w
         Ab0Cylc8PmiN1IMRpMjUF+JqVbuuFVFUC2LYKbdMX6oiMQDslswQvWM3xXtY957yFY0t
         eKsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QK/+5gE8iVPKHnexN+5n+mu2Wo+rt5+20jr8SoPXuSM=;
        b=Sg39znEx6y8iqEoPrFqLqfYD1v/9/tfxXYQOfpJjniqRHpQ4YCs4WnmvzEzBD+c/Oz
         lALR4o1MR6+q8WhFQSzZkZL9fHRezpZhLcIwfNK5KWvswKC7pAuNonVUtUfeItMfcyYN
         GWvzB4Zlhb3JGNIEV0x9RqQ9LnEbEDbvBEh/7/5BsDg+OIqYgsQf92DeI7UXyE3yLIeY
         F3kdIcNRw7nsqXDpZVgrkeqhMQdDvKBBajlHFDT+aRaKQ263whnK57hvDmikrp0Gw+l8
         Tn12AgZHylmDhN9lB1hIGZNpiqZYUQJEYjQ425j+vX+JtU5UgQZ8uqjtdxqb+p5pUrBX
         gqsw==
X-Gm-Message-State: AOAM532f1wAmOJ7Uplx+l/+uc2fVbUtotto17PDjltYbxt8u0Ul49Ue3
	tIYOQzAaAcj9PNNiIabzg/FsX9/SdqpX3A==
X-Google-Smtp-Source: ABdhPJxSiUFAQq/4t6PkIOZB5ekakTboI2Spzl5Pv9glvb6YO+BUU0kuNAu6EVIEFn+fKX4kvhcQZQ==
X-Received: by 2002:a63:e043:: with SMTP id n3mr1153728pgj.106.1625635429625;
        Tue, 06 Jul 2021 22:23:49 -0700 (PDT)
Return-Path: <akuster808@gmail.com>
Received: from akuster-ThinkPad-X13-Gen-1.hsd1.ca.comcast.net ([2601:202:4180:a5c0:234d:f3c6:164b:2950])
        by smtp.gmail.com with ESMTPSA id t10sm19041837pgv.52.2021.07.06.22.23.48
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Jul 2021 22:23:49 -0700 (PDT)
From: "Armin Kuster" <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][PATCH] suricata: update to 6.0.3
Date: Tue,  6 Jul 2021 22:23:47 -0700
Message-Id: <20210707052347.844215-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

add new crates
minor cleanup

Signed-off-by: Armin Kuster <akuster808@gmail.com>
---
 .../{libhtp_0.5.37.bb => libhtp_0.5.38.bb}      |  2 +-
 .../meta-rust/recipes-ids/suricata/suricata.inc |  5 -----
 .../{suricata_6.0.2.bb => suricata_6.0.3.bb}    | 17 +++++++++++++++--
 3 files changed, 16 insertions(+), 8 deletions(-)
 rename dynamic-layers/meta-rust/recipes-ids/suricata/{libhtp_0.5.37.bb => libhtp_0.5.38.bb} (91%)
 rename dynamic-layers/meta-rust/recipes-ids/suricata/{suricata_6.0.2.bb => suricata_6.0.3.bb} (92%)

diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.37.bb b/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
similarity index 91%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.37.bb
rename to dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
index 34e72e9..38dece9 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.37.bb
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/libhtp_0.5.38.bb
@@ -5,7 +5,7 @@ require suricata.inc
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=596ab7963a1a0e5198e5a1c4aa621843"
 
 SRC_URI = "git://github.com/OISF/libhtp.git;protocol=https;branch=0.5.x"
-SRCREV = "eaa2db29e65e7f2691c18a9022aeb5fb836ec5f1"
+SRCREV = "fca44158911a1642880ea5c774151a33ad33d906"
 
 DEPENDS = "zlib"
 
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
index 85f419e..7d3509a 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata.inc
@@ -1,8 +1,3 @@
 HOMEPAGE = "http://suricata-ids.org/"
 SECTION = "security Monitor/Admin"
 LICENSE = "GPLv2"
-
-VER = "6.0.2"
-SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${VER}.tar.gz"
-
-SRC_URI[sha256sum] = "5e4647a07cb31b5d6d0049972a45375c137de908a964a44e2d6d231fa3ad4b52"
diff --git a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.2.bb b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
similarity index 92%
rename from dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.2.bb
rename to dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
index a4255d2..632f1d8 100644
--- a/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.2.bb
+++ b/dynamic-layers/meta-rust/recipes-ids/suricata/suricata_6.0.3.bb
@@ -2,10 +2,13 @@ SUMMARY = "The Suricata Engine is an Open Source Next Generation Intrusion Detec
 
 require suricata.inc
 
-DEPENDS = "lz4 libhtp"
-
 LIC_FILES_CHKSUM = "file://LICENSE;beginline=1;endline=2;md5=c70d8d3310941dcdfcd1e02800a1f548"
 
+SRC_URI = "http://www.openinfosecfoundation.org/download/suricata-${PV}.tar.gz"
+SRC_URI[sha256sum] = "daf134bb2d7c980035e9ae60f7aaf313323a809340009f26e48110ccde81f602"
+
+DEPENDS = "lz4 libhtp"
+
 SRC_URI += " \
     file://volatiles.03_suricata \
     file://tmpfiles.suricata \
@@ -84,6 +87,16 @@ SRC_URI += " \
     crate://crates.io/log/0.4.0 \
     crate://crates.io/rand_hc/0.2.0 \
     crate://crates.io/wasi/0.9.0+wasi-snapshot-preview1 \
+    crate://crates.io/sawp/0.5.0 \
+    crate://crates.io/sawp-modbus/0.5.0 \
+    crate://crates.io/brotli/3.3.0 \
+    crate://crates.io/flate2/1.0.20 \
+    crate://crates.io/alloc-no-stdlib/2.0.1 \
+    crate://crates.io/alloc-stdlib/0.2.1 \
+    crate://crates.io/brotli-decompressor/2.3.1 \
+    crate://crates.io/crc32fast/1.2.1 \
+    crate://crates.io/miniz_oxide/0.4.4 \
+    crate://crates.io/adler/1.0.2 \
     "
 
 # test case support
-- 
2.25.1

