Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E26D1E008BA; Fri, 13 May 2016 09:32:41 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f193.google.com (mail-pf0-f193.google.com
	[209.85.192.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 444F7E0086E
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 09:32:40 -0700 (PDT)
Received: by mail-pf0-f193.google.com with SMTP id y7so9689601pfb.0
	for <yocto@yoctoproject.org>; Fri, 13 May 2016 09:32:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=1WvrwKhMiJ+3pD77E7JohUm38RKgak3QFRAnZ2QQpnc=;
	b=QDGJg5WC9YGVvfmYQAl3klbikTUNiHbBfVKyInlGAZBs54iNlF07+wBcddzS0BPWMx
	rskYqlSFLtfbkmDN1bM6FWvP6Fag41Zs/ysP5gnJ9UO5HRN7BynpMsoswTsb29OEL2vp
	eZCvPnEQa7uPugi1MYTN2juMDv1fnKEdxpuBHiLS7emD9IWAX75LQUrJEcYlylYpx663
	FqOLJTeFHyIOk5cKHAuoez6gv73LeTof7hCfy0MeGVdA6NLmnnsv6H+q6TWKTjTm9spC
	4fXZUpbH4g9gig0C5q7w5bm8PAQXmOiYXvRgDe3NSalsFBJwPipODWPy1MYsm6F9fK20
	/33Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=1WvrwKhMiJ+3pD77E7JohUm38RKgak3QFRAnZ2QQpnc=;
	b=EuKHj32gQGm4IFLK7k2MyMlKASQxjyiVAZBpMgXO6aevEl+/2SQ+kSW94/ymmgkuwd
	ueHRVPVYXKzLLeVsq6VX/aThfU0Pjs89VbPXnCR+a1c9sJv5wPj4nshcz8/Y7ftYz3c3
	avVtCiNyOY7jv4hLtm53a2xzf24DAg3aIga4PLsd8v6M5SrdLv4OX0jdVlDEVH5v7e8b
	6SVOvOWNDH9lYjJMqCOb4E8YyE3GuEkXPoIb/N8khTEBFHI6KEMj5nWKiiSLWADEc4wO
	OvsimeFefJ+dR6yvQna6AmdnkygG2W1lKmoqWddf5wlBveq4f1sEtH1Ts2GuyM990zpp
	/Rxg==
X-Gm-Message-State: AOPr4FUGhqG/iE0FOfPwRiCRHUWZjF14FOLtuxDJaLlAiVO/HevQSpQ97CPE6UlrTmENTQ==
X-Received: by 10.98.30.132 with SMTP id e126mr24898995pfe.109.1463157160570; 
	Fri, 13 May 2016 09:32:40 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	bk8sm28661908pac.3.2016.05.13.09.32.39
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Fri, 13 May 2016 09:32:39 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri, 13 May 2016 09:32:32 -0700
Message-Id: <1463157153-19020-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.2
Subject: [meta-raspberrypi][PATCH 1/2] userland: Update to tip of tree
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
X-List-Received-Date: Fri, 13 May 2016 16:32:42 -0000

Drop the patch which is upstreamed slightly differently
use VMCS_INSTALL_PREFIX to /usr via EXTRA_OECMAKE

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0001-set-VMCS_INSTALL_PREFIX-to-usr.patch      | 28 ----------------------
 recipes-graphics/userland/userland_git.bb          |  6 ++---
 2 files changed, 3 insertions(+), 31 deletions(-)
 delete mode 100644 recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch

diff --git a/recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch b/recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch
deleted file mode 100644
index 5165288..0000000
--- a/recipes-graphics/userland/userland/0001-set-VMCS_INSTALL_PREFIX-to-usr.patch
+++ /dev/null
@@ -1,28 +0,0 @@
-From b653ef9e770bd9e4976c058405b94b75873d2508 Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Sun, 9 Aug 2015 23:58:17 -0700
-Subject: [PATCH 01/13] set VMCS_INSTALL_PREFIX to /usr
-
-in OE we dont use /opt/vc but standard prefix
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- makefiles/cmake/vmcs.cmake | 2 +-
- 1 file changed, 1 insertion(+), 1 deletion(-)
-
-diff --git a/makefiles/cmake/vmcs.cmake b/makefiles/cmake/vmcs.cmake
-index 0f8641b..e9d576d 100644
---- a/makefiles/cmake/vmcs.cmake
-+++ b/makefiles/cmake/vmcs.cmake
-@@ -10,7 +10,7 @@ INCLUDE(CPack)
- if (ANDROID)
-   SET(VMCS_INSTALL_PREFIX "/vendor/brcm/islands" CACHE PATH "Prefix prepended to install directories" FORCE)
- else()
--  SET(VMCS_INSTALL_PREFIX "/opt/vc" CACHE PATH "Prefix prepended to install directories" FORCE)
-+  SET(VMCS_INSTALL_PREFIX "/usr" CACHE PATH "Prefix prepended to install directories" FORCE)
- endif()
- 
- SET(CMAKE_INSTALL_PREFIX "${VMCS_INSTALL_PREFIX}" CACHE INTERNAL "Prefix
--- 
-2.7.4
-
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 0e7057e..7acd8b8 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,11 +16,10 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "703a2c4b35e23ee44ad84db6b9c3f89c0a627143"
+SRCREV = "17c28b9d1d234893b73adeb95efc4959b617fc85"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
-    file://0001-set-VMCS_INSTALL_PREFIX-to-usr.patch \
     file://0002-cmake-generate-and-install-pkgconfig-files.patch \
     file://0003-Allow-applications-to-set-next-resource-handle.patch \
     file://0004-wayland-Add-support-for-the-Wayland-winsys.patch \
@@ -41,7 +40,8 @@ S = "${WORKDIR}/git"
 inherit cmake pkgconfig
 
 EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
-                "
+                 -DVMCS_INSTALL_PREFIX=${exec_prefix} \
+"
 
 PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
 
-- 
2.8.2


