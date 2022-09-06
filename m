Return-Path: <akuster808@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A81A4ECAAD5
	for <webhook@archiver.kernel.org>; Tue,  6 Sep 2022 13:55:15 +0000 (UTC)
Received: from mail-qk1-f174.google.com (mail-qk1-f174.google.com
 [209.85.222.174])
 by mx.groups.io with SMTP id smtpd.web11.4416.1662472508665440629
 for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:55:08 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=MRgHPxGi;
 spf=pass (domain: gmail.com, ip: 209.85.222.174,
 mailfrom: akuster808@gmail.com)
Received: by mail-qk1-f174.google.com with SMTP id w18so8147243qki.8
        for <yocto@lists.yoctoproject.org>;
 Tue, 06 Sep 2022 06:55:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date;
        bh=jAa6qiWC8bYSsn7Y0KiTWbgmO3bE+UACvVW0yJ1nV2Y=;
        b=MRgHPxGi1NBe+BPduE5rsWTQc5Y2A6qIWgR2VpPwgFVE6Q6gSXNDI/I48m69ZEsSWC
         +Q1I0PGZR+vqAg2yL02wyqout0Z7wix22nxdbktnptz1olwpDaZ6hzdbFtPlEdxIu/46
         Cwf+EFDObNbpvlzVjyP1qRYrpyFc+uvyevSACeWlK+uyH+iatR1iMahY8khJmidt+aiS
         Wh65HZuJrO3kqo8TgTccEyj/cJfC0/n8S8jXP48pBxCFZpdB514W1iZWkjtd6v3mCYzn
         I+69Lmwr2ryhBv2Wz20MGRQXgtNVn7ScKDbWsa9Hb3EhI49eomCj+OOfZDU4fsyWvsIW
         m5xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date;
        bh=jAa6qiWC8bYSsn7Y0KiTWbgmO3bE+UACvVW0yJ1nV2Y=;
        b=tFpctSmyXSkqNgByeKQLFWxY1klaQ9QrAvVTsOwQyf/Yg4nSG8nq5PCKXgHP8lNkX/
         8jMHVHDFXd+Q/4B5wWTCGzlXYC2g7b9XueBhAV6BSR2/V9nr+KIkX5pw9K6X7jTbPSiF
         /CyY/SqHin7ndEiI6zaUFuYKLW5ItqLFY3xPnHyoIKBzPYjsQM7uBbkwvV3p8UUijPit
         9kAH1TcOWcftRAXoqzvEI/MOLBttqJWzZni1ox2Fa5mMIAOSz3VMgupxHx5bL63WOS5I
         Xq1FCXLsVFK6oMY5x3CoSYsSdC9wnAtwdpP6R5Kw7cRQ9e9NFfkn0Vd2av5GPb3VQgug
         Op0A==
X-Gm-Message-State: ACgBeo3f3SCudMuo9ST88TynPH3xb1sLK0MIF8e5CXj+j520UyWrschV
	mQnxfpbHOA01MP1vcN/bxdRg2ZGx4Hk=
X-Google-Smtp-Source: 
 AA6agR40D81F/+W4IJJfCdgexId/bSDnxWXess6wj54QvDd/UeFhfrAKRONnYZagaW0rX7Gz1JYGpQ==
X-Received: by 2002:a05:620a:1928:b0:6bb:83e3:3249 with SMTP id
 bj40-20020a05620a192800b006bb83e33249mr34527029qkb.245.1662472507177;
        Tue, 06 Sep 2022 06:55:07 -0700 (PDT)
Received: from keaua.attlocal.net ([2600:1700:9190:ba10:dee3:eaf1:9872:fe7f])
        by smtp.gmail.com with ESMTPSA id
 x24-20020ac87a98000000b003431446588fsm9471679qtr.5.2022.09.06.06.55.06
        for <yocto@lists.yoctoproject.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Sep 2022 06:55:06 -0700 (PDT)
From: Armin Kuster <akuster808@gmail.com>
To: yocto@lists.yoctoproject.org
Subject: [meta-security][V2][PATCH] cryptmount: fix systemd service install
Date: Tue,  6 Sep 2022 09:55:06 -0400
Message-Id: <20220906135506.3636584-1-akuster808@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 06 Sep 2022 13:55:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57992

Default is to install the service in /usr/lib

Signed-off-by: Armin Kuster <akuster808@gmail.com>

--
[V2]
Fix typo in subject
---
 .../sssd/{sssd_2.7.3.bb => sssd_2.7.4.bb}     |  2 +-
 .../{chipsec_1.8.7.bb => chipsec_1.8.8.bb}    |  2 +-
 .../cryptmount/cryptmount_5.3.3.bb            | 10 +++++++++
 .../krill/files/panic_workaround.patch        | 21 +++++++++++++------
 .../krill/{krill_0.9.6.bb => krill_0.10.0.bb} |  2 +-
 5 files changed, 28 insertions(+), 9 deletions(-)
 rename dynamic-layers/networking-layer/recipes-security/sssd/{sssd_2.7.3.bb => sssd_2.7.4.bb} (98%)
 rename recipes-security/chipsec/{chipsec_1.8.7.bb => chipsec_1.8.8.bb} (94%)
 rename recipes-security/krill/{krill_0.9.6.bb => krill_0.10.0.bb} (95%)

