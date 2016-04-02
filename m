Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2138FE0093E; Sat,  2 Apr 2016 10:59:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.169 listed in list.dnswl.org]
Received: from mail-pf0-f169.google.com (mail-pf0-f169.google.com
	[209.85.192.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00C55E007B5
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 10:59:19 -0700 (PDT)
Received: by mail-pf0-f169.google.com with SMTP id n1so8895966pfn.2
	for <yocto@yoctoproject.org>; Sat, 02 Apr 2016 10:59:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id;
	bh=GuneHBX/JU2kJATk8A6XVgQWw+8F8DKvtMKPmUR/7GI=;
	b=MEWZk4PVzr7UGVKDD5nyVQlXZ8VSguqKf7tewhL3C7Utow6wxsFtljvmQMvtuDHgr1
	uS6XtPdL64ez2K5oypM5RYJTmFwo7aNI++C2x6WoMwStQ5RadG6lEyDBR701X45FQ4g3
	AN1KzuxN5fJPU+vLYcXnSFVQdGzo9U22Uf2KcqEMLDmOOmUpeCA4MVWnEIZ5dtvuL1gl
	0cwAvIEhchu+VFAs45VQCw6H2B8+VX5EtztkCt6UgEI02cb7+/I5TTh4zoXyGcbQQVR9
	ko3JV6DHVc7oE7PWVK8w5A6m6IU16CWlZbtLj9bbllm3iZQEVrkAUgZV8OijySm3yIGB
	/eCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=GuneHBX/JU2kJATk8A6XVgQWw+8F8DKvtMKPmUR/7GI=;
	b=HH91IKTMk+8Y/xYHirc6pihe6vc7IyvY6ZuehegtEAgGvrp3E32G0ONzCVAVhsNvku
	wQrEo+eHdvqSXh6ypbKquXZuXOgsnSS4teWdnj76aogmYUzIknoj0f6bXIXWL8HsYSJu
	YNbZZMYJczJETQeiuVFRehkYQH4B/xyZawh997kFdkMIArGAnc4h2jfy1eAyqs9U92Hx
	VfKLKEliVQjTHn9uxSlXsy81fp7ok2ScORXb4G0db9vs5pDp2/k+m1I0B9Fhe3JMqNNh
	xerWlQs2pArJUDwse7VmAROsm6ElwfEs7ZZeM2LuLJEGYxYQgBu+eoztnT1sg87NYNQC
	3usw==
X-Gm-Message-State: AD7BkJLp7LVKvN2cpq6el6NNQegiSRuUVx/0yAPzeBKDciyp44QtRZm9aGirLqRdIc5klA==
X-Received: by 10.98.15.142 with SMTP id 14mr7831328pfp.6.1459619958992;
	Sat, 02 Apr 2016 10:59:18 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	ud5sm30487912pac.11.2016.04.02.10.59.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 02 Apr 2016 10:59:17 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat,  2 Apr 2016 10:59:11 -0700
Message-Id: <1459619952-26621-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.8.0
Subject: [meta-raspberrypi][PATCH 1/2] userland: Fix a build regression in builds not using wayland
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
X-List-Received-Date: Sat, 02 Apr 2016 17:59:23 -0000

Update userland to latest

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...Fix-for-framerate-with-nested-composition.patch | 21 ++++++-----
 ...014-Fix-errors-due-to-ignored-return-code.patch | 43 ----------------------
 recipes-graphics/userland/userland_git.bb          |  3 +-
 3 files changed, 12 insertions(+), 55 deletions(-)
 delete mode 100644 recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch

diff --git a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
index 2fa9d66..ff9ccce 100644
--- a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
+++ b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
@@ -1,17 +1,17 @@
-From e5affc4ff145eedf61e2625a8919622c92d0b8ba Mon Sep 17 00:00:00 2001
+From f8779a124fc447b63c1ba1795330bdc2d765dc7a Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
 Date: Tue, 29 Mar 2016 20:38:30 -0700
-Subject: [PATCH 13/14] Fix for framerate with nested composition
+Subject: [PATCH 13/13] Fix for framerate with nested composition
 
 frame rate appears irregular and lower than expected when using nested composition.
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
- interface/khronos/egl/egl_client.c | 9 ++++++++-
- 1 file changed, 8 insertions(+), 1 deletion(-)
+ interface/khronos/egl/egl_client.c | 8 ++++++++
+ 1 file changed, 8 insertions(+)
 
 diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
-index 024f3ed..d8a007c 100644
+index 024f3ed..83970ec 100644
 --- a/interface/khronos/egl/egl_client.c
 +++ b/interface/khronos/egl/egl_client.c
 @@ -2342,6 +2342,9 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
@@ -33,7 +33,7 @@ index 024f3ed..d8a007c 100644
                    surface->front_wl_buffer->in_use = 1;
                    wl_surface_attach(wl_egl_window->wl_surface,
                                      surface->front_wl_buffer->wl_buffer,
-@@ -2360,10 +2365,11 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+@@ -2360,11 +2365,13 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
                    wl_surface_damage(wl_egl_window->wl_surface, 0, 0,
                                      surface->width, surface->height);
                    wl_surface_commit(wl_egl_window->wl_surface);
@@ -41,12 +41,13 @@ index 024f3ed..d8a007c 100644
  
                    while(ret != -1 && surface->back_wl_buffer->in_use)
                       ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
--               } else
-+               } else {
+                } else
  #endif
++               {
                 RPC_CALL6(eglIntSwapBuffers_impl,
                       thread,
-@@ -2376,6 +2382,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+                      EGLINTSWAPBUFFERS_ID,
+@@ -2376,6 +2383,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
                       RPC_UINT(khrn_platform_get_window_position(surface->win)));
  
                 RPC_FLUSH(thread);
@@ -55,5 +56,5 @@ index 024f3ed..d8a007c 100644
  #ifdef ANDROID
                 CLIENT_UNLOCK();
 -- 
-2.7.4
+2.8.0
 
diff --git a/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch b/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
deleted file mode 100644
index 2d11e9b..0000000
--- a/recipes-graphics/userland/userland/0014-Fix-errors-due-to-ignored-return-code.patch
+++ /dev/null
@@ -1,43 +0,0 @@
-From 8ac57765d8b971aaa5ee5c610d8df25fa2ea36da Mon Sep 17 00:00:00 2001
-From: Khem Raj <raj.khem@gmail.com>
-Date: Thu, 24 Mar 2016 15:03:50 -0700
-Subject: [PATCH 14/14] Fix errors due to ignored return code
-
-Clang warns/errors about not checking the return
-values from chdir() and fread(), here we check
-for chdir return code and report back using error()
-API, and second fix to fread is to let compiler
-ignore the value via assigning it to an unused variable
-
-Signed-off-by: Khem Raj <raj.khem@gmail.com>
----
- host_applications/linux/apps/dtoverlay/dtoverlay_main.c | 6 ++++--
- 1 file changed, 4 insertions(+), 2 deletions(-)
-
-diff --git a/host_applications/linux/apps/dtoverlay/dtoverlay_main.c b/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
-index 4b33809..fa8324f 100755
---- a/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
-+++ b/host_applications/linux/apps/dtoverlay/dtoverlay_main.c
-@@ -353,7 +353,8 @@ static int dtoverlay_remove(STATE_T *state, const char *overlay)
-     int rmpos;
-     int i;
- 
--    chdir(work_dir);
-+    if (chdir(work_dir) != 0)
-+	return error("chdir to %s failed", work_dir);
- 
-     overlay_dir = sprintf_dup("%s/%s", dt_overlays_dir, overlay);
-     if (!dir_exists(overlay_dir))
-@@ -633,7 +634,8 @@ static int overlay_applied(const char *overlay_dir)
-     FILE *fp = fopen(status_path, "r");
-     if (fp)
-     {
--	fread(status, sizeof(status), 1, fp);
-+	int bytes __attribute__((unused));
-+	bytes = fread(status, sizeof(status), 1, fp);
- 	fclose(fp);
-     }
-     free_string(status_path);
--- 
-2.7.4
-
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index ca9123e..efa2128 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -16,7 +16,7 @@ COMPATIBLE_MACHINE = "raspberrypi"
 
 SRCBRANCH = "master"
 SRCFORK = "raspberrypi"
-SRCREV = "2f56a2943a9eb8420df52ccf91f5a1c5a70e8713"
+SRCREV = "703a2c4b35e23ee44ad84db6b9c3f89c0a627143"
 
 SRC_URI = "\
     git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRANCH} \
@@ -33,7 +33,6 @@ SRC_URI = "\
     file://0011-fix-cmake-dependency-race.patch \
     file://0012-Fix-enum-conversion-warnings.patch \
     file://0013-Fix-for-framerate-with-nested-composition.patch \
-    file://0014-Fix-errors-due-to-ignored-return-code.patch \
     file://0015-wl-dispmanx-buffer-wrapping.patch \
 "
 S = "${WORKDIR}/git"
-- 
2.8.0


