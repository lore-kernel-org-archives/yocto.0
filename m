Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D1AC4E00BF8; Wed,  2 Nov 2016 23:29:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D060E00B9E
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 23:29:44 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y68so3883019pfb.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 23:29:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=0cU818SWVNmsm+rk49sUsL+65IYxo/Bfy+W/t03Lyrs=;
	b=eZN+km6I8Ozi5G3Moe5sa2SjKMgPMHwVrQ1mpInhlmlSqf3u0nmJ00laS46ikmf8Q8
	wc3OrrfId8XmTfJs2QDfI2pfHuD5fLehdAMLEGpukoa1pwi9LzxpfU0vnY1qjZ00IjED
	olA8ZypgQtg2lwMuXAZm4goOTi72HQw1tQ6ofMey+uS8KImMW6vKelwJck+d6ZEES9y1
	fQ58//1rjxsku7+REH0HyeXf/0Nz85y44PvjigyjWj7P9kXWzub6I3uWrywmjx7pK+/b
	53ZsiS5fY7ggzVePWzx49XNRd45okog8/L/hDQej20c4O4HGrQuMCqQ/k77ddixuYLgd
	CenA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=0cU818SWVNmsm+rk49sUsL+65IYxo/Bfy+W/t03Lyrs=;
	b=imnxAgiEp72OJkbTteF9qTqVxwme6NOIPMBo5KvQAt/y8oGKSx7luAOk2z0Zd8i5tT
	BcZ6jj8z6nAcwkLVeOAw2t27uAjkgL6EtyZiGFJC9Ajx2ONgWq/2pWhQJMD8jCIk+CBZ
	lgFJ9IsUJDGbXfZDhgJL3pFFqmeQMnjeFJeHxJUwzBwBlY8vSK5JPVu3TzG2BJ/Exw5v
	zMCwyuZ0rzwDfxdYFRgX+iW4FvzVr4HaFJrWr1HoIU2bdeNuZSNsLs0nPHRdaH4OZIYn
	myJJX43dr25GKvHi8w7caqIH3fentcXK/4O2r7Cr3gwabHtoCR1yvfDJycwyqiFdzPau
	cuAg==
X-Gm-Message-State: ABUngvdOLizRKdZbqEPBlWoH5r5/zgFL4S292AgNdnp4XPDMmG4Bgv7c9yfti1xsKqJrjg==
X-Received: by 10.98.36.91 with SMTP id r88mr14112561pfj.10.1478154583862;
	Wed, 02 Nov 2016 23:29:43 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m129sm9382028pfm.13.2016.11.02.23.29.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 02 Nov 2016 23:29:43 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  2 Nov 2016 23:29:37 -0700
Message-Id: <20161103062937.23799-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Thu, 03 Nov 2016 06:29:44 -0000

Enable dispmanx support if using bcm driver

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index ab0280e..1097e65 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -1,2 +1,12 @@
-EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
-                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
+EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_INCDIR}/interface/vcos/pthreads \
+                                   -I${STAGING_INCDIR}/interface/vmcs_host/linux'"
+
+# if using bcm driver then enable dispmanx, other
+
+PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,userland"
+
+PACKAGECONFIG_append_rpi = " "${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "", "dispmanx", d)}"
+
+PACKAGECONFIG_GL_rpi = "egl gles2"
+PACKAGECONFIG_append_rpi = " hls libmms faad dispmanx"
+
-- 
2.10.2


