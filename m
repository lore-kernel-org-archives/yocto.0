Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 923D4E00A16; Wed,  8 Feb 2017 21:49:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40482E00939
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2017 21:49:26 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id v184so16925603pgv.1
	for <yocto@yoctoproject.org>; Wed, 08 Feb 2017 21:49:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=P6r9htygEU9Vn+igJ/YFEmxf66YiwPV8b+17BQTZ8P4=;
	b=uC2Oieug4LCd46B1o8l21fTqqoR4GhYn/RhmibztWU2TnTdP3BgJSjqmudOG7j9Bbe
	9t9Mv/FM8//JIewzLC5R9UcyxSXnSTkcVUoX6ay5paiHeOmDFdd1us5II+u4CnZunKL4
	Amw7mU2AUPii+qa3lyLD+UegOSz3I16H+CFESkXcxtU8TieS9tN7vkSowGDEB+qR3Ip9
	xbGkL62nxrkuqHV1ymEnnk6CcyIODw2iIuO5dTyDxj7P9O4vIuzNOiNsRmWQWBqHPbHy
	YT8MQ2ksK36TvQ3R2mgE/leBefoGLwyY9jxxE2UXu0w+vE1qml7wpuUOMTroikmIuvTC
	rAbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=P6r9htygEU9Vn+igJ/YFEmxf66YiwPV8b+17BQTZ8P4=;
	b=iDY/hneaOCYd0HuVGyD35M6w+wZ19eVggGraSzEoOL1LlFP9eTT7U/jUTzlRHhFw7N
	CZ9/gboSOjEctiE94pEJKAgiKn/N/Yf3F0lerL5wfPJKkSY1PD5LbIQH+gJAGl0utRPW
	zLIfZe50yjyiwWuHbhicCch21VygFbwof48bwDSoWI76oUkgOskaedZ4moLv6DvsT8Ri
	U2yUKE6V6N8fPFdTkOm+rN2HTveloivsz7Q2sNvaYiqnHiQ7JsrNl4lCyOXfwEhQqDdj
	wop+rd/FsGTlU1hKgCYT0Sjv+FyHXHqw8IytFv0iyAyXsD1o0OsxPLXsSWwkG5+49Y5t
	u9xg==
X-Gm-Message-State: AMke39nZ9l/1c5yM1Xm3kRmpKMZ4mKFAvfQtENGWS+GYHHPMFj5bMdiv7dsZwqwjFxCKAw==
X-Received: by 10.84.241.207 with SMTP id t15mr1961813plm.136.1486619366603;
	Wed, 08 Feb 2017 21:49:26 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	t87sm24785898pfe.59.2017.02.08.21.49.25
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 08 Feb 2017 21:49:26 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed,  8 Feb 2017 21:49:00 -0800
Message-Id: <20170209054903.31598-6-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.1
In-Reply-To: <20170209054903.31598-1-raj.khem@gmail.com>
References: <20170209054903.31598-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 6/9] userland: Upgrade to latest and implement triple buffering for wayland
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
X-List-Received-Date: Thu, 09 Feb 2017 05:49:28 -0000

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
2.11.1


