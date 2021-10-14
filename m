Return-Path: <ross@burtonini.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D310C433EF
	for <webhook@archiver.kernel.org>; Thu, 14 Oct 2021 13:26:59 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.9183.1634218018479801931
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Oct 2021 06:26:58 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 91A8FD6E
	for <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 06:26:56 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A19D3F70D
	for <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 06:26:56 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Subject: [PATCH yocto-autobuilder-helper] config.json: build FVP-Base instead
 of N1SDP
Date: Thu, 14 Oct 2021 14:26:52 +0100
Message-Id: <20211014132652.997995-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 14 Oct 2021 13:26:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55071

FVP-Base is a better supported and more generally useful machine than N1S=
DP.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/config.json b/config.json
index 0fe1f1a..dd890fe 100644
--- a/config.json
+++ b/config.json
@@ -324,11 +324,13 @@
                 "${BUILDDIR}/../meta-arm/meta-arm-bsp"
             ],
             "step1": {
-                "MACHINE": "n1sdp",
+                "shortname": "Build for fvp-base",
+                "MACHINE": "fvp-base",
                 "BBTARGETS": "core-image-minimal core-image-sato core-im=
age-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
                 },
             "step2": {
+                "shortname": "Build for juno",
                 "MACHINE": "juno",
                 "BBTARGETS": "core-image-minimal core-image-sato core-im=
age-sato:do_populate_sdk",
                 "SANITYTARGETS" : "core-image-sato:do_testsdk"
--=20
2.25.1


