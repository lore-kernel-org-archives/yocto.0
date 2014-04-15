Return-Path: <sujith.h@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51CCDE00BDD
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 05:48:55 -0700 (PDT)
Received: by mail-ee0-f48.google.com with SMTP id b57so7652533eek.21
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 05:48:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=StHNpefnL4RPACdwwMbRTXacWqGQdSMuK4NLOtVmhZw=;
	b=Fmkco7yElZ3sODAt0kSTPBWTe209Ug1EhpOq7BVcni2Em9HAKCGT9SMZInj9o76cLx
	8FPoSUo6kd18Qt68w2KyFnZbypHm0JN4BfIfKtt7l9NbKjHvEA2koSAfRQSB0fK5/6YB
	RmwCv8oKpr+qCy7p96KiIcPk8QNe/jtVvA6O0ndq+8NQVXia9G109rR1rIOXoNmLFXOf
	OYj+w6cu4k0VZnXS/wKCrAU1uHqTu+5BHg+JuyStgVvW6MEhPetrXFfLRCiwU3w2zSR5
	5AQwRjyvaxV1dhs5orobD89v88e8vCRzx2zfaV74CE7xcPwzfA84HbWMTEP1+84n7R7k
	tYPA==
X-Received: by 10.14.94.5 with SMTP id m5mr2295890eef.23.1397566126736;
	Tue, 15 Apr 2014 05:48:46 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	q49sm48922289eem.34.2014.04.15.05.48.42 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Apr 2014 05:48:45 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Tue, 15 Apr 2014 18:18:27 +0530
Message-Id: <1397566107-21403-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Tue, 15 Apr 2014 12:48:58 -0000

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


