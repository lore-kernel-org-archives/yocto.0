Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7DDEFE009AD; Thu, 26 Jan 2017 22:28:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 168A6E009A5
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 22:28:22 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id 194so24262544pgd.0
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2017 22:28:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=PpDQ0vPhA7z7p2puBMK+uBB99GZGPmFcDsXH9axxnqg=;
	b=r4crASE3j3bJ45rYUjfCvEQ49CFrQBhc92lokmbNekMhROlg7H3eKDg8G1R0ULxM1d
	V4um7/5kPlEEDal2fD164kT8vukVrDghYptK7AZcDxZZAURPXtN+RCdSwBlar4GQzG/1
	V0vpyFpYTdUZif0EVuWWjbDR4FyY86uPR+2z/EojxF6PU28BdgHN2X2ZDnPioNpT9qoe
	Xxg382AxWQ8754HZ8gG7Zgvl2IPWhVHrC8TGfQGe7sBeZU9lTQMBarNMFklocdjgUkqD
	WAy0NhgKlSRX7OWWYcNKMAMWF8sOTb86WEbZzx45z10vZ/xwEWtmG6HsYFq/UxjAk8c7
	Xcsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=PpDQ0vPhA7z7p2puBMK+uBB99GZGPmFcDsXH9axxnqg=;
	b=S/9ueLSf9MRbiqiG9mEVM1RDDAGYYxsumgzjk0DqJ4nsre8CGGx7FzFmRl3A2V9SXJ
	GUHzSbN1T2pSl0R0iwGDeS0TmisK9T6QIW5+7lLu749Lt9Mn67OU+b+gvYVH8gKdzdKq
	lGnDTifH1k+09KZ5wYT1AQfO7dfWbsQEFnC7ZAS3xoQOoi3yLpro5zKbqdhizVCufB7Y
	UFqJWMd7oDrag67Ue3QpV6WUILQuylouiZAxJEuqkg9hVp7OOdwdVulh36Z5GanzW3xX
	a25FmOe3GeQo7KnGFzeYp32oC3G8L/HSeadeHe6849fz4IuB15gHQ3amVNtWzXgxKRsm
	TWhQ==
X-Gm-Message-State: AIkVDXL2I6iwsh9plS9/1jzn4GeBxXE4SF0OyWdzeGHrchuuuAUNXfWjnp/ZLJXNR4i//g==
X-Received: by 10.84.198.3 with SMTP id o3mr10024004pld.170.1485498502429;
	Thu, 26 Jan 2017 22:28:22 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	m20sm7809221pgd.17.2017.01.26.22.28.21
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 26 Jan 2017 22:28:21 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Thu, 26 Jan 2017 22:28:07 -0800
Message-Id: <20170127062807.7564-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20170127062807.7564-1-raj.khem@gmail.com>
References: <20170127062807.7564-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] userland: Upgrade to latest and implement triple buffering for wayland
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
X-List-Received-Date: Fri, 27 Jan 2017 06:28:24 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...13-Implement-triple-buffering-for-wayland.patch | 85 ++++++++++++++++++++++
 recipes-graphics/userland/userland_git.bb          |  3 +-
 2 files changed, 87 insertions(+), 1 deletion(-)
 create mode 100644 recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch

