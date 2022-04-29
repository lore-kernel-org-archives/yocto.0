Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F15E9C433EF
	for <webhook@archiver.kernel.org>; Fri, 29 Apr 2022 09:58:56 +0000 (UTC)
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
 by mx.groups.io with SMTP id smtpd.web10.8338.1651226328663781698
 for <yocto@lists.yoctoproject.org>;
 Fri, 29 Apr 2022 02:58:49 -0700
Authentication-Results: mx.groups.io;
 dkim=missing;
 spf=pass (domain: arm.com, ip: 217.140.110.172, mailfrom: ross.burton@arm.com)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 641691063;
	Fri, 29 Apr 2022 02:58:45 -0700 (PDT)
Received: from oss-tx204.lab.cambridge.arm.com
 (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC5353F73B;
	Fri, 29 Apr 2022 02:58:44 -0700 (PDT)
From: Ross Burton <ross.burton@arm.com>
To: yocto@lists.yoctoproject.org
Cc: nd@arm.com
Subject: [PATCH yocto-autobuilder-helper] config.json: rename meta-virt to
 meta-virtualization
Date: Fri, 29 Apr 2022 10:58:42 +0100
Message-Id: <20220429095842.775525-1-ross.burton@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 29 Apr 2022 09:58:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56951

Use the name of the layer instead of a contraction, for clarity.

Signed-off-by: Ross Burton <ross.burton@arm.com>
---
 config.json | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/config.json b/config.json
index dc59d7f..a8d0e20 100644
--- a/config.json
+++ b/config.json
@@ -933,7 +933,7 @@
                 "BBTARGETS" : "world -k"
             }
         },
-        "meta-virt" : {
+        "meta-virtualization" : {
             "NEEDREPOS" : ["poky", "meta-openembedded", "meta-virtualiza=
tion"],
             "ADDLAYER" : [
                 "${BUILDDIR}/../meta-openembedded/meta-oe",
--=20
2.25.1


