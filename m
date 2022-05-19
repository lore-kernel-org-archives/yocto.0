Return-Path: <leimaohui@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 54541C433F5
	for <webhook@archiver.kernel.org>; Thu, 19 May 2022 03:48:26 +0000 (UTC)
Received: from mail3.bemta32.messagelabs.com (mail3.bemta32.messagelabs.com
 [195.245.230.81])
 by mx.groups.io with SMTP id smtpd.web12.3579.1652932099624292077
 for <yocto@lists.yoctoproject.org>;
 Wed, 18 May 2022 20:48:20 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=170520fj header.b=Co+bMKb3;
 spf=pass (domain: fujitsu.com, ip: 195.245.230.81,
 mailfrom: leimaohui@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=fujitsu.com;
	s=170520fj; t=1652932097; i=@fujitsu.com;
	bh=ieDhS99oWhWHxNGl+DcOV79PCWwjZSSbMeHQ7Jr9L7M=;
	h=From:To:CC:Subject:Date:Message-ID:MIME-Version:Content-Type;
	b=Co+bMKb32bxHqTZkyMylmW1FivTxtm2RN1H2xrdwtxN16ZaNeowNwTPiS74csDz5T
	 TsX2mnIZp1woUVm0znUS1swXCJCoxselvWhAAwwKMqHiQHok/goJ/z1x7gakDGKX4Z
	 t4hM4SqVgOvkPK1NzIMTIx0XMi+0wy6ibiTNOK7jP5TOmHk4GynpX1RBawpa1berT6
	 dBtgk4/lK3LcHTrjyXfpevp7YOwiwGLDgq1a06E9v4HKNKKzmWcVNiLLDBnqyotgqH
	 wo15DjaaBBr1SI3d4bK54D6CyUj8YKULQ/LBhjqX85+4w8v7g/XZreptMkWbfDbIk7
	 uGmpgGJJlNe2Q==
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFlrPIsWRWlGSWpSXmKPExsViZ8ORqMu4rzX
  JYMUMHouNHe8YHRg9Zp56xBzAGMWamZeUX5HAmvHz3Unmggb2itVfvzM1MC5g62Lk4hASuM4o
  cattFzuEc5hJYlvbMaYuRk4gZy+jxLsTuSA2m4CGxO6pl5m7GDk4RASUJO7+0wMJMwuoSRx9+
  RMsLCwQK/HmogpImEVAVWLBumY2EJtXwEWif2IXI4gtIaAgMeXhe2aIuKDEyZlPWCDGSEgcfP
  GCGaJGSeLtpT1Q9RUSrw9fgoqrSVw9t4l5AiP/LCTts5C0L2BkWsVomVSUmZ5RkpuYmaNraGC
  ga2hoqmusa2Gml1ilm6iXWqpbnlpcomuol1herJdaXKxXXJmbnJOil5dasokRGI4pxcxhOxj/
  9P7UO8QoycGkJMpbtbE1SYgvKT+lMiOxOCO+qDQntfgQowwHh5IEr+xeoJxgUWp6akVaZg4wN
  mDSEhw8SiK8LbuA0rzFBYm5xZnpEKlTjIpS4rzCIH0CIImM0jy4Nlg8XmKUlRLmZWRgYBDiKU
  gtys0sQZV/xSjOwagkzKsGMoUnM68EbvoroMVMQItvKYMtLklESEk1MJmGVVaeOVpU2fqm99+
  16T/WXmTZlWt51HjDpH+25u35194myPxpeTLTQiN6w03zOq9Z5dd783+Ivz2TMU9M80ZjxvKc
  i6X9B6+6LNu6Powh+O48BYU7PxZop/Ds33XTVSjwtCxf2W8F9ZXhlnrGckx2HFxhgb5J6sqvR
  AKLl2vvCHz4uuIWf5nMukvX0+2CD92XzZtTPGftlXZ3ZncpnnkvJi13PKalv+Sx5xkB67AL33
  Uurz1oas7Mm+kj6Giwv9f2yaso5p/vxGzZri/7sfF3q0nfxAihpGuvGZm/2Wf5b/bROpJklJB
  cMzNNaEFu25+u+uVBsx8cr2vzvyWt8VPTeL3QOf8mzarNn7+2KLEUZyQaajEXFScCAMZOaMJC
  AwAA
X-Env-Sender: leimaohui@fujitsu.com
X-Msg-Ref: server-2.tower-585.messagelabs.com!1652932096!14761!1
X-Originating-IP: [62.60.8.97]
X-SYMC-ESS-Client-Auth: outbound-route-from=pass
X-StarScan-Received: 
X-StarScan-Version: 9.86.4; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 20115 invoked from network); 19 May 2022 03:48:17 -0000
Received: from unknown (HELO n03ukasimr01.n03.fujitsu.local) (62.60.8.97)
  by server-2.tower-585.messagelabs.com with ECDHE-RSA-AES256-GCM-SHA384
 encrypted SMTP; 19 May 2022 03:48:17 -0000
Received: from n03ukasimr01.n03.fujitsu.local (localhost [127.0.0.1])
	by n03ukasimr01.n03.fujitsu.local (Postfix) with ESMTP id A5EAE100191
	for <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 04:48:16 +0100 (BST)
Received: from R01UKEXCASM126.r01.fujitsu.local (unknown [10.183.43.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by n03ukasimr01.n03.fujitsu.local (Postfix) with ESMTPS id 8264110018D
	for <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 04:48:16 +0100 (BST)
Received: from localhost.localdomain (10.167.225.227) by
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178) with Microsoft SMTP Server
 (TLS) id 15.0.1497.32; Thu, 19 May 2022 04:47:54 +0100
From: Lei Maohui <leimaohui@fujitsu.com>
To: <yocto@lists.yoctoproject.org>
CC: Lei Maohui <leimaohui@fujitsu.com>
Subject: [yocto] [meta-security][PATCH] layer.conf: Added BBFILES_DYNAMIC for
 dynamic-layers.
Date: Thu, 19 May 2022 11:47:41 +0800
Message-ID: <1652932061-3651-1-git-send-email-leimaohui@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.167.225.227]
X-ClientProxiedBy: G08CNEXCHPEKD08.g08.fujitsu.local (10.167.33.83) To
 R01UKEXCASM126.r01.fujitsu.local (10.183.43.178)
X-Virus-Scanned: ClamAV using ClamSMTP
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 19 May 2022 03:48:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57137

Signed-off-by: Lei Maohui <leimaohui@fujitsu.com>
---
 conf/layer.conf | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/conf/layer.conf b/conf/layer.conf
index 1f83593..0c532fa 100644
--- a/conf/layer.conf
+++ b/conf/layer.conf
@@ -13,6 +13,13 @@ LAYERSERIES_COMPAT_security = "kirkstone"
 
 LAYERDEPENDS_security = "core openembedded-layer perl-layer networking-layer meta-python"
 
+BBFILES_DYNAMIC += " \
+  perl-layer:${LAYERDIR}/dynamic-layers/meta-perl/recipes-*/*/*.bb \
+  perl-layer:${LAYERDIR}/dynamic-layers/meta-perl/recipes-*/*/*.bbappend \
+  meta-python:${LAYERDIR}/dynamic-layers/meta-python/recipes-*/*/*.bb \
+  meta-python:${LAYERDIR}/dynamic-layers/meta-python/recipes-*/*/*.bbappend \
+"
+
 # Sanity check for meta-security layer.
 # Setting SKIP_META_SECURITY_SANITY_CHECK to "1" would skip the bbappend files check.
 INHERIT += "sanity-meta-security"
-- 
2.25.1


