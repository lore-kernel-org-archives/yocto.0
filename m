Return-Path: <sujith.h@gmail.com>
Received: from mail-pa0-f49.google.com (mail-pa0-f49.google.com
	[209.85.220.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 305F3E00BD5
	for <yocto@yoctoproject.org>; Sun, 27 Apr 2014 23:23:12 -0700 (PDT)
Received: by mail-pa0-f49.google.com with SMTP id lj1so5412404pab.36
	for <yocto@yoctoproject.org>; Sun, 27 Apr 2014 23:23:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=QvANG8mJ0ozKTWENM2BNr+yxxIqmvRcl/KqYX1OzPJA=;
	b=niOlu3b/xbOuMpjSQEUn+wydTZQaG45mKiEMgKIUFEbBayvHNPULV5cOJWWB97v4z0
	B/rlgRIjCQ1U69fBShUgdagrqgBn3NIbL4DMAH/B09eTkhnycez8qegQsoT501pNAehi
	L5OARfgXn7iN/B1pxx6Dlj0heHy5WkCKoN7K5jI02IkUMrHqJ83g+Gbk0BanhnYMse/N
	qeJfDG3+ZwJrIL2K0a324gowr6zY8Gj/mv1kh8ri/ranIyfeShFWH5nzKcjF/mYbViJm
	d4dghnv95YZ5mcoGt9VjaekZ30agKxB9kUcGkR1D0Ni1UdjQyRPE2S1W9/mweQP0song
	wdSQ==
X-Received: by 10.66.119.136 with SMTP id ku8mr23498250pab.121.1398666192364; 
	Sun, 27 Apr 2014 23:23:12 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	de5sm32451462pbc.66.2014.04.27.23.23.08 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 27 Apr 2014 23:23:11 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Mon, 28 Apr 2014 11:53:42 +0530
Message-Id: <1398666222-31447-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Mon, 28 Apr 2014 06:23:15 -0000

Adding weston.ini to /etc/xdg. With this change
user can login and launch weston with ivi-shell.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 recipes-graphics/wayland/weston_1.4.0.bbappend | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
index 7a8ba6f..b324335 100644
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
@@ -8,7 +8,20 @@ SRC_URI_remove = "http://wayland.freedesktop.org/releases/weston-1.4.0.tar.xz"
 SRC_URI_prepend = "git://github.com/ntanibata/weston-ivi-shell.git;branch=weston-ivi-shell-1.4.0-v12;protocol=http "
 S = "${WORKDIR}/git"
 
-PR = "r1"
+PR = "r2"
 
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
+FILES_${PN} += "${sysconfdir}/xdg"
-- 
1.8.4


