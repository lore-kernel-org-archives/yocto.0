Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC1E9E00E00; Sat, 27 Feb 2016 07:27:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36701E00C44
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:16 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id b67so86768992qgb.1
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=AQvAC1PhfL1aJdGMk26mUSaBOxAvf9N4uuS2d84Vi1E=;
	b=hgQ8/inlu5kpR4qYt76IzpyxjCHN8z02IgoNwMhewSXgEwwtc8B1GxR/36bMsaZAjt
	m+WIaK4puqD+IpMKzOL3xpZCfRJvCPVWCLAWdTMJG8x0pcO5ix7JK5yvZM8o837Rx2U/
	iMcjrUtTkBdpEPSVW87BQJUxrxZX83wiLiHP88yiyzLQ2PYAu88Tuu91KL3PzwqZ9veq
	btv9UgBNnGyjiID7dKK+qDBz7L3GJVFUTp8P8QmkJcjYX0Woy1R+bEeq6qAqxLNjM1/J
	9WcLmoYo1Qk2z0nwaq/70ZvMzqeqM9VPQ62yxwGB/TXyKwyqC4+ubRFaSLz9D3NJQU2m
	GOHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=AQvAC1PhfL1aJdGMk26mUSaBOxAvf9N4uuS2d84Vi1E=;
	b=BPdTlTIX3glF0zjHIkGFoM+VcuoS1apMWEvkrO4jwjGynio+QRb3KPSexkjSYM5Bz8
	eCvP0qPsgF8ssWymODeJElBcmfu+pWqMMQBX9IaO2svn76r5ZN5OhgspznneZQig+5qZ
	ZByRwuGxKVa846PiV9UIKYGjSLwrBaEEwin/+tun7+8j3MDbVXXpPMOAOvhYa/AkeEsD
	RB8ctJDYqO0ZSqLTLVvP3xgUhxEa5Hag5eftWraZRZiQGY0By2zP2koR6+c85rsxEsI0
	QeWsdVncDV2jREQ/6HrNrQp1MYQlU3N8lRqySNsx81+byn+BRL4j0P0qCsLfzKojhd1L
	EhUA==
X-Gm-Message-State: AD7BkJJSytR2uyacWKxXmLd8YErTz4kjH1iQ2msQ3roYFB2CaBHtHkMG5UwcstN1ehDFQg==
X-Received: by 10.140.28.52 with SMTP id 49mr8848815qgy.36.1456586836595;
	Sat, 27 Feb 2016 07:27:16 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:16 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:52 +0000
Message-Id: <76c426737fac6ecd819f7befb3f37e3046659e7a.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 13/23] userland: Fix build race with wayland support
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:28 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../userland/0017-fix-cmake-dependency-race.patch  | 78 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  1 +
 2 files changed, 79 insertions(+)
 create mode 100644 recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch

diff --git a/recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch b/recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch
new file mode 100644
index 0000000..face946
--- /dev/null
+++ b/recipes-graphics/userland/userland/0017-fix-cmake-dependency-race.patch
@@ -0,0 +1,78 @@
+From e2df72943951feb2c2a0899d4a1a00d24d7a3ccc Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Sat, 6 Feb 2016 13:12:47 -0800
+Subject: [PATCH 17/17] fix cmake dependency race
+
+Fixes errors like
+
+/a/builder/mnt/build-oe/tmp-glibc/work/raspberrypi2-oe-linux-gnueabi/userland/git-r5/git/interface/vmcs_host/vc_vchi_dispmanx.h:72:66:
+fatal error: interface/vmcs_host/wayland-dispmanx-server-protocol.h: No
+such file or directory
+compilation terminated.
+interface/khronos/CMakeFiles/EGL_static.dir/build.make:773: recipe for
+target 'interface/khronos/CMakeFiles/EGL_static.dir/ext/egl_wayland.c.o'
+failed
+make[2]: ***
+[interface/khronos/CMakeFiles/EGL_static.dir/ext/egl_wayland.c.o] Error 1
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+ interface/vcos/pthreads/CMakeLists.txt | 8 ++++++++
+ interface/vmcs_host/CMakeLists.txt     | 8 --------
+ interface/vmcs_host/vc_vchi_dispmanx.h | 2 +-
+ 3 files changed, 9 insertions(+), 9 deletions(-)
+
+diff --git a/interface/vcos/pthreads/CMakeLists.txt b/interface/vcos/pthreads/CMakeLists.txt
+index 1d81ca3..d6cd415 100644
+--- a/interface/vcos/pthreads/CMakeLists.txt
++++ b/interface/vcos/pthreads/CMakeLists.txt
+@@ -33,6 +33,14 @@ set (SOURCES
+    ../generic/vcos_generic_blockpool.c
+ )
+ 
++if (BUILD_WAYLAND)
++wayland_add_protocol_server(
++    SOURCES
++    ../../../interface/wayland/dispmanx.xml
++    dispmanx
++)
++endif ()
++
+ if (VCOS_PTHREADS_BUILD_SHARED)
+    add_library (vcos SHARED ${SOURCES})
+    target_link_libraries (vcos pthread dl rt)
+diff --git a/interface/vmcs_host/CMakeLists.txt b/interface/vmcs_host/CMakeLists.txt
+index 35150ed..22949a8 100755
+--- a/interface/vmcs_host/CMakeLists.txt
++++ b/interface/vmcs_host/CMakeLists.txt
+@@ -17,14 +17,6 @@ set(VCHOSTIF_SOURCE
+ #            ${VMCS_TARGET}/vmcs_main.c
+ #  vc_vchi_haud.c
+ 
+-if (BUILD_WAYLAND)
+-wayland_add_protocol_server(
+-    VCHOSTIF_SOURCE
+-    ../../interface/wayland/dispmanx.xml
+-    dispmanx
+-)
+-endif ()
+-
+ add_library(vchostif ${VCHOSTIF_SOURCE})
+ 
+ #add_library(bufman            vc_vchi_bufman.c            )
+diff --git a/interface/vmcs_host/vc_vchi_dispmanx.h b/interface/vmcs_host/vc_vchi_dispmanx.h
+index f0bae30..8c44c58 100644
+--- a/interface/vmcs_host/vc_vchi_dispmanx.h
++++ b/interface/vmcs_host/vc_vchi_dispmanx.h
+@@ -69,7 +69,7 @@ typedef struct {
+ #ifdef BUILD_WAYLAND
+ /* XXX: This should be in a private header that can be included from EGL and vc_* */
+ #include <wayland-server.h>
+-#include "interface/vmcs_host/wayland-dispmanx-server-protocol.h"
++#include "interface/vcos/pthreads/wayland-dispmanx-server-protocol.h"
+ struct wl_dispmanx_server_buffer {
+ 	struct wl_resource *resource;
+ 	struct wl_dispmanx *dispmanx;
+-- 
+2.7.0
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 7ec02e7..c59b5f3 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -36,6 +36,7 @@ SRC_URI = "\
     file://0014-initialize-front-back-wayland-buffers.patch \
     file://0015-Remove-RPC_FLUSH.patch \
     file://0016-define-PROJECT_APIVER.patch \
+    file://0017-fix-cmake-dependency-race.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
1.9.1


