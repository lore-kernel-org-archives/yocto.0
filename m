Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F77BE00566; Wed,  1 Jun 2016 09:34:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.174 listed in list.dnswl.org]
Received: from mail-pf0-f174.google.com (mail-pf0-f174.google.com
	[209.85.192.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14780E004A0
	for <yocto@yoctoproject.org>; Wed,  1 Jun 2016 09:34:22 -0700 (PDT)
Received: by mail-pf0-f174.google.com with SMTP id g64so18206577pfb.2
	for <yocto@yoctoproject.org>; Wed, 01 Jun 2016 09:34:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=from:to:subject:date:message-id:in-reply-to:references;
	bh=ngDJO8yvTnmryYkOXyrbhIUkmYwoSMBWaUk/LIM4NtQ=;
	b=C5d82hggcSue9c6qloctpc4w+MAPN2GmXDADgnSzTNPON+qnCTntTbM7NTrUgxXLbZ
	um5UdZxlOFOu1L2h84ONAH/jmsk0lfWRvIvRHbOQBNIOkvFKf77UADuUT895Lk/9dTgz
	fx2alHbV+LS2zEuRUNbmrjz2MCj/JpQuoQ1ud0woVPU7cKDbx21Tq0xezTVQAnWIiotF
	Uvbo0MTeprN2QIWvzw1ttIMep+ZbLTzNxUCoThVqRWuHWIPPIkuqZgVmfOKYc6IfX9mF
	3QNCjwUrHV7pIg/Yp6H5KkrtsS7WlyMS61V58Mj3fV5hYnjyzROgnCM4lnGhQvrE/FzS
	+ccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:subject:date:message-id:in-reply-to
	:references;
	bh=ngDJO8yvTnmryYkOXyrbhIUkmYwoSMBWaUk/LIM4NtQ=;
	b=Is3yVhVMmVUpR2k05Z6vPSVjJwb2XMxS2fCrLolfAQwHxLQ06jEO+EKw3zM6B9K12o
	dyX+j/nCHRegI/3mWjFuDMVSmLOEQV+5VR4QEdylkGFw8dy2wBq91vNUDWGEymyJ3R87
	iaaFilaL2TENUZRgcNkCi4/abs6tZXfj4vCuAl4nxon48/qRLhXeohUMv6AUP8srKvg0
	QnK+G6ZitzADfiPt1sWhDGM0HPK0QYNHl47KVSPGGJlYdjuf7zMOdGVb2N/jLgf5FSQ3
	1TJNhMDGLyRTvLu7LmPBIQsiea+606Uz3byFT3yw9CVA+k0P8Ku2IS8UPz15RzvkW8+F
	49WA==
X-Gm-Message-State: ALyK8tJPF3gOKXIJGOJRce4IX46ZUKTcT85XtV3vGQ1WApLxfuFMCJEx15mN1cNOfHyQ6EO6
X-Received: by 10.98.106.65 with SMTP id f62mr10353979pfc.126.1464798862150;
	Wed, 01 Jun 2016 09:34:22 -0700 (PDT)
Received: from Pahoa2.mvista.com (c-76-20-92-207.hsd1.ca.comcast.net.
	[76.20.92.207]) by smtp.gmail.com with ESMTPSA id
	r64sm19757472pfi.54.2016.06.01.09.34.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 01 Jun 2016 09:34:21 -0700 (PDT)
From: Armin Kuster <akuster@mvista.com>
To: yocto@yoctoproject.org
Date: Wed,  1 Jun 2016 09:34:18 -0700
Message-Id: <1464798858-7014-2-git-send-email-akuster@mvista.com>
X-Mailer: git-send-email 2.3.5
In-Reply-To: <1464798858-7014-1-git-send-email-akuster@mvista.com>
References: <1464798858-7014-1-git-send-email-akuster@mvista.com>
Subject: [meta-cgl][PATCH 2/2] ocfs2-tools: Fix QA WARNINIG
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
X-List-Received-Date: Wed, 01 Jun 2016 16:34:26 -0000

NOTE: /home/akuster/oss/clean/meta-cgl/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb: base_contains is deprecated, please use bb.utils.contains instead.

Signed-off-by: Armin Kuster <akuster@mvista.com>
---
 meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
index 18ef563..d6a24e5 100644
--- a/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
+++ b/meta-cgl-common/recipes-cgl/ocfs2-tools/ocfs2-tools_1.8.4.bb
@@ -79,7 +79,7 @@ do_install() {
     rm -rf ${D}/sbin/ocfs2_controld.cman
     # fix up hardcoded paths
     sed -i -e 's,/usr/lib/,${libdir}/,' ${WORKDIR}/o2cb.service
-    if ${@base_contains('DISTRO_FEATURES','systemd','true','false',d)}; then
+    if ${@bb.utils.contains('DISTRO_FEATURES','systemd','true','false',d)}; then
         install -d ${D}/${systemd_unitdir}/system
         install -m 644 ${WORKDIR}/o2cb.service ${D}/${systemd_unitdir}/system
         install -m 644 ${WORKDIR}/ocfs2.service ${D}/${systemd_unitdir}/system
-- 
2.3.5


