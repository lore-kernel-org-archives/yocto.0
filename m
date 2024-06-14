Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD126C27C6E
	for <webhook@archiver.kernel.org>; Fri, 14 Jun 2024 09:26:47 +0000 (UTC)
Received: from esa7.hc1455-7.c3s2.iphmx.com (esa7.hc1455-7.c3s2.iphmx.com [139.138.61.252])
 by mx.groups.io with SMTP id smtpd.web11.7480.1718357198707042852
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jun 2024 02:26:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=Ywuw2Zs7;
 spf=pass (domain: fujitsu.com, ip: 139.138.61.252, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1718357200; x=1749893200;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references:mime-version:content-transfer-encoding;
  bh=PWE3A0cdwVyO3kempTXXTvlcTQwMYeIJDmZ0aogzPCg=;
  b=Ywuw2Zs7cchOvUJ7BgWIUI3V7FNV1sft4pQku+eSFn2vpeceXbckfEFH
   hLcwAlOauuHQtu6chE0inuEIWrU0xaw2BUjEQZkWZbUeMGulrHvp4moGI
   +6dhvevuUo40eEzNDIa/GNCxkzc7egOd3JK/uGjrwqDEYwBNGB3gz7ibU
   4blfEdxXkaw2B9E8QNPhYYKqa0Ah5eys4jAEup+qnbFCn2urrfArBD3d9
   aFz3WrF6sQRdo2nOuYQgW+bLT1dpzGhKy8LHnxMWtf+iKTfdi8bLN9D9X
   T1vh3ElcgJU00WV/rNh4laog2UdJSbqwqu977KFjPYwwcAhw1cRQqTlZq
   Q==;
X-IronPort-AV: E=McAfee;i="6700,10204,11102"; a="142074868"
X-IronPort-AV: E=Sophos;i="6.08,237,1712588400"; 
   d="scan'208";a="142074868"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa7.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2024 18:26:38 +0900
Received: from oym-m4.gw.nic.fujitsu.com (oym-nat-oym-m4.gw.nic.fujitsu.com [192.168.87.61])
	by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id 5D7D2D7AD3
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:35 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by oym-m4.gw.nic.fujitsu.com (Postfix) with ESMTP id A62E2D52EC
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:34 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 4531E20081310
	for <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 18:26:34 +0900 (JST)
Received: from wangmy-QiTianM610-N000.g08.fujitsu.local (unknown [10.167.225.86])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id DB81A1A000B;
	Fri, 14 Jun 2024 17:26:33 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-security] [PATCH 3/3] libmhash: Start WORKDIR -> UNPACKDIR transition
Date: Fri, 14 Jun 2024 14:25:07 -0400
Message-Id: <20240614182507.3323332-3-wangmy@fujitsu.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240614182507.3323332-1-wangmy@fujitsu.com>
References: <20240614182507.3323332-1-wangmy@fujitsu.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28452.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28452.006
X-TMASE-Result: 10--5.338700-10.000000
X-TMASE-MatchedRID: XZfBcHj0cztAJjQFQUSfYfLeH1FBnhK00NnUUVMlTKbAuQ0xDMaXkH4q
	tYI9sRE/4K9FmervsqVCvtb/aH4jvR8TzIzimOwP/hxxPCwzUoPEQdG7H66TyH4gKq42LRYktQn
	DijODgQdT/YnvCk6nb+3FBf40Kv+KavL1PdjOD/h+3BndfXUhXQ==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jun 2024 09:26:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63346

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 recipes-security/libmhash/libmhash_0.9.9.9.bb | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/recipes-security/libmhash/libmhash_0.9.9.9.bb b/recipes-security/libmhash/libmhash_0.9.9.9.bb
index 49139d2..f725a26 100644
--- a/recipes-security/libmhash/libmhash_0.9.9.9.bb
+++ b/recipes-security/libmhash/libmhash_0.9.9.9.bb
@@ -31,8 +31,8 @@ do_install:append() {
 
 do_compile_ptest() {
     if [ ! -d ${S}/demo ]; then mkdir ${S}/demo; fi
-    cp ${WORKDIR}/Makefile.test ${S}/demo/Makefile
-    cp ${WORKDIR}/mhash.c ${S}/demo/
+    cp ${UNPACKDIR}/Makefile.test ${S}/demo/Makefile
+    cp ${UNPACKDIR}/mhash.c ${S}/demo/
     make -C ${S}/demo CFLAGS="${CFLAGS} -I${S}/include/" LDFLAGS="${LDFLAGS} -L${S}/lib/.libs"
 }
 
-- 
2.34.1


