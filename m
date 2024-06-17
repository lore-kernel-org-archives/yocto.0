Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6640C27C6E
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 08:13:03 +0000 (UTC)
Received: from esa11.hc1455-7.c3s2.iphmx.com (esa11.hc1455-7.c3s2.iphmx.com [207.54.90.137])
 by mx.groups.io with SMTP id smtpd.web10.51650.1718611981436300876
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 01:13:01 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=k6KMErLW;
 spf=pass (domain: fujitsu.com, ip: 207.54.90.137, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1718611981; x=1750147981;
  h=from:to:cc:subject:date:message-id;
  bh=FRJXCdQ/TtEEcScP/cWF2DQCK3xHKHXy5aiOUqvCj7c=;
  b=k6KMErLWvG/NuRV5NhHvEgohW6fbD+k5Dy/Z86FyRrwzeGuwem565lr8
   g3iyIlrnSTyO6DHLGk0UPFAJgXoRK8FHbuO//PGvwCfYqwKm/ybSp9SGG
   12v5mW25SAMIoSPYrrsWQC66rIbDswl6Ybc8FXOOPCRISaAFKfcRhJvZr
   Rsaor9OeguoGE6OwYQznKtFszH6cObaCUcVfbyg2rEOJr55K8DDO7ZPxk
   AEU3+GSbQxGkcTndAgJ92+lA8h42OnOdR798yGaLF0G6/v8LoEkFe+A1z
   sHZYJoDVQK5cg7YYAcPoeeRFQqViR1OI4pZtKS9SzAaSgf9fsLAe12mqH
   A==;
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="143125335"
X-IronPort-AV: E=Sophos;i="6.08,244,1712588400"; 
   d="scan'208";a="143125335"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa11.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2024 17:12:58 +0900
Received: from oym-m1.gw.nic.fujitsu.com (oym-nat-oym-m1.gw.nic.fujitsu.com [192.168.87.58])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id D2E04D2AA6
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:12:56 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by oym-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id 20861D4F4C
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:12:56 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id A3DE36B5C5
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:12:55 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 439CE1A0002;
	Mon, 17 Jun 2024 16:12:55 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH] cluster-glue: Start WORKDIR -> UNPACKDIR transition
Date: Mon, 17 Jun 2024 16:12:40 +0800
Message-Id: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28458.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28458.006
X-TMASE-Result: 10--1.306700-10.000000
X-TMASE-MatchedRID: XZfBcHj0cztAJjQFQUSfYQPZZctd3P4BRzUPAqhCjtjAuQ0xDMaXkCpY
	AmrFxIhi3lzPb+p0ODTrixWWWJYrHx8TzIzimOwPruuVAw9Gg4LEQdG7H66TyHEqm8QYBtMOiqz
	k/I0vPU0JEEiHEuyapKBV+d8gOXQ6LlKZgRpcFcX1bnP6u41NqZ4y47DFYutE1BBoSTbL7piRMQ
	ZAgLxOa69B4Gb3fvrHgr6lqxbIXlHC3tMwY3ma2xUDj+dgUQVyTE7Co9fKv3w=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 08:13:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63349

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb           | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
index e3aac57..aed8be6 100644
--- a/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
+++ b/meta-cgl-common/recipes-cgl/cluster-glue/cluster-glue_1.0.12.bb
@@ -62,9 +62,9 @@ do_configure:prepend() {
 
 do_install:append() {
 	install -d ${D}${sysconfdir}/default/volatiles
-	install -m 0644 ${WORKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
+	install -m 0644 ${UNPACKDIR}/volatiles ${D}${sysconfdir}/default/volatiles/04_cluster-glue
 	install -d ${D}${sysconfdir}/tmpfiles.d
-	install -m 0644 ${WORKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
+	install -m 0644 ${UNPACKDIR}/tmpfiles ${D}${sysconfdir}/tmpfiles.d/${PN}.conf
 
     oe_multilib_header heartbeat/glue_config.h
 }
-- 
2.34.1


