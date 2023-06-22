Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D7A2EEB64D8
	for <webhook@archiver.kernel.org>; Thu, 22 Jun 2023 14:36:07 +0000 (UTC)
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
 by mx.groups.io with SMTP id smtpd.web10.12996.1687444566258754750
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 07:36:06 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=BbeUVBC+;
 spf=pass (domain: gmail.com, ip: 209.85.218.46, mailfrom: martin.jansa@gmail.com)
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-9881b9d8cbdso128760766b.1
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 07:36:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687444565; x=1690036565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=QWkdMm/1m6LDP4jXudVa7UG+Xz41/eXXuKi8vMluL7w=;
        b=BbeUVBC+wijK4Kt2oaCDwdXFZWQWvNRMR+2olWNGq4bzA+xW1DFpWxTUFYbmwjbVLy
         Gho43FMMHrzuoxEsfkQZqyxZ721Qux1e7Ib4UR6YknUiFqPA5tUfKdfIO5oK4Mwngtt+
         GaYHBerHEbxeTIdUUVlpBn7awSA+4QoqC+CYUWEB9CE517TIQ+BX3rX3EFZ3XYVljSfW
         Cb+MT/3RqqopDn1ypbAoKZBoJXipWm33zvpqjA7e+y7hpY7EJU6CBGDknQiLht0OLHWZ
         BjWaRGJlsEkMy4E41NI6TdRwm9RtfuFtp4aSExntX/+ZpfmZxjM7ighCO8pHCyruLReW
         azjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687444565; x=1690036565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=QWkdMm/1m6LDP4jXudVa7UG+Xz41/eXXuKi8vMluL7w=;
        b=H+ExVAXb9Id5CrXvF/l4lOxn6iLn30MG1bFi2J/88HlgUFmfP5cqX/oOVeZt56H+UK
         HSE+dymbPYiT+egGlYlPBC88HO6w4QdoddY45pHidSNyu9RGale5i1NijrRXNYXxi7a9
         Cpua/Bss3EtMKX3NxeIORWQ61lknHevrVxieiPQrGN1AT76lU/t2gFLhNcfr7vz7IxqH
         bPDCMHx8jvilM/qxabmfgcXfT0/VtTEGfoga12V8SqH1ip1/G7/SQzsQhHOR2LqAF+mE
         rh9DfVXjYULWx6djhn6rfY74QIHc3v23gVu7xRZvMihJCx8EF69wRhLmnS8+Ped18XCx
         8e/g==
X-Gm-Message-State: AC+VfDxT1U1Obmf/x2RgnuSW09utxBmWnZM1duDacSa47aMZzu8dv2XN
	7NbwF9lAfTtZCaqFRN+pvjQlAd7uPWE=
X-Google-Smtp-Source: ACHHUZ5SsJT1FSK1R57HI+aLZcyRAf/KVGF2SFaycplVUU3qeml/bdJzBuxTfefgOcYMleEeWUTrBw==
X-Received: by 2002:a17:906:58cd:b0:989:d9d:d90a with SMTP id e13-20020a17090658cd00b009890d9dd90amr9626686ejs.34.1687444564450;
        Thu, 22 Jun 2023 07:36:04 -0700 (PDT)
Received: from localhost (ip-109-238-218-228.aim-net.cz. [109.238.218.228])
        by smtp.gmail.com with ESMTPSA id qw9-20020a170906fca900b0098963eb0c3dsm3258078ejb.26.2023.06.22.07.36.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Jun 2023 07:36:04 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
To: yocto@lists.yoctoproject.org
Cc: Martin Jansa <Martin.Jansa@gmail.com>
Subject: [meta-security][master-next][PATCH] *.patch: fix malformed Upstream-Status and SOB lines
Date: Thu, 22 Jun 2023 16:35:51 +0200
Message-ID: <20230622143551.3898797-1-Martin.Jansa@gmail.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 14:36:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60399

* as reported by openembedded-core/scripts/contrib/patchreview.py -v .

Malformed Signed-off-by 'Signed-Off-By:' (./recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch)
Malformed Signed-off-by 'Signed-Off-By:' (./recipes-mac/AppArmor/files/disable_perl_h_check.patch)

