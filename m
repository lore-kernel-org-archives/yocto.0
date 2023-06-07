Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFB65C7EE23
	for <webhook@archiver.kernel.org>; Wed,  7 Jun 2023 19:28:16 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.7528.1686166095483725275
 for <yocto@lists.yoctoproject.org>;
 Wed, 07 Jun 2023 12:28:15 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 80F9F143D;
	Wed,  7 Jun 2023 12:29:00 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id B7CEB3F71E;
	Wed,  7 Jun 2023 12:28:14 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 3/3] Add meta-clang builders
Date: Wed,  7 Jun 2023 20:28:11 +0100
Message-Id: <20230607192811.601343-3-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230607192811.601343-1-ross.burton@arm.com>
References: <20230607192811.601343-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 07 Jun 2023 19:28:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60215

From: Ross Burton <ross.burton@arm.com>

Add a meta-clang builder that runs testimage on core-image-sato-sdk for
both qemux86-64 and qemuarm64, and add meta-clang to the nightly
check-layer builder.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 29 ++++++++++++++++++++++++++++-
 1 file changed, 28 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 92c9443..eb492ee 100644
--- a/config.json
+++ b/config.json
@@ -444,6 +444,24 @@
                 "BBTARGETS": "aws-iot-device-sdk-cpp-v2"
             }
         },
+        "meta-clang" : {
+            "NEEDREPOS" : ["poky", "meta-clang"],
+            "extravars" : [
+                "TOOLCHAIN =3D 'clang'"
+            ],
+            "step1": {
+                "shortname": "Build for qemux86-64",
+                "MACHINE": "qemux86-64",
+                "BBTARGETS": "core-image-sato-sdk",
+                "SANITYTARGETS" : "core-image-sato-sdk:do_testimage"
+            },
+            "step2": {
+                "shortname": "Build for qemuarm64",
+                "MACHINE": "qemuarm64",
+                "BBTARGETS": "core-image-sato-sdk",
+                "SANITYTARGETS" : "core-image-sato-sdk:do_testimage"
+            }
+        },
        "bringup" : {
             "SSTATEDIR" : ["SSTATE_DIR ?=3D '${HELPERBUILDDIR}/sstate'"]=
,
             "TEMPLATE" : "bringup"
@@ -911,7 +929,7 @@
             }
         },
         "check-layer-nightly" : {
-            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "=
meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization"],
+            "NEEDREPOS" : ["poky", "meta-agl", "meta-arm", "meta-aws", "=
meta-intel", "meta-ti", "meta-openembedded", "meta-virtualization", "meta=
-clang"],
             "step1" : {
                 "shortname" : "Test meta-agl YP Compatibility",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-agl/me=
ta-agl-core ../meta-agl/meta-netboot ../meta-agl/meta-pipewire --dependen=
cy ../meta-openembedded/meta-oe ../meta-openembedded/meta-networking ../m=
eta-openembedded/meta-python --no-auto-dependency"]
@@ -940,6 +958,10 @@
             "step7" : {
                 "shortname" : "Test meta-virtualization YP Compatibility=
",
                 "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-virtua=
lization --dependency ../meta-openembedded/meta-oe ../meta-openembedded/m=
eta-networking ../meta-openembedded/meta-python ../meta-openembedded/meta=
-filesystems --no-auto-dependency"]
+            },
+            "step8" : {
+                "shortname" : "Test meta-clang YP Compatibility",
+                "EXTRACMDS" : ["yocto-check-layer-wrapper ../meta-clang =
--no-auto-dependency"]
             }
         },
         "metrics" : {
@@ -1272,6 +1294,11 @@
             "revision" : "HEAD",
             "no-layer-add" : true
         },
+        "meta-clang": {
+            "url" : "https://github.com/kraj/meta-clang.git",
+            "branch" : "master",
+            "revision" : "HEAD"
+        },
         "meta-ti" : {
             "url" : "git://git.yoctoproject.org/meta-ti",
             "branch" : "master",
--=20
2.34.1


