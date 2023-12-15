Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E82DFC4332F
	for <webhook@archiver.kernel.org>; Fri, 15 Dec 2023 03:11:44 +0000 (UTC)
Received: from esa9.hc1455-7.c3s2.iphmx.com (esa9.hc1455-7.c3s2.iphmx.com [139.138.36.223])
 by mx.groups.io with SMTP id smtpd.web10.51820.1702609896088337254
 for <yocto@lists.yoctoproject.org>;
 Thu, 14 Dec 2023 19:11:36 -0800
Authentication-Results: mx.groups.io;
 dkim=none (message not signed); spf=pass (domain: fujitsu.com, ip: 139.138.36.223, mailfrom: wangmy@fujitsu.com)
X-IronPort-AV: E=McAfee;i="6600,9927,10924"; a="131858757"
X-IronPort-AV: E=Sophos;i="6.04,277,1695654000"; 
   d="scan'208";a="131858757"
Received: from unknown (HELO oym-r2.gw.nic.fujitsu.com) ([210.162.30.90])
  by esa9.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Dec 2023 12:11:33 +0900
Received: from oym-m3.gw.nic.fujitsu.com (oym-nat-oym-m3.gw.nic.fujitsu.com [192.168.87.60])
	by oym-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id 280EADC646
	for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 12:11:31 +0900 (JST)
Received: from kws-ab4.gw.nic.fujitsu.com (kws-ab4.gw.nic.fujitsu.com [192.51.206.22])
	by oym-m3.gw.nic.fujitsu.com (Postfix) with ESMTP id 514DDD94D0
	for <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 12:11:30 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.165])
	by kws-ab4.gw.nic.fujitsu.com (Postfix) with ESMTP id 5636A6BED4;
	Fri, 15 Dec 2023 12:11:29 +0900 (JST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: jpuhlman@mvista.com,
	Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-cgl] [PATCH] libsocket6-perl: Remove useless option
Date: Fri, 15 Dec 2023 11:11:21 +0800
Message-Id: <1702609881-2917-1-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28058.004
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28058.004
X-TMASE-Result: 10--2.861400-10.000000
X-TMASE-MatchedRID: uf8KE2NGjd+SIU8VaO0skxIRh9wkXSlFN5dqZcIK7Vgg9R3V8qg5xL8F
	Hrw7frluf146W0iUu2vUpkHbn8AvUs4svDGUw7k9z5r5y9mouSB9LQinZ4QefCP/VFuTOXUTC5M
	umjkcRzWOhzOa6g8KrfxPuy1LnQ3d+9jROCuknV5EXR8uV7sexUWD3V8wPP5StKIkFuuvGaJ31s
	q0F3ygNpum3XgPMP96VWcts021YqzDCdqL76sekR0m4Rm5hspVxSSu8i52URmXTt0OuyJi/IIuE
	VM/dBEMBtjAKW7+qHc=
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Dec 2023 03:11:44 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61902

From: Wang Mingyu <wangmy@fujitsu.com>

Error message:
 | configure: error: expected an absolute directory name for --oldincludedir:

--oldincludedir is removed by upstream.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
index 004efe2..a01620c 100644
--- a/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
+++ b/meta-cgl-common/recipes-perl/perl/libsocket6-perl_0.29.bb
@@ -20,7 +20,7 @@ S = "${WORKDIR}/Socket6-${PV}"
 do_configure:prepend () {
 	mkdir -p m4
 	autoreconf -Wcross --verbose --install --force || oefatal "autoreconf execution failed."
-	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --oldincludedir=${oldincludedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
+	sed -i 's:\./configure\(.[^-]\):./configure --build=${BUILD_SYS} --host=${HOST_SYS} --target=${TARGET_SYS} --prefix=${prefix} --exec_prefix=${exec_prefix} --bindir=${bindir} --sbindir=${sbindir} --libexecdir=${libexecdir} --datadir=${datadir} --sysconfdir=${sysconfdir} --sharedstatedir=${sharedstatedir} --localstatedir=${localstatedir} --libdir=${libdir} --includedir=${includedir} --infodir=${infodir} --mandir=${mandir}\1:' Makefile.PL
 }
 
 inherit autotools-brokensep cpan
-- 
2.34.1


