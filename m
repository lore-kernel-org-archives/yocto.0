Return-Path: <kimoto@ohnolab.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B7A4C7EE2E
	for <webhook@archiver.kernel.org>; Sat, 10 Jun 2023 08:23:48 +0000 (UTC)
Received: from tk2-229-24410.vs.sakura.ne.jp (tk2-229-24410.vs.sakura.ne.jp [160.16.107.164])
 by mx.groups.io with SMTP id smtpd.web10.14088.1686385427420231661
 for <yocto@lists.yoctoproject.org>;
 Sat, 10 Jun 2023 01:23:47 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=permerror, err=syntax error for token:  (domain: ohnolab.org, ip: 160.16.107.164, mailfrom: kimoto@ohnolab.org)
Received: from localhost (115.91.30.125.dy.iij4u.or.jp [125.30.91.115])
	by tk2-229-24410.vs.sakura.ne.jp (Postfix) with ESMTPA id 9A953181D9
	for <yocto@lists.yoctoproject.org>; Sat, 10 Jun 2023 17:23:45 +0900 (JST)
Date: Sat, 10 Jun 2023 17:23:41 +0900 (JST)
Message-Id: <20230610.172341.1672673222928870000.kimoto@ohnolab.org>
To: yocto@lists.yoctoproject.org
Subject: xwayland needs dependency to libtirpc on kirkstone and master
 branch.
From: Masahiko KIMOTO <kimoto@ohnolab.org>
X-fingerprint: DA 63 E3 AD 3F 30 98 05  EB CF 3C 06 2D FF 07 7F
X-PGP-Public-Key: http://www.ohnolab.org/~kimoto/kimoto.pubkey.asc
X-URL: http://www.ohnolab.org/~kimoto/
X-Mailer: Mew version 6.9 on Emacs 28.2
Mime-Version: 1.0
Content-Type: Multipart/Mixed;
 boundary="--Next_Part(Sat_Jun_10_17_23_41_2023_934)--"
Content-Transfer-Encoding: 7bit
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 10 Jun 2023 08:23:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60242

----Next_Part(Sat_Jun_10_17_23_41_2023_934)--
Content-Type: Text/Plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Hello all,

On Kirkstone and Master branch of poky, xwayland needs DEPENDS to libtirpc.

A small patch for kirkstone branch is attached.

Regards,

----------------------------------------------------------------------
Masahiko Kimoto, Ph.D.
E-mail: kimoto@ohnolab.org        URL: http://www.ohnolab.org/~kimoto


----Next_Part(Sat_Jun_10_17_23_41_2023_934)--
Content-Type: Text/X-Patch; charset=us-ascii
Content-Transfer-Encoding: 7bit
Content-Disposition: inline; filename="kirkstone.xwayland.patch"

diff --git a/meta/recipes-graphics/xwayland/xwayland_22.1.8.bb b/meta/recipes-graphics/xwayland/xwayland_22.1.8.bb
index 6919ba421b..dac0ae1fa2 100644
--- a/meta/recipes-graphics/xwayland/xwayland_22.1.8.bb
+++ b/meta/recipes-graphics/xwayland/xwayland_22.1.8.bb
@@ -17,7 +17,7 @@ UPSTREAM_CHECK_REGEX = "xwayland-(?P<pver>\d+(\.(?!90\d)\d+)+)\.tar"
 inherit meson features_check pkgconfig
 REQUIRED_DISTRO_FEATURES = "x11 opengl"
 
-DEPENDS += "xorgproto xtrans pixman libxkbfile libxfont2 wayland wayland-native wayland-protocols libdrm libepoxy libxcvt"
+DEPENDS += "xorgproto xtrans pixman libxkbfile libxfont2 wayland wayland-native wayland-protocols libdrm libepoxy libxcvt libtirpc"
 
 OPENGL_PKGCONFIGS = "glx glamor dri3"
 PACKAGECONFIG ??= "${XORG_CRYPTO} \

----Next_Part(Sat_Jun_10_17_23_41_2023_934)----

