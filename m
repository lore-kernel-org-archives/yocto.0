Return-Path: <sujith.h@gmail.com>
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FE8CE006EC
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:12:04 -0700 (PDT)
Received: by mail-pa0-f43.google.com with SMTP id bj1so474757pad.30
	for <yocto@yoctoproject.org>; Wed, 23 Apr 2014 00:12:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=v6V75DZkbHqnfNZg8OW4V8ogLdp6wnm6YIkP0Q2D6XA=;
	b=jrNMw+Jeyf8ykNXkaMkjpCWq+IYzk1udIX+y7xMfDpt9iQajoIAJ9QHPwpQ1PuJ0sl
	PR8b+8O7t231z5zlgPuzIDrRkGhDeBYv4EyHccsMiCeNbluBLZ2D+p1l7eHLkrCdd4ZY
	klLTbo0Nf8Bmwm+XJNFe3iIAPSL1c/dNY7zCbR0ya8XH3OEzaPNxc5ldjaQ5kw4UEXzP
	YN7jngsE7w1EEfAr3Mt5rVYAYvoVIQA7FgYQdfjn74kXINnuZu9iXNZrauBQwIIYJ+My
	UTdA81p2vOLZlowU3ipYrnjROuH02HxmoTVU+GepWkIrvZz5LQknLdreKp8JqdjKfUYO
	Tmvg==
X-Received: by 10.68.226.197 with SMTP id ru5mr51623961pbc.77.1398237124313;
	Wed, 23 Apr 2014 00:12:04 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id tu3sm579850pab.1.2014.04.23.00.12.00
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 23 Apr 2014 00:12:03 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Wed, 23 Apr 2014 12:42:13 +0530
Message-Id: <1398237133-16494-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: [meta-ivi][PATCH] weston: Add weston.ini config file
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Apr 2014 07:12:05 -0000

Adding weston.ini to /etc/xdg. With this change
user can login and launch weston with ivi-shell.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 recipes-graphics/wayland/weston_1.4.0.bbappend | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
index 7a8ba6f..b839be4 100644
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
@@ -12,3 +12,17 @@ PR = "r1"
 
 FILES_${PN} += "${libdir}/weston/*"
 FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
+
+do_install_append() {
+   WESTON_INI_CONFIG=${sysconfdir}/xdg/weston
+   install -d ${D}${WESTON_INI_CONFIG}
+   install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}${WESTON_INI_CONFIG}/weston.ini
+   sed -i -e  's/hmi-controller.so/hmi-controller.so, ivi-controller.so/' ${D}${WESTON_INI_CONFIG}/weston.ini
+   sed -i -e 's|\@libexecdir\@|${libexecdir}|' ${D}${WESTON_INI_CONFIG}/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' ${D}${WESTON_INI_CONFIG}/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|' ${D}${WESTON_INI_CONFIG}/weston.ini
+}
+
+PACKAGES += "${PN}-ini"
+
+FILES_${PN}-ini = "${sysconfdir}/xdg"
-- 
1.8.4


