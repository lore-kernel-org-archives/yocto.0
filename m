Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C64E9E00B3F; Tue,  9 May 2017 23:49:00 -0700 (PDT)
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
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 271DFE00B3D
	for <yocto@yoctoproject.org>; Tue,  9 May 2017 23:48:58 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id a23so2748579pfe.0
	for <yocto@yoctoproject.org>; Tue, 09 May 2017 23:48:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=ymh03tuD/ZZ+Qnz9e6xVPVBsiQy8VzWJ2wrKmzMH+VE=;
	b=lUnNlmYsFHQLLeLQPaBESDyZNAlWW84gj7E4OHQnsO3Lp3/Ug891KEPA100jcfFj8G
	1ZGqS0QBTrBcgl3Y56DJ7NHKYDJpiJ9jiLHCtpZoid7uBPPQDQ7mmF8mU3R4qSEvS2T2
	tcFsANqNz/yTE/4yAdMuxspkajXu3F6o2CmQX+oKHvxpDZIwh6WgrxQ5FVAVt9l9THrt
	98QOwlLAqjr7P1TZg4MB3USs+VK/oOfw/eddXFiD8/4oiz1+a80ALiX71/Y7CjfEA5AU
	E/WeS/dhMukX+pQGhOESG2s/W4HyvRW1gTEs+7Udv0Hky1g7mwAkhVSUYuAYvrHELzFJ
	Ndhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=ymh03tuD/ZZ+Qnz9e6xVPVBsiQy8VzWJ2wrKmzMH+VE=;
	b=VPBC9N+VS+HkygVUNRSdBi5yTmE5/V6OMxO1KTlegebDxUE3tsbN+U9QQcmYBn4TON
	HAtsw9ovdmgvlaMik/1O+k+buXaUl+I9g2fg5GsIA14KiVV3/dQuHEOFXAW4q0btwgRE
	0K9mIpYVg1likXaLSMga/tD8UpCsIMl3vR91AWiULwhsj1HmHGcvvQ3aFcRmpBWMNEEj
	aYnEaMY+IO27FKdBagkquRc5MgFTa2IIBht3GOdoEgnnuociSuLttGefVZvtCO+HMU8E
	eRmRR9eJ7HyXlfMyRNJEJkiNICI3wY5myqlQyTAScTdVbXjc2u8SSAjZ6o6i3WlBP/Bo
	dY1Q==
X-Gm-Message-State: AODbwcCu/ICziMgXwp+dUyLrqI5x9SMsH5u1TUVULYZTFGmU8desrL2P
	XvH/osy7Tz2Oew==
X-Received: by 10.84.130.35 with SMTP id 32mr5939644plc.24.1494398938415;
	Tue, 09 May 2017 23:48:58 -0700 (PDT)
Received: from localhost.localdomain ([2601:646:8882:b8c::c232])
	by smtp.gmail.com with ESMTPSA id
	p84sm2199155pfi.25.2017.05.09.23.48.57
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 09 May 2017 23:48:57 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue,  9 May 2017 23:48:44 -0700
Message-Id: <20170510064845.30839-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.12.2
Subject: [meta-raspberrypi][PATCH 1/2] userland: Add missing GLES2 defines
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
X-List-Received-Date: Wed, 10 May 2017 06:49:00 -0000

Needed by weston

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch | 30 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 31 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch

diff --git a/recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch b/recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch
new file mode 100644
index 0000000..2232d4b
--- /dev/null
+++ b/recipes-graphics/userland/userland/0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch
@@ -0,0 +1,30 @@
+From 55a66f56a14eb8c3ae8294860e49efc9c9598c46 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Wed, 10 May 2017 06:39:34 +0000
+Subject: [PATCH] GLES2/gl2ext.h: Define GL_R8_EXT and GL_RG8_EXT
+
+weston code uses these defines
+Upstream-Status: Pending
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/khronos/include/GLES2/gl2ext.h | 3 +++
+ 1 file changed, 3 insertions(+)
+
+diff --git a/interface/khronos/include/GLES2/gl2ext.h b/interface/khronos/include/GLES2/gl2ext.h
+index 4eacf7f..283e3e1 100644
+--- a/interface/khronos/include/GLES2/gl2ext.h
++++ b/interface/khronos/include/GLES2/gl2ext.h
+@@ -327,6 +327,9 @@ typedef void* GLeglImageOES;
+ #define GL_RGBX_BRCM                                            0x80EE
+ #endif
+ 
++#define GL_R8_EXT                                               0x8229
++#define GL_RG8_EXT                                              0x822B
++
+ /* GL_EXT_texture_type_2_10_10_10_REV */
+ #ifndef GL_EXT_texture_type_2_10_10_10_REV
+ #define GL_UNSIGNED_INT_2_10_10_10_REV_EXT                      0x8368
+-- 
+1.9.1
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 9526fae..1176ef2 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -33,6 +33,7 @@ SRC_URI = "\
     file://0011-build-shared-library-for-vchostif.patch \
     file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
     file://0013-Implement-triple-buffering-for-wayland.patch \
+    file://0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
2.12.2


