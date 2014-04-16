Return-Path: <sujith.h@gmail.com>
Received: from mail-pb0-f49.google.com (mail-pb0-f49.google.com
	[209.85.160.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76BEBE00BC1
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 01:13:05 -0700 (PDT)
Received: by mail-pb0-f49.google.com with SMTP id jt11so10467967pbb.8
	for <yocto@yoctoproject.org>; Wed, 16 Apr 2014 01:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=iinl1S2eodgHCQXWlxwIF/DwzddJYcbUjCubnEMFVtY=;
	b=uvYaVYjcdAvkuCyOWK2NIdQc4alrm7VWjGbPAjHz1Wbz5ISARPErxwbgYMZXlvHS2o
	Sk8LemGqhfK64w8agdKJl/y7uYEBxUfSTNceYehGyxdjG7c9RZBO2GD2w8A5q07MvM7C
	iWdVSbcVrHbej1f+P5rYDY0APuuuW86o6bo8OMX2EqDCPIwnN64ys1dW9/JjJm9MAZqQ
	GJZfbem/oYEDg4QCt7a+hfCtbHfG2aw/7vbaL8BwpoBtGzMNAlmHfLVY6JLMdqTAedmM
	xF4p59evhoYQ8wtRqKSe0gBOQrL/7iCkd0KH++WsRW8GqNVEScKf/DhlSCr5TtT+aae7
	zRtg==
X-Received: by 10.66.233.9 with SMTP id ts9mr6985255pac.37.1397635985126;
	Wed, 16 Apr 2014 01:13:05 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	ry10sm54366641pab.38.2014.04.16.01.13.02 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 16 Apr 2014 01:13:04 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Wed, 16 Apr 2014 13:42:51 +0530
Message-Id: <1397635971-2345-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Wed, 16 Apr 2014 08:13:08 -0000

Adding weston.ini to $ROOT_HOME/.config. With this change
user can login to $ROOT_HOME and launch weston with ivi-shell.

Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
---
 recipes-graphics/wayland/weston_1.4.0.bbappend | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/recipes-graphics/wayland/weston_1.4.0.bbappend b/recipes-graphics/wayland/weston_1.4.0.bbappend
index 7a8ba6f..a2713d6 100644
--- a/recipes-graphics/wayland/weston_1.4.0.bbappend
+++ b/recipes-graphics/wayland/weston_1.4.0.bbappend
@@ -12,3 +12,16 @@ PR = "r1"
 
 FILES_${PN} += "${libdir}/weston/*"
 FILES_${PN}-dbg += "${libdir}/weston/.debug/*"
+
+do_install_append() {
+   install -d ${D}${ROOT_HOME}/.config
+   install -m 0644 ${S}/ivi-shell/weston.ini.in ${D}${ROOT_HOME}/.config/weston.ini
+   sed -i -e  's/hmi-controller.so/hmi-controller.so, ivi-controller.so/' ${D}${ROOT_HOME}/.config/weston.ini
+   sed -i -e 's|\@libexecdir\@|${libexecdir}|' ${D}${ROOT_HOME}/.config/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/data|${datadir}\/weston|' ${D}${ROOT_HOME}/.config/weston.ini
+   sed -i -e 's|\@abs_top_builddir\@\/clients|${bindir}|' ${D}${ROOT_HOME}/.config/weston.ini
+}
+
+PACKAGES += "${PN}-ini"
+
+FILES_${PN}-ini = "${ROOT_HOME}/.config"
-- 
1.8.4


