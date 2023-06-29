Return-Path: <peter.marko@siemens.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C465CEB64D9
	for <webhook@archiver.kernel.org>; Thu, 29 Jun 2023 22:11:22 +0000 (UTC)
Received: from mta-65-227.siemens.flowmailer.net (mta-65-227.siemens.flowmailer.net [185.136.65.227])
 by mx.groups.io with SMTP id smtpd.web10.9957.1688076679921565090
 for <yocto@lists.yoctoproject.org>;
 Thu, 29 Jun 2023 15:11:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=peter.marko@siemens.com header.s=fm1 header.b=cxGIH2M9;
 spf=pass (domain: rts-flowmailer.siemens.com, ip: 185.136.65.227, mailfrom: fm-256628-202306292211160cf9c63ca05abf5959-ji___1@rts-flowmailer.siemens.com)
Received: by mta-65-227.siemens.flowmailer.net with ESMTPSA id 202306292211160cf9c63ca05abf5959
        for <yocto@lists.yoctoproject.org>;
        Fri, 30 Jun 2023 00:11:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=peter.marko@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc;
 bh=Ab125CwuvXQZZyiO5qTkmZPYXwPovVUxzg9UHtdE/c8=;
 b=cxGIH2M9XIGyF9cJrS+Mq/GXjZzZnZrRvNfIE/DD9oQ6O/DR5mmWkPbuO3Z63XtILZmXlK
 l7/of8tMJh7dQgV3SpvSdQCH0lud4O/Tb6gZeCZ0x31CGbqG+Ft+sJzrA0vsUd/fpmpleomI
 7ms/M3/AZMPgSltY0auy0oVm+vL10=;
From: Peter Marko <peter.marko@siemens.com>
To: yocto@lists.yoctoproject.org
Cc: Peter Marko <peter.marko@siemens.com>
Subject: [meta-security][kirkstone][PATCH] tpm2-tss: ignore CVE-2023-22745
Date: Fri, 30 Jun 2023 00:10:20 +0200
Message-Id: <20230629221020.17674-1-peter.marko@siemens.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-256628:519-21489:flowmailer
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 29 Jun 2023 22:11:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60481

From: Peter Marko <peter.marko@siemens.com>

As already mentioned in upgrade commit, this CVE is fixed.
But cve_check still reports it as NVD DB was not updated.

Signed-off-by: Peter Marko <peter.marko@siemens.com>
---
 meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
index 9b76c2f..4d2c911 100644
--- a/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
+++ b/meta-tpm/recipes-tpm2/tpm2-tss/tpm2-tss_3.2.2.bb
@@ -88,3 +88,6 @@ FILES:${PN} = "\
     ${sysconfdir}/sysusers.d"
 
 RDEPENDS:libtss2 = "libgcrypt"
+
+# This is patched in 3.2.2, NVD DB was not updated to reflect this backport
+CVE_CHECK_IGNORE += "CVE-2023-22745"
-- 
2.30.2


