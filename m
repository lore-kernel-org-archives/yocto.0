Return-Path: <schitrod@cisco.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 86792C77B75
	for <webhook@archiver.kernel.org>; Mon, 15 May 2023 13:15:32 +0000 (UTC)
Received: from rcdn-iport-9.cisco.com (rcdn-iport-9.cisco.com [173.37.86.80])
 by mx.groups.io with SMTP id smtpd.web10.88249.1684156525655299797
 for <yocto@lists.yoctoproject.org>;
 Mon, 15 May 2023 06:15:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@cisco.com header.s=iport header.b=G4Vqp8om;
 spf=pass (domain: cisco.com, ip: 173.37.86.80, mailfrom: schitrod@cisco.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=cisco.com; i=@cisco.com; l=1347; q=dns/txt; s=iport;
  t=1684156525; x=1685366125;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=WZeZTAwZCYxweh/ajQargkaRcGLijVvjOBTSIer3XFA=;
  b=G4Vqp8omrQxTWERXZbL+Z2qW3xxgw3kuIq591x7tqZ6dd/y66FUn4jNB
   12VfszazZuKUMGihH7e7vVGUMoexOSCCWsRCBCiMrR+7dBhk2WGlxhC2H
   XWKNZYQtmoFGJ/wDT0w8Ki8jF19INh28nxzC5lvvahAC6W9V7R1qetohT
   E=;
X-IronPort-AV: E=Sophos;i="5.99,276,1677542400"; 
   d="scan'208";a="57795676"
Received: from rcdn-core-4.cisco.com ([173.37.93.155])
  by rcdn-iport-9.cisco.com with ESMTP/TLS/DHE-RSA-SEED-SHA; 15 May 2023 13:15:25 +0000
Received: from sjc-ads-7441.cisco.com (sjc-ads-7441.cisco.com [10.30.220.226])
	by rcdn-core-4.cisco.com (8.15.2/8.15.2) with ESMTPS id 34FDFOew010611
	(version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
	Mon, 15 May 2023 13:15:24 GMT
Received: by sjc-ads-7441.cisco.com (Postfix, from userid 1812315)
	id 4EA02CC1293; Mon, 15 May 2023 06:15:24 -0700 (PDT)
From: Sanjay Chitroda <schitrod@cisco.com>
To: yocto@lists.yoctoproject.org
Cc: Sanjay Chitroda <schitrod@cisco.com>
Subject: [meta-selinux][PATCH] selinux: Set CVE_PRODUCT
Date: Mon, 15 May 2023 06:15:22 -0700
Message-Id: <20230515131522.539380-1-schitrod@cisco.com>
X-Mailer: git-send-email 2.35.6
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Outbound-SMTP-Client: 10.30.220.226, sjc-ads-7441.cisco.com
X-Outbound-Node: rcdn-core-4.cisco.com
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 15 May 2023 13:15:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60028

The CVE product name for selinux-* package is (usually) the selinux
(and not our recipe name), so use selinux as the default.

See also:
http://lists.openembedded.org/pipermail/openembedded-core/2017-July/139897.html

"Results from cve-check are not very good at the moment.
One of the reasons for this is that component names used in CVE
database differ from yocto recipe names. This series fixes several
of those name mapping problems by setting the CVE_PRODUCT correctly
in the recipes. To check this mapping with after a build, I'm exporting
LICENSE and CVE_PRODUCT variables to buildhistory for recipes and
packages."

Value added is based on:
https://nvd.nist.gov/vuln/search/results?results_type=overview&search_type=all&cpe_product=cpe%3A%2F%3Akernel%3Aselinux

Signed-off-by: Sanjay Chitroda <schitrod@cisco.com>
---
 recipes-security/selinux/selinux_common.inc | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/recipes-security/selinux/selinux_common.inc b/recipes-security/selinux/selinux_common.inc
index 383f62d..cd51a86 100644
--- a/recipes-security/selinux/selinux_common.inc
+++ b/recipes-security/selinux/selinux_common.inc
@@ -15,3 +15,5 @@ do_install() {
             SHLIBDIR="${base_libdir}" \
             SYSTEMDDIR="${systemd_unitdir}"
 }
+
+CVE_PRODUCT ?= "kernel:selinux"
-- 
2.35.6