diff --git a/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch b/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch
new file mode 100644
index 0000000..8703296
--- /dev/null
+++ b/recipes-graphics/userland/userland/0013-Implement-triple-buffering-for-wayland.patch
@@ -0,0 +1,85 @@
+From 81f421b051c726bbe180ee5f7d93cf13a3935904 Mon Sep 17 00:00:00 2001
+From: Jeff Wannamaker <jeff_wannamaker@cable.comcast.com>
+Date: Thu, 19 Jan 2017 18:56:07 +0000
+Subject: [PATCH 13/13] Implement triple buffering for wayland
+
+Change from double to triple buffering for wayland.  This enables higher frame rates without tearing artifacts by allowing both the glFinish and the buffer release interlock to operate without pushing the frame period to two vertical intervals
+
+Signed-off-by: Jeff Wannamaker <jeff_wannamaker@cable.comcast.com>
+---
+ interface/khronos/egl/egl_client.c         |  3 ++-
+ interface/khronos/egl/egl_client_surface.c |  8 ++++++++
+ interface/khronos/egl/egl_client_surface.h | 11 +++++++++++
+ 3 files changed, 21 insertions(+), 1 deletion(-)
+
+diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
+index 13a110c..0380274 100644
+--- a/interface/khronos/egl/egl_client.c
++++ b/interface/khronos/egl/egl_client.c
+@@ -2323,7 +2323,8 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+ 
+                   buffer_temp = surface->front_wl_buffer;
+                   surface->front_wl_buffer = surface->back_wl_buffer;
+-                  surface->back_wl_buffer = buffer_temp;
++                  surface->back_wl_buffer = surface->middle_wl_buffer;
++                  surface->middle_wl_buffer = buffer_temp;
+ 
+                   configid = egl_config_to_id(surface->config);
+                   color = egl_config_get_color_format(configid);
+diff --git a/interface/khronos/egl/egl_client_surface.c b/interface/khronos/egl/egl_client_surface.c
+index 9a9582c..10b3b04 100644
+--- a/interface/khronos/egl/egl_client_surface.c
++++ b/interface/khronos/egl/egl_client_surface.c
+@@ -402,12 +402,14 @@ EGL_SURFACE_T *egl_surface_create(
+    if (type == WINDOW && wl_display) {
+       surface->wl_egl_window = (struct wl_egl_window*)win;
+       surface->front_wl_buffer = NULL;
++      surface->middle_wl_buffer = NULL;
+       surface->back_wl_buffer = allocate_wl_buffer(
+             surface->wl_egl_window, color);
+       resource = surface->back_wl_buffer->resource;
+    } else {
+       surface->wl_egl_window = NULL;
+       surface->front_wl_buffer = NULL;
++      surface->middle_wl_buffer = NULL;
+       surface->back_wl_buffer = NULL;
+       resource = DISPMANX_NO_HANDLE;
+    }
+@@ -696,6 +698,12 @@ void egl_surface_free(EGL_SURFACE_T *surface)
+          surface->back_wl_buffer = 0;
+       }
+ 
++      if (surface->middle_wl_buffer) {
++         wl_buffer_destroy(surface->middle_wl_buffer->wl_buffer);
++         free(surface->middle_wl_buffer);
++         surface->middle_wl_buffer = 0;
++      }
++
+       if (surface->front_wl_buffer) {
+          wl_buffer_destroy(surface->front_wl_buffer->wl_buffer);
+          free(surface->front_wl_buffer);
+diff --git a/interface/khronos/egl/egl_client_surface.h b/interface/khronos/egl/egl_client_surface.h
+index e328b77..58a3184 100644
+--- a/interface/khronos/egl/egl_client_surface.h
++++ b/interface/khronos/egl/egl_client_surface.h
+@@ -313,6 +313,17 @@ typedef struct {
+    struct wl_dispmanx_client_buffer *front_wl_buffer;
+ 
+    /*
++      middle_wl_buffer
++
++      Validity:
++      type == WINDOW
++
++      Invariant:
++      client-side information about the wl_buffer in the middle
++   */
++   struct wl_dispmanx_client_buffer *middle_wl_buffer;
++
++   /*
+       back_wl_buffer
+ 
+       Validity:
+-- 
+2.7.1
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index a37249c..cec591d 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "bb15afe33b313fe045d52277a78653d288e04f67"
+SRCREV = "0f015eaa17add5bca00ecf8a354ea62e19bd7920"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
@@ -32,6 +32,7 @@ SRC_URI = "\
     file://0010-Fix-for-framerate-with-nested-composition.patch \
     file://0011-build-shared-library-for-vchostif.patch \
     file://0012-implement-buffer-wrapping-interface-for-dispmanx.patch \
+    file://0013-Implement-triple-buffering-for-wayland.patch \
 "
 S = "${WORKDIR}/git"
 
-- 
2.11.0


