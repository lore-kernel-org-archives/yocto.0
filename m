Return-Path: <sujith.h@gmail.com>
Received: from mail-ee0-f47.google.com (mail-ee0-f47.google.com [74.125.83.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA809E006EC
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 05:39:06 -0700 (PDT)
Received: by mail-ee0-f47.google.com with SMTP id b15so1819942eek.20
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 05:39:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=GoRtC6xxk3+LWN/qT56iLTIkkkEXpVA/glu2UMv2FaU=;
	b=G96YrZmnCjnS9xZHlgg/V76r0WiskYnh0fwrGNC/zPfOnV2IObF88H4r9xfEm2uZjo
	zPGpY33FRqkZU0P2NpAVWiy3WLS7XrG8UOLFmgV6z+SqTCHqLvPgrDq/dG9MpEhLgCUD
	CQWpqMBlm4kbj7JBX7uGCIErQn2++utBdXlwaRXyaFb7xnq1qHi9LUyNJx9uw+KGo9DC
	L3fmI14CPWTOv7fK1H+5L1zAbn2szs+qdVnqS292v+45xhcJU6cVgRXHhJyg4/od+vYg
	L3RoB1nliXjtVjLzVvrV/40FOxZ61IDySJjSxXqyiFswmWwhatLwh++QnhFE7VYsBcsF
	rzDg==
X-Received: by 10.15.82.132 with SMTP id a4mr2069082eez.47.1398343144655;
	Thu, 24 Apr 2014 05:39:04 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	h47sm15462066eey.13.2014.04.24.05.39.01 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 24 Apr 2014 05:39:03 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Thu, 24 Apr 2014 18:09:20 +0530
Message-Id: <1398343160-4516-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Thu, 24 Apr 2014 12:39:08 -0000

Adding weston.ini to /etc/xdg. With this change
user can login and launch weston with ivi-shell.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 recipes-graphics/wayland/weston_1.4.0.bbappend | 15 +++++++++++++++
 1 file changed, 15 insertions(+)

diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
index 7a8ba6f..1bcb327 100644
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
@@ -12,3 +12,18 @@ PR = "r1"
 
 FILES_${PN} += "${libdir}/weston/*"
 FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
+
+do_install_append() {
+   WESTON_INI_CONFIG=${sysconfdir}/xdg/weston
+   install -d ${D}${WESTON_INI_CONFIG}
+   install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}${WESTON_INI_CONFIG}/weston.ini
+   sed -i -e 's/hmi-controller.so/hmi-controller.so,ivi-controller.so/' \
+          -e 's|\@libexecdir\@|${libexecdir}|' \
+          -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' \
+          -e 's|\@abs_top_builddir\@\/clients|${bindir}|' ${D}${WESTON_INI_CONFIG}/weston.ini
+
+}
+
+PACKAGES += "${PN}-ini"
+
+FILES_${PN}-ini = "${sysconfdir}/xdg"
-- 
1.8.4


