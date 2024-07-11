Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3D7CEC3DA41
	for <webhook@archiver.kernel.org>; Thu, 11 Jul 2024 03:37:38 +0000 (UTC)
Received: from esa9.hc1455-7.c3s2.iphmx.com (esa9.hc1455-7.c3s2.iphmx.com [139.138.36.223])
 by mx.groups.io with SMTP id smtpd.web11.4065.1720669051545623290
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 20:37:32 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=sMwzfeIw;
 spf=pass (domain: fujitsu.com, ip: 139.138.36.223, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1720669051; x=1752205051;
  h=from:to:cc:subject:date:message-id;
  bh=slFCBcmiOmeirN0Ds9FYb3UW3cI9/gYuKC+Ey4eUbKs=;
  b=sMwzfeIwjbaemyIm7dlNJKQPrmXRjchfIvX8HnG/BOl40V208bcKfFrx
   Ycimh+HapH3TA5gbHjX+FKqz0zQpi7w6OHx29TfX0isvpNUK3r/fPtK4J
   9y3xLnAiaBHK22mRbq/CLJPLEaoUqInkv/BZakgZ57VZMvRSzTudtGhUb
   c7UqZOQeNTvmrSfVw7qHK/1omCy3QekY/jrp7IVaS4qd4Q4UVfP/maNiB
   pN2tJr9L0aKtizi7vYUpC3DY1lOvxKpEbKtopi4eGDZULImp2V8sAd+tW
   g2L2nq3h84hy/BIVwHuO9cRIjIVGJePHv2LP870B227FACFJE20RAI79y
   A==;
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="154909117"
X-IronPort-AV: E=Sophos;i="6.09,198,1716217200"; 
   d="scan'208";a="154909117"
Received: from unknown (HELO oym-r1.gw.nic.fujitsu.com) ([210.162.30.89])
  by esa9.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Jul 2024 12:37:28 +0900
Received: from oym-m2.gw.nic.fujitsu.com (oym-nat-oym-m2.gw.nic.fujitsu.com [192.168.87.59])
	by oym-r1.gw.nic.fujitsu.com (Postfix) with ESMTP id A71ECD29E1
	for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 12:37:26 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by oym-m2.gw.nic.fujitsu.com (Postfix) with ESMTP id F2839BF3CD
	for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 12:37:25 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 810B31EBE5A
	for <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 12:37:25 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 1AAC41A000A;
	Thu, 11 Jul 2024 11:37:24 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH] trousers: Start WORKDIR -> UNPACKDIR transition
Date: Thu, 11 Jul 2024 11:37:12 +0800
Message-Id: <1720669032-29875-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28522.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28522.004
X-TMASE-Result: 10--0.052700-10.000000
X-TMASE-MatchedRID: XZfBcHj0cztAJjQFQUSfYfx0ykrbAxjCRzUPAqhCjth1+BANR76ZZ78F
	Hrw7frluf146W0iUu2uN6fDbnTu0nx8TzIzimOwPruuVAw9Gg4LEQdG7H66TyHEqm8QYBtMODJL
	qIL5UT4Gc/xvDz+SVuOXM6FJDZyzIOPKP/4jVszq3mNRbK/EmVFbkiz9qzb9ylRasrc/LdvslTv
	JM0tY1RyMziRGhehEzgr6lqxbIXlHC3tMwY3ma2xUDj+dgUQVyTE7Co9fKv3w=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 11 Jul 2024 03:37:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63465

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 meta-tpm/recipes-tpm1/trousers/trousers_git.bb | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
index 192c66c..44a4ee6 100644
--- a/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
+++ b/meta-tpm/recipes-tpm1/trousers/trousers_git.bb
@@ -32,13 +32,13 @@ do_install () {
 
 do_install:append() {
     install -d ${D}${sysconfdir}/init.d
-    install -m 0755 ${WORKDIR}/trousers.init.sh ${D}${sysconfdir}/init.d/trousers
+    install -m 0755 ${UNPACKDIR}/trousers.init.sh ${D}${sysconfdir}/init.d/trousers
     install -d ${D}${sysconfdir}/udev/rules.d
-    install -m 0644 ${WORKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
+    install -m 0644 ${UNPACKDIR}/trousers-udev.rules ${D}${sysconfdir}/udev/rules.d/45-trousers.rules
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${systemd_unitdir}/system
-        install -m 0644 ${WORKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
+        install -m 0644 ${UNPACKDIR}/tcsd.service ${D}${systemd_unitdir}/system/
         sed -i -e 's#@SBINDIR@#${sbindir}#g' ${D}${systemd_unitdir}/system/tcsd.service
     fi        
 }
-- 
2.34.1


