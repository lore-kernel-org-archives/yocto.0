Return-Path: <sujith.h@gmail.com>
Received: from mail-ee0-f53.google.com (mail-ee0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93D15E00CE5
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 05:07:50 -0700 (PDT)
Received: by mail-ee0-f53.google.com with SMTP id b57so4082643eek.12
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 05:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Yi/M6czNh8dvaiaZ5mPYDMvhzmUMNZiZqlAHwbdWKNw=;
	b=cx0HyxgvlbnTEytbNv4dlvieK2qkHKpogWbe8RZEUupxmVTjcnQeepWdxqze0QEO3L
	oSHWr+7MT8aZNL6Ml8FngVPAsb6BlP5LULxVxczRW1FfsI6CHQP3FkOCzYZcd23bhVHa
	63CbUQp5/umdlaiyTXZXpNbHUXsj4wX3K9m1lgoA08FdZ8qnajamwrQzXxEuYhC5oVEU
	ZLFEbUWzaTsGzEB9VtACMKW8B82XEW7uUmh3qNLi+ogD/z81W7xzJnsKEFr8AaG4P837
	f5GC9hcLbGbNqus6rf3lt3mcu6zzjZVN8p0AH/jQifPZInkrzWEnuiSKwKINFxgy5sSD
	T3Zg==
X-Received: by 10.14.193.201 with SMTP id k49mr28388500een.50.1397218069378;
	Fri, 11 Apr 2014 05:07:49 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	q49sm17198027eem.34.2014.04.11.05.07.46 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Apr 2014 05:07:48 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Fri, 11 Apr 2014 17:37:13 +0530
Message-Id: <1397218033-20029-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: [PATCH] weston: Add weston.ini
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
X-List-Received-Date: Fri, 11 Apr 2014 12:07:51 -0000

From: Sujith H <Sujith_Haridasan@mentor.com>

Adding weston.ini to $HOME/.config. With this change
user can login to $HOME and launch weston with ivi-shell.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 recipes-graphics/wayland/weston_1.4.0.bbappend | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
index 7a8ba6f..6168271 100644
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
@@ -12,3 +12,14 @@ PR = "r1"
 
 FILES_${PN} += "${libdir}/weston/*"
 FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
+
+do_install_append() {
+   install -d ${D}/home/root/.config
+   install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}/home/root/.config/weston.ini
+   sed -i -e  's/hmi-controller.so/hmi-controller.so, ivi-controller.so/' ${D}/home/root/.config/weston.ini
+   sed -i -e 's|\@libexecdir\@|${libexecdir}|' ${D}/home/root/.config/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' ${D}/home/root/.config/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|' ${D}/home/root/.config/weston.ini
+}
+
+FILES_${PN} += "/home/root/.config"
-- 
1.8.4


