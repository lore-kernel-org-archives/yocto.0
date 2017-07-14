Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE1AE00A38; Fri, 14 Jul 2017 02:03:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1061E00944
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 02:03:34 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id j85so9627298wmj.0
	for <yocto@yoctoproject.org>; Fri, 14 Jul 2017 02:03:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=mcqZALM84K4k/sV+V5S916bpSDWt29lNhatb5fJCCd0=;
	b=kDNOx8k8FGOvThJ0IYhfEIHGUU8Z8Z765YsL+Ye0v+b84r+9r+uSyKCP+r0ajLKcOv
	o5d232ZoVL8j2TnWirFJ1HekuHiXUlKeHTfL+Lp2uQi6KXjD6v3QsmUnP0CkRWhs8LXs
	5d7IKYqcVVyPrUIZRMKSYKeUxrR9QGeQPUsmDsAKY2sT/362POk4N+/LsUPOrZ2/i0Nm
	z/s9EngzSDEMroR6xcXgU0Hdza03FbHV54kFzGhxeZMOplqYGuW8sH3yWJYaIwVBg8yK
	kHb4jIS2tpE3vV/3DyAI5q2nxRvhvUjpUNfxQ6sSoDrEHChlY6abJqVN5JhMVP6Qh6NK
	C4Vg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=mcqZALM84K4k/sV+V5S916bpSDWt29lNhatb5fJCCd0=;
	b=hFqFaB4TUTkKWk7bWHmR8nCbN/YK8HV1eXFRAINC98oWYCEI4OgqbqW7kZ6gz6qNRi
	iMEmpd6bJ1aO+6DXU2wN9C2fbOE/Fklb+5gm41m0DhDwXjB8V1piBXy0pRYbhG/FSfQB
	WMPZyU9VBLbd1hDXS7ELIbHZIWFUyL528qn5xX8SqdcBUVtbL3wegNTg55i/clrhKRpp
	saf54ha7SgGlrrInpvNyvi6jR042BTYShZJnDMibPElrm8iMXR1YINxI5PYfJ6pXI5He
	qhki5/DgIA2WFjn77ACsdoQ8ABsBqkcZFYWQNyuUihdnQmoLbsmERyzRdiWXOYsreiZE
	FTxQ==
X-Gm-Message-State: AIVw111rmy6Oz0PcxU5r6jpVio/GKWBKlZKhvkfnBvysWZ2wFxwcoYN6
	VjY2UnjWw1MtdGSX
X-Received: by 10.28.178.203 with SMTP id b194mr2133393wmf.36.1500023013278;
	Fri, 14 Jul 2017 02:03:33 -0700 (PDT)
Received: from gizero-desktop.tw.it
	(host193-245-static.58-79-b.business.telecomitalia.it.
	[79.58.245.193]) by smtp.gmail.com with ESMTPSA id
	j31sm5231151wre.67.2017.07.14.02.03.32
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 14 Jul 2017 02:03:32 -0700 (PDT)
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 14 Jul 2017 11:03:18 +0200
Message-Id: <1500022998-25701-1-git-send-email-gizero@gmail.com>
X-Mailer: git-send-email 2.7.4
Subject: [meta-raspberrypi][PATCH] userland: Add missing EGL_CAST defines
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
X-List-Received-Date: Fri, 14 Jul 2017 09:03:37 -0000

Needed by libepoxy

Signed-off-by: Andrea Galbusera <gizero@gmail.com>
---
 .../0015-EGL-glplatform.h-define-EGL_CAST.patch    | 32 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 33 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch

diff --git a/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch b/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
new file mode 100644
index 0000000..5a80a26
--- /dev/null
+++ b/recipes-graphics/userland/userland/0015-EGL-glplatform.h-define-EGL_CAST.patch
@@ -0,0 +1,32 @@
+From 382e3b16cbcc09d825540d5bd3e45a2fca4484fe Mon Sep 17 00:00:00 2001
+From: Andrea Galbusera <gizero@gmail.com>
+Date: Fri, 14 Jul 2017 09:52:54 +0200
+Subject: [PATCH] EGL/glplatform.h: define EGL_CAST
+
+C++ / C typecast macros for special EGL handle values: used by libepoxy code
+The definition comes from the updated version of this header in mesa.
+
+Upstream-Status: Pending
+---
+ interface/khronos/include/EGL/eglplatform.h | 7 +++++++
+ 1 file changed, 7 insertions(+)
+
+diff --git a/interface/khronos/include/EGL/eglplatform.h b/interface/khronos/include/EGL/eglplatform.h
+index 1f7c930..c39d425 100644
+--- a/interface/khronos/include/EGL/eglplatform.h
++++ b/interface/khronos/include/EGL/eglplatform.h
+@@ -202,4 +202,11 @@ EGLAPI void EGLAPIENTRY BEGL_GetDefaultDriverInterfaces(BEGL_DriverInterfaces *i
+ #include "interface/khronos/common/khrn_client_mangle.h"
+ #endif
+ 
++/* C++ / C typecast macros for special EGL handle values */
++#if defined(__cplusplus)
++#define EGL_CAST(type, value) (static_cast<type>(value))
++#else
++#define EGL_CAST(type, value) ((type) (value))
++#endif
++
+ #endif /* __eglplatform_h */
+-- 
+2.7.4
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 26bbfaf..893fcba 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -34,6 +34,7 @@ SRC_URI = "\
     file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
     file://0013-Implement-triple-buffering-for-wayland.patch \
     file://0014-GLES2-gl2ext.h-Define-GL_R8_EXT-and-GL_RG8_EXT.patch \
+    file://0015-EGL-glplatform.h-define-EGL_CAST.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
2.7.4


