Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65CE1E0074B; Thu,  3 Nov 2016 13:57:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3013CE0050B
	for <yocto@yoctoproject.org>; Thu,  3 Nov 2016 13:57:14 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id i88so5790474pfk.2
	for <yocto@yoctoproject.org>; Thu, 03 Nov 2016 13:57:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=KWUgr4XlZvql2tJDrAw90h/TX2LjF2K2ICFC2rV6G74=;
	b=k4mXh/m8FPezmg5+jcGZ9RhArEv17ulmnmottwCLj70wfCKb8EUUAyaBo+cccVet5b
	XcPHtdJYyNFLJ2aEpyMTzMha0ugK77f9d5wF+raE4GskE08a3F2VoQ5oqzTHQ/yux232
	7T1QR//VYfvYti2/O8PQja3NG03+7Rf1Lfuhf6BBGZo2zhtTbl7RoJ9Y3WDX4JoerHc0
	Ifhx9EZmNYrQJtpnre56uw08L3bwu7ciwBz0uod7Li3SCKI22Knd5PQj0YKJnPOH6UTr
	hMpYNL6TusfwmeliZ/BCyJKf9hqXsChJ6FSbksZd+FKprIt+aThz83QrJX+9EGrebAyc
	fCfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=KWUgr4XlZvql2tJDrAw90h/TX2LjF2K2ICFC2rV6G74=;
	b=kfQ4CD8Vb65g4KXhmY6q2idepVRcmmaIBxzEPM4HzSKm1IGVrwXRQFr98x/A8Og23R
	/YNgaBO9TfOu8iy2/X/NsoRXq++25pN1k8Pjkw4d3egb+iKHPdITUReN85t5FoX/dmOK
	tRBN54B3Ijks9CmdjNIbPNxhzl/dW2dWO/RbC8sCEAPushJuo6jNNsnSp/BzlF94NvOM
	9ScvmEfE0D/6sUmW5wPloVKCAVNROaWtKFd4rjvGCDaMo7nMF4qonEf5tlwljzh4NYyY
	0DGBnjrzm9scfXMagzAijnQDSa+TnKHS6uKTI5rA5XVKRWALQAbucqzWoqJ3riytWKHn
	E9WQ==
X-Gm-Message-State: ABUngvdQ+PArqMypFhjaXK0qV4+KgevAXxGcCk9SN5PKvAal1V7OgLMndgR0wR9oReXMRw==
X-Received: by 10.99.218.21 with SMTP id c21mr16526482pgh.67.1478206634534;
	Thu, 03 Nov 2016 13:57:14 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	13sm14810404pfz.30.2016.11.03.13.57.13
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 03 Nov 2016 13:57:14 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu,  3 Nov 2016 13:57:09 -0700
Message-Id: <20161103205709.32535-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.10.2
Subject: [meta-raspberrypi][PATCH V2] gstreamer1.0-plugins-bad_%.bbappend: Set PACKAGECONFIG_GL for RPi
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
X-List-Received-Date: Thu, 03 Nov 2016 20:57:16 -0000

Enable dispmanx support if using bcm driver

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
Changes from V1->V2:
- Remove spurious "
- Rearrange code
- Remove duplicate packageconfig for dispmanx

 .../gstreamer/gstreamer1.0-plugins-bad_%.bbappend          | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
index ab0280e..7292f90 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-plugins-bad_%.bbappend
@@ -1,2 +1,12 @@
-EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads \
-                                   -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux'"
+EXTRA_OECONF_append_rpi = " CPPFLAGS='-I${STAGING_INCDIR}/interface/vcos/pthreads \
+                                   -I${STAGING_INCDIR}/interface/vmcs_host/linux'"
+
+# if using bcm driver enable dispmanx not when using VC4 driver
+
+PACKAGECONFIG_append_rpi = "${@bb.utils.contains('MACHINE_FEATURES', 'vc4graphics', '', ' dispmanx', d)}"
+
+PACKAGECONFIG_GL_rpi = "egl gles2"
+
+PACKAGECONFIG_append_rpi = " hls libmms faad"
+
+PACKAGECONFIG[dispmanx] = "--enable-dispmanx,--disable-dispmanx,userland"
-- 
2.10.2