diff --git a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
similarity index 98%
rename from dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
rename to dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
index 95065b3..78d29c3 100644
--- a/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.3.bb
+++ b/dynamic-layers/networking-layer/recipes-security/sssd/sssd_2.7.4.bb
@@ -26,7 +26,7 @@ SRC_URI = "https://github.com/SSSD/sssd/releases/download/${PV}/sssd-${PV}.tar.g
            file://musl_fixup.patch \
            "
 
-SRC_URI[sha256sum] = "ab3c3fe2a69cc7b2557715a11000aaf358c0afd65f2828ca47a2d3b2651d871b"
+SRC_URI[sha256sum] = "10ef90c63fdbfda905145077679035bd5ad16b24daad13160de8d0ff82ea9950"
 
 UPSTREAM_CHECK_URI = "https://github.com/SSSD/${BPN}/releases"
 
diff --git a/recipes-security/chipsec/chipsec_1.8.7.bb b/recipes-security/chipsec/chipsec_1.8.8.bb
similarity index 94%
rename from recipes-security/chipsec/chipsec_1.8.7.bb
rename to recipes-security/chipsec/chipsec_1.8.8.bb
index 60272be..858ece5 100644
--- a/recipes-security/chipsec/chipsec_1.8.7.bb
+++ b/recipes-security/chipsec/chipsec_1.8.8.bb
@@ -10,7 +10,7 @@ LIC_FILES_CHKSUM = "file://COPYING;md5=bc2d1f9b427be5fb63f6af9da56f7c5d"
 DEPENDS = "virtual/kernel nasm-native"
 
 SRC_URI = "git://github.com/chipsec/chipsec.git;branch=main;protocol=https"
-SRCREV = "7b9cc5cd449f2e1e4b5dad46c0eb14348e54e3f0"
+SRCREV = "fd1a98688978fd4b8ca77b512a72eae49c3beffa"
 
 S = "${WORKDIR}/git"
 
diff --git a/recipes-security/cryptmount/cryptmount_5.3.3.bb b/recipes-security/cryptmount/cryptmount_5.3.3.bb
index fb522cb..6741a5f 100644
--- a/recipes-security/cryptmount/cryptmount_5.3.3.bb
+++ b/recipes-security/cryptmount/cryptmount_5.3.3.bb
@@ -22,6 +22,16 @@ PACKAGECONFIG[gcrypt] = "--with-libgcrypt, --without-libgcrypt, libgcrypt"
 PACKAGECONFIG[luks] = "--enable-luks, --disable-luks, cryptsetup"
 PACKAGECONFIG[nls] = "--enable-nls, --disable-nls, "
 
+SYSTEMD_PACKAGES = "${PN}"
 SYSTEMD_SERVICE:${PN} = "cryptmount.service"
 
+do_install:append () {
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+        install -D -m 0644 ${S}/sysinit/cryptmount.service ${D}${systemd_system_unitdir}/cryptmount.service
+        rm -fr ${D}/usr/lib
+    fi
+}
+
+FILES:${PN} += "${systemd_system_unitdir}"
+
 RDEPENDS:${PN} = "libdevmapper"
diff --git a/recipes-security/krill/files/panic_workaround.patch b/recipes-security/krill/files/panic_workaround.patch
index 9b08cb5..605c075 100644
--- a/recipes-security/krill/files/panic_workaround.patch
+++ b/recipes-security/krill/files/panic_workaround.patch
@@ -1,11 +1,20 @@
+From 488ed2267937b55e9ef4bd2ded06484cbbf66360 Mon Sep 17 00:00:00 2001
+From: Armin Kuster <akuster808@gmail.com>
+Date: Tue, 27 Jul 2021 08:06:43 -0700
+Subject: [PATCH] krill: Add new pkg
+
 Upstream-Status: OE specific
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-Index: git/Cargo.toml
-===================================================================
---- git.orig/Cargo.toml
-+++ git/Cargo.toml
-@@ -71,7 +71,7 @@ static-openssl = [ "openssl/vendored" ]
+---
+ Cargo.toml | 2 +-
+ 1 file changed, 1 insertion(+), 1 deletion(-)
+
+diff --git a/Cargo.toml b/Cargo.toml
+index 2190213e..89c52d27 100644
+--- a/Cargo.toml
++++ b/Cargo.toml
+@@ -92,7 +92,7 @@ hsm-tests-pkcs11 = [ "hsm" ]
  # Make sure that Krill crashes on panics, rather than losing threads and
  # limping on in a bad state.
  [profile.release]
@@ -13,4 +22,4 @@ Index: git/Cargo.toml
 +#panic = "abort"
  
  [dev-dependencies]
- # for user management
+ # For user management
diff --git a/recipes-security/krill/krill_0.9.6.bb b/recipes-security/krill/krill_0.10.0.bb
similarity index 95%
rename from recipes-security/krill/krill_0.9.6.bb
rename to recipes-security/krill/krill_0.10.0.bb
index fd86c4b..af8ecac 100644
--- a/recipes-security/krill/krill_0.9.6.bb
+++ b/recipes-security/krill/krill_0.10.0.bb
@@ -7,7 +7,7 @@ DEPENDS = "openssl"
 
 # SRC_URI += "crate://crates.io/krill/0.9.1"
 SRC_URI = "git://github.com/NLnetLabs/krill.git;protocol=https;branch=main"
-SRCREV = "95e6681d5b4024cac7a1892d47fb76abc68f34fb"
+SRCREV = "2c00aa05e2299ca8a0994f7d054231e3a5cd8d25"
 SRC_URI += "file://panic_workaround.patch"
 
 include krill.inc
-- 
2.25.1