Missing Upstream-Status tag (./recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch)

Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-ids/samhain/files/samhain-pid-path.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-ids/suricata/files/fixup.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-scanners/clamav/files/fix2_libcurl_check.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/isic/files/configure_fix.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/krill/files/panic_workaround.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/opendnssec/files/libdns_conf_fix.patch
Malformed Upstream-Status 'Malformed Upstream-Status in patch ./recipes-security/opendnssec/files/libxml2_conf.patch

Signed-off-by: Martin Jansa <Martin.Jansa@gmail.com>
---
 .../files/0001-standard.profile-expand-checks.patch  |  1 +
 .../files/samhain-not-run-ptest-on-host.patch        |  2 +-
 recipes-ids/samhain/files/samhain-pid-path.patch     | 12 ++++++------
 recipes-ids/suricata/files/fixup.patch               |  2 +-
 .../AppArmor/files/crosscompile_perl_bindings.patch  |  2 +-
 .../AppArmor/files/disable_perl_h_check.patch        |  2 +-
 .../clamav/files/fix2_libcurl_check.patch            |  2 +-
 .../files/ecryptfs-utils-CVE-2016-6224.patch         |  2 +-
 recipes-security/isic/files/configure_fix.patch      |  2 +-
 recipes-security/krill/files/panic_workaround.patch  |  2 +-
 .../opendnssec/files/libdns_conf_fix.patch           |  2 +-
 recipes-security/opendnssec/files/libxml2_conf.patch |  2 +-
 12 files changed, 17 insertions(+), 16 deletions(-)

diff --git a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
index 0621360..43d550b 100644
--- a/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
+++ b/recipes-compliance/scap-security-guide/files/0001-standard.profile-expand-checks.patch
@@ -3,6 +3,7 @@ From: Armin Kuster <akuster808@gmail.com>
 Date: Wed, 21 Jun 2023 07:46:38 -0400
 Subject: [PATCH] standard.profile: expand checks
 
+Upstream-Status: Pending
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 ---
  .../openembedded/profiles/standard.profile    | 206 ++++++++++++++++++
diff --git a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
index 5284313..e00fc2a 100644
--- a/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
+++ b/recipes-ids/samhain/files/samhain-not-run-ptest-on-host.patch
@@ -1,6 +1,6 @@
 not run test on host, since we are doing cross-compile
 
-Upstream-status: Inappropriate [cross compile specific]
+Upstream-Status: Inappropriate [cross compile specific]
 
 Signed-off-by: Roy Li <rongqing.li@windriver.com>
 ---
diff --git a/recipes-ids/samhain/files/samhain-pid-path.patch b/recipes-ids/samhain/files/samhain-pid-path.patch
index 592bd16..8fdadd1 100644
--- a/recipes-ids/samhain/files/samhain-pid-path.patch
+++ b/recipes-ids/samhain/files/samhain-pid-path.patch
@@ -2,15 +2,15 @@ commit a932b03b65edeb02ccad2fce06bfa68a8f2fbb04
 Author: Aws Ismail <aws.ismail@windriver.com>
 Date:   Thu Jan 10 16:29:05 2013 -0500
 
-    Set the PID Lock path for samhain.pid
+Set the PID Lock path for samhain.pid
     
-    The explicit path for samhain.pid inorder
-    for samhain to work properly after it initial
-    database build.
+The explicit path for samhain.pid inorder
+for samhain to work properly after it initial
+database build.
     
-    Upstream-Status: Inappropriate [configuration]
+Upstream-Status: Inappropriate [configuration]
 
-    Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
+Signed-off-by: Aws Ismail <aws.ismail@windriver.com>
 
 diff --git a/samhainrc.linux b/samhainrc.linux
 index 10a8176..a7b06e6 100644
diff --git a/recipes-ids/suricata/files/fixup.patch b/recipes-ids/suricata/files/fixup.patch
index fc44ce6..4646aa9 100644
--- a/recipes-ids/suricata/files/fixup.patch
+++ b/recipes-ids/suricata/files/fixup.patch
@@ -1,6 +1,6 @@
 Skip pkg Makefile from using its own rust steps
 
-Upstream-Status: OE Specific
+Upstream-Status: Inappropriate [OE Specific]
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
diff --git a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
index ef55de7..585f306 100644
--- a/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
+++ b/recipes-mac/AppArmor/files/crosscompile_perl_bindings.patch
@@ -5,7 +5,7 @@ stuck in the generated Makefile with our cross tools.  In this case, linking is
 done via the compiler rather than the linker directly so pass in CC not LD
 here.
 
