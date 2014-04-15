Return-Path: <sujith.h@gmail.com>
Received: from mail-ee0-f44.google.com (mail-ee0-f44.google.com [74.125.83.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 486F2E00BD3
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 05:46:45 -0700 (PDT)
Received: by mail-ee0-f44.google.com with SMTP id e49so7844704eek.3
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 05:46:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=StHNpefnL4RPACdwwMbRTXacWqGQdSMuK4NLOtVmhZw=;
	b=M/f1BofSFRZL7h7ZiER/e4YBXIuALK25hXcDKeERZUlsRSD2caW55DBpmQaRZ0+CgN
	GBiOSzsFWk7rMAeCBEGbIwmvAALr/3S3dS4dWK/UwvqGjy1EN+1ZvuZDVGg4GiCDGXer
	M3Cbp3V3odljwMcq+VmUwCV2wNZL7iJ8cvX1K8+iuMQ1HHKhFIkjRRFKGetgkDz/Sxx8
	eKKQu9cj6hPgKOINn8t7ZrOoP671tpb4lQEjQGL6e2D0XwPJ1e+s4x3xJBNPnEq2i0kg
	/0EcIS8mo77HKQSkpM5VWxnZ8F6jzadhWk2Nz6+39MaRmnHShqnohfQr2lMas/6ee4QB
	/vxw==
X-Received: by 10.15.50.136 with SMTP id l8mr2184981eew.73.1397566005097;
	Tue, 15 Apr 2014 05:46:45 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	t50sm48915411eev.28.2014.04.15.05.46.41 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Apr 2014 05:46:44 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Tue, 15 Apr 2014 18:16:27 +0530
Message-Id: <1397565987-21324-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Tue, 15 Apr 2014 12:46:48 -0000

Adding weston.ini to $HOME/.config. With this change
user can login to $HOME and launch weston with ivi-shell.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 recipes-graphics/wayland/weston_1.4.0.bbappend | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
index 7a8ba6f..fb48de1 100644
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
@@ -12,3 +12,14 @@ PR = "r1"
 
 FILES_${PN} += "${libdir}/weston/*"
 FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
+
+do_install_append() {
+   install -d ${D}/home/root/.config
+   install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}/home/root/.config/weston.ini
+   sed -i -e  's/hmi-controller.so/hmi-controller.so,ivi-controller.so/' ${D}/home/root/.config/weston.ini
+   sed -i -e 's|\@libexecdir\@|${libexecdir}|' ${D}/home/root/.config/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' ${D}/home/root/.config/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|' ${D}/home/root/.config/weston.ini
+}
+
+FILES_${PN} += "/home/root/.config"
-- 
1.8.4


