Return-Path: <sujith.h@gmail.com>
Received: from mail-ee0-f43.google.com (mail-ee0-f43.google.com [74.125.83.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07666E00BC3
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 05:45:59 -0700 (PDT)
Received: by mail-ee0-f43.google.com with SMTP id e53so7705157eek.2
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 05:45:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=UeErJe/7tQDiW5EL4SSTzlSv9sRdvhXl5nfxWTIeIM8=;
	b=vZo39xK3muc/54tKhn1DPM36EEq7xVBVQOWwiakwrxueboMuzmP3M3ll3Vc6DFHsdT
	siDFKP1HClWPGsVOd0lF/EHnuPP6OLH3klLX8WlF0KK8HXgvXd4nRFPe0RZi+4LzmT/a
	DxnVUUl/r98R7YoJxUuThw05rwUEdTWQRHeVOiRw4eO/o01JLAogB1p/pNqK1x3ZIW8Q
	SYTAtS0Qm84XGlPghft5FJ/SdPC5xsQrSX7ogCrmAR7U2rnVKYfoP6KFWb8jcOUEM0M0
	T5RHc/2U5yepSyNq2dHt/msCu1NMwOAr2d2eDmXuHztiCjSRpabQ9ZektHSX696t0+Aw
	7Gjw==
X-Received: by 10.14.210.65 with SMTP id t41mr2257544eeo.35.1397565957903;
	Tue, 15 Apr 2014 05:45:57 -0700 (PDT)
Received: from linux-z8xt.inp.mentorg.com ([139.181.35.34])
	by mx.google.com with ESMTPSA id
	bc51sm48916639eeb.22.2014.04.15.05.45.54 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 15 Apr 2014 05:45:57 -0700 (PDT)
From: Sujith H <sujith.h@gmail.com>
To: holger.behrens@windriver.com,
	florin.sarbu@windriver.com
Date: Tue, 15 Apr 2014 18:15:27 +0530
Message-Id: <1397565927-21177-1-git-send-email-sujith.h@gmail.com>
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
X-List-Received-Date: Tue, 15 Apr 2014 12:46:02 -0000

From: Sujith H <Sujith_Haridasan@mentor.com>

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


