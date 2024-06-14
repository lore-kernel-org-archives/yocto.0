Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B403BC41513
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 09:26:47 +0000 (UTC)
Received: from esa7.hc1455-7.c3s2.iphmx.com (esa7.hc1455-7.c3s2.iphmx.com [139.138.61.252])
 by mx.groups.io with SMTP id smtpd.web11.7480.1718357198707042852
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jun 2024 02:26:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=Zdow0dHb;
 spf=pass (domain: fujitsu.com, ip: 139.138.61.252, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1718357198; x=1749893198;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=JpsW4/vkNZnAizI/btrrwUlC4wuN37/VAK0egvP2990=;
  b=Zdow0dHbvCna4hTT0CVFd5fnkkFuitynxv0Y3oKgSmtKaMhaIK6MFj4N
   QVgUYVTvixio4J73PphBOigxqNyKV8KKj27SJYNNjIrcmFPecT6nYUCUj
   1RvAaPWMmrqYo0O3+m+4LltFxkacDtyEuXBt476cLvSEFRgbMfV/ZRBhF
   DicejOf5ZfiZfY/w1VaNratSklAEOdCzLH2dUjvkcMIfpTHHESJie2qJE
   rSFGJObWO1SY+3KupnKeqbnqlh9LO6PpWHSHkB5d++e87hEh5W7cc1uN/
   l5lq323R9srhmcM0e2BF1Xib2g1r5+8SsFG/4rNsjzEgj5KqUV8tsDOu6
   w==;
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="142074866"
X-IronPort-AV: E=Sophos;i="6.08,237,1712588400"; 
   d="scan'208";a="142074866"
Received: from unknown (HELO yto-r3.gw.nic.fujitsu.com) ([218.44.52.219])
  by esa7.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2024 18:26:36 +0900
Received: from yto-m2.gw.nic.fujitsu.com (yto-nat-yto-m2.gw.nic.fujitsu.com [192.168.83.65])
	by yto-r3.gw.nic.fujitsu.com (Postfix) with ESMTP id 7F564C2ABD
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:33 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id BED78D50BE
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:32 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 4969CE51AF
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:32 +0900 (JST)
Received: from wangmy-QiTianM610-N000.g08.fujitsu.local (unknown [10.167.225.86])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id DFCB81A000B;
	Fri, 14 Jun 2024 17:26:31 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH 1/3] ima-policy-hashed: Start WORKDIR -> UNPACKDIR transition
Date: Fri, 14 Jun 2024 14:25:05 -0400
Message-Id: <20240614182507.3323332-1-wangmy@fujitsu.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28452.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28452.006
X-TMASE-Result: 10--0.416700-10.000000
X-TMASE-MatchedRID: TtGBFeo3UetAJjQFQUSfYQPZZctd3P4BRzUPAqhCjtiNJ2ckLRg2UeEm
	ROSC5Th42kgHBGbjCr58eC2pVr1wb4grKnsJ1GRgngIgpj8eDcBpkajQR5gb3mn0m688Eo38Kra
	uXd3MZDU5lPd4jEgxRucwI8QWQ0/5dVDLN5vd/x+g8/Snz4jlyP+GyzFwCmUk6elXZ+xVjxhkts
	1qNz+y1P3j8LmGs1Ym8ZhLES3gbAgtPl/iWhS4GBXFEH92Kf64nTtPxlIuIBW9Hzj86YHXBCnif
	x5AGfCL
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 09:26:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63345

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 .../recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
index 57c0640..8c670e8 100644
--- a/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
+++ b/meta-integrity/recipes-security/ima_policy_hashed/ima-policy-hashed_1.0.bb
@@ -11,7 +11,7 @@ REQUIRED_DISTRO_FEATURES = "ima"
 
 do_install () {
     install -d ${D}/${sysconfdir}/ima
-    install ${WORKDIR}/ima_policy_hashed ${D}/${sysconfdir}/ima/ima-policy
+    install ${UNPACKDIR}/ima_policy_hashed ${D}/${sysconfdir}/ima/ima-policy
 }
 
 FILES:${PN} = "${sysconfdir}/ima"
-- 
2.34.1


