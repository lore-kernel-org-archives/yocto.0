Return-Path: <wangmy@fujitsu.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B745CC41513
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 08:13:03 +0000 (UTC)
Received: from esa4.hc1455-7.c3s2.iphmx.com (esa4.hc1455-7.c3s2.iphmx.com [68.232.139.117])
 by mx.groups.io with SMTP id smtpd.web10.51652.1718611982764717712
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Jun 2024 01:13:03 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@fujitsu.com header.s=fj2 header.b=h8Rx65O7;
 spf=pass (domain: fujitsu.com, ip: 68.232.139.117, mailfrom: wangmy@fujitsu.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=fujitsu.com; i=@fujitsu.com; q=dns/txt; s=fj2;
  t=1718611982; x=1750147982;
  h=from:to:cc:subject:date:message-id:in-reply-to:
   references;
  bh=VFYFAxWBsRNe2JJI0wYlQksInKC5oPjiK098/OrdhBs=;
  b=h8Rx65O7q1cmWwO9QNMACGASQFvYnDMHWzdFDvzDWj9drrTMkzA6hSmg
   lW7xmyeD4mnX0lxmJ8hADqveVpu/UCVnO6yp1bEzrH+TohrU8DGwQ57ep
   pXRGs+Yc7eqHEUs2ZTN9NHv3EQffnPssV3gR7qyQN1GjfXp/6/nPG30QO
   0vSIJy7PbRmatC1v+20rt3Mn4j80tEuuvnmCRR0Bnts8p0X0vjk9TwV78
   vq0ONl6OkIziQiCTp0eI7hp/tFLC4BdbSTqowoF7ccGBK20bE1Qzyge28
   t92mqLat9Fd/B+QHfR+7/Ih+z+xWFSkWCxV257nhpUYgIfnD4mgbRNILZ
   w==;
X-IronPort-AV: E=McAfee;i="6700,10204,11105"; a="163780689"
X-IronPort-AV: E=Sophos;i="6.08,244,1712588400"; 
   d="scan'208";a="163780689"
Received: from unknown (HELO yto-r2.gw.nic.fujitsu.com) ([218.44.52.218])
  by esa4.hc1455-7.c3s2.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Jun 2024 17:12:59 +0900
Received: from yto-m1.gw.nic.fujitsu.com (yto-nat-yto-m1.gw.nic.fujitsu.com [192.168.83.64])
	by yto-r2.gw.nic.fujitsu.com (Postfix) with ESMTP id 9CD75C68E1
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:12:57 +0900 (JST)
Received: from kws-ab3.gw.nic.fujitsu.com (kws-ab3.gw.nic.fujitsu.com [192.51.206.21])
	by yto-m1.gw.nic.fujitsu.com (Postfix) with ESMTP id D7945CFB6D
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:12:56 +0900 (JST)
Received: from edo.cn.fujitsu.com (edo.cn.fujitsu.com [10.167.33.5])
	by kws-ab3.gw.nic.fujitsu.com (Postfix) with ESMTP id 669C620071A06
	for <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:12:56 +0900 (JST)
Received: from vm4860.g01.fujitsu.local (unknown [10.193.128.200])
	by edo.cn.fujitsu.com (Postfix) with ESMTP id 171121A0002;
	Mon, 17 Jun 2024 16:12:56 +0800 (CST)
From: wangmy@fujitsu.com
To: yocto@lists.yoctoproject.org
Cc: Wang Mingyu <wangmy@fujitsu.com>
Subject: [yocto] [meta-swupdate] [PATCH] swupdate: Start WORKDIR -> UNPACKDIR transition
Date: Mon, 17 Jun 2024 16:12:41 +0800
Message-Id: <1718611961-8782-2-git-send-email-wangmy@fujitsu.com>
X-Mailer: git-send-email 1.8.3.1
In-Reply-To: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
References: <1718611961-8782-1-git-send-email-wangmy@fujitsu.com>
X-TM-AS-GCONF: 00
X-TM-AS-Product-Ver: IMSS-9.1.0.1417-9.0.0.1002-28458.006
X-TM-AS-User-Approved-Sender: Yes
X-TMASE-Version: IMSS-9.1.0.1417-9.0.1002-28458.006
X-TMASE-Result: 10--1.402700-10.000000
X-TMASE-MatchedRID: GRMrIe16s1lAJjQFQUSfYfLeH1FBnhK0wTlc9CcHMZerwqxtE531VICu
	qghmtWfXh+y228CovouXdzvCeJOf2uxH/XlL8qoO3nHtGkYl/Vp9LQinZ4QefPcjNeVeWlqY+gt
	Hj7OwNO2FR9Hau8GO7qfDnZdVcKQk7fdslEw/unix/We9SFeTJ+mH5vvLNNidNBsRdWfZEYsFP7
	61N+X3mS0FOAj5jE7aiYcjIoWaejL3DzvObiNb35DF1yssSt7fHSbhGbmGylXFJK7yLnZRGZdO3
	Q67ImL8gi4RUz90EQwG2MApbv6odw==
X-TMASE-SNAP-Result: 1.821001.0001-0-1-22:0,33:0,34:0-0
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 08:13:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63350

From: Wang Mingyu <wangmy@fujitsu.com>

Replace references of WORKDIR with UNPACKDIR where it makes sense to do so in preparation for changing the default value of UNPACKDIR.

Signed-off-by: Wang Mingyu <wangmy@fujitsu.com>
---
 recipes-support/swupdate/swupdate.inc | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/recipes-support/swupdate/swupdate.inc b/recipes-support/swupdate/swupdate.inc
index 188c25c..1b14f66 100644
--- a/recipes-support/swupdate/swupdate.inc
+++ b/recipes-support/swupdate/swupdate.inc
@@ -245,13 +245,13 @@ python () {
 }
 
 do_configure () {
-    cat > ${WORKDIR}/.config <<HEREDOC
+    cat > ${UNPACKDIR}/.config <<HEREDOC
 CONFIG_EXTRA_CFLAGS="${CFLAGS}"
 CONFIG_EXTRA_LDFLAGS="${LDFLAGS}"
 HEREDOC
-    cat ${WORKDIR}/defconfig >> ${WORKDIR}/.config
+    cat ${UNPACKDIR}/defconfig >> ${UNPACKDIR}/.config
 
-    merge_config.sh -O ${B} -m ${WORKDIR}/.config ${@" ".join(find_cfgs(d))}
+    merge_config.sh -O ${B} -m ${UNPACKDIR}/.config ${@" ".join(find_cfgs(d))}
     (cd ${S} && cml1_do_configure)
 }
 
@@ -271,34 +271,34 @@ do_install () {
     fi
 
     install -d ${D}${sysconfdir}/init.d
-    install -m 755 ${WORKDIR}/swupdate ${D}${sysconfdir}/init.d
+    install -m 755 ${UNPACKDIR}/swupdate ${D}${sysconfdir}/init.d
     sed -i -e "s|/usr/lib/|${libdir}/|" ${D}${sysconfdir}/init.d/swupdate
 
     # shell based configuration loader allows to place code snippets into this folder
     install -d ${D}${libdir}/swupdate/conf.d
-    install -m 755 ${WORKDIR}/swupdate.sh ${D}${libdir}/swupdate
+    install -m 755 ${UNPACKDIR}/swupdate.sh ${D}${libdir}/swupdate
     sed -i 's#@LIBDIR@#${libdir}#g' ${D}${libdir}/swupdate/swupdate.sh
     if ${SWUPDATE_MONGOOSE}; then
-        install -m 644 ${WORKDIR}/10-mongoose-args ${D}${libdir}/swupdate/conf.d/
+        install -m 644 ${UNPACKDIR}/10-mongoose-args ${D}${libdir}/swupdate/conf.d/
     fi
     install -d ${D}${systemd_unitdir}/system
-    install -m 644 ${WORKDIR}/swupdate.service ${D}${systemd_system_unitdir}
+    install -m 644 ${UNPACKDIR}/swupdate.service ${D}${systemd_system_unitdir}
     sed -i 's#@LIBDIR@#${libdir}#' ${D}${systemd_system_unitdir}/swupdate.service
-    install -m 644 ${WORKDIR}/swupdate.socket.tmpl ${D}${systemd_system_unitdir}/swupdate.socket
+    install -m 644 ${UNPACKDIR}/swupdate.socket.tmpl ${D}${systemd_system_unitdir}/swupdate.socket
     sed -e "s,@@SWUPDATE_SOCKET_CTRL_PATH@@,${SWUPDATE_SOCKET_CTRL_PATH},g" \
         -e "s,@@SWUPDATE_SOCKET_PROGRESS_PATH@@,${SWUPDATE_SOCKET_PROGRESS_PATH},g" \
         -i ${D}${systemd_system_unitdir}/swupdate.socket
-    install -m 644 ${WORKDIR}/swupdate-usb@.service ${D}${systemd_system_unitdir}
-    install -m 644 ${WORKDIR}/swupdate-progress.service ${D}${systemd_system_unitdir}
+    install -m 644 ${UNPACKDIR}/swupdate-usb@.service ${D}${systemd_system_unitdir}
+    install -m 644 ${UNPACKDIR}/swupdate-progress.service ${D}${systemd_system_unitdir}
 
     if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}${nonarch_libdir}/tmpfiles.d
-        install -m 0644 ${WORKDIR}/tmpfiles-swupdate.conf ${D}${nonarch_libdir}/tmpfiles.d/swupdate.conf
+        install -m 0644 ${UNPACKDIR}/tmpfiles-swupdate.conf ${D}${nonarch_libdir}/tmpfiles.d/swupdate.conf
         install -d ${D}${sysconfdir}/udev/rules.d
-        install -m 0644 ${WORKDIR}/swupdate-usb.rules ${D}${sysconfdir}/udev/rules.d/
+        install -m 0644 ${UNPACKDIR}/swupdate-usb.rules ${D}${sysconfdir}/udev/rules.d/
     else
         # in case of systemd there is a service file, for sysv init we need to start it as well
-        install -m 0644 ${WORKDIR}/90-start-progress ${D}${libdir}/swupdate/conf.d/
+        install -m 0644 ${UNPACKDIR}/90-start-progress ${D}${libdir}/swupdate/conf.d/
     fi
 }
 
-- 
2.34.1


