Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E2EF6C27C79
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 09:26:47 +0000 (UTC)
Received: from esa6.hc1455-7.c3s2.iphmx.com (esa6.hc1455-7.c3s2.iphmx.com [68.232.139.139])
 by mx.groups.io with SMTP id smtpd.web11.7481.1718357200330639910
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jun 2024 02:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=svvlgr+0;
 spf=pass (domain: fujitsu.com, ip: 68.232.139.139, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1718357201; x=1749893201;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=R/fprr2xawXiFFigGSR2zXQ93/ESs5qbqI2Wim4Ab7I=;
  b=svvlgr+0oc6+QOPt6/F7DtJvzwn/tEXqntvSpjiGtRLjFjVI72Q3TC0e
   Zbn6R3gc/k4LcfpdX2ayuZzHPFOS7TgXPt14it8tW+GsRG86e/G57Wsv3
   sFfPkUFnR2OLiNMQ6uDXofjQdYTrQ5qWBExIAza8MTKlNRaYFDNIXU2T9
   cqeBVQ7jiqpDOSCnhjgV8wHC3Gl+8mRTlsVLGnZr60Owqu/SiWwZxIu89
   Ok+Eeg/VT6WACXQZGWmGGxh1hrwTRp2vxrTokqBUmMvO7UuSjBXm+myTu
   d2q7u7V4i6M7ak6ipUe5HG6TV8wyY3Nki8gtB7iyZ/WmSr3+qsJmlWQLc
   w==;
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="165159053"
X-IronPort-AV: E=Sophos;i="6.08,237,1712588400"; 
   d="scan'208";a="165159053"
Received: from unknown (HELO yto-r1.gw.nic.fujitsu.com) ([218.44.52.217])
  by esa6.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2024 18:26:38 +0900
Received: from yto-m3.gw.nic.fujitsu.com (yto-nat-yto-m3.gw.nic.fujitsu.com [192.168.83.66])
	by yto-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id 71EC3DAE0A
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:34 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by yto-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id C7F91F2FA
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:33 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 5A356E51AF
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:33 +0900 (JST)
Received: from wangmy-QiTianM610-N000.g08.fujitsu.local (unknown [10.167.225.86])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id EA1071A000B;
	Fri, 14 Jun 2024 17:26:32 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH 2/3] suricata: Start WORKDIR -> UNPACKDIR transition
Date: Fri, 14 Jun 2024 14:25:06 -0400
Message-Id: <20240614182507.3323332-2-wangmy@fujitsu.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240614182507.3323332-1-wangmy@fujitsu.com>
References: <20240614182507.3323332-1-wangmy@fujitsu.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28452.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28452.006
X-TMASE-Result: 10--3.056700-10.000000
X-TMASE-MatchedRID: XZfBcHj0cztAJjQFQUSfYfLeH1FBnhK0wTlc9CcHMZerwqxtE531VGb6
	PphVtfZgyjt3ZuxN5oWJIG0pP8yLBh8TzIzimOwPruuVAw9Gg4LEQdG7H66TyHEqm8QYBtMO7s6
	ZE99GKEntSBGI66WmTAgOfaEjoeVVWod4uWQkWdZua2eh3L9skW2Folqp1e544GqT8EOEV87+t5
	zNOhVHlatylogy6FGgW4wbpXTb5DJKKve1kh3RY37qSWrndbmQn0bOriG5BVc=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 09:26:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63347

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 recipes-ids/suricata/suricata_7.0.0.bb | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/recipes-ids/suricata/suricata_7.0.0.bb b/recipes-ids/suricata/suricata_7.0.0.bb
index a01b3d9..21d4306 100644
--- a/recipes-ids/suricata/suricata_7.0.0.bb
+++ b/recipes-ids/suricata/suricata_7.0.0.bb
@@ -66,6 +66,8 @@ do_configure:prepend () {
     oe_runconf
 }
 
+CFLAGS += "-Wno-error=incompatible-pointer-types"
+
 do_compile () {
     # we do this to bypass the make provided by this pkg 
     # patches Makefile to skip the subdir
@@ -82,7 +84,7 @@ do_install () {
     oe_runmake install DESTDIR=${D}
 
     install -d ${D}${sysconfdir}/suricata ${D}${sysconfdir}/default/volatiles
-    install -m 0644 ${WORKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/03_suricata
+    install -m 0644 ${UNPACKDIR}/volatiles.03_suricata  ${D}${sysconfdir}/default/volatiles/03_suricata
 
     install -m 0644 ${S}/threshold.config ${D}${sysconfdir}/suricata
     install -m 0644 ${S}/suricata.yaml ${D}${sysconfdir}/suricata
-- 
2.34.1


