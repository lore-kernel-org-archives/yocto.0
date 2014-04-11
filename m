Return-Path: <sujith.h@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC6A0E00CE5
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 05:21:40 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id d17so4108350eek.4
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 05:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=Yi/M6czNh8dvaiaZ5mPYDMvhzmUMNZiZqlAHwbdWKNw=;
	b=HatzoWFuCb57lz1FD9TqZs89TT4bXDZB9Yip9yECQk/erSW0lUONfu9dkE8ijJNVt7
	nRn169c6gpxnPnQNxKtSNTVAA4YQowreNQEHqvoWYjhlVYyGxm4gPZTgO3niWbnF81lA
	5c4oRFueb/4RFE9l5MI5aoCSN6Aejf9nuSm2otW71cxUBvjE4cjBfAXrrLUpZQ7rlIsF
	LK6ApI0+vnAGkGmZrd1fPUq44bLTnRC3Q144WMBmrR0IHoghHGbyu1e0Mr/AsL6ulgHr
	qE8pu6zY6F3EsgD7ivepNa3L8VCj4J0TzBjiPE2MaHle7WJ3FsJRcYpgvl3sgGxlhfEg
	er5g==
X-Received: by 10.15.43.77 with SMTP id w53mr28525716eev.10.1397218899239;
	Fri, 11 Apr 2014 05:21:39 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id q41sm17319485eez.7.2014.04.11.05.21.36
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 11 Apr 2014 05:21:38 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Fri, 11 Apr 2014 17:51:04 +0530
Message-Id: <1397218864-20777-1-git-send-email-sujith.h@gmail.com>
X-Mailer: git-send-email 1.8.4
Cc: yocto@yoctoproject.org, Sujith H <Sujith_Haridasan@mentor.com>
Subject: [meta-ivi][PATCH] weston: Add weston.ini
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
X-List-Received-Date: Fri, 11 Apr 2014 12:21:43 -0000

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


