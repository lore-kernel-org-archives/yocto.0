Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96391E00B37; Tue, 29 Mar 2016 20:44:44 -0700 (PDT)
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
	*      [209.85.192.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f182.google.com (mail-pf0-f182.google.com
	[209.85.192.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6F36E00AE4
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 20:44:39 -0700 (PDT)
Received: by mail-pf0-f182.google.com with SMTP id 4so31037552pfd.0
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 20:44:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=8qCAWlAv0JDxesSNdV1UpSCCThYgihWZRDYSZp4xXvM=;
	b=cKzX+Amaec6sDM5Imsp+qh9asqU7pncCs57IONDG5COrpRJYEm+zkg6fdRaZY9i6Fz
	iRcT3Wd4K/IizwCVeeFBLmLgmHoISC/GIuxmmYO8hDz8m34Ujd3mW++bjOWrerRQwrb/
	RLfCoiX1pXgiDd4mQKzFjOEYeaJP3bm5XvSmksAe7qEzsLgjpYML9aWyvc/ScGFUFozf
	bWe95RYzl//CPdj5s5OXGTUBl6G8PQqV+qwuJ9usF2sbyhVCNlx03AlyTARifa3ZTWaG
	cE7Hx0Gg6BcBS33S6DnYIehpnFSFNKeqG/pcE28fwmS6UkkH/s/ahts0a7kHbY7DYdkL
	ZEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=8qCAWlAv0JDxesSNdV1UpSCCThYgihWZRDYSZp4xXvM=;
	b=aHHDBP/n22hj9RJ8vwGqUKQvj7y4qOMeIq5233M+hL2VeUIAFHY1+4qJuJ/udeSVXa
	0ntv4LlWE0tM0QPTC+ocj3DL3/kLwqKlaInlFWhQWa/GZOne1usXqc6UkbWvrv9aAbR7
	EyQiYr6WwcBGXLuJNi/4G4xpudB0gVCzb97PfFw95X5FsSYUaXYzrlPgBgjcFm2Wv4JA
	c3I9SheTiZVy4+JURPpGckkG5LMX+PGS0q1v2QXYWtznRIvgKcvfRzSFvY/eo55pQ6CU
	RceNjrIywuEC5aSH/IWXV6G1mltmbkNGbDd+k9lMmTAJAWrA9iJ0kTxio89BPwpv2k/n
	pODA==
X-Gm-Message-State: AD7BkJI9I4Js1wzG0arSQq6V0T8cptOKvzpiOlSphBvpp6Mci3pyZE/fncl0rB+6ZSz0fA==
X-Received: by 10.98.71.91 with SMTP id u88mr9252649pfa.161.1459309479496;
	Tue, 29 Mar 2016 20:44:39 -0700 (PDT)
Received: from haswell.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192])
	by smtp.gmail.com with ESMTPSA id f66sm1630274pff.8.2016.03.29.20.44.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Tue, 29 Mar 2016 20:44:38 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Tue, 29 Mar 2016 20:44:31 -0700
Message-Id: <1459309471-13065-2-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1459309471-13065-1-git-send-email-raj.khem@gmail.com>
References: <1459309471-13065-1-git-send-email-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] userland: Fix tearing effect seen with wayland compositors
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
X-List-Received-Date: Wed, 30 Mar 2016 03:44:44 -0000

Introduce EGL flush in few more places

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...Fix-for-framerate-with-nested-composition.patch | 46 ++++++++++++++++++----
 1 file changed, 39 insertions(+), 7 deletions(-)

diff --git a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
index 6377e31..2fa9d66 100644
--- a/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
+++ b/recipes-graphics/userland/userland/0013-Fix-for-framerate-with-nested-composition.patch
@@ -1,20 +1,39 @@
-From 7f424ce48f6c14118aea2ab770b3bbf87e1f0393 Mon Sep 17 00:00:00 2001
+From e5affc4ff145eedf61e2625a8919622c92d0b8ba Mon Sep 17 00:00:00 2001
 From: Khem Raj <raj.khem@gmail.com>
-Date: Thu, 24 Mar 2016 14:30:58 -0700
-Subject: [PATCH 13/13] Fix for framerate with nested composition
+Date: Tue, 29 Mar 2016 20:38:30 -0700
+Subject: [PATCH 13/14] Fix for framerate with nested composition
 
 frame rate appears irregular and lower than expected when using nested composition.
 
 Signed-off-by: Khem Raj <raj.khem@gmail.com>
 ---
- interface/khronos/egl/egl_client.c | 1 +
- 1 file changed, 1 insertion(+)
+ interface/khronos/egl/egl_client.c | 9 ++++++++-
+ 1 file changed, 8 insertions(+), 1 deletion(-)
 
 diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
-index 024f3ed..95bb581 100644
+index 024f3ed..d8a007c 100644
 --- a/interface/khronos/egl/egl_client.c
 +++ b/interface/khronos/egl/egl_client.c
-@@ -2360,6 +2360,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+@@ -2342,6 +2342,9 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+                      surface->back_wl_buffer = buffer;
+                   }
+ 
++                  glFlush();
++                  glFinish();
++
+                   RPC_CALL7(eglIntSwapBuffers_impl,
+                         thread,
+                         EGLINTSWAPBUFFERS_ID_V2,
+@@ -2353,6 +2356,8 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+                         RPC_UINT(khrn_platform_get_window_position(surface->win)),
+                         RPC_INT(surface->back_wl_buffer->resource));
+ 
++                  RPC_FLUSH(thread);
++
+                   surface->front_wl_buffer->in_use = 1;
+                   wl_surface_attach(wl_egl_window->wl_surface,
+                                     surface->front_wl_buffer->wl_buffer,
+@@ -2360,10 +2365,11 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
                    wl_surface_damage(wl_egl_window->wl_surface, 0, 0,
                                      surface->width, surface->height);
                    wl_surface_commit(wl_egl_window->wl_surface);
@@ -22,6 +41,19 @@ index 024f3ed..95bb581 100644
  
                    while(ret != -1 && surface->back_wl_buffer->in_use)
                       ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
+-               } else
++               } else {
+ #endif
+                RPC_CALL6(eglIntSwapBuffers_impl,
+                      thread,
+@@ -2376,6 +2382,7 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+                      RPC_UINT(khrn_platform_get_window_position(surface->win)));
+ 
+                RPC_FLUSH(thread);
++               }
+ 
+ #ifdef ANDROID
+                CLIENT_UNLOCK();
 -- 
 2.7.4
 
-- 
2.7.4