-Signed-Off-By: Tom Rini <trini@konsulko.com>
+Signed-off-by: Tom Rini <trini@konsulko.com>
 
 --- a/libraries/libapparmor/swig/perl/Makefile.am.orig	2017-06-13 19:04:43.296676212 -0400
 +++ b/libraries/libapparmor/swig/perl/Makefile.am	2017-06-13 19:05:03.488676693 -0400
diff --git a/recipes-mac/AppArmor/files/disable_perl_h_check.patch b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
index cf2640f..7ffdf2f 100644
--- a/recipes-mac/AppArmor/files/disable_perl_h_check.patch
+++ b/recipes-mac/AppArmor/files/disable_perl_h_check.patch
@@ -5,7 +5,7 @@ cross compilation.  Rather than try and get a compile check to work here,
 we know that we have what's required via our metadata so remove only this
 check.
 
-Signed-Off-By: Tom Rini <trini@konsulko.com>
+Signed-off-by: Tom Rini <trini@konsulko.com>
 
 --- a/libraries/libapparmor/configure.ac.orig	2017-06-13 16:41:38.668471495 -0400
 +++ b/libraries/libapparmor/configure.ac	2017-06-13 16:41:40.708471543 -0400
diff --git a/recipes-scanners/clamav/files/fix2_libcurl_check.patch b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
index 46406e9..8b500f3 100644
--- a/recipes-scanners/clamav/files/fix2_libcurl_check.patch
+++ b/recipes-scanners/clamav/files/fix2_libcurl_check.patch
@@ -1,6 +1,6 @@
 clamav .102.2 tries to find clamav using culf_config. Use EO pkg_config instead
 
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Index: git/configure
diff --git a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
index 4252f97..a457d79 100644
--- a/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
+++ b/recipes-security/ecryptfs-utils/files/ecryptfs-utils-CVE-2016-6224.patch
@@ -14,7 +14,7 @@ the patch comes from:
 https://web.nvd.nist.gov/view/vuln/detail?vulnId=CVE-2016-6224
 https://bazaar.launchpad.net/~ecryptfs/ecryptfs/trunk/revision/882
 
-Upstream-Status: backport
+Upstream-Status: Backport
 
 Signed-off-by: Li Zhou <li.zhou@windriver.com>
 ---
diff --git a/recipes-security/isic/files/configure_fix.patch b/recipes-security/isic/files/configure_fix.patch
index 7c3e033..ed2bf7a 100644
--- a/recipes-security/isic/files/configure_fix.patch
+++ b/recipes-security/isic/files/configure_fix.patch
@@ -1,6 +1,6 @@
 isic: add with-libnet remove libnet test
 
-Upstream-Status: Inappropriate[embedded specific]
+Upstream-Status: Inappropriate [embedded specific]
 builds fine on non-oe systems. We need to exlude
 cross compile libnet test. Pass in the location for libnet.a. Path
 did not support mulitlib either.
diff --git a/recipes-security/krill/files/panic_workaround.patch b/recipes-security/krill/files/panic_workaround.patch
index dc26416..f63169f 100644
--- a/recipes-security/krill/files/panic_workaround.patch
+++ b/recipes-security/krill/files/panic_workaround.patch
@@ -1,4 +1,4 @@
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
 Index: git/Cargo.toml
diff --git a/recipes-security/opendnssec/files/libdns_conf_fix.patch b/recipes-security/opendnssec/files/libdns_conf_fix.patch
index 31d7252..220a2b8 100644
--- a/recipes-security/opendnssec/files/libdns_conf_fix.patch
+++ b/recipes-security/opendnssec/files/libdns_conf_fix.patch
@@ -1,6 +1,6 @@
 Configure does not work with OE pkg-config for the ldns option
 
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
diff --git a/recipes-security/opendnssec/files/libxml2_conf.patch b/recipes-security/opendnssec/files/libxml2_conf.patch
index b4ed430..c20d5d2 100644
--- a/recipes-security/opendnssec/files/libxml2_conf.patch
+++ b/recipes-security/opendnssec/files/libxml2_conf.patch
@@ -1,6 +1,6 @@
 configure does not work with OE pkg-config for the libxml2 option
 
-Upstream-Status: OE specific
+Upstream-Status: Inappropriate [OE specific]
 
 Signed-off-by: Armin Kuster <akuster808@gmail.com>
 
-- 
2.41.0


