Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 710ECC3526F
	for <webhook@archiver.kernel.org>; Thu,  7 Apr 2022 20:36:08 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web12.581.1649348517360606647
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Apr 2022 09:21:57 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F05DF139F
	for <yocto@lists.yoctoproject.org>; Thu,  7 Apr 2022 09:21:56 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9C93E3F73B
	for <yocto@lists.yoctoproject.org>; Thu,  7 Apr 2022 09:21:56 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: rewrite meta-virt build
 steps
Date: Thu,  7 Apr 2022 17:21:54 +0100
Message-Id: <20220407162154.3810857-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 07 Apr 2022 20:36:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56683

In the meta-virt builder, don't do a world build but instead build just
xen-image-minimal for both qemuarm64 and qemux86-64.

This can be expanded over time, but is a sensible starting point and
builds cleanly.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 16 ++++++++++++----
 1 file changed, 12 insertions(+), 4 deletions(-)

diff --git a/config.json b/config.json
index 5b4a59e..93fd6a5 100644
--- a/config.json
+++ b/config.json
@@ -934,8 +934,6 @@
         },
         "meta-virt" : {
             "NEEDREPOS" : ["poky", "meta-openembedded", "meta-virtualiza=
tion"],
-            "MACHINE" : "qemux86-64",
-            "BBTARGETS" : "world -k",
             "ADDLAYER" : [
                 "${BUILDDIR}/../meta-openembedded/meta-oe",
                 "${BUILDDIR}/../meta-openembedded/meta-python",
@@ -944,8 +942,18 @@
                 "${BUILDDIR}/../meta-virtualization"
             ],
             "extravars" : [
-                "DISTRO_FEATURES:append =3D ' virtualization'"
-            ]
+                "DISTRO_FEATURES:append =3D ' virtualization xen'"
+            ],
+            "step1" : {
+                "shortname": "Xen for qemux86-64",
+                "MACHINE": "qemux86-64",
+                "BBTARGETS" : "xen-image-minimal"
+            },
+            "step2" : {
+                "shortname": "Xen for qemuarm64",
+                "MACHINE": "qemuarm64",
+                "BBTARGETS" : "xen-image-minimal"
+            }
         },
         "qa-extras" : {
             "MACHINE" : "qemux86-64",
--=20
2.25.1


