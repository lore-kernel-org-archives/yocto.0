Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 85674CDB47E
	for <webhook@archiver.kernel.org>; Fri, 13 Oct 2023 11:07:19 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web11.35930.1697195237488222074
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Oct 2023 04:07:17 -0700
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9821A11FB;
	Fri, 13 Oct 2023 04:07:57 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPA id A95D53F7A6;
	Fri, 13 Oct 2023 04:07:16 -0700 (PDT)
From: ross.burton@arm.com
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] Add very basic testimage for poky-tiny
Date: Fri, 13 Oct 2023 12:07:07 +0100
Message-Id: <20231013110707.1458220-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 13 Oct 2023 11:07:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61331

From: Ross Burton <ross.burton@arm.com>

Now that the _qemutiny test case actually works, we can ensure that all
of the tested poky-tiny machines actually at least boot.

This is a very low bar, but it's better than nothing.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/config.json b/config.json
index 3acb710..c82772e 100644
--- a/config.json
+++ b/config.json
@@ -946,6 +946,10 @@
         "poky-tiny" : {
             "DISTRO" : "poky-tiny",
             "BBTARGETS" : "core-image-minimal",
+            "SANITYTARGETS" : "core-image-minimal:do_testimage",
+            "extravars" : [
+                "TEST_SUITES =3D '_qemutiny'"
+            ],
             "step1" : {
                 "MACHINE" : "qemux86",
                 "shortname" : "qemux86 poky-tiny"
--=20
2.34.1


