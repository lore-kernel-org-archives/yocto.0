Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C01EFC4332F
	for <webhook@archiver.kernel.org>; Tue, 31 Oct 2023 14:50:07 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.573.1698763801287801277
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 07:50:01 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DD1EDA7;
	Tue, 31 Oct 2023 07:50:42 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id 6F1A03F738;
	Tue, 31 Oct 2023 07:50:00 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper 2/2] config.json: add meta-oe to the metrics target
Date: Tue, 31 Oct 2023 14:49:57 +0000
Message-Id: <20231031144957.648173-2-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231031144957.648173-1-ross.burton@arm.com>
References: <20231031144957.648173-1-ross.burton@arm.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Oct 2023 14:50:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61533

From: Ross Burton <ross.burton@arm.com>

This writes the metrics to a new yocto-metrics-meta-oe repository, and
write the results to patchmetrics-meta-oe.

There's a great/ugly (delete to taste) hack to hide CVEs from oe-core,
so this only lists issues in meta-oe.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 29 ++++++++++++++++++++++++-----
 1 file changed, 24 insertions(+), 5 deletions(-)

diff --git a/config.json b/config.json
index f3a4ee7..1b3c2b0 100644
--- a/config.json
+++ b/config.json
@@ -1198,7 +1198,7 @@
             }
         },
         "metrics" : {
-            "NEEDREPOS" : ["poky"],
+            "NEEDREPOS" : ["poky", "meta-openembedded"],
             "extravars" : [
                 "INHERIT +=3D 'cve-check'",
                 "BB_DISKMON_DIRS =3D ''",
@@ -1210,18 +1210,37 @@
             "step1" : {
                 "shortname" : "Fetching metrics repositories",
                 "EXTRAPLAINCMDS" : [
-                    "git clone ssh://git@push.yoctoproject.org/yocto-met=
rics"
+                    "git clone ssh://git@push.yoctoproject.org/yocto-met=
rics && git clone ssh://git@push.yoctoproject.org/yocto-metrics-meta-oe"
                 ]
             },
             "step2" : {
-                "shortname" : "Generating patch metrics for Poky",
+                "shortname" : "Patch metrics for meta",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ..=
/ --metrics ../yocto-metrics --repo ../ --layer ../meta --branch ${HELPER=
BRANCHNAME} --results ${HELPERRESULTSDIR}/../../patchmetrics --push"]
             },
             "step3" : {
-                "shortname" : "Running CVE checks for Poky",
+                "shortname" : "CVE checks for meta",
                 "EXTRACMDS" : ["${SCRIPTSDIR}/run-cvecheck --metrics ../=
yocto-metrics --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/=
../../patchmetrics --push"]
+            },
+            "step4" : {
+                "shortname" : "Patch metrics for meta-oe",
+                "EXTRACMDS" : ["${SCRIPTSDIR}/run-patchmetrics --poky ..=
/ --metrics ../yocto-metrics-meta-oe --repo ../meta-openembedded --layer =
../meta-openembedded --branch ${HELPERBRANCHNAME} --results ${HELPERRESUL=
TSDIR}/../../patchmetrics-meta-oe --push"]
+            },
+            "step5" : {
+                "shortname" : "CVE checks for meta-oe",
+                "ADDLAYER" : [
+                    "${BUILDDIR}/../meta-openembedded/meta-oe",
+                    "${BUILDDIR}/../meta-openembedded/meta-python",
+                    "${BUILDDIR}/../meta-openembedded/meta-perl",
+                    "${BUILDDIR}/../meta-openembedded/meta-networking",
+                    "${BUILDDIR}/../meta-openembedded/meta-multimedia",
+                    "${BUILDDIR}/../meta-openembedded/meta-gnome",
+                    "${BUILDDIR}/../meta-openembedded/meta-xfce",
+                    "${BUILDDIR}/../meta-openembedded/meta-filesystems",
+                    "${BUILDDIR}/../meta-openembedded/meta-initramfs",
+                    "${BUILDDIR}/../meta-openembedded/meta-webserver"
+                    ],
+                "EXTRACMDS" : ["echo 'do_cve_check:layer-core =3D \"\"' =
>> conf/auto.conf ; ${SCRIPTSDIR}/run-cvecheck --metrics ../yocto-metrics=
-meta-oe --branch ${HELPERBRANCHNAME} --results ${HELPERRESULTSDIR}/../..=
/patchmetrics-meta-oe --push"]
             }
-
         },
         "meta-mingw" : {
             "NEEDREPOS" : ["poky", "meta-mingw"],
--=20
2.34.1


