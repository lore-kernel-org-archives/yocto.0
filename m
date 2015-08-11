Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE27EE00A97; Mon, 10 Aug 2015 21:11:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	DKIM_SIGNED,FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,NORMAL_HTTP_TO_IP,
	RCVD_IN_DNSWL_LOW,T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* 0.0 NORMAL_HTTP_TO_IP URI: URI host has a public dotted-decimal IPv4
	*      address
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from mail-io0-f181.google.com (mail-io0-f181.google.com
	[209.85.223.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCEF9E00AA2
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 21:11:41 -0700 (PDT)
Received: by ioeg141 with SMTP id g141so190409917ioe.3
	for <yocto@yoctoproject.org>; Mon, 10 Aug 2015 21:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:mime-version:content-type
	:content-transfer-encoding;
	bh=FS36iZrwZrFt1yR8gNbrJQaTjF5q9/l5YbGZ2m0rnxs=;
	b=BuscVZyhH2wZnsDTK/FXA2em0TL4V41O8EcKaSkO7uUMKQo0BOhsewBNOIqjk6lmsn
	DGAJP0J01XywoPzGRkHOsZg3Gf9Bkvbrj2+qGcUDHbO5UAJ9lcYDllyDn10KPq4QyRnF
	+J6eCLeDx935p6EJRLV2CBCRFdiSbWpoY3fkGCMWydLq/jzt7Zru43hsAiTeh4L+5hc7
	M1KRFcQxzLv0OejExeR0vqjwDPadSUMp0JSdViUE6hD8kqUyTiMNrBFisN5ype9mYttf
	eYpZyjdeqZFkylU7WSpgWockVcGOPOnzEQv4371Th6arwxhlpUrOTHttXHlS4HUO/S37
	M33A==
X-Received: by 10.107.37.14 with SMTP id l14mr26492144iol.12.1439266300661;
	Mon, 10 Aug 2015 21:11:40 -0700 (PDT)
Received: from dvm-ch2e-038.sys.comcast.net (a-96-119-89-79.sys.comcast.net.
	[96.119.89.79])
	by smtp.gmail.com with ESMTPSA id o39sm734954ioi.30.2015.08.10.21.11.39
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Mon, 10 Aug 2015 21:11:39 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Mon, 10 Aug 2015 21:11:31 -0700
Message-Id: <1439266291-32170-1-git-send-email-raj.khem@gmail.com>
X-Mailer: git-send-email 2.1.4
MIME-Version: 1.0
Subject: [meta-raspberrypi][RFC][PATCH V2] userland: Add wayland support
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
X-List-Received-Date: Tue, 11 Aug 2015 04:11:56 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

backport and fix needed patches for supporting wayland-egl
use PACKAGECONFIG for wayland so we can add proper DEPENDS on wayland

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...-applications-to-set-next-resource-handle.patch |  210 +++
 ...ayland-Add-support-for-the-Wayland-winsys.patch | 1847 ++++++++++++++++++++
 .../0006-wayland-Add-Wayland-example.patch         |  864 +++++++++
 ...-wayland-egl-Add-bcm_host-to-dependencies.patch |   30 +
 recipes-graphics/userland/userland_git.bb          |   12 +-
 5 files changed, 2962 insertions(+), 1 deletion(-)
 create mode 100644 recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-resource-handle.patch
 create mode 100644 recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Wayland-winsys.patch
 create mode 100644 recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch
 create mode 100644 recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-dependencies.patch

diff --git a/recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-resource-handle.patch b/recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-resource-handle.patch
new file mode 100644
index 0000000..d5b43ca
--- /dev/null
+++ b/recipes-graphics/userland/userland/0004-Allow-applications-to-set-next-resource-handle.patch
@@ -0,0 +1,210 @@
+From 825c3236e5908ff003644abd870bfe98e82722b2 Mon Sep 17 00:00:00 2001
+From: Dom Cobley <dc4@broadcom.com>
+Date: Tue, 9 Jul 2013 09:26:26 -0400
+Subject: [PATCH 1/3] Allow applications to set next resource handle
+
+This patch adds provisions in userland to
+let apps callers set the next rendereing dispmanx resource.
+It's useful for implementing, say, a buffer carousel.
+---
+Upstream-Status: Submitted
+
+ interface/khronos/common/khrn_client_rpc.h |  2 ++
+ interface/khronos/common/khrn_int_ids.h    |  2 ++
+ interface/khronos/egl/egl_client.c         | 30 +++++++++++++++++++++++++++---
+ interface/khronos/egl/egl_client_surface.c | 24 +++++++++++++++++++++++-
+ interface/khronos/egl/egl_client_surface.h |  3 ++-
+ interface/khronos/egl/egl_int_impl.h       |  5 +++--
+ 6 files changed, 59 insertions(+), 7 deletions(-)
+
+diff --git a/interface/khronos/common/khrn_client_rpc.h b/interface/khronos/common/khrn_client_rpc.h
+index 418aa67..a7557a8 100644
+--- a/interface/khronos/common/khrn_client_rpc.h
++++ b/interface/khronos/common/khrn_client_rpc.h
+@@ -683,6 +683,7 @@ static INLINE void rpc_call12_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id
+ static INLINE void rpc_call13_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, void *out)               { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11);      rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
+ static INLINE void rpc_call14_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, uint32_t p12, void *out) { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12); rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
+ static INLINE void rpc_call15_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, uint32_t p12, uint32_t p13, void *out) { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13); rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
++static INLINE void rpc_call16_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id, uint32_t p0, uint32_t p1, uint32_t p2, uint32_t p3, uint32_t p4, uint32_t p5, uint32_t p6, uint32_t p7, uint32_t p8, uint32_t p9, uint32_t p10, uint32_t p11, uint32_t p12, uint32_t p13, uint32_t p14, void *out) { rpc_begin(thread); RPC_CALL(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14); rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); }
+ #endif
+ 
+ #define RPC_CALL1_OUT_CTRL(fn, thread, id, out)                                               rpc_call1_out_ctrl(thread, id, out)
+@@ -700,6 +701,7 @@ static INLINE void rpc_call15_out_ctrl(CLIENT_THREAD_STATE_T *thread,uint32_t id
+ #define RPC_CALL13_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, out)      rpc_call13_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, out)
+ #define RPC_CALL14_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, out) rpc_call14_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, out)
+ #define RPC_CALL15_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, out) rpc_call15_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, out)
++#define RPC_CALL16_OUT_CTRL(fn, thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, out) rpc_call16_out_ctrl(thread, id, p0, p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12, p13, p14, out)
+ 
+ # if !defined(__SYMBIAN32__)  //use functions defined in khrpc.cpp
+ static INLINE uint32_t rpc_call1_out_ctrl_res(CLIENT_THREAD_STATE_T *thread,uint32_t id, void *out)                                                                                                                       { uint32_t res; rpc_begin(thread); RPC_CALL(thread, id);                                     res = rpc_recv(thread, out, NULL, (RPC_RECV_FLAG_T)(RPC_RECV_FLAG_RES | RPC_RECV_FLAG_CTRL | RPC_RECV_FLAG_LEN)); rpc_end(thread); return res; }
+diff --git a/interface/khronos/common/khrn_int_ids.h b/interface/khronos/common/khrn_int_ids.h
+index 8378f4a..ec961e0 100644
+--- a/interface/khronos/common/khrn_int_ids.h
++++ b/interface/khronos/common/khrn_int_ids.h
+@@ -367,6 +367,7 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ */
+ 
+ #define EGLINTCREATESURFACE_ID            0x4000
++#define EGLINTCREATESURFACE_ID_V2         0x4100
+ #define EGLINTCREATEGLES11_ID             0x4001
+ #define EGLINTCREATEGLES20_ID             0x4002
+ #define EGLINTCREATEVG_ID                 0x4003
+@@ -377,6 +378,7 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
+ #define EGLINTMAKECURRENT_ID              0x4008
+ #define EGLINTFLUSHANDWAIT_ID             0x4009
+ #define EGLINTSWAPBUFFERS_ID              0x400a
++#define EGLINTSWAPBUFFERS_ID_V2           0x410a
+ #define EGLINTSELECTMIPMAP_ID             0x400b
+ #define EGLINTFLUSH_ID                    0x400c
+ #define EGLINTGETCOLORDATA_ID             0x400d
+diff --git a/interface/khronos/egl/egl_client.c b/interface/khronos/egl/egl_client.c
+index fd07eb6..e902d19 100644
+--- a/interface/khronos/egl/egl_client.c
++++ b/interface/khronos/egl/egl_client.c
+@@ -162,6 +162,17 @@ static void egl_current_release(CLIENT_PROCESS_STATE_T *process, EGL_CURRENT_T *
+ void egl_gl_flush_callback(bool wait);
+ void egl_vg_flush_callback(bool wait);
+ 
++#include "interface/vmcs_host/vc_dispmanx_types.h"
++/**HACKHACK - give us the ability to inject a DispmanX 
++ * resource handle into the CreateWindowSurface and 
++ * SwapBuffers calls */ 
++static DISPMANX_RESOURCE_HANDLE_T next_resource_handle;
++
++EGLAPI EGLBoolean EGLAPIENTRY eglSetNextResourceHandle(DISPMANX_RESOURCE_HANDLE_T handle)
++{
++   next_resource_handle = handle;
++}
++
+ /*
+ TODO: do an RPC call to make sure the Khronos vll is loaded (and that it stays loaded until eglTerminate)
+ Also affects global image (and possibly others?)
+@@ -643,7 +654,8 @@ EGLAPI EGLSurface EGLAPIENTRY eglCreateWindowSurface(EGLDisplay dpy, EGLConfig c
+                                 false,
+                                 EGL_NO_TEXTURE,
+                                 EGL_NO_TEXTURE,
+-                                0, 0);
++                                0, 0,
++                                next_resource_handle);
+ 
+                if (surface) {
+                   if (khrn_pointer_map_insert(&process->surfaces, process->next_surface, surface)) {
+@@ -888,7 +900,7 @@ EGLAPI EGLSurface EGLAPIENTRY eglCreatePbufferSurface(EGLDisplay dpy, EGLConfig
+                              mipmap_texture,
+                              texture_format,
+                              texture_target,
+-                             0, 0);
++                             0, 0, 0);
+ 
+             if (surface) {
+                if (khrn_pointer_map_insert(&process->surfaces, process->next_surface, surface)) {
+@@ -1030,7 +1042,7 @@ EGLAPI EGLSurface EGLAPIENTRY eglCreatePixmapSurface(EGLDisplay dpy, EGLConfig c
+                                    false,
+                                    EGL_NO_TEXTURE,
+                                    EGL_NO_TEXTURE,
+-                                   pixmap, ((server_handle[0] == 0) && (server_handle[1] == (uint32_t)(-1))) ? NULL : server_handle);
++                                   pixmap, ((server_handle[0] == 0) && (server_handle[1] == (uint32_t)(-1))) ? NULL : server_handle, 0);
+ 
+                      if (surface) {
+                         if (khrn_pointer_map_insert(&process->surfaces, process->next_surface, surface)) {
+@@ -2302,6 +2314,18 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuffers(EGLDisplay dpy, EGLSurface surf)
+ 
+                vcos_log_trace("eglSwapBuffers server call");
+ 
++               if (next_resource_handle)
++               RPC_CALL7(eglIntSwapBuffers_impl,
++                     thread,
++                     EGLINTSWAPBUFFERS_ID_V2,
++                     RPC_UINT(surface->serverbuffer),
++                     RPC_UINT(surface->width),
++                     RPC_UINT(surface->height),
++                     RPC_UINT(surface->internal_handle),
++                     RPC_UINT(surface->swap_behavior == EGL_BUFFER_PRESERVED ? 1 : 0),
++                     RPC_UINT(khrn_platform_get_window_position(surface->win)),
++                     RPC_INT(next_resource_handle));
++               else
+                RPC_CALL6(eglIntSwapBuffers_impl,
+                      thread,
+                      EGLINTSWAPBUFFERS_ID,
+diff --git a/interface/khronos/egl/egl_client_surface.c b/interface/khronos/egl/egl_client_surface.c
+index cda5943..0be56c5 100644
+--- a/interface/khronos/egl/egl_client_surface.c
++++ b/interface/khronos/egl/egl_client_surface.c
+@@ -314,7 +314,8 @@ EGL_SURFACE_T *egl_surface_create(
+    EGLenum texture_format,
+    EGLenum texture_target,
+    EGLNativePixmapType pixmap,
+-   const uint32_t *pixmap_server_handle)
++   const uint32_t *pixmap_server_handle,
++   DISPMANX_RESOURCE_HANDLE_T next_resource_handle)
+ {
+    KHRN_IMAGE_FORMAT_T color;
+    KHRN_IMAGE_FORMAT_T depth;
+@@ -473,6 +474,27 @@ EGL_SURFACE_T *egl_surface_create(
+ #endif
+          uint32_t results[3];
+ 
++         if (next_resource_handle)
++         RPC_CALL16_OUT_CTRL(eglIntCreateSurface_impl,
++                             thread,
++                             EGLINTCREATESURFACE_ID_V2,
++                             RPC_UINT(serverwin),
++                             RPC_UINT(buffers),
++                             RPC_UINT(width),
++                             RPC_UINT(height),
++                             RPC_UINT(color),
++                             RPC_UINT(depth),
++                             RPC_UINT(mask),
++                             RPC_UINT(multi),
++                             RPC_UINT(largest_pbuffer),
++                             RPC_UINT(mipmap_texture),
++                             RPC_UINT(config_depth_bits),
++                             RPC_UINT(config_stencil_bits),
++                             RPC_UINT(sem_name),
++                             RPC_UINT(type),
++                             RPC_INT(next_resource_handle),
++                             results);
++         else
+          RPC_CALL15_OUT_CTRL(eglIntCreateSurface_impl,
+                              thread,
+                              EGLINTCREATESURFACE_ID,
+diff --git a/interface/khronos/egl/egl_client_surface.h b/interface/khronos/egl/egl_client_surface.h
+index c99d44c..b5bf70a 100644
+--- a/interface/khronos/egl/egl_client_surface.h
++++ b/interface/khronos/egl/egl_client_surface.h
+@@ -322,7 +322,8 @@ extern EGL_SURFACE_T *egl_surface_create(
+    EGLenum texture_format,
+    EGLenum texture_target,
+    EGLNativePixmapType pixmap,
+-   const uint32_t *pixmap_server_handle);
++   const uint32_t *pixmap_server_handle,
++   DISPMANX_RESOURCE_HANDLE_T next_resource_handle);
+ extern EGL_SURFACE_T *egl_surface_from_vg_image(
+    VGImage vg_handle,
+    EGLSurface name,
+diff --git a/interface/khronos/egl/egl_int_impl.h b/interface/khronos/egl/egl_int_impl.h
+index 8a5734c..51b3580 100644
+--- a/interface/khronos/egl/egl_int_impl.h
++++ b/interface/khronos/egl/egl_int_impl.h
+@@ -56,7 +56,8 @@ FN(int, eglIntCreateSurface_impl, (
+    uint32_t config_stencil_bits,
+    uint32_t sem,
+    uint32_t type,
+-   uint32_t *results))
++   uint32_t *results,
++   DISPMANX_RESOURCE_HANDLE_T next_resource_handle))
+ 
+ FN(int, eglIntCreatePbufferFromVGImage_impl, (
+    VGImage vg_handle,
+@@ -110,7 +111,7 @@ FN(void, eglIntMakeCurrent_impl, (uint32_t pid_0, uint32_t pid_1, uint32_t glver
+ FN(int, eglIntFlushAndWait_impl, (uint32_t flushgl, uint32_t flushvg))
+ FN(void, eglIntFlush_impl, (uint32_t flushgl, uint32_t flushvg))
+ 
+-FN(void, eglIntSwapBuffers_impl, (EGL_SURFACE_ID_T s, uint32_t width, uint32_t height, uint32_t handle, uint32_t preserve, uint32_t position))
++FN(void, eglIntSwapBuffers_impl, (EGL_SURFACE_ID_T s, uint32_t width, uint32_t height, uint32_t handle, uint32_t preserve, uint32_t position, DISPMANX_RESOURCE_HANDLE_T new_back_buffer))
+ FN(void, eglIntSelectMipmap_impl, (EGL_SURFACE_ID_T s, int level))
+ 
+ FN(void, eglIntGetColorData_impl, (EGL_SURFACE_ID_T s, KHRN_IMAGE_FORMAT_T format, uint32_t width, uint32_t height, int32_t stride, uint32_t y_offset, void *data))
+-- 
+2.1.4
+
diff --git a/recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Wayland-winsys.patch b/recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Wayland-winsys.patch
new file mode 100644
index 0000000..1d1ef59
--- /dev/null
+++ b/recipes-graphics/userland/userland/0005-wayland-Add-support-for-the-Wayland-winsys.patch
@@ -0,0 +1,1847 @@
+From c22c00f1e430b105a2c3dbbeffcf4762f27c3b17 Mon Sep 17 00:00:00 2001
+From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
+Date: Tue, 1 Oct 2013 13:19:20 +0200
+Subject: [PATCH 2/3] wayland: Add support for the Wayland winsys
+
+* Adds EGL_WL_bind_wayland_display extension
+* Adds wayland-egl library
+* Adds wl_dispmanx_buffer protocol extension
+
+TODO: Check that platform_get_dimensions() returning swapchain_count == 1 is correct
+
+TODO: Remove the requirement of passing a valid DispmanX element handle to
+the SwapBuffers and CreateSurface RPC calls. This will remove the need to open
+a DispmanX display from the clients.
+
+TODO: wl_dispmanx_server_buffer should probably be defined in a
+private header that can be included from EGL and vc_* instead of in
+vc_vchi_dispmanx.h
+---
+Upstream-Status: Submitted
+
+ .gitignore                                         |   2 +
+ CMakeLists.txt                                     |  11 +
+ README.md                                          |   4 +
+ buildme                                            |  14 +-
+ interface/khronos/CMakeLists.txt                   |  52 ++++-
+ interface/khronos/common/khrn_client.c             |  15 ++
+ interface/khronos/common/khrn_client.h             |  10 +
+ interface/khronos/common/khrn_client_mangle.h      |   3 +
+ interface/khronos/common/khrn_client_platform.h    |   8 +
+ interface/khronos/common/khrn_client_unmangle.h    |   3 +
+ .../common/linux/khrn_client_platform_linux.c      | 115 ++++++++--
+ interface/khronos/common/linux/khrn_wayland.c      | 215 ++++++++++++++++++
+ .../common/linux/khrn_wayland.h}                   |  46 +---
+ interface/khronos/egl/egl_client.c                 |  92 +++++---
+ interface/khronos/egl/egl_client_get_proc.c        |  11 +
+ interface/khronos/egl/egl_client_surface.c         |  42 +++-
+ interface/khronos/egl/egl_client_surface.h         |  38 +++-
+ interface/khronos/egl/egl_int_impl.h               |   2 +-
+ interface/khronos/ext/egl_wayland.c                | 246 +++++++++++++++++++++
+ interface/khronos/include/EGL/eglext.h             |  23 ++
+ interface/khronos/wayland-egl/wayland-egl-priv.h   |  53 +++++
+ interface/khronos/wayland-egl/wayland-egl.c        |  59 +++++
+ interface/khronos/wayland-egl/wayland-egl.pc.in    |  10 +
+ interface/vmcs_host/CMakeLists.txt                 |  21 +-
+ interface/vmcs_host/vc_dispmanx.h                  |  10 +
+ interface/vmcs_host/vc_vchi_dispmanx.c             |  42 ++++
+ interface/vmcs_host/vc_vchi_dispmanx.h             |  15 ++
+ interface/wayland/dispmanx.xml                     | 123 +++++++++++
+ makefiles/cmake/Wayland.cmake                      |  72 ++++++
+ 29 files changed, 1260 insertions(+), 97 deletions(-)
+ create mode 100644 interface/khronos/common/linux/khrn_wayland.c
+ copy interface/{vmcs_host/vc_vchi_dispmanx.h => khronos/common/linux/khrn_wayland.h} (56%)
+ create mode 100644 interface/khronos/ext/egl_wayland.c
+ create mode 100644 interface/khronos/wayland-egl/wayland-egl-priv.h
+ create mode 100644 interface/khronos/wayland-egl/wayland-egl.c
+ create mode 100644 interface/khronos/wayland-egl/wayland-egl.pc.in
+ create mode 100644 interface/wayland/dispmanx.xml
+ create mode 100644 makefiles/cmake/Wayland.cmake
+
+Index: git/.gitignore
+===================================================================
+--- git.orig/.gitignore
++++ git/.gitignore
+@@ -10,3 +10,5 @@
+ *.lai
+ *.la
+ *.a
++
++*~
+Index: git/CMakeLists.txt
+===================================================================
+--- git.orig/CMakeLists.txt
++++ git/CMakeLists.txt
+@@ -13,6 +13,17 @@ include(makefiles/cmake/global_settings.
+ include(makefiles/cmake/arm-linux.cmake)
+ include(makefiles/cmake/vmcs.cmake)
+ 
++if (BUILD_WAYLAND)
++   include(makefiles/cmake/Wayland.cmake)
++
++   # Find Wayland libraries
++   find_package(PkgConfig)
++   pkg_check_modules(WAYLAND_CLIENT wayland-client REQUIRED)
++   pkg_check_modules(WAYLAND_SERVER wayland-server REQUIRED)
++
++   set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -DBUILD_WAYLAND")
++endif()
++
+ enable_language(ASM)
+ 
+ # Global include paths
+Index: git/README.md
+===================================================================
+--- git.orig/README.md
++++ git/README.md
+@@ -4,3 +4,7 @@ EGL, mmal, GLESv2, vcos, openmaxil, vchi
+ 
+ Use buildme to build. It requires cmake to be installed and an arm cross compiler. It is set up to use this one:
+ https://github.com/raspberrypi/tools/tree/master/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian
++
++To build support for the Wayland winsys in EGL, execute the buildme script like this:
++
++$ BUILD_WAYLAND=1 ./buildme.
+Index: git/buildme
+===================================================================
+--- git.orig/buildme
++++ git/buildme
+@@ -1,10 +1,14 @@
+ #!/bin/bash
+ 
++if [ -n "$BUILD_WAYLAND" ]; then
++       WAYLAND_VARS="-DBUILD_WAYLAND=TRUE"
++fi
++
+ if [ "armv6l" = `arch` ] || [ "armv7l" = `arch` ]; then
+ 	# Native compile on the Raspberry Pi
+ 	mkdir -p build/raspberry/release
+ 	pushd build/raspberry/release
+-	cmake -DCMAKE_BUILD_TYPE=Release ../../..
++	cmake -DCMAKE_BUILD_TYPE=Release $WAYLAND_VARS ../../..
+ 	if [ "armv6l" = `arch` ]; then
+ 		make
+ 	else
+@@ -17,9 +21,15 @@ if [ "armv6l" = `arch` ] || [ "armv7l" =
+ 	fi
+ else
+ 	# Cross compile on a more capable machine
++
++	if [ -n "$BUILD_WAYLAND" ]; then
++		# Use wayland-scanner from the build platform
++		WAYLAND_VARS+=" -DWAYLAND_SCANNER_EXECUTABLE:FILEPATH=/usr/bin/wayland-scanner"
++	fi
++
+ 	mkdir -p build/arm-linux/release/
+ 	pushd build/arm-linux/release/
+-	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=Release ../../..
++	cmake -DCMAKE_TOOLCHAIN_FILE=../../../makefiles/cmake/toolchains/arm-linux-gnueabihf.cmake -DCMAKE_BUILD_TYPE=Release $WAYLAND_VARS ../../..
+ 	make -j 6
+ 
+ 	if [ "$1" != "" ]; then
+Index: git/interface/khronos/CMakeLists.txt
+===================================================================
+--- git.orig/interface/khronos/CMakeLists.txt
++++ git/interface/khronos/CMakeLists.txt
+@@ -6,6 +6,12 @@
+ # have quite a few circular dependencies, and so the only way
+ # to make it work seems to be to have everything static.
+ 
++if (BUILD_WAYLAND)
++include_directories(
++   ${WAYLAND_SERVER_INCLUDE_DIRS}
++)
++endif ()
++
+ set(EGL_SOURCE
+    egl/egl_client_config.c
+    egl/egl_client_context.c
+@@ -55,19 +61,63 @@ set(CLIENT_SOURCE
+    common/khrn_int_hash_asm.s
+    common/khrn_client_cache.c)
+ 
++set(EGL_LIBS
++   khrn_client
++   vchiq_arm
++   vcos
++   bcm_host
++   -lm)
++
++if (BUILD_WAYLAND)
++   set(EGL_SOURCE
++      ${EGL_SOURCE}
++      ext/egl_wayland.c
++      common/linux/khrn_wayland.c)
++
++   set(EGL_LIBS
++      ${EGL_LIBS}
++      wayland-client
++      wayland-server)
++
++   set(WAYLAND_EGL_SOURCE
++      wayland-egl/wayland-egl.c)
++
++   wayland_add_protocol_server(
++       EGL_SOURCE
++       ../../interface/wayland/dispmanx.xml
++       dispmanx
++   )
++
++   wayland_add_protocol_client(
++       EGL_SOURCE
++       ../../interface/wayland/dispmanx.xml
++       dispmanx
++   )
++
++   add_library(wayland-egl ${SHARED} ${WAYLAND_EGL_SOURCE})
++   install(TARGETS wayland-egl DESTINATION lib)
++
++   configure_file ("wayland-egl/wayland-egl.pc.in" "wayland-egl/wayland-egl.pc" @ONLY)
++   install (FILES "${CMAKE_CURRENT_BINARY_DIR}/wayland-egl/wayland-egl.pc"
++            DESTINATION lib/pkgconfig)
++endif ()
++
+ add_library(EGL ${SHARED} ${EGL_SOURCE})
+ add_library(GLESv2 ${SHARED} ${GLES_SOURCE})
+ add_library(OpenVG ${SHARED} ${VG_SOURCE})
+ add_library(WFC ${SHARED} ${WFC_SOURCE})
+ add_library(khrn_client ${CLIENT_SOURCE})
+ 
++set_target_properties(EGL PROPERTIES SOVERSION 1 VERSION 1.0.0)
++set_target_properties(GLESv2 PROPERTIES SOVERSION 2 VERSION 2.0.0)
++
+ # TODO do we need EGL_static and GLESv2_static now that khrn_static exists?
+ add_library(EGL_static STATIC ${EGL_SOURCE})
+ add_library(GLESv2_static STATIC ${GLES_SOURCE})
+ add_library(khrn_static STATIC
+    ${EGL_SOURCE} ${GLES_SOURCE} ${VG_SOURCE} ${WFC_SOURCE} ${CLIENT_SOURCE})
+ 
+-target_link_libraries(EGL khrn_client vchiq_arm vcos bcm_host -lm)
++target_link_libraries(EGL ${EGL_LIBS})
+ target_link_libraries(GLESv2 EGL khrn_client vcos)
+ target_link_libraries(WFC EGL)
+ target_link_libraries(OpenVG EGL)
+Index: git/interface/khronos/common/khrn_client.c
+===================================================================
+--- git.orig/interface/khronos/common/khrn_client.c
++++ git/interface/khronos/common/khrn_client.c
+@@ -54,6 +54,10 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #include "applications/vmcs/khronos/khronos_server.h"
+ #endif
+ 
++#ifdef BUILD_WAYLAND
++#include "interface/khronos/common/linux/khrn_wayland.h"
++#endif
++
+ VCOS_LOG_CAT_T khrn_client_log = VCOS_LOG_INIT("khrn_client", VCOS_LOG_WARN);
+ 
+ /*
+@@ -142,6 +146,10 @@ void client_try_unload_server(CLIENT_PRO
+ bool client_process_state_init(CLIENT_PROCESS_STATE_T *process)
+ {
+    if (!process->inited) {
++#ifdef BUILD_WAYLAND
++      process->wl_global = NULL;
++#endif
++
+       if (!khrn_pointer_map_init(&process->contexts, 64))
+          return false;
+ 
+@@ -194,6 +202,13 @@ bool client_process_state_init(CLIENT_PR
+       }
+ #endif
+ 
++#ifdef BUILD_WAYLAND
++      struct wl_display *wl_display = khrn_platform_get_wl_display();
++      if (wl_display)
++         if (!init_process_wayland(process))
++            return false;
++#endif
++
+       process->inited = true;
+    }
+ 
+Index: git/interface/khronos/common/khrn_client.h
+===================================================================
+--- git.orig/interface/khronos/common/khrn_client.h
++++ git/interface/khronos/common/khrn_client.h
+@@ -310,6 +310,16 @@ struct CLIENT_PROCESS_STATE {
+ #ifdef RPC_LIBRARY
+    KHRONOS_SERVER_CONNECTION_T khrn_connection;
+ #endif
++
++#ifdef BUILD_WAYLAND
++   /* Client-side Wayland state */
++   struct wl_registry *wl_registry;
++   struct wl_dispmanx *wl_dispmanx;
++   struct wl_event_queue *wl_queue;
++
++   /* Compositor-side Wayland state */
++   struct wl_global *wl_global;
++#endif
+ };
+ 
+ extern bool client_process_state_init(CLIENT_PROCESS_STATE_T *process);
+Index: git/interface/khronos/common/khrn_client_mangle.h
+===================================================================
+--- git.orig/interface/khronos/common/khrn_client_mangle.h
++++ git/interface/khronos/common/khrn_client_mangle.h
+@@ -83,6 +83,9 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #define eglReleaseGlobalImageBRCM mangled_eglReleaseGlobalImageBRCM
+ #define eglInitGlobalImageBRCM mangled_eglInitGlobalImageBRCM
+ #define eglTermGlobalImageBRCM mangled_eglTermGlobalImageBRCM
++#define eglBindWaylandDisplayWL mangled_eglBindWaylandDisplayWL
++#define eglUnbindWaylandDisplayWL mangled_eglUnbindWaylandDisplayWL
++#define eglQueryWaylandBufferWL mangled_eglQueryWaylandBufferWL
+ 
+ /* OpenGL ES 1.1 and 2.0 functions */
+ 
+Index: git/interface/khronos/common/khrn_client_platform.h
+===================================================================
+--- git.orig/interface/khronos/common/khrn_client_platform.h
++++ git/interface/khronos/common/khrn_client_platform.h
+@@ -48,6 +48,10 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #include "interface/khronos/common/vcos/khrn_client_platform_filler_vcos.h"
+ #endif
+ 
++#ifdef BUILD_WAYLAND
++#include <wayland-client.h>
++#endif
++
+ #ifdef __cplusplus
+ extern "C" {
+ #endif
+@@ -328,4 +332,8 @@ typedef struct
+ 
+ void *platform_wfc_bounce_thread(void *param);
+ 
++#ifdef BUILD_WAYLAND
++struct wl_display *khrn_platform_get_wl_display();
++#endif
++
+ #endif // KHRN_CLIENT_PLATFORM_H
+Index: git/interface/khronos/common/khrn_client_unmangle.h
+===================================================================
+--- git.orig/interface/khronos/common/khrn_client_unmangle.h
++++ git/interface/khronos/common/khrn_client_unmangle.h
+@@ -83,6 +83,9 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #undef eglReleaseGlobalImageBRCM
+ #undef eglInitGlobalImageBRCM
+ #undef eglTermGlobalImageBRCM
++#undef eglBindWaylandDisplayWL
++#undef eglUnbindWaylandDisplayWL
++#undef eglQueryWaylandBufferWL
+ 
+ /* OpenGL ES 1.1 and 2.0 functions */
+ 
+Index: git/interface/khronos/common/linux/khrn_client_platform_linux.c
+===================================================================
+--- git.orig/interface/khronos/common/linux/khrn_client_platform_linux.c
++++ git/interface/khronos/common/linux/khrn_client_platform_linux.c
+@@ -37,6 +37,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #include "X11/Xlib.h"
+ #endif
+ 
++#ifdef BUILD_WAYLAND
++#include <wayland-client.h>
++#include "interface/khronos/wayland-egl/wayland-egl-priv.h"
++#endif
++
+ extern VCOS_LOG_CAT_T khrn_client_log;
+ 
+ extern void vc_vchi_khronos_init();
+@@ -460,14 +465,37 @@ EGLDisplay khrn_platform_set_display_id(
+ 	   return EGL_NO_DISPLAY;
+ }
+ #else
++
++#ifdef BUILD_WAYLAND
++static struct wl_display *hacky_display = NULL;
++#endif
++
+ EGLDisplay khrn_platform_set_display_id(EGLNativeDisplayType display_id)
+ {
+    if (display_id == EGL_DEFAULT_DISPLAY)
+       return (EGLDisplay)1;
+-   else
+-      return EGL_NO_DISPLAY;
++   else {
++#ifdef BUILD_WAYLAND
++      void *first_pointer = *(void **) display_id;
++
++      /* wl_display is a wl_proxy, which is a wl_object.
++       * wl_object's first element points to the interfacetype. */
++      if (first_pointer == &wl_display_interface) {
++         hacky_display = (struct wl_display*)display_id;
++         return (EGLDisplay)1;
++      } else
++#endif
++         return EGL_NO_DISPLAY;
++   }
++}
++
++#ifdef BUILD_WAYLAND
++struct wl_display *khrn_platform_get_wl_display()
++{
++   return hacky_display;
+ }
+ #endif
++#endif
+ 
+ #ifdef WANT_X
+ static void dump_hierarchy(Window w, Window thisw, Window look, int level)
+@@ -801,22 +829,81 @@ static EGL_DISPMANX_WINDOW_T *check_defa
+ void platform_get_dimensions(EGLDisplay dpy, EGLNativeWindowType win,
+       uint32_t *width, uint32_t *height, uint32_t *swapchain_count)
+ {
+-   EGL_DISPMANX_WINDOW_T *dwin = check_default(win);
+-   vcos_assert(dwin);
+-   vcos_assert(dwin->width < 1<<16); // sanity check
+-   vcos_assert(dwin->height < 1<<16); // sanity check
+-   *width = dwin->width;
+-   *height = dwin->height;
+-   *swapchain_count = 0;
++#ifdef BUILD_WAYLAND
++   if(khrn_platform_get_wl_display()) {
++      struct wl_egl_window *wl_egl_window = (struct wl_egl_window*)win;
++      *width = wl_egl_window->width;
++      *height = wl_egl_window->height;
++      /* This seems to be used for sync'ing with the VC on buffer creation, but
++         we are managing them on the CPU side */
++      *swapchain_count = 1;
++   } else {
++#endif
++      EGL_DISPMANX_WINDOW_T *dwin = check_default(win);
++      vcos_assert(dwin);
++      vcos_assert(dwin->width < 1<<16); // sanity check
++      vcos_assert(dwin->height < 1<<16); // sanity check
++      *width = dwin->width;
++      *height = dwin->height;
++      *swapchain_count = 0;
++#ifdef BUILD_WAYLAND
++   }
++#endif
++}
++
++#ifdef BUILD_WAYLAND
++static DISPMANX_ELEMENT_HANDLE_T create_dummy_element()
++{
++   DISPMANX_DISPLAY_HANDLE_T display = vc_dispmanx_display_open(0);
++   DISPMANX_UPDATE_HANDLE_T update = vc_dispmanx_update_start(0);
++   DISPMANX_ELEMENT_HANDLE_T element;
++   VC_DISPMANX_ALPHA_T alpha = {DISPMANX_FLAGS_ALPHA_FIXED_ALL_PIXELS, 255, 0};
++   VC_RECT_T src_rect;
++   VC_RECT_T dst_rect;
++
++   src_rect.x = 0;
++   src_rect.y = 0;
++   src_rect.width = 1 << 16;
++   src_rect.height = 1 << 16;
++
++   dst_rect.x = 0;
++   dst_rect.y = 0;
++   dst_rect.width = 1;
++   dst_rect.height = 1;
++
++   element = vc_dispmanx_element_add(update, display, 0/*layer*/, &dst_rect,
++                                     0/*src*/, &src_rect,
++                                     DISPMANX_PROTECTION_NONE, &alpha,
++                                     0/*clamp*/, 0/*transform*/);
++
++   vc_dispmanx_update_submit_sync(update);
++
++   vc_dispmanx_display_close(display);
++
++   return element;
+ }
++#endif
+ 
+ uint32_t platform_get_handle(EGLDisplay dpy, EGLNativeWindowType win)
+ {
+-   EGL_DISPMANX_WINDOW_T *dwin = check_default(win);
+-   vcos_assert(dwin);
+-   vcos_assert(dwin->width < 1<<16); // sanity check
+-   vcos_assert(dwin->height < 1<<16); // sanity check
+-   return dwin->element;
++#ifdef BUILD_WAYLAND
++   if(khrn_platform_get_wl_display()) {
++      struct wl_egl_window *wl_egl_window = (struct wl_egl_window*)win;
++
++      if (wl_egl_window->dummy_element == PLATFORM_WIN_NONE)
++         wl_egl_window->dummy_element = create_dummy_element();
++
++      return wl_egl_window->dummy_element;
++   } else {
++#endif
++      EGL_DISPMANX_WINDOW_T *dwin = check_default(win);
++      vcos_assert(dwin);
++      vcos_assert(dwin->width < 1<<16); // sanity check
++      vcos_assert(dwin->height < 1<<16); // sanity check
++      return dwin->element;
++#ifdef BUILD_WAYLAND
++   }
++#endif
+ }
+ 
+ #endif
+Index: git/interface/khronos/common/linux/khrn_wayland.c
+===================================================================
+--- /dev/null
++++ git/interface/khronos/common/linux/khrn_wayland.c
+@@ -0,0 +1,215 @@
++/*
++Copyright (c) 2013, Raspberry Pi Foundation
++All rights reserved.
++
++Redistribution and use in source and binary forms, with or without
++modification, are permitted provided that the following conditions are met:
++    * Redistributions of source code must retain the above copyright
++      notice, this list of conditions and the following disclaimer.
++    * Redistributions in binary form must reproduce the above copyright
++      notice, this list of conditions and the following disclaimer in the
++      documentation and/or other materials provided with the distribution.
++    * Neither the name of the copyright holder nor the
++      names of its contributors may be used to endorse or promote products
++      derived from this software without specific prior written permission.
++
++THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
++ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
++WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
++DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
++DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
++(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
++LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
++ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
++(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
++SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
++*/
++
++#define VCOS_LOG_CATEGORY (&khrn_client_log)
++
++#include "interface/khronos/common/linux/khrn_wayland.h"
++#include "interface/khronos/wayland-dispmanx-client-protocol.h"
++#include "interface/khronos/wayland-egl/wayland-egl-priv.h"
++
++extern VCOS_LOG_CAT_T khrn_client_log;
++
++static void handle_dispmanx_format(void *data, struct wl_dispmanx *dispmanx,
++                                   uint32_t format)
++{
++}
++
++static void handle_dispmanx_allocated(void *data, struct wl_dispmanx *dispmanx,
++                                      struct wl_buffer *wl_buffer,
++                                      uint32_t resource_handle)
++{
++    struct wl_dispmanx_client_buffer *buffer = wl_buffer_get_user_data(wl_buffer);
++
++    buffer->pending_allocation = 0;
++    buffer->resource = resource_handle;
++}
++
++static const struct wl_dispmanx_listener dispmanx_listener = {
++    handle_dispmanx_format,
++    handle_dispmanx_allocated,
++};
++
++static void
++sync_callback(void *data, struct wl_callback *callback, uint32_t serial)
++{
++   int *done = data;
++
++   *done = 1;
++
++   wl_callback_destroy(callback);
++}
++
++static const struct wl_callback_listener sync_listener = {
++   sync_callback
++};
++
++static int
++roundtrip(CLIENT_PROCESS_STATE_T *process)
++{
++   struct wl_display *wl_display = khrn_platform_get_wl_display();
++   struct wl_callback *callback;
++   int done = 0, ret = 0;
++
++   callback = wl_display_sync(wl_display);
++   wl_callback_add_listener(callback, &sync_listener, &done);
++   wl_proxy_set_queue((struct wl_proxy *) callback, process->wl_queue);
++   while (ret != -1 && !done)
++      ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
++
++   if (!done)
++      wl_callback_destroy(callback);
++
++   return ret;
++}
++
++int do_wl_roundtrip()
++{
++   CLIENT_PROCESS_STATE_T *process = CLIENT_GET_PROCESS_STATE();
++   return roundtrip(process);
++}
++
++static void
++registry_handle_global(void *data, struct wl_registry *registry,
++                       uint32_t name, const char *interface, uint32_t version)
++{
++   struct wl_display *wl_display = khrn_platform_get_wl_display();
++   CLIENT_PROCESS_STATE_T *process = (CLIENT_PROCESS_STATE_T *)data;
++
++   if (strcmp(interface, "wl_dispmanx") == 0) {
++      process->wl_dispmanx = wl_registry_bind(registry, name,
++	       &wl_dispmanx_interface, 1);
++
++      wl_proxy_set_queue((struct wl_proxy *) process->wl_dispmanx,
++                         process->wl_queue);
++      wl_dispmanx_add_listener(process->wl_dispmanx, &dispmanx_listener, wl_display);
++      roundtrip(process);
++   }
++}
++
++static void
++registry_handle_global_remove(void *data, struct wl_registry *registry,
++                              uint32_t name)
++{
++}
++
++static const struct wl_registry_listener registry_listener = {
++	registry_handle_global,
++	registry_handle_global_remove
++};
++
++int
++init_process_wayland(CLIENT_PROCESS_STATE_T *process)
++{
++    struct wl_display *wl_display = khrn_platform_get_wl_display();
++
++    process->wl_queue = wl_display_create_queue(wl_display);
++    if (!process->wl_queue) {
++        vcos_log_error("wl_display_create_queue failed\n");
++        return false;
++    }
++    wl_display_dispatch_pending(wl_display);
++
++    process->wl_registry = wl_display_get_registry(wl_display);
++    if (!process->wl_registry) {
++        vcos_log_error("wl_display_get_registry failed\n");
++        return false;
++    }
++
++    wl_proxy_set_queue((struct wl_proxy *) process->wl_registry,
++    process->wl_queue);
++
++    wl_registry_add_listener(process->wl_registry, &registry_listener, process);
++
++    if (roundtrip(process) < 0 || process->wl_dispmanx == NULL) {
++        vcos_log_error("failed to get wl_dispmanx\n");
++        return false;
++    }
++
++    return true;
++}
++
++#ifndef ALIGN_UP
++#define ALIGN_UP(x,y)  ((x + (y)-1) & ~((y)-1))
++#endif
++
++static void handle_buffer_release(void *data, struct wl_buffer *buffer_wl)
++{
++   struct wl_dispmanx_client_buffer *wl_dispmanx_client_buffer = data;
++   wl_dispmanx_client_buffer->in_use = 0;
++}
++
++static const struct wl_buffer_listener buffer_listener = {
++   handle_buffer_release
++};
++
++struct wl_dispmanx_client_buffer *
++allocate_wl_buffer(struct wl_egl_window *window, KHRN_IMAGE_FORMAT_T color)
++{
++   CLIENT_PROCESS_STATE_T *process = CLIENT_GET_PROCESS_STATE();
++   struct wl_dispmanx_client_buffer *wl_dispmanx_client_buffer;
++   struct wl_buffer *wl_buffer;
++   uint32_t stride = ALIGN_UP(window->width * 4, 16);
++   uint32_t buffer_height = ALIGN_UP(window->height, 16);
++   enum wl_dispmanx_format color_format;
++   int ret = 0;
++
++   switch (color) {
++   case ABGR_8888:
++      color_format = WL_DISPMANX_FORMAT_ABGR8888;
++      break;
++   case XBGR_8888:
++      color_format = WL_DISPMANX_FORMAT_XBGR8888;
++      break;
++   case RGB_565:
++      color_format = WL_DISPMANX_FORMAT_RGB565;
++      break;
++   default:
++      vcos_log_error("unknown KHRN_IMAGE_FORMAT_T 0x%x\n", color);
++      return NULL;
++   }
++
++   wl_buffer = wl_dispmanx_create_buffer(process->wl_dispmanx, window->width,
++                                         window->height, stride, buffer_height,
++                                         color_format);
++   if (wl_buffer == NULL)
++      return NULL;
++
++   wl_dispmanx_client_buffer = calloc(1, sizeof(struct wl_dispmanx_client_buffer));
++   wl_dispmanx_client_buffer->wl_buffer = wl_buffer;
++   wl_dispmanx_client_buffer->in_use = 0;
++   wl_dispmanx_client_buffer->pending_allocation = 1;
++   wl_dispmanx_client_buffer->width = window->width;
++   wl_dispmanx_client_buffer->height = window->height;
++
++   wl_proxy_set_queue((struct wl_proxy *) wl_buffer, process->wl_queue);
++   wl_buffer_add_listener(wl_buffer, &buffer_listener, wl_dispmanx_client_buffer);
++
++   while (ret != -1 && wl_dispmanx_client_buffer->pending_allocation)
++      ret = do_wl_roundtrip();
++
++   return wl_dispmanx_client_buffer;
++}
+Index: git/interface/vmcs_host/vc_vchi_dispmanx.h
+===================================================================
+--- git.orig/interface/vmcs_host/vc_vchi_dispmanx.h
++++ git/interface/vmcs_host/vc_vchi_dispmanx.h
+@@ -66,4 +66,19 @@ typedef struct {
+ #define ELEMENT_CHANGE_MASK_RESOURCE  (1<<4)
+ #define ELEMENT_CHANGE_TRANSFORM      (1<<5)
+ 
++#ifdef BUILD_WAYLAND
++/* XXX: This should be in a private header that can be included from EGL and vc_* */
++#include <wayland-server.h>
++#include "interface/vmcs_host/wayland-dispmanx-server-protocol.h"
++struct wl_dispmanx_server_buffer {
++	struct wl_resource *resource;
++	struct wl_dispmanx *dispmanx;
++	enum wl_dispmanx_format format;
++	DISPMANX_RESOURCE_HANDLE_T handle;
++	int32_t width;
++	int32_t height;
++	int in_use;
++};
++#endif
++
+ #endif
+Index: git/interface/khronos/common/linux/khrn_wayland.h
+===================================================================
+--- /dev/null
++++ git/interface/khronos/common/linux/khrn_wayland.h
+@@ -0,0 +1,33 @@
++/*
++Copyright (c) 2013, Raspberry Pi Foundation
++All rights reserved.
++
++Redistribution and use in source and binary forms, with or without
++modification, are permitted provided that the following conditions are met:
++    * Redistributions of source code must retain the above copyright
++      notice, this list of conditions and the following disclaimer.
++    * Redistributions in binary form must reproduce the above copyright
++      notice, this list of conditions and the following disclaimer in the
++      documentation and/or other materials provided with the distribution.
++    * Neither the name of the copyright holder nor the
++      names of its contributors may be used to endorse or promote products
++      derived from this software without specific prior written permission.
++
++THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
++ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
++WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
++DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
++DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
++(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
++LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
++ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
++(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
++SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
++*/
++
++#include "interface/khronos/common/khrn_client.h"
++
++int init_process_wayland(CLIENT_PROCESS_STATE_T *process);
++int do_wl_roundtrip();
++
++struct wl_dispmanx_client_buffer *allocate_wl_buffer(struct wl_egl_window *window, KHRN_IMAGE_FORMAT_T color);
+Index: git/interface/khronos/egl/egl_client.c
+===================================================================
+--- git.orig/interface/khronos/egl/egl_client.c
++++ git/interface/khronos/egl/egl_client.c
+@@ -153,6 +153,10 @@ by an attribute value"
+ #include <stdlib.h>
+ #include <string.h>
+ 
++#ifdef BUILD_WAYLAND
++#include "interface/khronos/wayland-egl/wayland-egl-priv.h"
++#include "interface/khronos/common/linux/khrn_wayland.h"
++#endif
+ 
+ #include "interface/khronos/egl/egl_client_cr.c"
+ 
+@@ -162,17 +166,6 @@ static void egl_current_release(CLIENT_P
+ void egl_gl_flush_callback(bool wait);
+ void egl_vg_flush_callback(bool wait);
+ 
+-#include "interface/vmcs_host/vc_dispmanx_types.h"
+-/**HACKHACK - give us the ability to inject a DispmanX 
+- * resource handle into the CreateWindowSurface and 
+- * SwapBuffers calls */ 
+-static DISPMANX_RESOURCE_HANDLE_T next_resource_handle;
+-
+-EGLAPI EGLBoolean EGLAPIENTRY eglSetNextResourceHandle(DISPMANX_RESOURCE_HANDLE_T handle)
+-{
+-   next_resource_handle = handle;
+-}
+-
+ /*
+ TODO: do an RPC call to make sure the Khronos vll is loaded (and that it stays loaded until eglTerminate)
+ Also affects global image (and possibly others?)
+@@ -451,6 +444,9 @@ EGLAPI const char EGLAPIENTRY * eglQuery
+             "EGL_KHR_fence_sync "
+ #endif
+ #endif
++#if EGL_WL_bind_wayland_display
++            "EGL_WL_bind_wayland_display "
++#endif
+             ;
+          break;
+       case EGL_VENDOR:
+@@ -655,8 +651,7 @@ EGLAPI EGLSurface EGLAPIENTRY eglCreateW
+                                 false,
+                                 EGL_NO_TEXTURE,
+                                 EGL_NO_TEXTURE,
+-                                0, 0,
+-                                next_resource_handle);
++                                0, 0);
+ 
+                if (surface) {
+                   if (khrn_pointer_map_insert(&process->surfaces, process->next_surface, surface)) {
+@@ -901,7 +896,7 @@ EGLAPI EGLSurface EGLAPIENTRY eglCreateP
+                              mipmap_texture,
+                              texture_format,
+                              texture_target,
+-                             0, 0, 0);
++                             0, 0);
+ 
+             if (surface) {
+                if (khrn_pointer_map_insert(&process->surfaces, process->next_surface, surface)) {
+@@ -1043,7 +1038,7 @@ EGLAPI EGLSurface EGLAPIENTRY eglCreateP
+                                    false,
+                                    EGL_NO_TEXTURE,
+                                    EGL_NO_TEXTURE,
+-                                   pixmap, ((server_handle[0] == 0) && (server_handle[1] == (uint32_t)(-1))) ? NULL : server_handle, 0);
++                                   pixmap, ((server_handle[0] == 0) && (server_handle[1] == (uint32_t)(-1))) ? NULL : server_handle);
+ 
+                      if (surface) {
+                         if (khrn_pointer_map_insert(&process->surfaces, process->next_surface, surface)) {
+@@ -2245,6 +2240,9 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuf
+    CLIENT_THREAD_STATE_T *thread;
+    CLIENT_PROCESS_STATE_T *process;
+    EGLBoolean result;
++#ifdef BUILD_WAYLAND
++   struct wl_display *wl_display = khrn_platform_get_wl_display();
++#endif
+ 
+    vcos_log_trace("eglSwapBuffers start. dpy=%d. surf=%d.", (int)dpy, (int)surf);
+ 
+@@ -2315,18 +2313,58 @@ EGLAPI EGLBoolean EGLAPIENTRY eglSwapBuf
+ 
+                vcos_log_trace("eglSwapBuffers server call");
+ 
+-               if (next_resource_handle)
+-               RPC_CALL7(eglIntSwapBuffers_impl,
+-                     thread,
+-                     EGLINTSWAPBUFFERS_ID_V2,
+-                     RPC_UINT(surface->serverbuffer),
+-                     RPC_UINT(surface->width),
+-                     RPC_UINT(surface->height),
+-                     RPC_UINT(surface->internal_handle),
+-                     RPC_UINT(surface->swap_behavior == EGL_BUFFER_PRESERVED ? 1 : 0),
+-                     RPC_UINT(khrn_platform_get_window_position(surface->win)),
+-                     RPC_INT(next_resource_handle));
+-               else
++#ifdef BUILD_WAYLAND
++               if (wl_display) {
++                  struct wl_egl_window *wl_egl_window = surface->wl_egl_window;
++                  struct wl_dispmanx_client_buffer *buffer_temp;
++                  uint32_t configid;
++                  KHRN_IMAGE_FORMAT_T color;
++                  int ret = 0;
++
++                  buffer_temp = surface->front_wl_buffer;
++                  surface->front_wl_buffer = surface->back_wl_buffer;
++                  surface->back_wl_buffer = buffer_temp;
++
++                  configid = egl_config_to_id(surface->config);
++                  color = egl_config_get_color_format(configid);
++
++                  if (surface->back_wl_buffer == NULL)
++                     surface->back_wl_buffer = allocate_wl_buffer(wl_egl_window, color);
++                  else if (surface->back_wl_buffer->width != width ||
++                           surface->back_wl_buffer->height != height) {
++
++                     struct wl_dispmanx_client_buffer *buffer;
++
++                     wl_buffer_destroy(surface->back_wl_buffer->wl_buffer);
++                     free(surface->back_wl_buffer);
++
++                     buffer = allocate_wl_buffer(wl_egl_window, color);
++                     surface->back_wl_buffer = buffer;
++                  }
++
++                  RPC_CALL7(eglIntSwapBuffers_impl,
++                        thread,
++                        EGLINTSWAPBUFFERS_ID_V2,
++                        RPC_UINT(surface->serverbuffer),
++                        RPC_UINT(surface->width),
++                        RPC_UINT(surface->height),
++                        RPC_UINT(surface->internal_handle),
++                        RPC_UINT(surface->swap_behavior == EGL_BUFFER_PRESERVED ? 1 : 0),
++                        RPC_UINT(khrn_platform_get_window_position(surface->win)),
++                        RPC_INT(surface->back_wl_buffer->resource));
++
++                  surface->front_wl_buffer->in_use = 1;
++                  wl_surface_attach(wl_egl_window->wl_surface,
++                                    surface->front_wl_buffer->wl_buffer,
++                                    0, 0);
++                  wl_surface_damage(wl_egl_window->wl_surface, 0, 0,
++                                    surface->width, surface->height);
++                  wl_surface_commit(wl_egl_window->wl_surface);
++
++                  while(ret != -1 && surface->back_wl_buffer->in_use)
++                     ret = wl_display_dispatch_queue(wl_display, process->wl_queue);
++               } else
++#endif
+                RPC_CALL6(eglIntSwapBuffers_impl,
+                      thread,
+                      EGLINTSWAPBUFFERS_ID,
+Index: git/interface/khronos/egl/egl_client_get_proc.c
+===================================================================
+--- git.orig/interface/khronos/egl/egl_client_get_proc.c
++++ git/interface/khronos/egl/egl_client_get_proc.c
+@@ -254,6 +254,17 @@ EGLAPI void EGLAPIENTRY (* eglGetProcAdd
+       return (void(*)(void))eglQueryGlobalImageBRCM;
+ #endif
+ 
++#ifdef BUILD_WAYLAND
++#if EGL_WL_bind_wayland_display
++   if (!strcmp(procname, "eglBindWaylandDisplayWL"))
++      return (void(*)(void))eglBindWaylandDisplayWL;
++   if (!strcmp(procname, "eglUnbindWaylandDisplayWL"))
++      return (void(*)(void))eglUnbindWaylandDisplayWL;
++   if (!strcmp(procname, "eglQueryWaylandBufferWL"))
++      return (void(*)(void))eglQueryWaylandBufferWL;
++#endif
++#endif
++
+    return (void(*)(void)) NULL;
+ }
+ 
+Index: git/interface/khronos/egl/egl_client_surface.c
+===================================================================
+--- git.orig/interface/khronos/egl/egl_client_surface.c
++++ git/interface/khronos/egl/egl_client_surface.c
+@@ -46,6 +46,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #include "interface/khronos/egl/egl_int_impl.h"
+ #endif
+ 
++#ifdef BUILD_WAYLAND
++#include "interface/khronos/wayland-egl/wayland-egl-priv.h"
++#include "interface/khronos/common/linux/khrn_wayland.h"
++#endif
++
+ #include <stdlib.h>
+ 
+ 
+@@ -314,8 +319,7 @@ EGL_SURFACE_T *egl_surface_create(
+    EGLenum texture_format,
+    EGLenum texture_target,
+    EGLNativePixmapType pixmap,
+-   const uint32_t *pixmap_server_handle,
+-   DISPMANX_RESOURCE_HANDLE_T next_resource_handle)
++   const uint32_t *pixmap_server_handle)
+ {
+    KHRN_IMAGE_FORMAT_T color;
+    KHRN_IMAGE_FORMAT_T depth;
+@@ -326,6 +330,10 @@ EGL_SURFACE_T *egl_surface_create(
+    EGLint   config_depth_bits;
+    EGLint   config_stencil_bits;
+    CLIENT_THREAD_STATE_T *thread = CLIENT_GET_THREAD_STATE();
++#ifdef BUILD_WAYLAND
++   struct wl_display *wl_display = khrn_platform_get_wl_display();
++   DISPMANX_RESOURCE_HANDLE_T resource;
++#endif
+ 
+    EGL_SURFACE_T *surface = egl_surface_pool_alloc();
+ 
+@@ -390,6 +398,18 @@ EGL_SURFACE_T *egl_surface_create(
+ 
+    vcos_assert(color != IMAGE_FORMAT_INVALID);
+ 
++#ifdef BUILD_WAYLAND
++   if (type == WINDOW && wl_display) {
++      surface->wl_egl_window = (struct wl_egl_window*)win;
++      surface->back_wl_buffer = allocate_wl_buffer(
++            surface->wl_egl_window, color);
++      resource = surface->back_wl_buffer->resource;
++   } else {
++      surface->wl_egl_window = NULL;
++      resource = DISPMANX_NO_HANDLE;
++   }
++#endif
++
+ #ifdef KHRONOS_EGL_PLATFORM_OPENWFC
+    // Create stream for this window
+    if(type != PBUFFER)
+@@ -474,7 +494,8 @@ EGL_SURFACE_T *egl_surface_create(
+ #endif
+          uint32_t results[3];
+ 
+-         if (next_resource_handle)
++#ifdef BUILD_WAYLAND
++         if (resource != DISPMANX_NO_HANDLE)
+          RPC_CALL16_OUT_CTRL(eglIntCreateSurface_impl,
+                              thread,
+                              EGLINTCREATESURFACE_ID_V2,
+@@ -492,9 +513,10 @@ EGL_SURFACE_T *egl_surface_create(
+                              RPC_UINT(config_stencil_bits),
+                              RPC_UINT(sem_name),
+                              RPC_UINT(type),
+-                             RPC_INT(next_resource_handle),
++                             RPC_INT(resource),
+                              results);
+          else
++#endif
+          RPC_CALL15_OUT_CTRL(eglIntCreateSurface_impl,
+                              thread,
+                              EGLINTCREATESURFACE_ID,
+@@ -663,6 +685,18 @@ void egl_surface_free(EGL_SURFACE_T *sur
+    if( surface->type == WINDOW ) {
+       vcos_log_trace("egl_surface_free: calling platform_destroy_winhandle...");
+       platform_destroy_winhandle( surface->win, surface->internal_handle );
++
++#ifdef BUILD_WAYLAND
++      if (surface->back_wl_buffer) {
++         wl_buffer_destroy(surface->back_wl_buffer->wl_buffer);
++         free(surface->back_wl_buffer);
++      }
++
++      if (surface->front_wl_buffer) {
++         wl_buffer_destroy(surface->front_wl_buffer->wl_buffer);
++         free(surface->front_wl_buffer);
++      }
++#endif
+    }
+    /* return value ignored -- read performed to ensure blocking. we want this to
+     * block so clients can safely destroy the surface's window as soon as the
+Index: git/interface/khronos/egl/egl_client_surface.h
+===================================================================
+--- git.orig/interface/khronos/egl/egl_client_surface.h
++++ git/interface/khronos/egl/egl_client_surface.h
+@@ -288,6 +288,41 @@ typedef struct {
+       type == PIXMAP
+    */
+    bool server_owned;
++
++#ifdef BUILD_WAYLAND
++   /*
++      wl_egl_window
++
++      Validity:
++      type == WINDOW
++
++      Invariant:
++      wayland EGL window
++   */
++   struct wl_egl_window *wl_egl_window;
++
++   /*
++      front_wl_buffer
++
++      Validity:
++      type == WINDOW
++
++      Invariant:
++      client-side information about the wl_buffer in the front
++   */
++   struct wl_dispmanx_client_buffer *front_wl_buffer;
++
++   /*
++      back_wl_buffer
++
++      Validity:
++      type == WINDOW
++
++      Invariant:
++      client-side information about the wl_buffer in the back
++   */
++   struct wl_dispmanx_client_buffer *back_wl_buffer;
++#endif
+ } EGL_SURFACE_T;
+ 
+ extern bool egl_surface_check_attribs(
+@@ -322,8 +357,7 @@ extern EGL_SURFACE_T *egl_surface_create
+    EGLenum texture_format,
+    EGLenum texture_target,
+    EGLNativePixmapType pixmap,
+-   const uint32_t *pixmap_server_handle,
+-   DISPMANX_RESOURCE_HANDLE_T next_resource_handle);
++   const uint32_t *pixmap_server_handle);
+ extern EGL_SURFACE_T *egl_surface_from_vg_image(
+    VGImage vg_handle,
+    EGLSurface name,
+Index: git/interface/khronos/egl/egl_int_impl.h
+===================================================================
+--- git.orig/interface/khronos/egl/egl_int_impl.h
++++ git/interface/khronos/egl/egl_int_impl.h
+@@ -57,7 +57,7 @@ FN(int, eglIntCreateSurface_impl, (
+    uint32_t sem,
+    uint32_t type,
+    uint32_t *results,
+-   DISPMANX_RESOURCE_HANDLE_T next_resource_handle))
++   DISPMANX_RESOURCE_HANDLE_T resource_handle))
+ 
+ FN(int, eglIntCreatePbufferFromVGImage_impl, (
+    VGImage vg_handle,
+Index: git/interface/khronos/ext/egl_wayland.c
+===================================================================
+--- /dev/null
++++ git/interface/khronos/ext/egl_wayland.c
+@@ -0,0 +1,246 @@
++/*
++Copyright (c) 2013, Raspberry Pi Foundation
++All rights reserved.
++
++Redistribution and use in source and binary forms, with or without
++modification, are permitted provided that the following conditions are met:
++    * Redistributions of source code must retain the above copyright
++      notice, this list of conditions and the following disclaimer.
++    * Redistributions in binary form must reproduce the above copyright
++      notice, this list of conditions and the following disclaimer in the
++      documentation and/or other materials provided with the distribution.
++    * Neither the name of the copyright holder nor the
++      names of its contributors may be used to endorse or promote products
++      derived from this software without specific prior written permission.
++
++THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
++ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
++WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
++DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
++DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
++(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
++LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
++ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
++(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
++SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
++*/
++
++#include "interface/khronos/common/khrn_client_mangle.h"
++#include "interface/khronos/common/khrn_client_rpc.h"
++
++#include "interface/khronos/ext/egl_khr_sync_client.h"
++#include "interface/khronos/include/EGL/egl.h"
++#include "interface/khronos/include/EGL/eglext.h"
++
++#include "interface/vmcs_host/vc_vchi_dispmanx.h"
++
++#include <wayland-server.h>
++#include "interface/khronos/wayland-dispmanx-server-protocol.h"
++
++static void
++destroy_buffer(struct wl_resource *resource)
++{
++   struct wl_dispmanx_server_buffer *buffer = wl_resource_get_user_data(resource);
++
++   if(!buffer->in_use)
++      vc_dispmanx_resource_delete(buffer->handle);
++
++   free(buffer);
++}
++
++static void
++buffer_destroy(struct wl_client *client, struct wl_resource *resource)
++{
++   wl_resource_destroy(resource);
++}
++
++static const struct wl_buffer_interface dispmanx_buffer_interface = {
++   buffer_destroy
++};
++
++static VC_IMAGE_TYPE_T
++get_vc_format(enum wl_dispmanx_format format)
++{
++	/* XXX: The app is likely to have been premultiplying in its shaders,
++	 * but the VC scanout hardware on the RPi cannot mix premultiplied alpha
++	 * channel with the element's alpha.
++	 */
++	switch (format) {
++	case WL_DISPMANX_FORMAT_ABGR8888:
++		return VC_IMAGE_RGBA32;
++	case WL_DISPMANX_FORMAT_XBGR8888:
++		return VC_IMAGE_BGRX8888;
++	case WL_DISPMANX_FORMAT_RGB565:
++		return VC_IMAGE_RGB565;
++	default:
++		/* invalid format */
++		return VC_IMAGE_MIN;
++	}
++}
++
++static void
++dispmanx_create_buffer(struct wl_client *client, struct wl_resource *resource,
++                       uint32_t id, int32_t width, int32_t height,
++                       uint32_t stride, uint32_t buffer_height, uint32_t format)
++{
++   struct wl_dispmanx_server_buffer *buffer;
++   VC_IMAGE_TYPE_T vc_format = get_vc_format(format);
++   uint32_t dummy;
++
++   if(vc_format == VC_IMAGE_MIN) {
++      wl_resource_post_error(resource,
++                             WL_DISPMANX_ERROR_INVALID_FORMAT,
++                             "invalid format");
++      return;
++   }
++
++   buffer = calloc(1, sizeof *buffer);
++   if (buffer == NULL) {
++      wl_resource_post_no_memory(resource);
++      return;
++   }
++
++   buffer->handle = vc_dispmanx_resource_create(vc_format,
++                                                width | (stride << 16),
++                                                height | (buffer_height << 16),
++                                                &dummy);
++   if(buffer->handle == DISPMANX_NO_HANDLE) {
++      wl_resource_post_error(resource,
++                             WL_DISPMANX_ERROR_ALLOC_FAILED,
++                             "allocation failed");
++      free(buffer);
++      return;
++   }
++
++   buffer->width = width;
++   buffer->height = height;
++   buffer->format = format;
++
++   buffer->resource = wl_resource_create(resource->client, &wl_buffer_interface,
++                                         1, id);
++   if (!buffer->resource) {
++      wl_resource_post_no_memory(resource);
++      vc_dispmanx_resource_delete(buffer->handle);
++      free(buffer);
++      return;
++   }
++
++   wl_resource_set_implementation(buffer->resource,
++				       (void (**)(void)) &dispmanx_buffer_interface,
++				       buffer, destroy_buffer);
++
++   wl_dispmanx_send_buffer_allocated(resource, buffer->resource,
++                                     buffer->handle);
++}
++
++static const struct wl_dispmanx_interface dispmanx_interface = {
++   dispmanx_create_buffer,
++};
++
++static void
++bind_dispmanx(struct wl_client *client, void *data, uint32_t version, uint32_t id)
++{
++   struct wl_resource *resource;
++
++   resource = wl_resource_create(client, &wl_dispmanx_interface, 1, id);
++   wl_resource_set_implementation(resource, &dispmanx_interface, NULL, NULL);
++
++   wl_resource_post_event(resource, WL_DISPMANX_FORMAT,
++                          WL_DISPMANX_FORMAT_ARGB8888);
++
++   wl_resource_post_event(resource, WL_DISPMANX_FORMAT,
++                          WL_DISPMANX_FORMAT_XRGB8888);
++
++   wl_resource_post_event(resource, WL_DISPMANX_FORMAT,
++                          WL_DISPMANX_FORMAT_ABGR8888);
++
++   wl_resource_post_event(resource, WL_DISPMANX_FORMAT,
++                          WL_DISPMANX_FORMAT_XBGR8888);
++
++   wl_resource_post_event(resource, WL_DISPMANX_FORMAT,
++                          WL_DISPMANX_FORMAT_RGB565);
++}
++
++EGLBoolean EGLAPIENTRY
++eglBindWaylandDisplayWL(EGLDisplay dpy, struct wl_display *display)
++{
++   CLIENT_THREAD_STATE_T *thread;
++   CLIENT_PROCESS_STATE_T *process;
++
++   if (!CLIENT_LOCK_AND_GET_STATES(dpy, &thread, &process))
++      return EGL_FALSE;
++
++   if (process->wl_global != NULL)
++      goto error;
++
++   process->wl_global = wl_global_create(display, &wl_dispmanx_interface, 1,
++                                         NULL, bind_dispmanx);
++   if (process->wl_global == NULL)
++      goto error;
++
++   return EGL_TRUE;
++
++error:
++   CLIENT_UNLOCK();
++   return EGL_FALSE;
++}
++
++EGLBoolean EGLAPIENTRY
++eglUnbindWaylandDisplayWL(EGLDisplay dpy, struct wl_display *display)
++{
++   CLIENT_THREAD_STATE_T *thread;
++   CLIENT_PROCESS_STATE_T *process;
++
++   if (!CLIENT_LOCK_AND_GET_STATES(dpy, &thread, &process))
++      return EGL_FALSE;
++
++   wl_global_destroy(process->wl_global);
++   process->wl_global = NULL;
++
++   CLIENT_UNLOCK();
++
++   return EGL_TRUE;
++}
++
++static int
++get_egl_format(enum wl_dispmanx_format format)
++{
++	switch (format) {
++	case WL_DISPMANX_FORMAT_ABGR8888:
++		return EGL_TEXTURE_RGBA;
++	case WL_DISPMANX_FORMAT_XBGR8888:
++		return EGL_TEXTURE_RGB;
++	case WL_DISPMANX_FORMAT_RGB565:
++		return EGL_TEXTURE_RGB;
++	default:
++		/* invalid format */
++		return EGL_NO_TEXTURE;
++	}
++}
++
++EGLBoolean EGLAPIENTRY
++eglQueryWaylandBufferWL(EGLDisplay dpy, struct wl_resource *_buffer,
++         EGLint attribute, EGLint *value)
++{
++   struct wl_dispmanx_server_buffer *buffer = wl_resource_get_user_data(_buffer);
++
++   if (wl_resource_instance_of(_buffer, &wl_dispmanx_interface,
++                               &dispmanx_buffer_interface))
++      return EGL_FALSE;
++
++   switch (attribute) {
++   case EGL_TEXTURE_FORMAT:
++      *value = get_egl_format(buffer->format);
++      if (*value == EGL_NO_TEXTURE)
++         return EGL_FALSE;
++      return EGL_TRUE;
++   case EGL_WIDTH:
++      *value = buffer->width;
++      return EGL_TRUE;
++   case EGL_HEIGHT:
++      *value = buffer->height;
++      return EGL_TRUE;
++   }
++
++   return EGL_FALSE;
++}
+Index: git/interface/khronos/include/EGL/eglext.h
+===================================================================
+--- git.orig/interface/khronos/include/EGL/eglext.h
++++ git/interface/khronos/include/EGL/eglext.h
+@@ -191,6 +191,29 @@ typedef EGLBoolean (EGLAPIENTRYP PFNEGLG
+ #endif
+ 
+ 
++#ifndef EGL_WL_bind_wayland_display
++#define EGL_WL_bind_wayland_display 1
++
++#define EGL_WAYLAND_BUFFER_WL		0x31D5 /* eglCreateImageKHR target */
++#define EGL_WAYLAND_PLANE_WL		0x31D6 /* eglCreateImageKHR target */
++#define EGL_TEXTURE_Y_U_V_WL            0x31D7
++#define EGL_TEXTURE_Y_UV_WL             0x31D8
++#define EGL_TEXTURE_Y_XUXV_WL           0x31D9
++
++struct wl_display;
++struct wl_resource;
++#ifdef EGL_EGLEXT_PROTOTYPES
++EGLAPI EGLBoolean EGLAPIENTRY eglBindWaylandDisplayWL(EGLDisplay dpy, struct wl_display *display);
++EGLAPI EGLBoolean EGLAPIENTRY eglUnbindWaylandDisplayWL(EGLDisplay dpy, struct wl_display *display);
++EGLAPI EGLBoolean EGLAPIENTRY eglQueryWaylandBufferWL(EGLDisplay dpy, struct wl_resource *buffer, EGLint attribute, EGLint *value);
++#endif
++typedef EGLBoolean (EGLAPIENTRYP PFNEGLBINDWAYLANDDISPLAYWL) (EGLDisplay dpy, struct wl_display *display);
++typedef EGLBoolean (EGLAPIENTRYP PFNEGLUNBINDWAYLANDDISPLAYWL) (EGLDisplay dpy, struct wl_display *display);
++typedef EGLBoolean (EGLAPIENTRYP PFNEGLQUERYWAYLANDBUFFERWL) (EGLDisplay dpy, struct wl_resource *buffer, EGLint attribute, EGLint *value);
++
++#endif
++
++
+ #ifdef __cplusplus
+ }
+ #endif
+Index: git/interface/khronos/wayland-egl/wayland-egl-priv.h
+===================================================================
+--- /dev/null
++++ git/interface/khronos/wayland-egl/wayland-egl-priv.h
+@@ -0,0 +1,53 @@
++/* Copied from Mesa */
++
++#ifndef _WAYLAND_EGL_PRIV_H
++#define _WAYLAND_EGL_PRIV_H
++
++#ifdef  __cplusplus
++extern "C" {
++#endif
++
++/* GCC visibility */
++#if defined(__GNUC__) && __GNUC__ >= 4
++#define WL_EGL_EXPORT __attribute__ ((visibility("default")))
++#else
++#define WL_EGL_EXPORT
++#endif
++
++#include "interface/vmcs_host/vc_dispmanx.h"
++#include "interface/khronos/egl/egl_client_surface.h"
++
++#include <wayland-client.h>
++
++struct wl_dispmanx_client_buffer {
++	struct wl_buffer *wl_buffer;
++	DISPMANX_RESOURCE_HANDLE_T resource;
++
++	int pending_allocation;
++	int in_use;
++	int width;
++	int height;
++};
++
++struct wl_egl_window {
++	struct wl_surface *wl_surface;
++
++	int width;
++	int height;
++	int dx;
++	int dy;
++
++	int attached_width;
++	int attached_height;
++
++	/* XXX: The VC side seems to expect a valid element handle to be
++	   passed to eglIntCreateSurface_impl and/or eglIntSwapBuffers_impl,
++	   even for host-managed surfaces. */
++	DISPMANX_ELEMENT_HANDLE_T dummy_element;
++};
++
++#ifdef  __cplusplus
++}
++#endif
++
++#endif
+Index: git/interface/khronos/wayland-egl/wayland-egl.c
+===================================================================
+--- /dev/null
++++ git/interface/khronos/wayland-egl/wayland-egl.c
+@@ -0,0 +1,59 @@
++/* Copied from Mesa */
++
++#include <stdlib.h>
++
++#include <wayland-client.h>
++#include <wayland-egl.h>
++#include "wayland-egl-priv.h"
++
++WL_EGL_EXPORT void
++wl_egl_window_resize(struct wl_egl_window *egl_window,
++		     int width, int height,
++		     int dx, int dy)
++{
++        if (egl_window->width == width &&
++	    egl_window->height == height &&
++	    egl_window->dx == dx &&
++	    egl_window->dy == dy)
++		return;
++
++	egl_window->width = width;
++	egl_window->height = height;
++	egl_window->dx = dx;
++	egl_window->dy = dy;
++}
++
++WL_EGL_EXPORT struct wl_egl_window *
++wl_egl_window_create(struct wl_surface *surface,
++		     int width, int height)
++{
++	struct wl_egl_window *egl_window;
++
++	egl_window = calloc(1, sizeof *egl_window);
++	if (!egl_window)
++		return NULL;
++
++	egl_window->wl_surface = surface;
++	wl_egl_window_resize(egl_window, width, height, 0, 0);
++	egl_window->attached_width  = 0;
++	egl_window->attached_height = 0;
++	egl_window->dummy_element = PLATFORM_WIN_NONE;
++
++	return egl_window;
++}
++
++WL_EGL_EXPORT void
++wl_egl_window_destroy(struct wl_egl_window *egl_window)
++{
++	free(egl_window);
++}
++
++WL_EGL_EXPORT void
++wl_egl_window_get_attached_size(struct wl_egl_window *egl_window,
++				int *width, int *height)
++{
++	if (width)
++		*width = egl_window->attached_width;
++	if (height)
++		*height = egl_window->attached_height;
++}
+Index: git/interface/khronos/wayland-egl/wayland-egl.pc.in
+===================================================================
+--- /dev/null
++++ git/interface/khronos/wayland-egl/wayland-egl.pc.in
+@@ -0,0 +1,10 @@
++prefix=@CMAKE_INSTALL_PREFIX@
++exec_prefix=${prefix}
++libdir=${exec_prefix}/lib
++includedir=${prefix}/include
++
++Name: wayland-egl
++Description: VideoCore wayland-egl library
++Version: @PROJECT_APIVER@
++Libs: -L${libdir} -lwayland-egl
++Cflags: -I${includedir}
+Index: git/interface/vmcs_host/CMakeLists.txt
+===================================================================
+--- git.orig/interface/vmcs_host/CMakeLists.txt
++++ git/interface/vmcs_host/CMakeLists.txt
+@@ -9,13 +9,24 @@ add_definitions(-fno-strict-aliasing)
+ 
+ include_directories(${VMCS_TARGET}/vcfiled)
+ 
+-add_library(vchostif
+-            ${VMCS_TARGET}/vcfilesys.c ${VMCS_TARGET}/vcmisc.c
+-            vc_vchi_gencmd.c vc_vchi_filesys.c
+-            vc_vchi_tvservice.c vc_vchi_cecservice.c
+-            vc_vchi_dispmanx.c vc_service_common.c)
++set(VCHOSTIF_SOURCE
++    ${VMCS_TARGET}/vcfilesys.c ${VMCS_TARGET}/vcmisc.c
++    vc_vchi_gencmd.c vc_vchi_filesys.c
++    vc_vchi_tvservice.c vc_vchi_cecservice.c
++    vc_vchi_dispmanx.c vc_service_common.c)
+ #            ${VMCS_TARGET}/vmcs_main.c
+ #  vc_vchi_haud.c
++
++if (BUILD_WAYLAND)
++wayland_add_protocol_server(
++    VCHOSTIF_SOURCE
++    ../../interface/wayland/dispmanx.xml
++    dispmanx
++)
++endif ()
++
++add_library(vchostif ${VCHOSTIF_SOURCE})
++
+ #add_library(bufman            vc_vchi_bufman.c            )
+ 
+ # OpenMAX/IL component service
+Index: git/interface/vmcs_host/vc_dispmanx.h
+===================================================================
+--- git.orig/interface/vmcs_host/vc_dispmanx.h
++++ git/interface/vmcs_host/vc_dispmanx.h
+@@ -39,6 +39,11 @@ SOFTWARE, EVEN IF ADVISED OF THE POSSIBI
+ #ifdef __cplusplus
+ extern "C" {
+ #endif
++
++#ifdef BUILD_WAYLAND
++struct wl_resource;
++#endif
++
+ // Same function as above, to aid migration of code.
+ VCHPRE_ int VCHPOST_ vc_dispman_init( void );
+ // Stop the service from being used
+@@ -135,6 +140,11 @@ VCHPRE_ int VCHPOST_ vc_dispmanx_resourc
+ // Start triggering callbacks synced to vsync
+ VCHPRE_ int VCHPOST_ vc_dispmanx_vsync_callback( DISPMANX_DISPLAY_HANDLE_T display, DISPMANX_CALLBACK_FUNC_T cb_func, void *cb_arg );
+ 
++#ifdef BUILD_WAYLAND
++VCHPRE_ DISPMANX_RESOURCE_HANDLE_T VCHPOST_ vc_dispmanx_get_handle_from_wl_buffer( struct wl_resource *_buffer );
++
++VCHPRE_ void VCHPOST_ vc_dispmanx_set_wl_buffer_in_use( struct wl_resource *_buffer, int in_use );
++#endif
+ #ifdef __cplusplus
+ }
+ #endif
+Index: git/interface/vmcs_host/vc_vchi_dispmanx.c
+===================================================================
+--- git.orig/interface/vmcs_host/vc_vchi_dispmanx.c
++++ git/interface/vmcs_host/vc_vchi_dispmanx.c
+@@ -1308,3 +1308,45 @@ static void *dispmanx_notify_func( void
+    }
+    return 0;
+ }
++
++
++#ifdef BUILD_WAYLAND
++/***********************************************************
++ * Name: vc_dispmanx_get_handle_from_wl_buffer
++ *
++ * Arguments:
++ *       struct wl_resource *_buffer
++ *
++ * Description: Return the handle of the resource associated to this Wayland buffer
++ *
++ * Returns: A resource handle
++ *
++ ***********************************************************/
++VCHPRE_ DISPMANX_RESOURCE_HANDLE_T VCHPOST_ vc_dispmanx_get_handle_from_wl_buffer( struct wl_resource *_buffer )
++{
++	struct wl_dispmanx_server_buffer *buffer = (struct wl_dispmanx_server_buffer*)_buffer->data;
++	if (!buffer)
++		return DISPMANX_NO_HANDLE;
++
++	return buffer->handle;
++}
++
++/***********************************************************
++ * Name: vc_dispmanx_set_wl_buffer_in_use
++ *
++ * Arguments:
++ *       struct wl_resource *_buffer
++ *       int in_use
++ *
++ * Description: Mark this Wayland buffer as being in use by the compositor
++ *
++ ***********************************************************/
++VCHPRE_ void VCHPOST_ vc_dispmanx_set_wl_buffer_in_use( struct wl_resource *_buffer, int in_use )
++{
++	struct wl_dispmanx_server_buffer *buffer = (struct wl_dispmanx_server_buffer*)_buffer->data;
++	if (!buffer)
++		return;
++
++	buffer->in_use = in_use;
++}
++#endif
+Index: git/interface/wayland/dispmanx.xml
+===================================================================
+--- /dev/null
++++ git/interface/wayland/dispmanx.xml
+@@ -0,0 +1,123 @@
++<?xml version="1.0" encoding="UTF-8"?>
++<protocol name="dispmanx">
++
++  <copyright>
++    Copyright Â© 2008-2011 Kristian HÃ¸gsberg
++    Copyright Â© 2010-2011 Intel Corporation
++    Copyright Â© 2013 Raspberry Pi Foundation
++
++    Permission to use, copy, modify, distribute, and sell this
++    software and its documentation for any purpose is hereby granted
++    without fee, provided that\n the above copyright notice appear in
++    all copies and that both that copyright notice and this permission
++    notice appear in supporting documentation, and that the name of
++    the copyright holders not be used in advertising or publicity
++    pertaining to distribution of the software without specific,
++    written prior permission.  The copyright holders make no
++    representations about the suitability of this software for any
++    purpose.  It is provided "as is" without express or implied
++    warranty.
++
++    THE COPYRIGHT HOLDERS DISCLAIM ALL WARRANTIES WITH REGARD TO THIS
++    SOFTWARE, INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY AND
++    FITNESS, IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY
++    SPECIAL, INDIRECT OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
++    WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN
++    AN ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION,
++    ARISING OUT OF OR IN CONNECTION WITH THE USE OR PERFORMANCE OF
++    THIS SOFTWARE.
++  </copyright>
++
++  <!-- DispManX support. This object is created by the server and published
++       using the display's global event. -->
++  <interface name="wl_dispmanx" version="1">
++    <enum name="error">
++      <entry name="alloc_failed" value="0"/>
++      <entry name="invalid_format" value="1"/>
++    </enum>
++
++    <enum name="format">
++      <!-- The pixel format codes match the #defines in drm_fourcc.h.
++           The formats actually supported by the compositor will be
++           reported by the format event. -->
++      <entry name="c8" value="0x20203843"/>
++      <entry name="rgb332" value="0x38424752"/>
++      <entry name="bgr233" value="0x38524742"/>
++      <entry name="xrgb4444" value="0x32315258"/>
++      <entry name="xbgr4444" value="0x32314258"/>
++      <entry name="rgbx4444" value="0x32315852"/>
++      <entry name="bgrx4444" value="0x32315842"/>
++      <entry name="argb4444" value="0x32315241"/>
++      <entry name="abgr4444" value="0x32314241"/>
++      <entry name="rgba4444" value="0x32314152"/>
++      <entry name="bgra4444" value="0x32314142"/>
++      <entry name="xrgb1555" value="0x35315258"/>
++      <entry name="xbgr1555" value="0x35314258"/>
++      <entry name="rgbx5551" value="0x35315852"/>
++      <entry name="bgrx5551" value="0x35315842"/>
++      <entry name="argb1555" value="0x35315241"/>
++      <entry name="abgr1555" value="0x35314241"/>
++      <entry name="rgba5551" value="0x35314152"/>
++      <entry name="bgra5551" value="0x35314142"/>
++      <entry name="rgb565" value="0x36314752"/>
++      <entry name="bgr565" value="0x36314742"/>
++      <entry name="rgb888" value="0x34324752"/>
++      <entry name="bgr888" value="0x34324742"/>
++      <entry name="xrgb8888" value="0x34325258"/>
++      <entry name="xbgr8888" value="0x34324258"/>
++      <entry name="rgbx8888" value="0x34325852"/>
++      <entry name="bgrx8888" value="0x34325842"/>
++      <entry name="argb8888" value="0x34325241"/>
++      <entry name="abgr8888" value="0x34324241"/>
++      <entry name="rgba8888" value="0x34324152"/>
++      <entry name="bgra8888" value="0x34324142"/>
++      <entry name="xrgb2101010" value="0x30335258"/>
++      <entry name="xbgr2101010" value="0x30334258"/>
++      <entry name="rgbx1010102" value="0x30335852"/>
++      <entry name="bgrx1010102" value="0x30335842"/>
++      <entry name="argb2101010" value="0x30335241"/>
++      <entry name="abgr2101010" value="0x30334241"/>
++      <entry name="rgba1010102" value="0x30334152"/>
++      <entry name="bgra1010102" value="0x30334142"/>
++      <entry name="yuyv" value="0x56595559"/>
++      <entry name="yvyu" value="0x55595659"/>
++      <entry name="uyvy" value="0x59565955"/>
++      <entry name="vyuy" value="0x59555956"/>
++      <entry name="ayuv" value="0x56555941"/>
++      <entry name="nv12" value="0x3231564e"/>
++      <entry name="nv21" value="0x3132564e"/>
++      <entry name="nv16" value="0x3631564e"/>
++      <entry name="nv61" value="0x3136564e"/>
++      <entry name="yuv410" value="0x39565559"/>
++      <entry name="yvu410" value="0x39555659"/>
++      <entry name="yuv411" value="0x31315559"/>
++      <entry name="yvu411" value="0x31315659"/>
++      <entry name="yuv420" value="0x32315559"/>
++      <entry name="yvu420" value="0x32315659"/>
++      <entry name="yuv422" value="0x36315559"/>
++      <entry name="yvu422" value="0x36315659"/>
++      <entry name="yuv444" value="0x34325559"/>
++      <entry name="yvu444" value="0x34325659"/>
++    </enum>
++
++    <event name="format">
++      <arg name="format" type="uint"/>
++    </event>
++
++    <!-- Create a wayland buffer for the DispManX resource. -->
++    <request name="create_buffer">
++      <arg name="id" type="new_id" interface="wl_buffer"/>
++      <arg name="width" type="int"/>
++      <arg name="height" type="int"/>
++      <arg name="stride" type="uint"/>
++      <arg name="buffer_height" type="uint"/>
++      <arg name="format" type="uint"/>
++    </request>
++
++    <event name="buffer_allocated">
++      <arg name="buffer" type="object" interface="wl_buffer"/>
++      <arg name="handle" type="uint"/>
++    </event>
++  </interface>
++
++</protocol>
+Index: git/makefiles/cmake/Wayland.cmake
+===================================================================
+--- /dev/null
++++ git/makefiles/cmake/Wayland.cmake
+@@ -0,0 +1,72 @@
++#=============================================================================
++# Copyright (C) 2012-2013 Pier Luigi Fiorini <pierluigi.fiorini@gmail.com>
++# All rights reserved.
++#
++# Redistribution and use in source and binary forms, with or without
++# modification, are permitted provided that the following conditions
++# are met:
++#
++# * Redistributions of source code must retain the above copyright
++#   notice, this list of conditions and the following disclaimer.
++#
++# * Redistributions in binary form must reproduce the above copyright
++#   notice, this list of conditions and the following disclaimer in the
++#   documentation and/or other materials provided with the distribution.
++#
++# * Neither the name of Pier Luigi Fiorini nor the names of his
++#   contributors may be used to endorse or promote products derived
++#   from this software without specific prior written permission.
++#
++# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
++# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
++# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
++# A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
++# HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
++# SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
++# LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
++# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
++# THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
++# (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
++# OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
++#=============================================================================
++
++find_program(WAYLAND_SCANNER_EXECUTABLE NAMES wayland-scanner)
++
++# wayland_add_protocol_client(outfiles inputfile basename)
++function(WAYLAND_ADD_PROTOCOL_CLIENT _sources _protocol _basename)
++    if(NOT WAYLAND_SCANNER_EXECUTABLE)
++        message(FATAL "The wayland-scanner executable has nto been found on your system. You must install it.")
++    endif()
++
++    get_filename_component(_infile ${_protocol} ABSOLUTE)
++    set(_client_header "${CMAKE_CURRENT_BINARY_DIR}/wayland-${_basename}-client-protocol.h")
++    set(_code "${CMAKE_CURRENT_BINARY_DIR}/wayland-${_basename}-protocol.c")
++
++    add_custom_command(OUTPUT "${_client_header}"
++        COMMAND ${WAYLAND_SCANNER_EXECUTABLE} client-header < ${_infile} > ${_client_header}
++        DEPENDS ${_infile} VERBATIM)
++
++    add_custom_command(OUTPUT "${_code}"
++        COMMAND ${WAYLAND_SCANNER_EXECUTABLE} code < ${_infile} > ${_code}
++        DEPENDS ${_infile} VERBATIM)
++
++    list(APPEND ${_sources} "${_client_header}" "${_code}")
++    set(${_sources} ${${_sources}} PARENT_SCOPE)
++endfunction()
++
++# wayland_add_protocol_server(outfiles inputfile basename)
++function(WAYLAND_ADD_PROTOCOL_SERVER _sources _protocol _basename)
++    if(NOT WAYLAND_SCANNER_EXECUTABLE)
++        message(FATAL "The wayland-scanner executable has nto been found on your system. You must install it.")
++    endif()
++
++    get_filename_component(_infile ${_protocol} ABSOLUTE)
++    set(_server_header "${CMAKE_CURRENT_BINARY_DIR}/wayland-${_basename}-server-protocol.h")
++
++    add_custom_command(OUTPUT "${_server_header}"
++        COMMAND ${WAYLAND_SCANNER_EXECUTABLE} server-header < ${_infile} > ${_server_header}
++        DEPENDS ${_infile} VERBATIM)
++
++    list(APPEND ${_sources} "${_server_header}")
++    set(${_sources} ${${_sources}} PARENT_SCOPE)
++endfunction()
diff --git a/recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch b/recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch
new file mode 100644
index 0000000..9191ac6
--- /dev/null
+++ b/recipes-graphics/userland/userland/0006-wayland-Add-Wayland-example.patch
@@ -0,0 +1,864 @@
+From 69289713594a707f0475a6a37d0b34380f0634f3 Mon Sep 17 00:00:00 2001
+From: Tomeu Vizoso <tomeu.vizoso@collabora.com>
+Date: Tue, 1 Oct 2013 13:19:20 +0200
+Subject: [PATCH 3/3] wayland: Add Wayland example
+
+---
+Upstream-Status: Submitted
+
+ .../linux/apps/hello_pi/CMakeLists.txt             |   1 +
+ .../apps/hello_pi/hello_wayland/CMakeLists.txt     |   8 +
+ .../apps/hello_pi/hello_wayland/Djenne_128_128.raw |   3 +
+ .../apps/hello_pi/hello_wayland/Gaudi_128_128.raw  | Bin 0 -> 49152 bytes
+ .../apps/hello_pi/hello_wayland/Lucca_128_128.raw  | Bin 0 -> 49152 bytes
+ .../linux/apps/hello_pi/hello_wayland/Makefile     |   5 +
+ .../hello_wayland/cube_texture_and_coords.h        | 100 ++++
+ .../linux/apps/hello_pi/hello_wayland/triangle.c   | 666 +++++++++++++++++++++
+ host_applications/linux/apps/hello_pi/rebuild.sh   |   2 +
+ 9 files changed, 785 insertions(+)
+ create mode 100644 host_applications/linux/apps/hello_pi/hello_wayland/CMakeLists.txt
+ create mode 100755 host_applications/linux/apps/hello_pi/hello_wayland/Djenne_128_128.raw
+ create mode 100755 host_applications/linux/apps/hello_pi/hello_wayland/Gaudi_128_128.raw
+ create mode 100755 host_applications/linux/apps/hello_pi/hello_wayland/Lucca_128_128.raw
+ create mode 100755 host_applications/linux/apps/hello_pi/hello_wayland/Makefile
+ create mode 100755 host_applications/linux/apps/hello_pi/hello_wayland/cube_texture_and_coords.h
+ create mode 100755 host_applications/linux/apps/hello_pi/hello_wayland/triangle.c
+
+Index: git/host_applications/linux/apps/hello_pi/CMakeLists.txt
+===================================================================
+--- git.orig/host_applications/linux/apps/hello_pi/CMakeLists.txt
++++ git/host_applications/linux/apps/hello_pi/CMakeLists.txt
+@@ -21,6 +21,7 @@ add_subdirectory(hello_encode)
+ add_subdirectory(hello_jpeg)
+ add_subdirectory(hello_videocube)
+ add_subdirectory(hello_teapot)
++add_subdirectory(hello_wayland)
+ 
+ if(BUILD_FONT)
+ set(VGFONT_SRCS libs/vgfont/font.c libs/vgfont/vgft.c libs/vgfont/graphics.c)
+Index: git/host_applications/linux/apps/hello_pi/hello_wayland/CMakeLists.txt
+===================================================================
+--- /dev/null
++++ git/host_applications/linux/apps/hello_pi/hello_wayland/CMakeLists.txt
+@@ -0,0 +1,8 @@
++set(EXEC hello_wayland.bin)
++set(SRCS triangle.c)
++
++add_executable(${EXEC} ${SRCS})
++target_link_libraries(${EXEC} ${HELLO_PI_LIBS} -lwayland-client -lwayland-egl)
++
++install(TARGETS ${EXEC}
++        RUNTIME DESTINATION bin)
+Index: git/host_applications/linux/apps/hello_pi/hello_wayland/Djenne_128_128.raw
+===================================================================
+--- /dev/null
++++ git/host_applications/linux/apps/hello_pi/hello_wayland/Djenne_128_128.raw
+@@ -0,0 +1,3 @@
++öÖ¿÷×À÷×ÀøØÁúÚÃúÚÃúÚÃúÚÃùÙÂùÙÂùÙÂùÙÂùÙÂùÙÂùÙÂùÙÂûÙÂûÙÂûÙÂûÙÂúØÁúØÁúØÁúØÁøÖ¿ù×Àù×ÀúØÁúØÁúØÁúØÁúØÁù×Àù×Àù×Àù×À÷Õ¾øÖ¿ù×Àù×À÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾öÔ½öÔ½÷Õ¾÷Õ¾÷Õ¾÷Õ¾õÓ¼öÔ½öÔ½õÓ¼ôÒ»ôÒ»ôÒ»ôÒ»õĞºõĞºõĞºõĞºõĞºõĞºõĞºõĞºôĞ¸õÑ¹ôĞ¸ôĞ¸òÎ¶óÏ·óÏ·õÑ¹ñÍµóÏ·óÏ·ñÍµòÎ¶ñÍµñÍµñÍµñÍµñÍµğÌ´ğÌ´ğÌ´ïË³ïË³ïË³îË±îË±îË±îË±îË±îË±îË±íÊ°ïÊ°ïÊ°îÉ¯îÉ¯íÈ®ìÇ­ìÇ­ìÇ­ëÆ¬ëÆ¬ëÆ¬êÅ«êÅ«êÅ«ëÆ¬ëÆ¬èÃ©éÄªéÄªèÃ©èÃ©èÃ©èÃ©çÂ¨ùÙÂúÚÃúÚÃûÛÄüÜÅüÜÅüÜÅüÜÅûÛÄûÛÄûÛÄûÛÄûÛÄûÛÄûÛÄûÛÄıÛÄıÛÄıÛÄıÛÄıÛÄıÛÄıÛÄıÛÄüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃûÙÂûÙÂûÙÂûÙÂúØÁúØÁúØÁúØÁù×Àù×Àù×Àù×ÀúØÁù×Àù×Àù×ÀøÖ¿øÖ¿øÖ¿øÖ¿øÖ¿øÖ¿øÖ¿÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾øÓ½øÓ½øÓ½øÓ½÷Ò¼÷Ò¼÷Ò¼÷Ò¼öÓº÷Ó»÷Ó»÷Ó»õÑ¹öÒºöÒºöÒºôĞ¸õÑ¹õÑ¹ôĞ¸ôĞ¸ôĞ¸ôĞ¸óÏ·ôĞ¸óÏ·óÏ·óÏ·óÏ·òÎ¶òÎ¶òÎ¶ñÎ´ñÎ´ñÎ´ñÎ´ñÎ´ñÎ´ğÍ³ğÍ³òÍ³ñÌ²ñÌ²ñÌ²ğË±ïÊ°ïÊ°ïÊ°îÉ¯îÉ¯îÉ¯íÈ®îÉ¯íÈ®íÈ®ìÇ­ìÇ­íÈ®íÈ®ìÇ­ëÆ¬ëÆ¬êÅ«êÅ«ûÛÄûÛÄûÛÄûÛÄüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅûÛÄûÛÄûÛÄûÛÄıÛÄıÛÄüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃûÙÂúØÁûÙÂûÙÂûÙÂûÙÂúØÁúØÁúØÁúØÁúØÁúØÁù×Àù×ÀøÖ¿øÖ¿øÖ¿øÖ¿øÖ¿ù×ÀøÖ¿÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾øÓ½øÓ½øÓ½øÓ½÷Ò¼÷Ò¼÷Ò¼÷Ò¼öÓº÷Ó»÷Ó»öÒºöÒºöÒºöÒºöÒºõÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹ôĞ¸ôĞ¸ôĞ¸ôĞ¸ôĞ¸óÏ·óÏ·óÏ·òÎ¶òÎ¶ñÎ´ñÎ´ñÎ´ñÎ´ñÎ´ñÎ´ğÍ³ğÍ³òÍ³ñÌ²ñÌ²ñÌ²ğË±ğË±ïÊ°ïÊ°ïÊ°îÉ¯îÉ¯îÉ¯ïÊ°îÉ¯íÈ®ìÇ­ìÇ­ìÇ­ìÇ­ëÆ¬ìÇ­ëÆ¬ëÆ¬ëÆ¬üÜÅüÜÅüÜÅüÜÅıİÆıİÆıİÆıİÆüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅûÛÄûÛÄûÛÄûÛÄüÚÃıÛÄıÛÄıÛÄüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃüÚÃûÙÂûÙÂûÙÂûÙÂûÙÂûÙÂûÙÂûÙÂúØÁúØÁúØÁúØÁúØÁúØÁù×Àù×Àù×Àù×Àù×Àù×ÀøÖ¿ù×ÀøÖ¿÷Õ¾÷Õ¾÷Õ¾÷Õ¾÷Õ¾øÓ½øÓ½øÓ½øÓ½÷Ò¼÷Ò¼÷Ò¼÷Ò¼öÓº÷Ó»÷Ó»öÒº÷Ó»÷Ó»öÒºöÒºõÑ¹ôĞ¸õÑ¹öÒºõÑ¹õÑ¹ôĞ¸ôĞ¸õÑ¹ôĞ¸ôĞ¸ôĞ¸óÏ·óÏ·óÏ·òÎ¶òÏµòÏµòÏµòÏµñÎ´ñÎ´ğÍ³ğÍ³òÍ³ñÌ²ñÌ²ñÌ²ğË±ğË±ğË±ïÊ°ïÊ°ïÊ°îÉ¯îÉ¯îÉ¯îÉ¯îÉ¯îÉ¯íÈ®îÉ¯îÉ¯íÈ®ìÇ­ìÇ­ëÆ¬ëÆ¬ûÜÅüİÆıŞÇüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÛÄûÛÄûÛÄûÛÄüÜÅüÜÅüÜÅüÜÅûÛÄûÛÄûÛÄûÛÄúÚÃûÛÄûÛÄûÛÄıÛÃıÛÃıÛÃıÛÃüÚÂüÚÂüÚÂüÚÂüÚÃüÚÃüÚÃüÚÃûÙÂûÙÂûÙÂûÙÂúØÀúØÀúØÀù×¿÷Õ½úØÀúØÀù×¿øÖ¿øÖ¿øÖ¿÷Õ¾÷Õ¾ù×Àù×ÀöÔ¾øÔ¼øÔ¼ùÕ½úÖ¾õÑ¹øÔ¼ùÕ½ùÕ½÷Ó»÷Ó»÷Ó»÷Ó»öÒºöÒºöÒºöÒºõÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹ôĞ¸ôĞ¸óÏ·óÏ·óĞ¶òÏµòÏµòÏµñÎ´ñÎ´ğÍ³ğÍ³ñÌ²ñÌ²ñÌ²ñÌ²ñÌ²ñÌ²ğË±ğË±ğË±ğË±ğË±ïÊ°ïÊ°îÉ¯îÉ¯îÉ¯ïÊ°îÉ¯îÉ¯îÉ¯ìÇ­ìÇ­ìÇ­ëÆ¬ûÜÅüİÆıŞÇıŞÇüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅûÛÄûÛÄüÜÅûÛÄıÛÃıÛÃıÛÃıÛÃıÛÃıÛÃıÛÃıÛÃıÛÄıÛÄıÛÄıÛÄüÚÃüÚÃüÚÃüÚÃüÚÂüÚÂüÚÂûÙÁúØÀúØÀúØÀù×¿ù×Àù×Àù×ÀøÖ¿ù×Àù×Àù×À÷Õ¿úÖ¾úÖ¾û×¿û×¿øÔ¼ùÕ½ùÕ½øÔ¼ùÕ½ùÕ½ùÕ½ùÕ½øÔ¼øÔ¼øÔ¼øÔ¼÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»õÑ¹õÑ¹õÑ¹õÑ¹õÑ¹ôĞ¸ôĞ¸ôĞ¸óĞ¶óĞ¶óĞ¶òÏµóĞ¶óĞ¶òÏµòÏµóÎ´óÎ´óÎ´óÎ´òÍ³ñÌ²ñÌ²ñÌ²ñÌ²ñÌ²ğË±ğË±ğË±ïÊ°ïÊ°ïÊ°ïÊ°ïÊ°îÉ¯îÉ¯îÉ¯îÉ¯îÉ¯íÈ®üİÆıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅıİÆıİÆıİÆıİÆûÛÄüÜÅüÜÅüÜÅşÜÄşÜÄşÜÄşÜÄıÛÃıÛÃıÛÃıÛÃıÛÄıÛÄıÛÄıÛÄıÛÄıÛÄıÛÄıÛÄüÚÂüÚÂüÚÂûÙÁüÚÂûÙÁûÙÁúØÀûÙÂûÙÂúØÁúØÁúØÁúØÁù×Àù×Àû×¿û×¿û×¿û×¿û×¿úÖ¾ùÕ½ùÕ½ùÕ½ùÕ½ùÕ½ùÕ½øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»÷Ó»öÒºöÒºõÑ¹õÑ¹õÒ¸ôÑ·ôÑ·ôÑ·óĞ¶óĞ¶òÏµòÏµõĞ¶ôÏµôÏµôÏµóÎ´óÎ´òÍ³òÍ³òÍ³òÍ³òÍ³ñÌ²ñÌ²ñÌ²ğË±ğË±ğË±ğË±ğË±ïÊ°ïÊ°ïÊ°îÉ¯íÈ®üİÆıŞÇşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆıİÆıİÆıİÆıİÆüÜÅıİÆıİÆüÜÅÿİÅÿİÅÿİÅÿİÅşÜÄşÜÄşÜÄşÜÄşÜÅşÜÅşÜÅşÜÅıÛÄıÛÄıÛÄıÛÄşÜÄıÛÃıÛÃıÛÃüÚÂûÙÁûÙÁıÛÃüÚÃüÚÃüÚÃûÙÂüÚÃûÙÂúØÁûÙÂıÙÀüØÀüØÀû×¿üØÀúÖ¾úÖ¾û×¿úÖ¾úÖ¾úÖ¾úÖ¾ùÕ½ùÕ½ùÕ½ùÕ½ùÕ½ùÕ½ùÕ½ùÕ½øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼øÔ¼÷Ó»÷Ó»öÒºöÒºöÓ¹õÒ¸õÒ¸õÒ¸ôÑ·ôÑ·ôÑ·óĞ¶õĞ¶õĞ¶ôÏµóÎ´ôÏµôÏµóÎ´óÎ´óÎ´óÎ´óÎ´òÍ³òÍ³òÍ³òÍ³ñÌ²ñÌ²ñÌ²ñÌ²ğË±ğË±ñÌ²ğË±ïÊ°ıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆıŞÇıŞÇıŞÇıŞÇüİÆıŞÇıŞÇıŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆıİÆıİÆıİÆıİÆüÜÅüÜÅüÜÅüÜÅûÜÂüİÄüİÄûÜÃûÜÃûÜÃûÜÃûÜÃıÜÂıÜÂıÜÂıÜÂıÜÂıÜÂıÜÂıÜÂüÚÂüÚÂüÚÂüÚÂüÚÂüÚÂüÚÂüÚÂúÙ¿úÙ¿úÙ¿úÙ¿úÙ¿úÙ¿úÙ¿ùØ¾úØÁúØÁúØÁúØÁøÖ¿øÖ¿øÖ¿øÖ¿øÖ¾÷Õ½÷Õ½÷Õ½÷Õ½÷Õ½÷Õ½÷Õ½öÔ¼÷Õ½öÔ¼õÓ»õÓ»õÓ»õÓ»ôÒºóÑ¹ôÒºóÑ¹òĞ¸óÑ¹òĞ¸òĞ¸òĞ¸ôĞ¸óÏ·óÏ·óÏ·ôĞ¸ôĞ¸ôĞ¸ôĞ¸ñÏ·ñÏ·ñÏ·ğÎ¶ğÎ¶ğÎ¶ïÍµïÍµğÍ³ğÍ³ğÍ³ïÌ²ïÌ²ïÌ²îË±îË±şßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇıŞÇşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıİÆıİÆıİÆıİÆüÜÅüÜÅüÜÅüÜÅûÜÃüİÄüİÄüİÄüİÄüİÄüİÄüİÄşİÃşİÃşİÃşİÃıÜÂıÜÂıÜÂıÜÂıÛÃıÛÃıÛÃıÛÃıÛÃıÛÃıÛÃıÛÃüÛÁüÛÁüÛÁüÛÁıÜÂıÜÂüÛÁüÜÁúØÁúØÁúØÁúØÁúØÁúØÁúØÁúØÁúØÀúØÀù×¿ù×¿øÖ¾øÖ¾øÖ¾øÖ¾÷Õ½øÖ¾÷Õ½öÔ¼øÖ¾÷Õ½÷Õ½öÔ¼öÔ¼öÔ¼õÓ»ôÒºõÓ»õÓ»ôÒºôÒºöÒºõÑ¹õÑ¹õÑ¹óÏ·óÏ·óÏ·óÏ·ñÏ·ñÏ·ğÎ¶ğÎ¶ñÏ·ğÎ¶ğÎ¶ğÎ¶òÏµòÏµòÏµñÎ´ñÎ´ñÎ´ğÍ³ğÍ³şßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈÿàÉşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆşŞÇşŞÇşŞÇşŞÇıİÆıİÆıİÆıİÆüİÄıŞÅıŞÅüİÄıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅüİÄüİÄüİÄüİÄûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃûÜÃúÚÃúÚÃúÚÃúÚÃùÙÂùÙÂùÙÂùÙÂøÚÀøÙÀøÙÀøÙÀ÷Ø¿÷Ø¿÷Ø¿÷Ø¿ù×¿ù×¿øÖ¾øÖ¾øÖ¾øÖ¾÷Õ½÷Õ½÷Õ½÷Õ½öÔ¼õÓ»õÓ»õÓ»õÓ»õÓ»öÒºöÒºõÑ¹õÑ¹ôĞ¸ôĞ¸ôĞ¸ôĞ¸òĞ¸òĞ¸ñÏ·ñÏ·òĞ¸òĞ¸ñÏ·ñÏ·òÏµòÏµòÏµñÎ´ñÎ´ñÎ´ğÍ³ğÍ³üàÈüàÈüàÈüàÈıáÉıáÉıáÉıáÉüàÈüàÈüàÈüàÈüàÈıáÉıáÉıáÉşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇÿßÈÿßÈÿßÈÿßÈşŞÇşŞÇşŞÇşŞÇıŞÅıŞÅşßÆıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄûÜÃûÜÃüİÄüİÄûÛÄûÛÄûÛÄûÛÄúÚÃúÚÃúÚÃúÚÃúÛÂúÛÂúÛÂùÚÁùÚÁùÚÁùÚÁùÚÁúØÀúØÀúØÀù×¿úØÀù×¿ù×¿ù×¿ù×¿ù×¿øÖ¾÷Õ½÷Õ½÷Õ½öÔ¼öÔ¼öÔ¼õÓ»õÓ»õÓ»ôÒºôÒºôÒºôÒºôÒºôÒºóÑ¹óÑ¹óÑ¹óÑ¹òĞ¸òĞ¸òÑ·ñĞ¶ñĞ¶ñĞ¶ğÏµğÏµğÏµïÎ´üàÈüàÈıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄüİÄıŞÅıŞÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅıÜÆùÚÁùÚÁùÚÁùÚÁùÚÁùÚÁùÚÁùÚÁùÙÂùÙÂùÙÂùÙÂùÙÂùÙÂùÙÂùÙÂ÷Ø¿÷Ø¿÷Ø¿÷Ø¿ö×¾ö×¾ö×¾õÖ½øÖ¾÷Õ½÷Õ½÷Õ½öÔ¼öÔ¼öÔ¼÷Ô¼òÓºòÓºòÓºòÓºòÓºòÓºñÒ¹ñÒ¹òĞ¸òĞ¸ñÏ·ñÏ·ñÏ·ñÏ·ñÏ·ğÎ¶üàÈıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇşßÈşßÈıŞÇşßÈşßÈşßÈşßÈÿàÉÿàÉÿàÉÿàÉıŞÇıŞÇıŞÇıŞÇıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅıŞÅüİÄıŞÅıŞÅıŞÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüİÄüİÄüİÄüİÄûÜÃûÜÃûÜÃûÜÃûÛÄûÛÄûÛÄûÛÄúÚÃúÚÃúÚÃúÚÃùÚÁùÚÁøÙÀøÙÀùÚÁøÙÀøÙÀøÙÀù×¿øÖ¾øÖ¾øÖ¾÷Õ½÷Õ½÷Õ½öÔ¼ôÕ¼ôÕ¼ôÕ¼ôÕ¼óÔ»óÔ»óÔ»òÓºôÒºóÑ¹óÑ¹óÑ¹òĞ¸òĞ¸ñÏ·ñÏ·ûáÉûáÉûáÉüâÊûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉıŞÇşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıßÆıßÆıßÆıßÆüŞÅüŞÅüŞÅüŞÅüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûİÄûİÄûİÄûİÄûİÄûİÄûİÄûİÄüÜÅüÜÅüÜÅüÜÅûÛÄûÛÄûÛÄûÛÄûÜÃúÛÂúÛÂúÛÂùÚÁùÚÁøÙÀøÙÀúØÀúØÀù×¿ù×¿ù×¿ù×¿øÖ¾øÖ¾ö×¾ö×¾ö×¾õÖ½õÖ½õÖ½ôÕ¼ôÕ¼õÓ»õÓ»ôÒºôÒºóÑ¹óÑ¹óÑ¹òĞ¸ûáÉûáÉüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉşßÈÿàÉÿàÉşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıßÆıßÆıßÆıßÆüŞÅüŞÅüŞÅüŞÅüİÆüİÆüİÆüİÆıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆûİÄûİÄûİÄûİÄûİÄûİÄûİÄûİÄüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅüÜÅûÜÃúÛÂúÛÂúÛÂûÜÃúÛÂúÛÂúÛÂúÛÂùÚÁùÚÁùÚÁøÙÀøÙÀøÙÀ÷Ø¿÷Ø¿÷Ø¿ö×¾õÖ½õÖ½õÖ½ôÕ¼ôÕ¼óÔ»óÔ»óÔ»òÓºòÓºòÓºòÓºñÒ¹ùâÈùâÈùáÉùáÉüáÌüáÌüáÍüáÍûáÉûáÉûáÉûáÉüâÊüâÊüâÊüâÊüâÊüâÊüâÊşâÊıáÉıáÉıáÉÿàÉıãÈıâÈıâÈıâÈıâÈıâÈıâÈıâÈÿáÈÿáÈÿáÈÿáÈÿáÈÿáÈÿáÈÿáÈşáÀúàÆøŞÊşŞÇÿãÄÿâÃûİÃöÚÆúŞÅÿãÈúİÂ÷äÊùİÎÿÛÎÿŞÈñåÃÿŞÉÿßÈÿßÈÿßÈşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇşŞÇıİÆıİÆıİÆıİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÅøÙÂ÷ØÁ÷ØÁ÷ØÁ÷Ø¿÷Ø¿÷Ø¿ö×¾õÖ½ö×¾õÖ½ôÕ¼ôÕ¼ôÕ¼ôÕ¼óÔ»óÔ»óÔ»òÓºòÓºùãÊúâÊúâÊúâÌüáÌüáÌüáÍüáÍüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿâÄıâÈûàÌÿàÉÿŞÅÿæÈúÜÃöàÍşéÖÿãÉûİÁùæÊúßËÿÛÎÿŞÈõäÃÿŞÉşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄøÙÂøÙÂ÷ØÁ÷ØÁøÙÀøÙÀ÷Ø¿÷Ø¿ö×¾ö×¾õÖ½õÖ½õÖ½ôÕ¼ôÕ¼ôÕ¼óÔ»óÔ»óÔ»óÔ»úäËúäËûãÍûãÍûãÍıâÍıâÎıâÎıãËıãËıãËıãËüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉşâÃùàÈúßÊşßÈşàÆÿãÇ÷ßÌìÜÑóãÒÿãÏÿáÅøâÈûàÍÿŞÌÿàÉöäÇÿàÉÿàÉÿàÉÿàÉşßÈşßÈşßÈşßÈÿàÉÿàÉÿàÉÿàÉıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄúÛÄùÚÃùÚÃøÙÂøÙÂùÚÁøÙÀøÙÀøÙÀ÷Ø¿ö×¾ö×¾ö×¾ö×¾õÖ½õÖ½õÖ½ôÕ¼ôÕ¼ôÕ¼óÔ»úãÍúãÍúãÍûãÍüäÎüäÎşãÏşãÏûãÍûãÍûãÍûãÍûãÍûãÍûãÍûãÍûãÍûãÍıâÍıâÍüáÌşáÌşáÌşáÌşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊıâÇûáÉûàÌÿàÉÿåÉøİÅúíŞnhcòëŞøÜËÿäÊøàÅúßËÿŞÌÿßËøäÆÿàÉÿàÉÿàÉÿàÉşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅúÛÄùÚÃùÚÃùÚÃùÚÁùÚÁùÚÁøÙÀøÙÀö×¾ö×¾÷Ø¿ö×¾ö×¾õÖ½õÖ½õÖ½õÖ½ôÕ¼ôÕ¼úâÎúâÎúâÎúâÎúáÍüãÏüäÎûãÍüäÎüäÎüäÎüäÎûãÍûãÍûãÍûãÍûãÍûãÍûãÍıâÍıâÍıâÍıâÍÿâÍüâÊüâÊüâÊüâÊûáÉüâÊıãËûâÊıáÉıáÉşâÊÿãËşâÊşâÊşâÊşâÊşâÊüáÍüáÌÿãÉıàÄñİÇÚÖÌ]eg•˜òÛÌÿÜÄÿæÊøáÉÿàËÿßËúâÈÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉÿàÉşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇşßÈşßÈıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄùÚÃùÚÃùÚÁùÚÁøÙÀøÙÀøÙÀøÙÀ÷Ø¿÷Ø¿ö×¾ö×¾õÖ½õÖ½ôÕ¼ôÕ¼ôÕ¼ôÕ¼üæÔûåÓüäĞúâÎûãÏüãÏıåÏüäÎüäÎüäÎüäÎüäÎûãÍûãÍûãÍûãÍûãÍûãÍûãÍûãÍıâÍıâÍıâÍıâÍıâÍıâÍıâÍıâÍıâÍşãÎşãÎıâÍşáÌşáÌşáÌşáÌşáÌşáÌşáÌşáÌûáÌüáÌüáÌÿâÉùàÅôæÓ¬­«UdlYheÿìáÿäĞşáÅùäÉşáÍÿàÌşâÊıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉşâÊşâÊşâÊşâÊıáÉıáÉıáÉıáÉüàÈüàÈüàÈüàÈüàÈüàÈüàÈûàÈşßÈşßÈşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄúÛÄùÚÃúÛÂúÛÂúÛÂùÚÁøÙÀøÙÀøÙÀøÙÀ÷Ø¿ö×¾ö×¾ö×¾ö×¾õÖ½õÖ½ôÕ¼ùãÑùãÑùãÑûãÏûãÏûãÏûãÍûãÍüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏûãÏûãÏüãÏüãÏüãÏşãÏşãÏşãÏıâÍıâÍıâÍıâÍıâÍıâÍıâÍıâÍıâÍıâÍüáÌüáÌüáÌüáÌüáÌüáÌüáÌüáÌüâÊşãÉÿèÍîâĞŠŠ@Vg:PMÿõîÿŞÉÿäÆùåÈüáÍÿáÌÿáÍıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉüàÈüàÈüàÈüàÈıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉÿàÉÿàÉÿàÉÿàÉÿàÉşßÈıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄûÜÃûÜÃúÛÂúÛÂùÚÁùÚÁùÚÁøÙÀ÷Ø¿÷Ø¿÷Ø¿ö×¾øÙÀ÷Ø¿ö×¾õÖ½şç×şç×şèÖÿçÖÿçÓıåÑûäÎıåÏüäĞüäĞüäĞüäĞûãÏûãÏûãÏûãÏûãÏûãÏüãÏüãÏüãÏşãÏşãÏşãÏıâÍıâÍıâÍıâÍşãÎıâÍıâÍşãÎüáÌıâÍıâÍıâÍıâÍıâÍıâÍıâÍıâÎıâÎıãËÿäÉøàÆäÚÉlyzB[n>VWÄ²¬ÿŞÉÿåÆøäÈùâÊÿßÎÿáÌşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉıáÉşáÉıáÉıáÉıáÉşßÈşßÈşßÈşßÈşßÈşßÈÿàÉÿàÉşßÈşßÈşßÈşßÈıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÂúÛÂúÛÂúÛÂúÛÂúÛÂùÚÁùÚÁøÙÀøÙÀ÷Ø¿÷Ø¿ö×¾ö×¾ö×¾ö×¾úêÒıëÚşëÜùçÖõåÎøçÏûåÓüá×øãÎùäÏùåĞùåÏüäĞüäĞüäĞüäĞüäÎüäÎıåÏıåÏüäÎüäÎüäÎüäÎüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏüåÎüäÎüäÎüäÎûãÍûãÍûãÍúãÍÿáÈõâÎöâÍÿåÃÿèÏA;=?LWI]`AU[’“ôãÛúİÍÿãÈüãÉûâÉşßÎıãÇıâÈıâÈıâÈıãÈşãÉÿäÊÿäÊşãÉşãÉşãÉşãÉıâÈıâÈıâÈıâÇøßËïæÉÿàÂÿäËÙáÈøãÒÿØÉğèÈıàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈûßÇûßÇûßÇûßÇûßÇûßÇûßÇúßÇıŞÇıŞÇıŞÇıŞÇûÜÅüİÆıŞÇıŞÇüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄùÚÃùÚÃùÚÃùÚÃùÚÃøÙÂùÙÂøØÁøØÁøØÁ÷×À÷×À÷×ÀöÖ¿ùéÙ÷ç×öåØøè×øêÔûêÕıéØıçÛÿñÛÿîÙÿëÖıèÓûãÏûãÏûãÏûãÏüäÎüäÎüäÎüäÎüäÎüäÎüäÎüäÎıäĞıäĞıäĞıäĞüãÏüãÏüãÏüãÏüäÎüäÎüäÎüäÎûãÍûãÍûãÍûãÍÿäÈ÷ãÏ÷ãÍÿæÆüåÏÉÇÅGV`=QV@TY.23D2+óØÆÿãËüãÉüâÊşßÎÿãËÿãËÿãËÿãËÿãËÿãËşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊşßÈõçËşÛÄüâÑİç×îÚÏÿßÌõåÄüßÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈûßÇûßÇûßÇûßÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄùÚÃúÛÄùÚÃùÚÃùÚÃøÙÂøÙÂ÷ØÁ÷ØÁ÷ØÁ÷ØÁö×Àö×Àúîâùîâùíß÷ëÙøêØúêÙùéÚøèÛúåÏùäÏùäÏúåĞüäĞüäĞüäĞüäĞıåÏıåÏüäÎüäÎüäÎüäÎüäÎüäÎüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏüäÎüäÎüäÎüäÎüäÎüäÎüäÎüäÎÿäÈúâÑúâÎÿäÈÃ°š¶¸»_pzGV]@T\MRS¡“Š÷ŞËıâÊüäÉüáÍüáÎüâÉüâÊüâÊûâÊıãËıãËüâÊûáÉşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâÊÿáÅùáÈıâÒêİÙhwvñäàÿİÌùãÁıáÊıáÉıáÉıáÉıáÉıáÉıáÉıáÉüàÈüàÈüàÈüàÈûßÇûßÇûßÇûßÇıŞÇıŞÇıŞÇıŞÇıŞÇıŞÇüİÆüİÆıŞÇüİÆüİÆüİÆûÜÅûÜÅûÜÅûÜÅûÜÅúÛÄúÛÄúÛÄúÛÄúÛÄùÚÃùÚÃùÚÃùÚÃøÙÂøÙÂøÙÂ÷ØÁ÷ØÁ÷ØÁõíéùğæúòáıñßÿğàşîáûëßùêÚüçÒúåĞùäÏûæÑÿèÔÿèÔÿèÔÿèÔÿçÑÿçÑşæĞıåÏıåÏıåÏıåÏıåÏüãÏüãÏüãÏüãÏıäĞıäĞıäĞıäĞüäÎüäÎüäÎüäÎüäÎüäÎüäÎüäÎÿåÈùâÑûáÑÿåÉìßÍ›\m|M[d:T\LSVÿñëöİÍüäÊûãËûãÍıâÎıãËıãËıãËıãËüâÊüâÊıãËıãËşâÊşâÊşâÊşâÊşâÊşâÊşâÊşâËÿãÅÿàÊöâÚ¦¯³Viu¯©¯ıŞĞşå¿ıáÊıáÉıáÉıáÉıáÉıáÉıáÉıáÉüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈüàÈúßÇûßÇûßÇûßÇûßÇûßÇúŞÆúŞÆúŞÆúŞÆúŞÆúŞÆùİÅùİÅøÜÄøÜÄøÜÄøÜÄøÜÄ÷ÛÃúÛÄùÚÃùÚÃùÚÃøÙÂøÙÂøÙÂ÷ØÁõìïôìåøñŞùîÚøéÙúèŞùêİøê×şèÓÿëÖÿì×şéÔıäĞıåÑıåÑıåÑûãĞüäĞüäĞüäĞüäĞüäĞüäĞüäĞıäĞıäĞıäĞıäĞüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãÏüãĞõâÄûäÓşãÕşáË¢šŒ /5G\nJS_<ZgFOWËÁ½º¤”ÿîØûæÌüäÎúâÎıãËıãËıãËıãËıãËıãËıãËıãËüâÊüâÊüâÊüâÊüâÊüâÊüâÊüâËıãÂûÙÅóæâ†›¥K`tSS_üêàÿåÅúáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉúáÉüâÊûáÉùßÇúàÈúàÈúàÈúàÈûßÇûßÇûßÇûßÇûßÇûßÇûßÇûßÇúŞÆúŞÆúŞÆúŞÆùİÅùİÅùİÅùİÅùİÅùİÅùİÅùİÅøÜÄøÜÄøÜÄøÜÄúÛÄúÛÄúÛÄúÛÄùÚÃùÚÃøÙÂøÙÂÑÆÑöìåøí×ùëÔüæ×úãÜ÷äÕõèĞúåĞûæÑûæÑúåĞıåÑıåÑıåÑıåÑüäĞüäĞüäĞüäĞüäĞüäĞüäĞüäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞüãÏüãÏüãÏüãĞùåÇøàÏÿáÕõçÑÓÎÁv–1EYPVd;ZiGQYogcÿîáùàÌûåËûäÎüãÏûãÍûãÍûãÍûãÍûãÍûãÍûãÍûãÎıâÍıâÍıâÍıâÍüáÌüáÌüáÌıáÎõãÅÿÚÍßÖÓ|¥?RePUbâáØúàÇûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉûáÉúàÈúàÈúàÈúàÈúàÈüàÈüàÈüàÈüàÈûßÇûßÇûßÇûßÇúŞÆúŞÆúŞÆúŞÆúŞÆúŞÆúŞÆúŞÆùİÅùİÅùİÅùİÅøÜÄøÜÄøÜÄøÜÄøÜÄøÜÄøÜÄøÜÄ÷ÛÃ÷ÛÃ÷ÛÃöÚÂŒ|‹éİ×óèÌıìĞşãÖıàÚúãÒùéËûæÑûæÑüçÒûæÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑşåÑşåÑşåÑşåÑıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞüãÏüãÏüãÏıãĞøéÇşåÕ÷ÕÉÿíŞÌÍÃ|˜Ÿ@ZnKM\=_nJU`C<;ÿÿòùäÎøäÎüäÎüãÏüäÎüäÎüäÎüäÎüäÎüäÎüäÎüäÎıâÍıâÍıâÍıâÍüáÌüáÌüáÌşáÌéàÊÿßÓ³­§9=APbTYf–£œêÔÃıâÊüâÊüâÊüâÊûáÉûáÉûáÉûáÉüâÊûáÉûáÉûáÉûáÉûáÉûáÉûáÉúàÈúàÈúàÈúàÈùßÇùßÇùßÇùßÇùßÇùßÇùßÇùßÇøŞÆøŞÆøŞÆøŞÆ÷İÅ÷İÅ÷İÅ÷İÅ÷İÅ÷İÅ÷İÅ÷İÅøÜÄøÜÄøÜÄøÜÄøÜÄøÜÄ÷ÛÃ÷ÛÃjWiïàÚøêÍÿîÑÿäÕÿâÜÿæ×üêÊûæÒûæÑûæÑûæÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑşåÑşåÑşåÑşåÑıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞıäĞşäĞ÷êÆşãÕşØĞÿçÕÏÑÆw˜¡]v‰`bsChx[ir†„úæÚûåÍúäÎúåÏıäÑüäÎüäÎüäÎüäÎüäÎüäÎüäÎüäÎıâÍıâÍıâÍıâÍıâÍıâÍıâÍÿâÍêèÒçº²¾¹³bŒ;JXZbn°Á»îßÏıâÉüâÊüâÊüâÊüâÊüâÊüâÊüâÊıâÊûáÉûáÉüâÊûáÉûáÉûáÉûáÉúàÈúàÈúàÈúàÈúàÈúàÈúàÈúàÈùßÇùßÇùßÇùßÇøŞÆøŞÆøŞÆøŞÆøŞÆøŞÆøŞÆøŞÆ÷İÅ÷İÅ÷İÅ÷İÅùİÅùİÅùİÅùİÅùİÅøÜÄøÜÄøÜÄCHVèÚÔÿæÔ÷ãÓöåÔıçÎıçÍôä×öæÑöæÑöæÑùæÑ÷åĞøæÑûæÑüçÒıåÑıåÑıåÑıåÑıåÑıåÑıåÑıåÑıæĞıæĞıæĞıæĞüåÏıæĞıæĞÿçÑòêÌşêÈûçÎóäÚøáÒÿäÆüàËóèãĞãÚÌßÚ¼ÕÕ®ËÔŒª¼˜±Ä‡µ–³k…†;W^Nir/GQ¤¶»ÒÙÖîíßçßÍùåÊûåÌûåËûäÎûãÏüãÏüãÏüáÓüéÅüåËúæËûãĞùâÎûâÎûãÍşãÊóáÊïçà¡¹Ãjˆ™UT_MZ[x†ôÜÜúãÌúâÌùáÎüáÍüáÍüáÎúâÌúâÍøãÊùãÊúâÊúâÊûáÉûáÉşáÉşáÉùáÌùáËùáËùáÌøàÊøàÊøàÊøàË÷àÆ÷àÆ÷àÆ÷àÆõßÅ÷àÆ÷àÆøáÇößÅößÅößÅößÅößÅößÅößÅößÅ÷ŞÄ÷ŞÄ÷ŞÄ÷ŞÄõÜÂ÷ŞÄöİÃõÜÂJM[÷éãıåÑ÷ãÒ÷åÔıæĞıçÎõåÕúæÑúæÑùæÑùæÑıçÒüçÒûæÑûæÑûæÑûæÑûæÑûæÑûæÑûæÑûæÑûæÑûæĞûæĞûæĞûæĞüçÑüçÑúæĞûæĞöæÔÿæÍÿåÒöäØúæÕúãÉäÛË˜¥¦”¤±‘£°¢´}˜©‰¥¶y˜©z˜©x™§\mx<R^8M]K\iJVaV[^onjîéåşèÌúæÍıåĞüåÏüäĞıäĞıäĞıãÓüåÊüäÌûäÎüãÏıäĞıäÑÿåÌÿäÍÿèËüçŞmƒˆ"?PSXiN^`F]YåÎÌúäÉûãÎşâÍşãÍüáÌüáÌúâÌúâÌùãÊùãÊúâÊúâÊûáÉûáÉûáÉşáÉùáËùáËùáËùáËøàÊøàÊøàÊøàÊøàÈøàÈøàÈøàÈ÷ßÈ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇöŞÆöŞÆöŞÆöŞÆ÷İÅ÷İÅ÷İÅ÷İÅ÷İÅ÷İÆ÷İÅ÷İÅNQ_öéãşéÕüè×øæÕşçÑşèÏöæÖúçÒúçÒüçÒüçÒıèÓşæÒşæÒıåÑüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒıèÓüçÒüçÒûæÑöáİÿäÓÿäÑûäÖôãÒöêÔ´¾´v—¥‰¿‚˜·{•°{›µs’¨¡°~¡­]„ŠR_q>M_BSg=L`KXhFO]OU]»ÁÉşåÌúåÏùåÏüåÏüäĞüäĞıäĞıäĞûäÎûäÎıãÏüãÏşãÏşãÎÿäÌÿåËşéÄÎ°Ÿª½Ãs‘§KRhL]h#>:ÿôôûçÌûåÌüäËÿãÏüáÌıáÌúâÌùáÎùãÊùãÊúâÊúâÊùâÊüâÊüâÊüâÊùáËùáËùáËùáËùáËùáËùáËùáÌøàÈøàÈøàÈøàÈøàÈøàÈ÷ßÇöŞÆöŞÆöŞÆöŞÆöŞÆ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷İÅ÷İÅ÷İÅ÷İÅ÷İÅöÜÄöÜÄ÷ÜÄJM[çÙÓÿñİøäÓøæÕşçÑşèÏöæÖıæÔıæÔüæÔüæÔşæÔşæÔşæÔÿçÖüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒşèÓôäİÿæÑÿèÎÿæÒşêÕøêÓ ¨¥v–«}™µy•¯x“®|˜°s¥ƒ¡²…£­^‡^gv@Q]>N^<L^<M]TaoMZdƒ’şäËúåĞúåĞùåĞüäĞüäĞüäĞüäĞúäÓùäÒüäÒıäĞÿäĞÿäÏÿäĞÿäÍÿóÌıÛÌ­¼ÄmŠ¤gnˆ`w„.OJğæåôâÌõäÌúãÎıãÊıãÊıâÍûãÍúâÎûãÍûãÍûãÍûãÍúâÌúâÌúâÌúâÌúâÌúâÌúâÌúâÌùáËùáËùáËùáËøàÈøàÈøàÈøàÈ÷ßÇøàÈøàÈùáÉ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇ÷ßÇöŞÆöŞÆöŞÆöŞÆöŞÆôİÅõŞÆ÷ßÇ,/=ˆztnZşíÜøæÕşçÑşèÏöæÖöâĞôàÎÿìÚıèÖüæÔşæÔşæÔşæÔüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒüçÒıçÒéåÔÿìÑÿèËÿçÒúãÌşèÒª§¤q‡œ†¦®§µ^w†m„–^s…CXkCZj|“£Obf<MVBV\BU\@TZGXaCW]r†ÿçÒ÷äÒ÷ãÍıèÓúæÑşåÑıåÑşåÑ÷äÒüæÔşæÔıäĞıâÎùàÌûåÑüèÔÿåÇóßÕm‚:Zt‰©Mfs.QRQINÓÌºßÔÃòãÍ÷àÊşãËşâÍúãÍ÷ãÎûãÍûãÍûãÍûãÍúãÍúãÍùâÌùâÌùâÌùâÌùâÌùâÌøáËøáËøáËøáËøâÉøâÉøâÉøãÉöàÇöàÇöàÇöàÇ÷áÈ÷áÈ÷áÈ÷áÈöàÇöàÇ÷áÈ÷âÈ÷ßÇ÷ßÇöŞÆöŞÆõİÅõİÅöŞÆöŞÆ?BPùëåûàÌïÚÉøæÕşçÑşèÏöæÖöåÒÿğİñİËşé×úæÔüæÔüæÔüæÔúçÒúçÒúçÒúçÒúçÒúçÒúçÒúçÒúæÕúæÔúæÔúæÔúæÔúæÔúæÔúæÔïéÔúéÍÿëÏøç×ôßÑùéØ˜––…—°Yxy%*=Q\-?M<N_yŠ›Yj{CTfTglATZAT[AT[@RY!59@PUu‰ÿèÓıíÚôßÍıêÙüçÑúæÑıåÑşåÑøåÓûåÓıåĞşåÑüäÏùåÓ÷è×íàÑğéÜ®¦¨ªÈÖPp…£§ÀK`k*PS|}ƒ¢¤›MJ@ığáúèÒûãÎûãÊüãÍúâÏûãÍûãÍûãÍúäÍùâÌûãÍøãÍòŞÈùâÌùâÌùâÌùâÌøáËøáËøáËøáËøáËøáËøáËøáË÷àË÷àË÷àË÷àË÷àÊ÷àÊ÷àÊ÷àÊößÊößÊ÷àÊ÷àÊ÷ßÊ÷ßÉ÷ßÉöŞÉöŞÈöŞÈöŞÈöŞÈDGUóåßüãÏşêÙøæÕşçÑşèÏöæÖùë×ôåÒ÷èÕìÛÈ÷æÓ÷çÔúæÔúæÔúçÒúçÒúçÒúçÒúçÒúçÒúçÒúçÒúæÔúæÔúæÔúæÔúæÔúæÔúæÔúæÔûêÔÿéÏôâÓëáàïìëäáİœ u˜²…Ÿ¬¦¾Ïœ²Ä©½Ï¶ÅÙj~Jape€‹o‰“VlxF\cGW`2@J6CK-6A$Ã¬—ôßÏÿîİ÷ãÑûåÔûæÑúæÑşåÑùçÑûæÑıæĞıåÑıçÕğàĞòêŞåİĞ°ÅÊ¯¸È³Çx™¬wy‹RhlCkm˜œ¨O\]Z`\ÈÄºñâÑüäÎüäÌüäÎûäÎüãÏüãÏüãÏûãĞûâÏûæÒöàÌñÜÇúãÍùâÌùâÌùâÌùâÌùâÌùâÌùâÌøáËøáËøáËøáËøáËøáËøáËøáËøáËøáËøáËøáË÷àÊ÷àÊ÷àÊ÷àÊøàÊ÷ßÉ÷ßÉ÷ßÉ÷ßÉöŞÈöŞÈõİÇGIWóãİşåĞÿìÛùçÖÿèÒÿéĞ÷ç×÷é×÷èÕÑ¿­ÿóà÷çÖøæÕ÷æÖ÷æÕúçÓûçÑüèÑúçÒúçÓúçÒúçÒúçÒûæÕûæÔûæÔúæÔúæÕúæÔúæÔúæÕÿäÕÿâÒûèãÒĞÙŸ¥°‚¡«m¢¼z’°„›º€•±~‘¬‚—­7R_3T[6]]<RiAYjBTe>N\<GS">BPEJ]ÿÿÿóßÍıéØùåÒüæÔüçÒüçÒüçÒûçÒûæÏıæĞÿèÑôåÑöéÚğëà¦ “‰¨¼Œ¤¹y¢ºSu…qm|]pt:dfNU`^mvZcdÅÃ»æÙÉúåÎşåËıäÌúäÎüãÏüãÏüãÏûâÏûçÒñÜÇüèÒéÕ¿ıäÍûãÍúãÍúãÍùâÌùâÌùâÌùâÌùâÌùâÌùâÌúâÌøáËøáËøáËøàËøáËøáËøáËøáËøáËøàÊ÷àÊ÷àÊ÷àÊ÷àÊößÉößÉößÉößÉõŞÈôİÇ?TXÃÎÍçåİùë×ÿèÑüèÓõç×ñè×çŞË½ÇÄZp~XdrîßŞşàÑÿßËÿíİúë¼êãâäâí÷èÔÿæÇüàÒúäÚıìËîêÍêè×ïêÖÿíÏıçÈùèÓùêÑûéÁûæÉÿéØèçän•{¢µˆœ¶œ¶—ªuŒ¡sŠŸxŒ¡n„•e|Œ7N]>R^=Q_8MR@U\@V]@S[9MU/6;MV<NWw–ØãåïæåûãÙÿæÑÿçÎÿæÒÿã×èäİôåÖ÷äÖöä×şçĞÿëÊïèŞ{”¬…¨Á¬Á˜®Â]j~CTdYhwSak<NXSkd^fuµº´áåĞÒÎÚåÚÚòçÅÿäÒöãÑöãÒøäÏıäÌşåÉõæÑàŞÚU`kÙŞØäàÏûæĞıäËûáÍ÷áĞ÷âÎ÷åÈõãÌõãÌõãÌõäÌóâËõãÌõãÌöåÎõàÊöáË÷âÌ÷âÌöáËöáËöáËöáË÷àÊ÷àÊ÷àÊ÷àÊößÉøàÊ÷àÊöŞÈBTZJSWöóëôãÓÿçÓÿèÒùèÓöèÖóêÜ‡Œ‹PdlEU^ïêéÿîİüéÔöêÓóéÆ¼º¸\\cöìŞıèÎüâÓ÷åØıîÒÚÙÍÛØÖìãÚüãÏşëÕîâÕêâÖüğŞÿòÕíÚÊåãàŒ¦°…¨¹‹µ„”©š¬wŒ¡k€•|’£f}Thw>U`@Vc:P\AT[@SZ@RZEX`?OYGXaBS\DT^9WRHX[”‘’ÿñéıçÑÿèÎùçÒõæ×òæÖûçÑıçÑøæÖùãÍÿéËâàÔ“§¸…©½oŒ¢—°Åh|DTdfv‚DU^9ITIa[HQb¢¨£ÚàÑF>HôéèöêÊÿäÔøäÒøäÒ÷åĞüæÍüèËõåĞÆÂ¼fpz¼À·ïéÛìÚÅşäËûâÎøâĞõãÎøäËöäÍöäÍöäÍöäÍõãÌõãÌõãÌõãÌ÷âÌ÷âÌöáËöáËöáËöáËöáËöáËõàÊõàÊõàÊõàÊõàÊõáËöáËõàÊ9JX<FMuppíßÓıçÕÿèÒşèÒùéÑåãÜpz~>T\@S[ƒˆ†åßÒïêÖèæÍæéÔ}ƒ‡U\i‰‰‚òçÑøäÓöåÙíçÓƒŒZ]höïñüåÕüæ×îéé²¶¹ÓÕÖñäÍöêßÍÎĞ†¤«ˆ¦¹}‘¦o”uŸx£uŒ| au„e|‡8KV@S_F[bFV_>OXIZcFW`GU^GV_ET]ES\7Y^G[c@FJÿüõõçÕõêÎõèÒïèÖøæĞÿçÌşçÍôäÔöéÖõåÑĞÎÇ•¨¸~´{š­¸ÉLdt=P]_q|?RY;NWCZYWarœšÒİÏ_^lÏËÍõêĞıäÕ÷äÒøäÒ÷åĞüæÌşéÏîáÍ§¨¦Ubl•š–ûöêıíØüèÒúáÍöâĞöãÎøäÊöãÎöãÎöãÎöãÎöãÎöãÎõâÍõâÍøãÍ÷âÌ÷áËöáËöáËöáËöáËöáËöáËöáËöáËöáËõàÊôßÉôßÉõàÊ4DTGQ[IHMòçä÷æÙûçÕûèÓúéÒÂÌÎ`ruBZbAT\]adîåİğâÑöëÔÀÔËdpxKXeZcgöñæùåÓñå×ÑÒÄlz‹O[k§¥©ùèÙóâÑ§¬®XjvAS\ìèÛêãßŸ¥©Š§µ¯^o… 1C!<K[n€-=;O`6KZ*<I@T_>SZ1FN-:)5=JW!.;1?LJUaFR^NXd:XbBUaBDMğèæôçÖöëÒöêÑóè×õçÕÿêÍûèĞêæÜëèåÙÚÓÅÎĞ•¯Æ¼ÌŒ¨¹™©Lcr9P[OdoI\c<OX.-'2IQ`]²Â¹LReÅÅÊêåËÿâÖûæÏøäÓøåĞúäÏñŞÆéŞË¼½¼QapRYZœ™ŞĞ½úäÎùäÎôãĞôãÑöåÍ÷ãÎöãÎ÷ãÎ÷ãÎ÷ãÎöãÎõâÍõâÍõãÌõãÌõãÌöåÍõãÌõãÌõãÌõäÌöáËöáËöáËöáËöáÊôßÉôßÉõàÊ.?%347?æáãèİÚøìàòè×íäÏ†¤Sls:RX<LVFFNüìîüãÛÿêÙ°³Tdl>KZCU^çëåöäÒóéÛ˜Tjx>R__egÿøæãßÏ~D`lA^eglfäåç—¡“¯¾ ²’¥·kz‹x”¡Tj|y‘ ‚•¦BWfG^i?R]@U\9NV0?L7GS0>J#1=6DP#/%1"-9"6F2<K74?ÿúûøè×öæÎıì×øåÔñåÙûèĞòåÒÜãä£±¾¦²½‰š§~šµw‘ † °c}‹H`l?UaAW^BR[>PWDWX;F\)8;¨½·GRgŒ—íèÒüäÖùäÏ÷ãÒôäÏøæÏöåÌÿöè©­°Ug{T]]ÛÚÔíßËşèÒ÷äÏõäÑõäÑøäÏóãÎôäÏôãÎôãÎóâÍóâÍóâÍóâÍõâÍõâÍõâÍõâÍôáÌõâÍõâÍóàËöáÌöáÌöáÌöáÌõàËõàËõàËõàË,9G!,:7=H #,/.3›šš¹»²ÀÁ¸a|ˆJbh?UZ>MTEDS¬ ªıæäüáÒj™HV^;IU:P`mtsúçÔïâ×r‡ŒUnt4OYGVXááÕÓØÌgz~>[e9TZ7EIİäîxƒ’8I8I¢}Œv“¡ˆ µz’¤cz‰qˆ—Qit<R]@Va6NU<KW<LX3CO1AM/<H:HT;IU(6B(:G*2A'%0F85áÑ¿ÿóÛúäÏşèØìæÛüèÓòê×¾ËĞu‘¨…Ÿ²—©†¡¼xœcy‰Uny=VbCVbG[b?NWDPYHZZEPe@QSPhbP_tZbjóî×üàÔûæÏùæĞöåÑöæÎ÷éÑğèÜ{ƒ†Uk€\hnÛÜ×èßÎôäÌõäÏóäÑòãÒõäÑôãĞõäÑõäÒôãĞôãĞôãĞôãĞôãÑõâÍõâÍõâÍõâÍôáÌõâÍõâÍôáÌôáÌôáÌôáÌôáÌôáÌôáÌôáÌôáÌ?KT.:F0:H1;JCMW?JQ>LPCRP8KY:NR>RR=PW?M\BIVôôöøóèe™IRULU_/J]WaeÿîÚìàÓx“£I_c@[h8LXqxw¦®®q„‘LdtIZ`2LTHQ`’¡²‘¯ÀNj{.?Pet„^|†rŠ n‡œx¢oˆ˜`{‰8P\=Ua<V`AQ^?P^9JW6GT7GT6FS8HV8HU7LW8DQ;=EéáŞôæÖòåÌıíÚüèÙòæÚÿîÑõèÑ¹ÅÊRp‡/@*<K2@;KWdw„&9D9OZ@V]-7%2:AKTL\[CLaGXZF`[FVmIPXÿüáÿäÖûæĞùæÑ÷æÑ÷æÑëÛÇÀ½²¢®³=TlWclvxu»° ğãÌöäÏóãÒóãÒõäÑõäÑõäÑõäÑôãĞôãĞôãĞôãĞôãĞóâÍóâÍóâÍóâÍóâÍóâÍóâÍóãÎôáÌôáÌôáÌôáÌõâÍõâÍõâÍõâÍ@JR?IS/:I%3C(8J&9G-BI7OU;FU@MR;IJ5HO1JZ2L[-CEL`O/TdMRSKPY4OeGRVÿ÷áéÛĞOm‚gz}:TfCWjPXb‹“l}“G[nCQV1N[CPaŒ›­s‘¢s¡ lz‰]{„t¦n…œ€™®o‰šQk|4O]:U`9T`<O\;O\1ER*:G=N[<MZ?O\BQ_5SW-@G9CGáâÛùòßëàÉûîÚøèß÷çÔÿèÅşïĞµÂÀo‹z’¢w„ŠNW\FVd5GQVkuAU`GZa8GP5?G?FQ*75ILeK\^Hc\@PgAIQÿûàşâÔıæÏùåĞ÷æĞùæÏúèÑäŞĞ•¤E_xWbj¨«ªïæÔôåÍóæÎòäÒóãÒõâÓõäÑöåÒõäÑõäÑõãĞõäÑõãĞõãÑôãÎôãÎôãÎôãÎôãÎòáÌóâÍôãÎõâÍõâÍõâÍõâÍôáÌôáÌôáÌôáÌ9JP4BH1<C/8A-5>'%,;1;J6FN2DN3FR2ES1DP8IS7HR1?L?P];P_5KX@P\>P^J`rq…•ft€BX`9MW=P]7K[¢²Zr|Kbk4MT7PZ.KV…¡²w¤n‰Ÿkˆh…™f‚”ua}ŠB]jXs€d{Š@Tc?P`=P_8CQ*7+<I@Sa8LY2BO(6"+:ALS6=G7:>’“îçäøîà÷èĞÿëÌêëÙõäÕòäÜ£«©yŒ›v†¢s†¥s”¯i}^s…asƒ;N\I[f@QZ;NU6JP;M\@RV>HQ,3@-7@CEJ¶±¬ùéÔŞáÖüêØöß×ÎÑİ¥ÄÕ¡ÄÏ’®½“«Í†¢´lŒ·¿ÄçâÛòâÔóåÎóåÎñåÎóäÑóäÑóäÑóäÑñâÏñâÏòãĞòãĞñâĞñâĞñâĞñâĞğâÏñâÏñâÏïáÎóâÍóâÍóâÍóâÍòáÌòáÌòáÌòáÌ4DK)9BEOY2;D4=G"0)2?1=I6EN:IQ5EQ7GT8IV9IU5CL(.?L5ER6GT<MZ7GT3CP@P];KX4JQ3GS=P]>Qa:M\H[h6JU6KR2IQ2JV`wˆd}d|z“§a|ŒqŒh<SbAYh;O^AVe/DS=P_=P`<IU5EQ2DO9NY8JU-<I+9EEP\:KW)8D(2y}‡¸»ÀÛÙÕåäÚëèÙÍÑÅøìâüòê¢°¯t‹›¦ˆ—®m‰˜k‚–§h{ŠBUbEWbCT]BT[<NUI]dK\cLY^9DLLU_/38ëåÜúêÖïæÕúæÎÿòæ‚„w£‚Ÿ©g~ŒuŒ¨a}‹Seo]bd¾¸²ñäÔôåÓôæĞóæĞóäÑóäÑóäÑóäÑôåÒóäÑóäÑóäÑòãĞòãĞòãĞòãĞòãĞñâÏñâÏñâÏóâÍóâÍóâÍóâÍòáÌòáÌòáÌòáÌ-=J+9E#/)2?-6@2=F0:D2=G3?I<GT6DP/@M5ER1?K9DQ#/9'7E4DQ;KX9IV@L[9FT)+8F4JQ4HS8KX8K[3FU8KX1EP8MU<QY6IU!4A)<K^rƒgz‹{ v9IUK\iAQ^FZf?R_?Q^;N[<S_BS[5FO:MU;NU9MT:KT7FO=HQ4IW8IV1CQŠœ©et^luëøÿ ¬²N^[ÈÄÄõöó‘¤¦–¯¿n~’|Œœx™h|s‡˜_rDWdEWbK\eM_fGY`HYc@NTfqt^gn=GQEKOøôìøéØúëÏıæÎóæÛˆ‘£t’¬~™©~”h|’Wn~HZdfoputkğèÚôæÔõåÓôçĞòäÓòäÓòäÓòäÓòäÒñäÒñãÑğâĞñãĞñãĞñãĞñãĞñãĞñãĞğâÏğâÏóâÍóâÍóâÍóâÍòáÌòáÌòáÌòáÌ)9F)72=K*3@%/9=GQ0>E6CK8BL6BN4AP5AO5BP:GUDP\8BK1BO5ER8ES8ES2?M8BP)7.8F0EP6HR;KYCS`%6C$5B2BM5EQ7JR=MV&6C+;F/<]lyM^k9IV-8C<GS@NZ(3EP8LW8LW<S^CS\:KT?OY@QZFXaFU^?NW<GQ;LX8HU7IVN_lSgw?Sc¦¼Ìe{F_d\dlñõúVns$2-?P3>Mn‚”Thy0?9LYEWb$4=)0&8?*9B2=C*.sƒJW^CKPòñéõçÙşëÎúæÌçàÙ|¦Kh‰j‚•\mw`t†[n{@R\OY^_^[îèŞïæÔóåÑôåÒóåÓóåÓóåÓóåÓòäÒóåÓóåÓóåÓñãĞñãĞñãĞòäĞñãĞñãĞñãĞğâÏñâÏñâÏñâÏñâÏñâÏñâÏñâÏñâÏ3BS3@P5?M.7D/8F7AJ6BL(9?-6D)5A3@N1=N2>O#0>'/7E7HU8HU6BQ7DRAN\5?M9DR>HV.?L2BP3FP:LW0?L)9E-:H/<J5GO8GP".8&0&/,%1,:"+.7AFQ[:IQ5FNAT[?U\6OV&6?(1,>G#$-(1(1-=F9AGO\`?KSAPY7ITBUbXp€Tk|1N^@MZ²ºÄq‹•g†•j{7DP\qsK_q,@R`r9LYEWb:KT8JPCV\BP]?JR4?C +.1@G2<?®¯ªÚÑÅüéÒúì×ÒÖÒ‘«Á†¤ÆuŠœ©|•£o€WfoLX]DGFÙØÎêáÔóçÕöçÔóåÓóåÓóåÓóåÓñãÑòäÒòäÒòäÒñãÑñãÑñãÑñãÑñãÑñãÑñãÑñãÑğâÏğâÏğâÏğâÏğâÏğâÏğâÏğâÏ3DQ6GS2@N1<J2;H5BN-9E%2+7(63@N/>O7FV)6C0:H?LW;KX:JW3DQ1AN0<J&4&.;I3CT4ER1CNCS\>MU1?L1;I,6H4GS;IU5?H'0:#'3 )3#0<,:&31>J:ERDQ^DS`@R^?S^9MY1DK6GP+9B +5&2<&1;0@H)207=$(.$17'-:MT?R_J_n,L[CS_z„~™¨g‡˜{£‰—¨by|[n“§¸M`o7KX?Q\>OX<NU:MS@M\BNYEPSARX:MU:GNàãâóîåëâÙÒÊÀˆ““ƒŸ¸w°‰–©‰˜¤|˜ªO_kSblVcgAHGããŞãŞÔóæÖóãÒóåÓóåÓóåÓóåÓóåÓòäÒñãÑñãÑòãÑòãÑòãÑòãÑòãÑòãÑòãÑòãÒñãĞñãĞñãĞñãĞğâÏğâÏğâÏğâÏ3EP6FS2@L.:F.:H6AO0>L%2@%3?.:I1AQ/?O1AQ/>N0<J8GS7HU5FS5FS4ER2CO,9?P\=MZ5EU0BN4CO3DM%.%108F29J8IZ8HU&.;%*5(.9'1:,4B"/= /:3AM:HT?O[:MX@R]=OZ<Q[6GS0@L9GT%)1>0=I8FS$0&.=.6C;GQ:KQ;MT3FM<MXAS`-IZBM\~‰”š§Yz‘uŠ Xey[r|ThzOcu{DWdI[fEV_ASY@SX;I]?MYBSYDW[=S[<PXª³³íéãÙÙâ¶¼ºYlpv“§z‘­ˆ‘¢„ h‹¢UbnSclP\cOZZEJFêæÛíãÖõåÓñäÔñäÔñäÔñäÔòåÕñäÔğãÓïâÒğäÒğäÒğäÒğäÒğäÒğäÒğäÒğäÒïäĞïäĞïäĞïäĞîäÏîäÏîäÏîäÏ4HO1BK7FR*7C-8G09K-:J-8K.=H+<I/?O';J*>M.>N,<I4BN5IV3FS4HU4ER/@M(9F)9E5FR.>O2DP3CO2@H)4=8DO5=K4;M(<M)7H -',6-0:).9/8F1>O&7C->K8HU8IV>O\GWe;LY6FT3CQ8HU+4C#18@O?FUCQ_%3'0G6DX6GS1AN<PW;MX7KX>Qa3P^@JUEKX6Qb'J_‰¼dt‰	&2Pcu/A1@AUbEWb>OX'9@L^c?NdGXf@PWDX^8P]H]fS\`ÕÔÎ–š­^fm…œ]{fw“}€šªe©U^jNYdAPVWehU]XöõìîäÖúéØñãÕñäÓòåÓóäÓòãÓòäÓñäÔñäÕğäÒğäÒğäÒğäÒğäÒğäÒğäÒñäÒğãÒğãÒğãÒğãÒïãÑïãÑïãÑïãÑ0=I0>J(13<F.8A2>J0=K1>M*8D,=I'8E+>M.BN2DN3EM3CI1@M/?K1AN4DQ6EV,;K+9L/<O/@J0AO,@P0CU+>P/?Q)9I*7E-<M);G!3@#1?#.="2>*8D+<G*;H-?L2CP5IV2ER9Q\:Q]8Q],CM 7B"7B:MX9JV6GS&2,8.EN5HR=MY>KW4?K4?KCP\<IU;JW8ETAMY:CO2<IDTbuˆdy’9IT0AM1CM2DOCVa*;D<LV$.")'4<E*4<DPWKW_YfoGY`€–¥@Uew‰šPaoQbrt‡˜K^o<K\LdiEX_HX^@EK=<>Š‚ìä×íæ×ïëÆòèİìçìİãÛàçØæäÚîä×öæÍìåÔíåÔíåÔíåÔëãÒëãÒëãÒëãÒìãÒìãÒìãÒíãÒìâÑìâÑìâÑìâÑ,<I+7-9E-9C*6.9G*7G-;M3AM0=K-=J.>N0AN5EQ3BK1BH3CP4DP->I7GT6FS2AR1@P0@P0@L0@L1BO7FW6EV+:K+8F*6B,>K/?L'4B#.<)1>#/;'3?)7C/;J0@M1AN4ER6JW;N[.EQ/EQ/EP-@K+@K8JU<LX5EQ1?K9GS8NY2EO%1)58DP3?K/=I-:F,<I5APBNZ'4=)5	#%5F(9M0@L5ER3BO:JVFVc!2;6GP=OX"*3DLU9EL>HP)15BJ,4<MRjzˆDXeat€zViwCUfi{Œx‰œH[bNahFU[V_cLQRØ×ÓæáØêâÖæéĞÏÌÈŠ†ŠäæİææÓêä×ìä×òæÒíåÔíåÔíåÔíåÔìäÓìäÓìäÓìäÓîäÓîäÓîäÓîäÓîãÒîãÒîãÒîãÒ2BR3CP1=L)7C-;I-:J-;N/>Q4@K7BP0<M-<L3BS7DR9EN8CN8GP1@I2@L9GS1?K1?J.;I,9G5DL/>G->J3CP:JW2?K-8B09C0AN2>L)4B(0?)1>%-;)1?*6B/9H0=K2?M3CP:JW=N[8HV7JX7KV5JU7HS7IT:JV1AM6DP;IU5GR4DQ3AM=IU8DP.:FFT`6GR3BS3@N@LX"+5.8B'09*6B0;F2?M0=L2AL8EQES`7FOCR[APY<FNFQY<GOGQY&4<:GOGT\EQYWiq6GOI[fSdpzœl€‘l’i}’I]aIYa4@EALT>BFŠçèçŞÜ×âòå¦ª°XW]êéÛêçÒìåÖìãÚìåÖíåÔíåÔíåÔíåÔíåÔíåÔíåÔíåÔìäÓìäÓìäÓìäÓëäÓëäÓëäÓëäÓ5GX-=M9IV)6E*7E*9I)9J(;-"0.;K2?N3@P-:H!.$-7".8%0:$09*6@=IR.9F%1=5AM8EL0<F1?L7DPDR^2=G3=E,6=.;J4?M,5C%-:)/<'0=-6?/9C1:H4?M9DR;HV?KY<LY<MZ7HU;MW9JU5HS<KX8HT3DP9FR:HT3DM1CL9HQ?JT'0/:D2BJ%7?'7H7DR@KW:DM7?H*5;8?F3;@4=L@HV3;H9EQFR^NYcJV`DOZHV]DQYES[AOWCPXFS[IV^@MUDTZBQXEV_br~x‰–t‡–fx‰H]pIV\R`fLX^JS[U_b†Œowz¥¨¬Œ¤¦•­[]iÜØÊîéÎîæÔêâÙäãÛìåÖìåÖìåÖìå×ëäÕëäÕëäÕëäÕëãÒëãÒëãÒëãÒëãÒëãÒëãÒëãÒ(:K.>N/?L&3A,9G2BR-=N!3F08F0:K9GV5@S.;J/<J'3?7AJ*6(4%1=*6?-8B+4$.)3%()55DP&2;)0)0"*-$/>7?L)1>',9#)6 &0)2<+3=-6E.7E'2@*4B<IW8HU:JW@P]<LX5EQ9IU9IU9IU7DP6DP@NZ<KS>MV>IT@IS1>H7BL6EN2CL=IX8ES&5@&1>2=D$+2"'4;<(/?$409F7@M?LX7CM&1<&6?1BI8IOMYaGT\VckN[cMZb;IQFQW;JOHU]CS[DR^4DRgx„6GYJT\R^dCOU>JPEOWIS[bltˆ‘˜<Y_}¡OQ^ÚÚÌïêĞîæÔìãİæåÜëäÕëäÕëäÕëäÕëäÕëäÕëäÕêäÕëãÒëãÒëãÒêâÑêâÑêâÑêâÑêâÑ.>N;KX<IW+:F1>L7DT+9K)8K,7E.7I/:M0?Q/=P6CS/;F/;G+8F&3A,:F)7C/=I,:F+;C$3< ,6(4@&5A-:F*6$+$$(+8)5A)'5*#"-)3%+9)7"08DR;LY:KX6GT!1=&2/;(4)7C*9E.<H$1>&6>/;E.8B5?I+4>9EO.=F3DM:HT3@N0=L.<H-9C"*4(*/67&-=")8)2?;CPCO[AQY7GO;IR*9@/>E,2/5(5=,9A2?G9FNIS\?JRGRZ;FM0:D7AK%/9\foEPWQ\dGSZ>IMYdh+6:ISZhoyOin…“¤\`nĞÒÉçäÎêâÒêãÚçãÙëäÕëäÕëäÕëäÕêãÔêãÔêãÔêãÔêãÒêãÒéâÑéâÑéâÑéâÑéâÑéâÑ"2?!.:'3*6@*6B9DR4AQ-;M.;K2?O1?Q1AR4DU4DS/<J0>J.=N)9I+:J%6B*;H0@L&6C*:G.8G&3A*6D'8E/=I'2=(-"-0&4A+7C/7D(1%.#-".5$.6"-<%0>$2@,8F1BN9JW:KX:KX*7C1>J0=I,9E1?K-;G9JV%6B/:E(2<+5@(2<(1;9EO.@I6HQ5AJ0<H5AP.?L(4C'3=&/9(06,2C)3@)1>4@LAO\AR[<LV;OW1CJ=OV8JQ<KR?PWJW_<IQ'4<6@J09CCLU3:C:@F29@;=EHJR@KUV^hNY\GTU1=?HUVMY\SYbCVSR[hgj{¹½¹áäĞçãÙèßÖîçØëãÖëãÖëãÖëãÖêâÕêâÕêâÕêâÕêãÒéâÑéâÑéâÑéâÑéâÑéâÑéâÑ0<H*7B7BK'1(2.:F4AO1>N,9J)8H*:K*=N-?P2BR,=J0?K-;O+8K(7G)8I5EQ2CP%5A*:F&3A.;K&6F0?O1AN(7?!.6%16+<H-;G0<H )3'1(2&19%3:"/?%2A)5D,<J.?M;LY7KX2ER7CO1>K6DP4BN3AM3@L2BN3CP7BI7@H;EMELU6AH3@G+?E3GM19C1>J5AP,<M(8I%2B(3<,5=,6E.6E,8D/=IANZ>OX7KS<OW=PW@SZ<OVEV\DU\>KS<JRBPW@HW?HRDIU@EN9;D*(/<=@HDF>JTV^h?IM9EGQZY6>APY]KSYR`VJR]EJ[^fdÖİÍŞİÔòèàñåÑéãÖéãÖéãÖéãÖçáÔçâÔçâÔçâÔéâÑéâÑéâÑèáĞéâÑéâÑéâÑéâÑ$@Q$<M+?N&7D)6E2>J7?L/;D,=H/@M3CT0=T-<O5DT3>J7AI+:B/=H,8F,9I1>O3?M.<H+:B-:I+<I)8I0AQ,;K.:I*7$-7(9K6FS+9E#.5+2*2%08$0;$4<&5=':B,=E*=H6HS8MW<O\7LV8MX0EP5GR2DO0CN3CO4DP3MT/HP8NV?T\"1: *&0!(2'4)50=I%.7)2<%.8-2>29B'-63;E2>J-;G@P\<LY7EO0AH9@IGNX5@G(2;KV\JT[MT[DHO>IQ>KP>IO:EL3<C5<@:@F=DIAIOMW^NZ`HTXNZ_HTYBOPIPT3GGL\YFPKQUOéçŞäâ×ãäÓâåÕæâ×æâ×æâ×éâ×èâ×ëá×ëá×ìáØëãÏëãĞêãÏêãÑéáÒçâÓæàÓåßÒ+BR*@O4DT)6D+6D.9G+7C,7C5EQ'9E.>O-:Q0?R5DT3AM/<D1AJ3AN5AP.;K6CS4AO0>J-<D/:G(5D(9F/>N3DP(6B(1;!-4*:L.?K'5A!,3)1!,4%08'3=%0;,8B%4=1>K5ER6HS5ES8KX3EP8JU+=H0CM9IU.>J7GS3CO2IP5HP6IQAR\0@H,8B*4>6?I.=I'3?2>J(2<%/9 )"..6>#,!++7C3@L<MYEVb(7@"39(1;",61=G8EM&.#+"(*28ALTCPV?IPDLS5=D>DI.49?BG<DKISZHTZAMQJVZT`dIVXFNRN][HUUNVSab^ïìååãØæå×êêÙàãÖãã×ãã×âã×ãá×ãâ×æâ×æâ×äáÓäáÓááÓâàÕâàÕâàÕâàÕáßÕ0BM1AL7ER)4B.9G-7H(5E.-8-=,<M,;N*9M,;K*6$.'0 ,-%2B5BR)6D!/;.6+3=!.:&5@5BP7EQ+7A$,5'18*;L6FS-;G!,3)1!,4(3;$0:-6@'0: ,9#/+8D7HU1AN9JW2AM(8D/?K(9E1>J>LX1?K@NZ5CL;JS=MUEPZ?KU/;E1:D9BL/>J,7C6BO+5>%/9"+5(-9+2;*1:(1;(4@0>J:JV:KW>MV5EL:FR8DP8FS<KT5DM@LWAMT,4>,8@&07)3:,4;"*2-380386:?DLSHRYAMT6BF.:>+7;5BC=FIANNX``LQQPQMÏÑÇààÖèåÛáßÑİâÖİâÖİâÖİâÖàâÖàâÖßâÖàâÖÜà×ŞàØßàØßà×İßÕİßÕàßÕáà×5DM6AM=FS,5C/7E-7I/:L"0C&2@,<L*;L*:K+;L3AQ-9/>F(7@-9-9H'3D.;K&2@"/;%.&-!+5&2>3?J ,!+"+$*(9J*;G%1 *2$,'/$0;"'5&/<'3%2A:FT7GT'7C!-%5A#/-9#1=$0*6B!- +5 * *#-+5.:D,9C5AK4CO)5A6BN4=G&0:$-7(.9*1:.4=*3=(4@0>J5EQ@P\@OX=NT:GV@NZ;KW9IU9IV>NWFR\8CM:CL;EL4?F8@G-2:3:?8<A<?D<DKISZMZ`HTXEQUEQU>KMBKN@GJ?DEHMLTXWããİáŞÖæäÛääØàâÖàâÖàâÖàâÖàâÖßâÖàâÖßâÕÜßÚßàØŞà×ßà×ááÕŞßÓáàÒâáÓ2>H'2>&/<+4B2;I6@Q.<O*:K,:J.;K-;M-=N,<L4DT-=J-:F,=F-=I*;H(7G5DT6FS'7C&8A*5<&/9#/;/;G.:F)3<$-")/&7I*;G!/;&-!)&.(3;,6"*8(1>'0<)3B%3@7DR<LX4CT.>J0@L2?K-;G0?K2>J1=I6BN4@J.:D7BM8DN6BL($.1=G&5A)4@6BN7@J%/9#,6-3>+2;-4=/7A(4@/=I7HT?O\IXaCTZ?KZAR^<KWAT_8GTFU^COZ>HS;CM<GN>EL=FM06><?D7;@CEJ9AHKU\MY_NZ^LX\MY]KWYHQTUZ]PUVKPOOTRÏÓÎàâÜååÜáâØéçÛäâ×ßÜÑãáÖààÔääØááÕİÜĞàŞÔàŞÒçäÙáàÑàßÑİÚÊáŞËæäÑ"0< .9.9F*5C!,:+9I/>O.>N3<N1>N.>M-=M+;K2CO+;H.>K4EM.>K3CP,;L2AQ9IV*:F,=F4=G*7C&4@4AO7EQ-8B#+4",3+<M)9F(6B *2!,4)1(3;$0:,4A)1>%0?+8F,8F5FR<K\8HX7GS7GS4DP5FR7EQ6DP7DP<IV8GO:IR9HQ?IT9EO*4",6+4>!-$0+7C"+ *4&0)/:+2;.5>.7@(4@-;G:KWDTa(7@"28)5+77GTEV_+=F+:C:GO)4<'0:)18.6=.4;#*126:,/41389AHCMT:FL0<@-9=.:>3@B*46;>B:?@=ACIRQØßÜØŞÙÛßÙÜßÖæâÚßÜÔàİÕãàØÖÒÊåæİİŞÕãäÛäâÖßÜÑâßÔáŞÓÛÚËææ×§¥—¹¼¬3CS+;K/?O&3A/<J2?M1AL/AL3=O3?Q1@P-=M/@L4ER,=J2BN0AJ-=I1AN*9I4CS:KW.>J->F/:G.;J'8E0?P8IU+9E%.8)1+<M/?L5CO*1 +3)1$/7#/:'3?)4C'4B)5C&7C2BS9IY1ET7IS;MX8JU4FQ8HT8HT6FR>NZ1GN;MU8LS=NX;JS0;F&/9;EN)7D&2>:GS0:C%/(!&2(/8(.71:D/;G*8D>NZBR_?MV<MTBLW;KSAPYGZa8IO5AJ>JP7BH8?H:BI:BI8>E(+326;/271386>EHRYKW]JVZ@LPAMRJVX>HKIKOHLM?IINYW»ÆÃ¾ÈÂĞ×ÒÕİÖ×ÛÕâæàÓÚÓŞåŞ×Ş×»Â¼×ßØÕİÖÛÜÓßßÙİßÙÕÙÓäëäÚáÜ¬¶°€Šƒ2EW4EW8GX&6C)5D.=H0AM,>F37M4=P1@P/AM0AM8IV,=J.=N,>F.>K.>K(7H6FV5FS-=J&8@+8G):G$3D/@Q6EV+8F'4@'2*<M1AN3AN)0'/)1%08'4>#1A$1@$6C'8E):K1AR3GV5GW9NY:OZ6KV:MX5HS5HS1AM:JW5OV3LT4JR7KS;JT1=G%0:4=G6ER*5B6BN2<F)3(2(-9$+4%$-7+7C*8D:JVBR_HV_DT[GS[FRZ?PW@PW>NTBPVKV\?IO;AK;CJ7<C@FM.1:15:58=79>4<CBLSERXHTXHTXFRVJVXFOSNSULSV=GGANLw‡‚z‰…§¡¼À»´¾¹ÇÑÌ“——¥Ÿy†€o€xt…~¯Ä½ÈÉÈ¾ÂÀÅÊÉÑÚÚv‚‚v…‡‡š›dx|*KS2QY0GR-?J.<H.:F7?L3;H1AI6FN7GT3BS/?Q3BR4@Q1>L-<D/>F4BN)6D0<J;IT1@H,:C4?I/;E+9E4BM8FR2>G+6=&06,9F7DQ:DK$.4#*1%,3*3<)2<06>/8@-7@*6?.<H2BM8IV8LY<JRAOX>LU=GR<GQ@KU@LVCLVEOWDMU:DK:DL2=D.4=04=?>H5BL%2;5AK5?I&/8"+4&-5%,5$-6,5?,4A-9E@MYBR^EV_9MTBRYGW^=MTAQX>NU>OVEV]:LS5?F=GN3<CGLT,3758=26;:=A6;BHOWJUXHTXJVZFTUDPR/=>=@E9@B;CGFQRizwaupn‡~b{rl^ui‡d}|[rp[ljcqk}Š}m|cvw^uv”«°t‹‘Š¡§w’|•.JT1JT2FQ/?K1@K4@L -8*"+,9/?L,<L4DT7FV&3C)7.7!09#1=,:9FT4BN'6>-6"-&0%4@5CN'5A)"*!(#4B0>J#,6'0%+$.%.7#,6'2(0:*3&3$2>6FR3DQ)=K,4!* /8$-!,6*5)3'1%/",&0$/+7B%/#03> )&02>H*3>'/$-6%+4&,5"+4(1;*3@/;G3AM@Q]CT]6JQ&6=-4,<CHX_2BI-=D3CJ1BI'1)3:%-419A!&*.3$(-,059?FGOV2;C+7;/;?/;@;GI9FHJPT?DI>IMIVXCQSbwt\sp_tsUthpŠ`|rczucvt[libpn}Š‡y…‹›¡˜«¶„—¤Šªzš{˜n€‹4JV8KX<LY1>L+6D5?M(4C!-<,<D*:F2CP/>N-<M1AQ"3?"/=,4$1'5@$1?1>L,;F(5$3<(3=-;H"0<.?L1>J*5?(/ &&7E-;G%/"+
$(1&0)*4=&.<"-,9E:JV2CP(8F$5==NW$5>3AJ/>G.>G2=G'2<3CL-<E2CL3DM9HP/;E#,6;?J$4A#,/<E(2$.$(1"(1$!*4(1>'3?1?K=MZ8HQ(;B7FM?OVGW^BRYBRY=MT/?F0AH4=F@IR5=D@HO(-5.59,/41498=DFNUFPX?KN>NPAMQBNR<IJBJQ<FM<GM;IOy‰~‘˜|–x•]tpvˆ^wlUja\nfdvr_jnt‡`m{s€‘x†˜w†šfwŠ[j~m}^l.>K.>K5BP/9G/:H0=K.?L(9E.;H1AM3DP,@O+>M7GW/?L+9D1@H)7C+7F"/=1=K7DR2@L-<D,8A+9E"3@2BO9IV1?K(1;(/,=K9FR7CM)1 *$-(1;!,5(1?*2@(5@)8C,=H3CO:KX9JW2EL5EN6GP5FP5CLN\eKZcN]f?PY7JR7IQ7JR7HR0?H&2<5?I4BO"/+7C;GQ!+#.!*3&/#,5'0:*3@&2>2@LAQ^EV_BU\BRY@PW?OVAQX@PWAQXCSZCT[2>EAJS+5>DLS05<+1947<48<1:@@JQEQWESZFVXBRUAMQ<GK?IPAMR1>F>MVv†’w‡•l€r…–cvz^qnXkbRdV\nay‡„cqxw“cp~z†—v„—{‰}‹Ÿfwˆhwˆdq‚(7D*71>K1<J"/=3@N4DQ,=J2BN3BP1@Q+>M(;J7GT8HT)9F.>J-=I.>K&5E4CS7GT3DO,<I0>K/=I(8E4DP8HU8FR(4>(0(:G3DQ7CL&18"+ )1%0:'0>'2@+6D*8F0<J,=J<KY:LW>P[8KS8KS9LT9LT6GP5FO:KT>LU5IQ9LT8NU9NV7KR5FO+53<E5CO!/;+:F8DQ",!+6"+5$-7'08&/9'0=(4@-;G?O[CT]>RYJY`GW^=MTAQX?OVHX_AQXGW^/:BDOW6>H@IR-6<16=/6=45>/6??HQIU[GU[DRXBRTEQU=IM=JP=IN6BJ<KT`p}eu†N]nQdw:JPWfiVf^M^Q`ndhts„˜ir…Wfobt|Xht\mzOancrJYbJW_-@O1@P5DT-<L.;K1@Q1AR-AP0@M3EQ*=L)<K)<K4GT9KV,=F3CP4DQ4DQ)8H7EV8HT2BO.>J3@L->K$4A-=M<MY7EQ*6@!,3,=N4DQ6DP%/9'.",6)3<*2?)7H+8I,9F->K0@M9IV<NY;MX;QX6LT:MU=OW:NU;LU=NW<MV;MY<MY;OZ<Q\:LW4EQ*6/7E/@M!.:+9E7CO(5",6!,6"+5)2;&/9&/<'3?*8DAQ^BS\-AH$4;(/ 07AQX<LS&6=(8?$5<+4?BLV2;CBLT28B-5<06=4:A39B>GPLV_ESXCTZCQWCQX?JN=JP9EK6CK;FP;IVUfs[kxSbtcv}kz}bnn†Œ‹“‘{‚…qwƒ‹–_otv‰arzp„‹bs|ex~lz€brt2IX0ET6IX-<M,;K1AQ3CS+>M.>K8HX2ET+>M)<K2ER9KV+<E3CO6FS6EU)8H3BR8GW3CP2BN6DP1BO)8I2BR6EU6BP-9B"+5/@Q4DQ9GS)2<$.#-7'0>'4?)9I+:J,;K/?K,<I4DQ7JU:LW5JR9NV<QY9OW<NVAT\EX`?RZ;JW9KV9KV;MX9LW8FR!.94<I1BO$5B/<H7EQ(5!+4#-7",6)1:&/8%.;%1<.<HCS_AQZ&9@5EL:JQ?OVBRYEU\<LS@PWCTZ3<FEOY1;EDNW07@18A39?27>1:C=FOHU]BSZFV\CSYESY@LR>GOBKS3?ELW_ERZ>ITM]fZirŒ ¥aqw¥°·†‰‘xz‚{~ƒ‚‰Œ{„‡^mv€‘™FVbƒ• n~Šx‡{ŠDPV0M[0LZ7M]1EU0AQ2BR4DT.AO0?L4CT2ET*>P+AP4HT;OU,=E3CO3CP5CT+:J2AQ:IY2CO/?K8FR3CP(8I1AQ9IY7HT2>J)3/@Q1AN:HT(4>$.%.8(0>(5@(5J+9L-<L0?O6FR9IV5DP;LX5MU9MU:PX:OW@V^AS[AT\?RYBQ^=LY:LX<NY9HU6DQ"*82:G3DQ&7D.:I2AM"/;"+9#-7 *5(19*3<*3A%2>(7C?O\HYb:NUBRYEU\CRY;KRFV]IX_:JQGW^1=H>HR.8CAIS09C.5>04>49@/8A>IQER[FW^DTZBRXDRX?JQ@KN=HK<FM7CI:FLAOVSagVbir‰K^epy„ccstp~lhrvyx„Š‚cn~w†—z‰šsƒ”q€‚goz~ˆ?O\?NZ7FR1?K1>K2AQ/?P.?S/CO.AN3FU.>O*:K5EU9JX0@M2BO4DQ4DQ-=J2BO8IU5ER0@N4BN0@M"2?1AR8HT6DP.:C",6+<I:JV4EM(7@%/%2<'/=.6E*:A+9E,<I/>N.=N:JW8KV9MT7JR;NV<OWCU]>QYBU]<OWAT\=QXBU];NU;NV=QX3BJ(2/8A.<I+9E0<H8DN&0:$/8&/9&.7$0;)2<+5?.8A+4>=LUDU^>RZ>PWDV]CV]@RYEX_FX_ASZEY`9EK<HN2<C?IP.6=6;B06=4:A7;D;BILX^KX^EU[?SVARU6HJ?HS:EN7AIGPTCLOGSTT`dQac7JRJ[bS_e[gjo{~›¢£°¼|‰™Xqvt†r}ŠŒœl€m„Zovo|„/>O8IV<LY0>J8ES4CS/?P.?R3FR2ER6IX0@Q,<M4DT8IV-=J2BO3CP4DQ-=J0@M5ER0@M.>K/=I2BO 0=1AR?O\7DP0<E"+5+<J9IU3EM+:C%/#/9&.<,5C,<D,:F*:G,:K/>N9IU;MX>RY:MU9LT8KS7JR@S[@S[>QYCV^=PX>QY=PX:MU:MU2AJ ,61;D;JV*8D6BN8DN*4>",6%.8&/8%1;)2<+5?,6@7@JAPYGXa-@H7GM2AH+;B1AHCSZ#3:$4;%5<)/4AG09@@KQ08?.7>27>39@9>G:BIIU[ESYCSZCSVBSV9JM<IQ;GM:EI?HL:ED?HKNZ\OZ^5HO8FM[gk_kmZeikv}t‚x‡—_u{n~†‹”¢r}‹t„‘u‡•ct}x†':H%5E$1!2=$1,;K1AR0AU1DQ3FS4GV.>O.>O7GW9KW.>K4DQ6FS7GT0@M/?L9IV6FS-=J1?K-=J#3@/?P7GT8FR0;E!+50AN9IU5FO0?H&0!.7&/<,5C+;C,:F):G-;L,;K3CP7IT:MU8KS9LT=PX?RZ9LT=PX@S[CV^AT\?RZ=PX8KS<PX4CL$0:09C4CO-;G/;G:FP,6@!+5%.8$-6%1<)3=*4>,6@3<F>NW>OX!5=)9@%5<-=DAQXAQX4DK>NU?OV9DJBNT2?DBLS29@/8?27>5;B3:D6=DHTZESY@QW@QTCQT6EHETZ<HL6CEAIIbjj^gfV\_NVY?MTT`d\ijJVXFRUix€ƒ’¢i|Š¥šU\i}ˆ–o~‹u‰”_o|PZd,?Q*=K5FS,<I-=J.>J3CS3EV3FS6IV3FU.>O,<M5EU9JW.=J1AN4DQ6FS.>K4DQ8HU4DQ/?L2@L3CQ%5B1ARIYf/=I3>H!*42CP6FR0AJ-<E)3#/9&/<.6E'7?*8D*:G0?O2AQ5ER:LW:MT<OW;NV@S[=PX9LT@S[EX`?RZ>QYBU]=PX?RZ:NU4CL&2<1;D4BO/=I2=J7DM/8B$.8)2<$-6*6@+5?-7A-7A5>H<LUCT];OWAQX<LSAQX:JQGW^AQXEU\DT[6DJ<JP2>DBKR+5<19@*3:4:A29B0:AFRX@NTFSZDTVBRT8CGFVXBMR2?A=FEMQRBGG:AD9>CCOSP\^forIUWKV\‡–£§»Ì³Ìá®ÀËy…fm|t|Štƒ{šlz…\er4K[1FT:NZ.?L.>K3CO1AQ4CU/BO3FS6IX/?P*:K4DT6HT1AN1AN3CP7GT0@M0@M8HU7GT/?L2@L4ER3CP+;L3CP4BN3?I)3=->K<LX7HP,;D ,6+5)2?.6E-=E-:G+<H,;K0?O8HT9KV<OV9LT<OW<OWBU]<OW?RZ;NVBU];NVAT\<OW;NV>QY4CL*6@09C6EQ3BN+7C<HR3=G#-7)1<&/8#/:-7A.8B-7A09D<LTGXaAU]DU[DT[@QX<MSBRYFW^P`gFW^;IO1@F3>DFRX-8?,3:.6=-6<3:C.8?EQV@OU>MSCNRFRV6@E@PSIVX0<>>FECLKGMP',1/7>?JNEQRNWZ?KM>KR\mx]t„[t‰_tƒ@O_LVgw„”x‹šr‡–‚’¢—¨2J]4L\>P`/@M5EQ5ER2BS5EU2ER3FS1DS-=N)9J5EU7IU2AN3CP2BO4DQ.>K3CP9IV7GT.>K=KW.?L"2?3CS1AN1?K3?H,5?,=K9IU6GP-<E'1!-73;I(1?"2:9FS*:G,;K.=M5ER:LW<OV8KS<OW>QY?RZ=PX=PX<OWDW_?RZ>QY:MU?RZ:MU6EN-9C,6?4CO2@L*6B?KU7AK!+5*3=)1:)5@.8B-7A.8B3<F7FOEV_=QYKW_ANV4AI#081>F>KS(0 )&4:0>D7EK:FL/9@&18+3:/7>18A.8?COU>JP>MS@LP>JN4<@AMQIUY1>?:BF<EH>ILhtzx‚Š>IPDPTN[\?KM8GJ4GNp‡–n‰šh€”ƒ“¦ ”£´“ªº§¶“§¹‰–¬0HZ4JZ<Q`2CP4DP4DQ1BO5DU5HU5HU3FU/?P'7H5EU:KX5DQ4DQ3CP6FS/?L4DQ9IV;KX/?L3@L/?MYiv6FV8HT5CN5AJ,6@+<J6FR6GP-<E%1;'4='/=19HP`h(6B0AN1@P.=N6FS=P[<OW8KS:MU<OW=PX8KS=PX>QY>QY:MU<OW=PX>QY>RY6DM0<F09C6DQ5CO)4A<HR8AK!+5&/9&/8(4>-7A,6@-7A/8B4CL;LUBV^$19$19.;C1>F8EM@MU5BJ;HP8IO:HN.<B<HN4AG-7>*5<+3:07@,6=BNT?KQDPVALP:BF5>A;HMGQY1<@=HL;GKCOWGXa2DP9IPCQXIUY=JLFUX;LS|’}˜¥r¦_vŒhzj‘^zŠ]{]uŠ\p‰2M_+FV8M]/AN/AL4DO4ER:JW3ES3FS4GW0?Q*:L8HX:KX3BO/@M2BO7GT.?K0@L6GS;KX-=J8EP9IV¯¾ËDSd7ES6CO5AJ/9B.?M6FR8IR/>G#/8&3<3:GmsSbkAN[*:H0?O-<M3CP:MX5HP>QY9LT>QY?RZ=PX<OW>QY=PXARZ;NV:NU:NV:NU:GP5?J-5?4BO7ER)5B:FO>GQ*4>&/9)1:%1</9C-9B+7@/8B.<E<MV=RZCNX<HQDQYAMU:GN8EM&3<=ISCRX>NU7EK;FL;GM;EL:DK6>D6<F+4<?KQ=IPCPW?KO4>A9?C>GQ?IPHRYMV]KY_<PV@S_(AN4FP<MTHSZS^bFUWBU[OcoPitBcKe‚Tl„Pj€Gj~Lp…Li…Tj‰4EP6EQ4DP/<J/<0AM8KW.DP2JV)?K9LX1BN(9F6GT7JW.AN/;J6CQ4DQ*9J1@P3AS0@Q1AR0CTMbq¨B^g2LU/AL:AO03C.=H9KV7JR0?H)/='-="2C«ÄÕMejH]e/AL.<M1>N7DR>LX?PY9MU>QY?RZ>QY:MU?RZ?RZ>PX3SW>RZBN[BNZ7IWsŠ•*AH"1:6BJ;HP.;C7GP5FN2>H1;E.7B$5>,5>43B12A0<H$6A/ALHSa=TT>RW>PWAS\*:C(6<>HMJWT>RW9MR6FL5FL8GM:GL?IP=GN9HK7FI;GK>IM@HLINS:@E=?D4AG?KQANTFPXCMT=GNBIP@FM7BH?JPGV\FTZJV_HX_JZ`P`fN]hO^jM\hO^jM\hL[gM\hN^j*<I 3@%6C.>K.>J3CS6JX=Ra*BNG]i5HU<LY):G6GT5IV.AN0<J4AO2BO+:K0?O1>Q8IZ2AS/CUtŒœ€›¦;V`9R\4EP6BN07F0?K8JV7JR2@I.4B2;IBRc‰¤´OfkEYaEWb1AN5AO;GV<MY=NW;NV=PX?RZ>QY:MU>QY>QY>PX3SW9NVAMYAP^‰Ÿ«TnwEYd!3;5AH;HP4AI7GP7CM4AK8BL8AK-AH1<D58C38B(6B‹«j~Š?N\>RW:OSASZ?PY?MW@PV:LOERT@TY<OT9IO9JP<JP=IO>HO=FN<KN8HK:FK:EI9DH9CF39>;@E@LP=IMDOS>IMBMQ>JM<GK7BF:FJ;GKCQWGU\JX^GW\EU\GW^EU^FV_EU^HW`HXaHW`HXaIYb4LX,BN8KZ/?O-=M4DT5GX5IZ~—¢Lbn?Q^6GT*;H6GT7JW1DQ1=K4AO1BO-=J,:K4CS/@O/?O*>P§¾Í{–¤8S]?U`7IT4?K27G5CO6JQ7JR4BK09F5=KScsqŒœLglH_fCT_+;I1=L8FQ;LU:KT<PW9LT9LT>QY;NV>QY=PX=PX7RX<QY>MZ*:G¨ÁÌl‡“I`j>MZ1?H:IR8GP5@J8DN7CM;GRAIT0FJ:HN>GP<EO
*µÍÜu‰šASeAUY?PXBU[@PZDV]=PU@SVCVX=QVAUZ?OU=KQ>MS@LR=JPBJR=LN8HJ8CG4AD0;>+7:6?B=FJ6<ABGL/9<ENR=HL3=A?KO;FJ>JNAMQGVYFUWIW]JZ`HX^HX^P[cR]eS^fVahU`hWbjYdkYdl:T`5K[4JY1CT5GX<M`8H[;Pa…©H^j>Q^/@M%6D3DQ6IV2ER1=K3@N1AN-=J.>K9IV7GW/?P,AW¦¾Ğˆ¢°Tlx<R\:LW5CO8@M4FN5IP4IR1BK;BO7AOŠŸ°}š¬WpyI_jEYd>MY(8D4CP;LU;LU;NV<OW=PX;NV=PX=PX;NV<OW9U[>PX2AMFXh±ÌÚy•¢CXgL[h6JP5FO9HQ;GQ8EO=GO>KS?KT6ML:LNBLTAOWJcn°ÊÚi–DWnDU[ASZ?QW>QX@SZ@TY?TY@UZHX^EU[?PUGU[APU@LQ7CI7CI?MS=KQ?NS@KQ:FL.:@8AI#.58<@>BF9>CAJMDOS;GJ@OR@OQFRVEPUJY[JY\HV\BRXIY^Ufl_hq`ir^gp`hqajsbjt`hr^gp0KWKdp1GV-AO1CT0AT1DZGZosŒ•Rgr7KV6HS+=H1CN5IT/CN.:I5BP4DQ2BO1AO8HU3DQ3DQ1I`›³Ç†Ÿ¯Nfq=S^:LW.;H9DP,=F6HQ2IN7HQ?JV,8I¯ÇÖUt…F]hG]hDXc9KW*;C3DM=NW6IQ8KS<OW;NV<OW;NV=PX<OW>QY8QW>PX>N\Ym|˜¶Ät‘ H_oETdH\g1CO:HQ:EP>IQ>IQ<IR>KQ9PP;MOBMU=NYi‚‘°Áq‰@UnCV]BU]BS\FX^BT[CV]>PWI]cEV]HY`IV^IV^ANVCPXGT]KX`NZcVckUbjTbjWdlCPXLW_S_g\]fX^dPX_XbiS_eP^dP]cL\cQ]aUadTchYgmWejXhoXio\mt_jq`ksbmtcnualtbmt`ks^iqŸµÁ3GS4ER1AQ4DU7H[3I[|‘¦ƒœ¥Lbm>R]<NY4FQ3EP5IT4HS)5C1>L1AN2BO6FR>NZ6HS3EPOh‚˜°Æq‰›Net?S]BT_7GS8FR5HN4KQ2HN4GO7DQO^n’«½o‘¤IaqAXgEXcDW_(9B5EN:MU;NV<OW=PX<OWAT\;NV<OW;NV?RZ7NS<OV>N[ˆŸ¯¯ÀmŸOgyt€•_z‚:NY:JW@KUALT?IR=LQ?OU?SUAQW<LR7JU‡¥³±Áe€•BVn>OY@R^EV_BT\FW]CPY-4IV`=JRCPXERZFS[KX`MZbR_gUbjScjRbiPagT`hUbjZgnZgoWdl\enYaj]enWaiZgoZfnWgnVfm\go\goXemYgn\gq\ks\ks]mubmw`lv]irZeo]isalv]hrVak_qx0?HDR_8IV0@P.BS6L^³Ëİ†Ÿ©Ndo=P[8JU5GR6HS7KV2FQ0<M5BP0AN3CP3CO=LY8KS8KS·Óì‹¢¸w BYhK]jI[eCR_.>J:LR2IN.GM5GO)9Feu…‘­¾eˆ›]u…D[jGZeGZb/BH:MT6IQ9LT;NV=PX<OW=PX;NV<OW;NV>QY;PX=NZ(;G¾×ç~ ¯m¡Hav¯¾Ñp‹—>T_5ER>GQDMVBNSCQWFV\ARWERZCMW6JU£ÀÎ‘³Ár¢BWm:MZ?Q\8IRARXHUZXaj
++bepSaiYfnYfn[hpWdlZgo\iq]iqYhrWfoYhq[ktUdm[jsZir[js[jr]ktZjrZirZir[js[js]lu\fo^hr]ir_kw^jv\kv\iwYftWgsQamO_kRbnM]iM]iM]iN^jgsy=IQDOY:HT6FS4IX/HX¡ºÌ…¨BWc6JU8JU:LW7IT6KV4IS0<M8DR0@M7FS8HT(9ANah §t¬Ws‰OhzNdsL`lrƒŒ†– “£¬Œœ¡z”{“—“¦­ª·Â·ÅÕŠ¥µk‘¦[q„AXhF\fO`gI[a@RX%7>&;B(9A)<C-@G5HO7JP?QX@RYBRZ<QX1@Ks„“Ÿ¸Ç³Æk Tl€ÆÓê‘®·5NZ<LX@ITAISALR>KR9LM@MVAITHQ^1CO²Ğİ‘´Â`}BWj@QaNbmYjsYhm]gmbjr€‹41@gu|gt|cpxanvcpxamvZkqSdkZhpWfn[irZhq]ktXiqWhq[ltZlxYlvaq}`p|^o{ao{_ny^lxem{fm{amxbl{_hv\huZeuR]nL_lL_lL_lL_lJ^kI\iG[hFYgOjp2IN;LU8FR6FS3HW/JZŒ¬»v’>V\8MU3HP7IT4ER1AN1AN18;MX]ozey„k€Šj}‹h~ŠPfsE]iG\gJ[eO_l^n~ƒš¬‚³¤¹Œª»¯…¤µŸ½Ñ–µÉ“®Ãƒ³rŒ¢wŒ–OfvI`pG^n{’¢˜©¨¶”®º•²»¨µ†›ª ²ˆœ®¥µ€š«ƒ¦²‡¡°¦ÄÒ°ÎßšºĞ€Ÿ´³Ur‡¸Óçv›¨Gam>LT?HPESXAQWHV[HSY[ggO^cZp{d~¬ËŞ˜²Çd@Yi7R^FakXkr`pyvŠ,1>kp~3YhpWgo\gr_ls]jqanu_ltbntWkyWkx[o{Xmx[ny^p{]oz\nz[nx^nz`p|aq}dqdqer€er€crz^nz[jvVgsPcrL`rKcsNfvOeqNepRerWguVfrUeqZgtWfoPjp;PV5HO;KW@P]2ET˜±ÁœºÉYqw:PU6KS4IQ:LW5FSN^kbr~t‡’\nyRdoL`kM`mK^k>T`>T`4LX=S_\lyZkx>Raaxˆ‚³t“©ƒ¡±¬Àˆ¦¹®Áˆ§º…Ÿ´w’¦w’§h~Œ\s‚Yqƒ~–§ƒ›­‚­’«»«¹\t€€˜¤Œ¢²¨º™°Á“­½“¬½•³Âš¸Æ¦ÁÒ–´Æ®Â†¥¼t”«y–ª§Á×¦²<VbCR^ET\K[d>SZFXcQ]jK\aN`jXq€¼×ëœºÏŒ¨¼i“CZi=Vb9P[Ymt`kuYclX`mt{Š06Ebs€_o|_o{_o{`nz^lxao{_lx[kxUfsTenTenSdmTfoTfoZirZjv]mxYiuScpScpYiuZhxVduTfpXhtUhuSfuSftRgxThyThzRhtPcpPdqSepXhuZjv\ktXgp\v|=T[3EP5DQ8HUL`l—®¾p‹™G]b7LT5JR6GS9KV8IV8HU:IY7JT9KV>P[<P[ATb5HU9P[8OZ7M]9OZ¾ÑŞRboBVe9QaRl}€Ÿ²s£y”§„Ÿ³‡¢¶‚±ˆ¤µ›¬y”¥n†–n†˜Wp„t¡y’¦š®‰¥¶†¤²9JWl„“‹¥¶‚ ³”´É’®Äƒ²´ÈšµÉ•²Ç®Åˆ¦¿‰§Às‘ªŒ§Àœ·Ë…¨¶<Vd>MZ\myyš›¨‹¤³°Â¸ÅªÅÖ¥ÃÖ°Ğè™µÎƒœ°^t†DYh=T`9MXWhqbnxCLWHS\DMZ%,;as€^o|]n{Zkx_p}YjwQboYjx]jq]jr^ksbowiv~dqybowhu|ev‚jz‡jz‡fwƒ`o€[m|TixPetPfuOfuQetNbsOctRduPbsM_qOcnPdoUfr_q}XiqRclRakQ`i^wCYd/DN6HR8IV6GTlH^j>QY9LT5IP6IT5FS8IU8HY:JZ7JT;MW8JU9LY6IV7JV7L[7L[4N]:Q`®ÂÒ@S`BUb=Ra7Qasx¦|˜­oŠŸ… ´x“§‚®}œ­k‰šy’£d}‘h„™[v‹|–«t’§Š¨»Œ«¼DP`AUf‚Ÿ°„¦º¤»|³†Ÿ·”ªÀ˜¶Ê”´Ë­Æ†¤À{™µz˜±Š§¾‹¤½u–£B\l?Q`Pdu–°Á’±Ã–²Ë—¬Ç‰¬¿¾Ö«Ìã¦Æİš¸Ít¡]q‚GVg<P]GYdTcl\iq`ksLU`8DNco|_itdoygr|hs}lt‚eq~huivƒlu|nx~jt{ku}r}…v‰r|„oyap€[jzSbrM`oK_pKbrIbrHaqGbrF_oGaqKcsMasPctTduTdvPbmYkvfz\mvPajL_fIZ`EU\VnzDZf=P]<MZ:LW4FQ>P[9KV7HQ6GP7GS2BN7HU7GW9IX5EU8JT:KX8IV3FS6IV;M]5JY4IX3K]E^n•«ºRhs7MY6K[<Sc<Scay‘x‘¥{”©ƒ›¯œ°{–ªpŸf„•~›«a}‘f–j„y–®t‘¦—µÈmŒUaq2FXs‘¢z±¤¼w—°€›µ¡·Ï„¤»•²Ë‚ »{™´y—² ¹©Á—±Ë|š¨AXh:K])=N”°Á} ´’±Ê—®Ë‡§À¿Ö‡¦¾v”©l†šUl~M`oK\iCVcDUc?NWeszgrzZem1=Gkxƒ‚‡{„x~ƒu{x€‡z‚ˆw~‡oxt~†s~…s}„o{…lwit}anz[hsTctN`qM^oI\mI_pI`rGbrF`pD_oIasJ`rOcuQds]m~aq~dt‚\mvZjtVgqN`gL_fIY`FV]BRX]tƒ@Wf8NY7JW9KV5ER7FO7FO<KS7EQ5FR7GU5EQ,<L2BR5EW5FS5FS3DQ3GS3FV5GV2HV5JY+DX=Ug•®¾Pfv@Va6LX:LY7JZ8PcMex„œ®€˜­y•©z•©k‰q¤o‰™i–]yh„˜z•ªp£©ÈÛ ±O_lAVf3I\^wš³šµĞ‚ ¹ƒ¡¸¯ÆŠ¨Á€¡¼w˜²¸nŒ¥©ÃÜ ·Îk…”AVgGVe8K]t¡v—ªªÂ‹Ÿ»y”­pŒ¡GauB[n>VfCYhBTbFWaBWg>Q^>OXiv~v‚‡}‰$/7S_h…‰‹„‡Šz€‚{€„v}ƒw‡x€‰xˆn}…mz†iy„]lxWgsN`oObpM^oNasJ_rI_qG_pG_sHbuJcwFbvPfxNdwShy[o~`q~euYiu]luK\eJ]dHZaEX_FV\AQWAPWBRXI`pNeu9N^=P]<NY?NW=JR<FN2@M1?K2@L0AN#2B#3C-=N4DU7HU6GT4ER6IX7JY3FU/DU/CT3KbŸ¸Ì‡ ¯D_l=Ua5LX2ER;LY7N^7M]Ibr{•¦w’¦n‰q¥n‰¤x’¡q‹œh€•f}”y”©oŠŸ¶Òã†£²Zr|>T`?QbQ^u‚”«…µ~Ÿ¶‡­Â„£º¡¹}Ÿ·x›³x—°}´®Èİ¦»c{‹IXgETd8KZUp~ƒ¡¯e}’L^tCXjEYl=OaG[h@R]DUa=RZAV]8O`8N[=QY[gox„Šjt|":CMclsgsxis{lw€iw‚`o{[kwZjvUhwQcrQftLcrG^pG_sG`sG^uF`pFaqHauIbvIcvKcyMe|Nf}Xi}[n~aq‚ZkxXhu[luN`gK[bL\cFV]M\dGV\CSYDTZ=PS;NQLctAXh=Ra9KXCT^DQYEQXIRZDO[6CO-:F,9G$+;-<M1@R5ER6FS3DQ2FU4GV1DS1DU*=N.E\²Ëß›¬Zuƒ<T`FYd9JU@O\0JV;S_=VgB]nw¦s¦p‹¥u¬y‘ lƒ–d~h•~—«©¹«Ç×­UtyLbm@N^NTiz…—©Ã†§¾¬Á|³†¨¾} ·y›³ ¶’±Æ–°Ä~˜¨Shw@OaBM[?P]*FQ2O]9Qa<K\AP`>M^BM\ANZ<MU?RY=RZ<QW6Ra9R^@RYCRXq{tyqv|gkoVdoTdpTdoK]kM`qJ`rI]sD\qI`oF`oE]nF^rE`tD`y=]tFeDcuHcwJexKg{TlƒUm„Un…Vo‡lw‹]i}_nWguM^hEW^GW]DUWDS[HX_>NTCTYCSYASU;OR@SVf‹D_h6P\6P\5O[>YgB]kHcqTjtATaq‚‘¡o~yŒš•¤t‹šr‡‘—¢Š›¦œ‘x†¡®‘¬º£ÅÚ¥ÃÖ™©Vm|BXdATa?Rb8KZ>TXBZcF\i?ZjF`tk‡œp¦m‰£w’sŸj†–g‚–}—­­Â—µÈ‰¨¼ƒ—¡7MY=P_.BSx£¬Á„¤»¤»ƒ£Â‚£½y—³{š³‚·”±Çƒ²d€–FX^>QY@R]=OZ7HU=NZ9IY;K[;J[<MZ9JW:KX=N[<NY;MX<MX4IY3K[5M`/J[Gcx>ZoA]rB^q9Xr>Yt>XqBZsF^tBZqC[qF`sM_tK_tG_rB_tFcwFbzMgSiƒNk„Yt‰Lg}^yŠWqWo~WlxLanHfkQjoEX_IY`IU]GW^ASZBT[=VV?TV>NTDOWEPXDOUCQT>OR_x„Piu7Q]4N\5O]:TbE^nOhx˜¦¤²…˜©Š®€“¥“©º„œ®œ¶Æ€š§‡ ®‡¬“¡‹¯”«º ¹É™³ÃŸÁÕ•²Å…®Vm|F\gI[h@Rb;N]DXXCV[K^fNaoVi|F`pv¡}—¨|™§z—¥o‰qŒ¡v“¨´Ñæ»Î•³ÇXpxC[g@Ud9M^tŠ›’ªÁx•®„¤»‹©Ã…¥¼€¶{–¬d€•Up€F]q?YjBT[BU]>P\:LW;LZ8JV:JZ9IZ4EQ6GT8IV<LZ8JU;MX=OZ:LW;LV<MU9LZ3HWJaqD[nC]mD]qA\qC^sD_tH_uBYpIbuJbuA]pKbzLe}Kf~MlƒHg~Kk‚Vpˆ]t[wŒ`xIcwpˆ›¤´jKamNbnG`fI`eFX_GW^CPXAQW@SY=PW=STAUY>NUBMUFPXAMS?NQ=OPl†”Sm{6P^2K[5O^:ScC[mLdul…˜š®™­v¢ƒš°~–«~™®m‹Ÿq¥lŠ}—«{“§‡ ´‹¥µŒ¨¹©¹˜¹Î–¶Év‘¢k…’?Sb@Ud@Ud=PbKZ^N]dTemZlvK^kYo{Umyw˜~œ«z–¦{–ªš¯¡¿ÓŸ¼Ñ™·É„¢¶_{…?Ye>Tc.EUwŸ…š°‡Ÿµ™°`yk†–;Sf@Wg>Vf0EU<S^5HV<NY;MX<NY=OZ8HV:KX3DQ5FS:KX8IV9JW8IV9KV6HS;LX:LY@KN@NT>NT9KUThwLcuGbuKfzMgzLezHeyEauLh{Kf~Hg}Gf|IfKl†NoˆSuKk‚Po‡Sp…Ok€jƒ—Œ ¶y¡}‘£p†–atI]hN_kCV^CT^BQZ@OX?NW?NW>OX:MU9MS@QZ>NV@LVAMW=KQ?MP=OPz’£Xq5N^6N`1I[;SeAYmH`ti†z–®„µXsˆu§g‚œWuqª‚¡º{š³|›²r‘¨}˜±Œ©¾‹¨½‘®Â¥ÆÚ›»Î‘¬½n‡—<RaE[j=Tc@WhL_hSeqXm{`s„¦µ† ­‡ «Š¦¯‰¦·ª¿‘«À”²Æ°Ìå¡½Ò—·Ê€¡±c€>Xf5Q^9Rb>Uem€’?TfBUl:P^>Td?R_BVc9KU>P[5GR:IV<NY7IT4FQ+=H$28IV1BO8IV7IV5FS9JW6HS9KV9KW>QY8LT?MN@OU;MS7JUE^mJg{Mj„JhˆPm…PrˆXz“Vz“Tx”JoŠVz˜l«z¼£Â‡©Ç±É¯Æ–¶Ì•°Äˆ¥¹{¡]q‚UgyPdsL]jHYf=OZBU`AR[DU^>LV?MVAPY?PZ;KU<MV>MVAQY;IU>IVBNXAOUBSV@RSr‹›_wŠ5M_/GY1I[7OcC[oNfzr«v”­w“«b”Ie~=\u6Tp=^{Xwc‚›l‹¥kŠ£}´ˆ§¾µ‰¤¼¿Öš¹Î|˜¨pŠšC]k;Uc:Sc<Ud>WkE]qC^r‡¡¹„ ¸}š® ²†¨¶€š¯€Ÿ±‹¨½§ÃÛ¨ÄÜ”³È‘±Ä}®VsB`o<Vf6O_4L\AUg<K\6FX9LV<NY9KV;KW=MY8IQ6GO6HP@P^3CP4DQ(5,89IU7GS4DP6FS9IT8HT9IU8HU:KT;LU:KT7IQ=OW6JT5LZ]xŒƒ ½{ Â{¢Éƒ¨Ê§É}¦Æ~©É{¨Ê‚¬Ğƒ«Î’¸Ü´Ğ“¶Ôš¼×jŠ¢`}“h…–c~JduRetI\lHYfDTbCT`CUa?RZ>OX>OV>PX4GNASZ7JQ:LSASZ>QXCQY;GQ7FOBQZ@NX@PV?PS=OPšªd}>Wg0HZ2J\7OaBZoNfzn‰¤uªmˆXs‡9Ti5Qj$A]"@]">RJh}s’¨q‘©u–­w—®„¡»‡¥¾ŸÀÖ‰¨½‚ ³VpIcs<Vf6O`4Pa9Yo@`wIg€mŠ¦r‘¬ ¹{œ²x›²y•ª‘®Â’®Ç›¶Î©Èß‘°Å’±Äu—¦[t„@Zj6P`4N^3IX9KZ4DT:IZ9IT;KW:JV8HT7FR7GS7GS7GS5ER5EQp€+!1=7GS1AM1@M2BN9IU9IU:JW9JR;LU<MV<LU2IU7NY5KV2IX9TiŸ½t™½r™Åt™¿y Çz¤Êy§É¯Ò¶Û•»İ•ºßˆ¨ÀZz’Tp†LdzQiyF[kAWc=TaCTaCT`BT_?Q]?RY<OW>PY>PX:RW5MR5MQ6OS4JO;OT9LR;LR<HMBQT>MT9KS=OV<OTASU>OS|–¤k„”D]m3L\4M]7OaBZlOgynˆ¢x”©s\u…Ict-H\,Gb4S4GX,CS™³Ä‹©½z˜®€ ·}›´…£¼¾Õˆ¦»ƒ ³c~Jdt;Ue6Sb3O`7Ug@_rIf|Lh‡¢¼ƒ¢»ƒ¢ºv–«‚Ÿ´…¡º“¯Ç­Ç¼Ó‰¨½‰ª½q”£Wn€>Vh<Wf2L\2M[6LX8HU8HU7HU7IU:JW9JV4ER5FS6GT6GS7FV8GWJZgRbo1AM:JW=NV3EM;KW9IU;KW6GP=NW;KU8JQ7IP6IQ7KR9LS;NV-BQHdxIe†DhŠDd‰GkCjŒBi‹Fo‹Fh‚Hd€Ka~E`pLdtNetPanJZhHXeDW_BU]?RZ>RY<OW>PX:OW8MU=SY9NTEdcDdc8WV+JI1MM2KK=OP:ILCQMDRP9KL@SV=QV>RV>NT=LO{•¢sš=We7O_6O_7P`B[kPhzqˆ z‘¥i‚‘Xn}=Wd0IZ,G_8T7EO/AN{–£Œ¨¸Š«¾z˜±„¡»…£¼Ÿ¿×¯Ä‰§ºu‘¡[y‡9Vd7Tc2Pa;V`A[iLeuTm‚š¯‹£¸z“¦u pŒ¥€›³|–°‘¯È®Å‡¦»‹¬¿y¬h|<Qc=Wf4O_0KY1GS9KU<KW<MZ4CT3GV2ET4GW2FU3EW4GY2AR8GX0@M5ER5EQ8HU6GP3DM6ER4CP9HU<MV:JT8IS7JQ6IQ>PP:IK=KHBNO=MR6J[2Kd3Qq8Sx8Vw4Uu2Vo9\uMj[pƒ]l~QhtJ\gQ_kJV_T\fO\cDSZ=OU=PX:MU2IP;QX7NT7MT9MT#5>UuuCgfMqpRrsPmnF[].15>CMXPLYUburF[\DY^ATZ?NUN[bs‘¤eƒ–7Sd0JZ3L\6Pa@YmMh|x˜¯}š¯}–ª\wŒ7Wj3Sf.F\'5O;R[7M_r‹¦†¤¾„¥¹€¢±ƒ¢·Œ¦Á™¼ËŒ­½~œ¯k…š^y<Wl5Sh3Rg3Wd<^mFbsQj~kƒœuŒ¦|˜³{—¶{›®~µœ¶›¹Ò«Äx—®s’¦x˜¬e€=Wg<Ue6M]1EV3DV5EV7EZ3HR5JT5JT4GU5FS6GT/@M5FT6GO6GP6GP4EN:IR>MV6EN8GP7KS5HO9LS5IM6JO9JL<MP<JM:KN<MO=MS;LS4CKES_M[gKVd<P]CVcOcnWht_pxUfoYioRbhK]iGYdGYdGYdDWb>P[?Q\9KV4HO-;G7CO4@L2BIAWZ40SyqDyk?uf:oaH|jF{iPpPqN€mL…sU{p.A>{‚ƒENQ0BA9SO4OKu“¦b€“?Yj1JZ4M];SeB[pKg{}µt£n‡›h„•4Ue3Sf+CY%3N5LU,BTr‹¦€·†¨»†¨¸‚¡¶¨ÃŸÂÑ‰ªºq¢hƒ—Jcw?[o>Yn3Pe5Wf@]nHcwTk‚d|”i‚u«v“¯w–ªs’©¶’°É‡¥¿Œ«Âv•ªr“¦k„”Ics:Sc5L\8L]1CT6EV5DV3HR3GR3GR2ES2CP0AN2CP4DR3DM4EN8IR9KT>MV;JS:IR:HR6IP6HO9LS9IP<LR=MTAPS@OR:KM;JQ9HN9IP5DM?MYM[gFR`M_lZkyVhsSfpCR_UfnIYcXhqGYdDVa?Q[?Q\>PZ<NY9KV;MX1EL,:F5BN;CQUaj[mqXsq[{tI|oDvj;pcG|oCxiCxjEzlLƒrcˆ|h…”Æ¾‰Å½ƒÆ¿„½¹Š°«ˆ›—p¡e€”>Xi5N^8Qa;SeB[oLeys•¨l‡œv£Uq‚<^m0Qd.DZ 0G/FP2H[Œ¥À ¹†¨»}Ÿ¯|›°†¡¼§ÈÚ­À{™¬rŠ_xŒD]r:Sh7Sd7Vi@^qGbwOf}Wo…t¦t¨t”«y˜­w–­†¤½‰§À‰§ÁŸµŠ©¾w—ªr‹›Rl|:Sc6M]7K\2CT3EV5DV4HR2FQ1FQ4FQ3EP5HS9IU8GT;MT4FM3FM<LS<LS9IP9IP:FN7GN8IO:JQ<IQ;IO>MR>MSCNT;OS;NS7IP9KRL]fJZfO_k`p|]mzTdq[kwUdpOalHYeGZb>RXBS`=N[AR_;LY7HU9JW:KX4FS1AM6EP6>L!+2;EBNRFXWf|xTwJunN|rM}tExnG|rHqKƒv?€pG†wC€ui®¥qÀµuÂºr¹®†Ä»~œ¯f•B\m?Xh7P`?WiHauIbvt“¨r¢o‡›[u†8Zj5Sf)?V!.EE\f?Ugš´Î…£¼‚£·~ ¯q¥Š¥Àš¿Ğ‰ª½v”§w‘¡¥·Zq€>Wh4M]:UkC^sHcxNh}Xsˆw”©}š¯v“¨†¥º~´‰§À‰§ÀŠ¨Á†¥¼³~±rUn~<Vf5N^/FV2EW3EV4GV6IV3FT4FQ5GR6HS3CO2BN:KS;NT;MT=MT<LS=NTANV>KS<IQ:GO>KS>KSANV:GPALT<GO>HP2EK9KR:MSFW`N`hRbnP`lO_kP]kKWfJ[fGWcBT^?S^DYc<Q[<MZ;LY7HU6GT6HU:LY2CP8IW1BM2@L<FP"(1;CJHQV(21&&*CA
)&?]Z`‚}V~wS~wQ~wU„|J‘€DƒxEvM‹rº°o¿¶}ÍÄ5‚zu¤m‰BZl?XhCYi@VhMeyc|v–«s¢~•§\v‡<Zk2Pa&>R$1IAXb8Na£½×‰§Àt•©£²Ÿµ‘«ÆÁÔˆ¨»}›®§¸Wn~L`o<R^=S_8PhBYpIdyPm‚^zw”¨w”¨z—«y˜­t”«ƒ¡»Š¨ÁŒªÄ¡·³~±v‘¢\x‰;Uf6O^1HX3HW4GV2FU6FS6GT6HS6HT5FO5FO3EN4EO;KQAQX:JQ<LSBNV?LT9FN:HP<GO<GOAKS?LT<IP5AI/<D>KR;LUEV_^ow[ltO_kTdpQamO`lKXdIWbBR_@P]?O\>Q^:NZ;N[;KX7GT3DP1AN7GS9IV3CP5FR0=K.:F1;E")35;@JOR"'*"''46-/$"!=:Xurs‚~rŒ†ZŠ‚:€u^¯¤o¸±M~zg„…y”¨oˆœNfx?VfAXhF\nf~’€˜¬t”©~—«q‰›f€=\k/M^(=R!.E1HRAWi©Âİ‰§À}²£³³”®ÉœÀÓ„¥¸­ÀŠ£²^s‚3FS7IT3FM9RhE^rIdyPm‚ZykŠ¡{–®{—¯¡µ‡¦¾ƒ¡º®Ç‡¥¾Š©À{š¯~±|–«fƒ“?Yj2K[6M]3HW1FU4GS4ER6GT7IT6FR8IR1DK6FM;KR;KR=MT7HN?LT>KS<IQ=JS@KS?JR9FN9FN<IQ5AKCR[=LTCRZdt€]myu…‘Wfs^nzK[gAP]HXdGWcBQ]JZgAQ^:KX:KW8HX9IY:IY7FV8GW6EU2AQ5DT0?O0@P,7H%.='0;%,8>CEJM&)- #(-/527:48;7>A!!"1-&FAc‡r™—s‡•šs¢u¢^vˆRiyj‘p†˜y’¦ƒš®{™¬ˆ¡µŒ¢´x’¢:Zi0N_(=R!-C4>1GYœ¶Ğy˜±w™¬{¬†¥º©Ä›ÁÔˆ©½«ÉÜn‡–ZlyJ\g:KT/AG5K_C[mFavKjSr‰j‡¡r‘©u«v–ªƒ¢¹ƒ¡º”²Ë«Ä…¤»‰¨½ ²w•¨l†›<Xi4N]4M^1GV/EP.EQ9IV7HU<LW8GT5FO>NU9IN=MS<LR<LR9JP@NT=KQ>MS>JP:FL6CL8DM7HO<LSGU_7HQVfr[jwGZdj|‡CU`PbmDVaAS^GYdAS^7IT7IT9JW4ER6FR6EV9HX8GW5DT7FV3BR8GW5DT5DT2AQ0@P-5F$+:"+5%-+2527:69= #$(-25-25!$)	 "###$ )>;;<DG"47%9?qŒ oˆœj‚”uŒœwŠ›ezŒv‹ |”§k‰|–§–¨m†–:Zi6Rc&<N ,C3<EZm¨Ã¬Åw™¬€¢±Œ«Á·ÒŸÆÙ¯Ã‘¯Àc{‹Wiv?PX+=D*9?8M`6P`Nk|Gh{UuŒq©y–±{”´s“¦z™°‡¥¾˜¶ÏŸ¸‡¦½‡¦»€¡³…£µs¡=Yj1K[8Qa5L[4JU0GS8HU2BO9HU5FO&7A<LSBRX4DJ:IO;KQ=KQ>LR9GM9EJ/;A5AG7EJ=MT?OUAR[WgpZlwM_jXjuQaoM]kJ\gFXcAS^>P[:LW<MX;PZ6JU<P]2CO6EU8GW<GY4?Q5DT3BR6EU4CS2AQ2AQ1@P,=L+0D!'7(2$';EH!$$ #+-(*	 %&/12!%53,;=..7WLY† °l†—q‹›d}‘rŠq‰Ÿu¥w’§|š«z–§g‘jƒ“G^m;P^1CP-@M0HX¥¾Î·È®ˆ¦¹­ÀŠ«¿”·Ë›¼ÏŸ²„³s‹PetAR^:KS:JQ3DR4GVRg|Nfgšz–®n‹ v•§{š´ŸµŒ¬Ã¦Æİ‘°Ç|›¯†¥ºv•ªq¥e…˜>\o=Wf7Q_;Q]6JU7HS1FQ4HT6KS9KS7IP6FM;IO>IO:PR7LM:MU3EM1AN%7@=KU;KQ?QX:LSWip[msQbkRclVgpPajCV^J]e@S[<OV=OZ@R]7IS:KW4DT;K[:JZ7GW5EU9IY8HX3CS4DT2BR1AQ9HX1@P.=M.>N.;K$/='4#,!&!%/45#"#('   .,,&!"+"O93D($gRQqgj~„r£j…™rŒ¡nˆw’§mˆ~˜°v¨|›«€›¬i…–^xˆOhx@WgCWfMap‡¡²›µÆ‰¥¶›¯™¸Ê’²Ç•´É›½Ğ•¶É‚¢µ~š«azŠEZi6FSARZ8GP/BM/CRJ_u\ty•¯s§u”©w•§~·‚£¹°Ç¦Æİˆ§¾~²~²r‘¦†¥º{œ¯:Xk5N^9Tb:O[9MW3GR4FQ7IT9LT9MU6IO9IP<JO;GM9IK<JP1>F:FP1>J@LX?KULWbSfm\nuQcjQcjL]fHYbK\eFW`GZb>QY:MT>P[7IT:LW6GT7HT6FV9IY8HX6FV7GW8HX7GW7GW3CS3CS1AQ3BR/>N,<L3@P,9I$/=%3!*#!"022### 
$3';.(60-#'&|›´·z™²‡¥¾~œ´€š´{–°z•¯‰§ºu“¦[vŠrŒNhy@Xj™²Áƒ›«‡¥¸®Á’¯ÄŠ©¾”³È’±È—¶Í˜¸ÎŒ­À‰©¼«¼z“£6JY9KU4EM5DL6GS,<L8Oa‡Ÿ¸›µˆ§¾‚¡¶¡´{š´°Ç¢ÂÙ©Éà‹ªÁx—¬‰¨½x—¬€Ÿ´a”:Xk=Wg:Sc;Qa4JU6HV3EP6IP7HQ8GP9HQ:GN;IQ<GO<FM6?H5>G19FAJWZbp\fpfnyNahFX_GY_@QZHYbEV_;LTFUbDW_:MT;MX5GR:LV3CQ3DQ4FR3CT5EU4DT3CS6FV6FV5EU4DT1BR/?O/>N.=M-<L0=M0=M*7H&1?$1%!&)
&((!##% "LFHQMI]]T$) #.'CSL)%‹°Ì†§Ä‰«Ç„¥¿…£¾}šµ’°É®Ç”±Å–³Ç­Âv”§g•–±ÅrŒ «¾”¶Íœ¾Õ‹ªÁ“³É•´Ê•´Ë•¯É¨ÂŠ«Â ¿Ô¬¼tœVlwVhs7GS<JV2CL5FS3Eœ´Ë‰¥¿‰§Àˆ§½‹ª¾‡¦Àœ¼Ó¦ÆİŸÀ×®Å{š¯|›°w–«~±a‚•YwŠ6RcA[k9P_:Q`5KW5HO7HQ8GP7CM@LV:EO:FP:EP2<C:FP6BNlv…¥±À„‘ˆ™¡WgqJ\cBT[HYb6GP?QY;KW;KW<KX9MT3EP>P[2DO6GT2CP6GT3EQ3CS3CS4DT7GW4DT5EU3CS->N2AQ.=M0?O.=M.;K+8H2?O#1A"0*& &6<=%%%ebdLNLAIB&!)"&¦È‹±Ñ€£Äv˜¶„¤ÁŒªÅ…£¼{–°m‰¡s§Ws‹s’©–µÌ¬Â¯Æ‚¡¸¤¿„§Á…©Â¿Ù“°Ë»Ö¬Äœ¶‹«Â ¿Ó©¹l†”OdoDVa;KW8ER7FO/@N*>Qu¤‰¤¿‰§À†¦½“´È‡¦À›»ÒŸ¿Ö¡ÁØ®Å†¥º­Â†¥º„¥·mŠRq„@[l=Vh9Rb:Qa6M]:MS9JS5DM:FP:DM4@L3AM:JV?U\-AL·Ê×•§´Ÿ¶ÂmƒRhsLdkCT]HYb?PY>PX:JW<LX=MY9IU3EP9KV2DN.>L3DQ4ER4ER3CS3CS2BR3CS1AQ4DT6FV4DT/?O1@P2AQ.=M1>N0=M-;K2<M#,>(6"/#-$$)*  %!&XWY@ECCJE87.\RKgXRz¢Åj“´j°xœº€ ½t’­l‡¡t¨{—¯f…œo¦Œ«Ä‚¡º‹¬Æv—±yœ¶£Áa…£†§Ä}Ÿ¼‰©Æ®ËªÅŒªÅ‘°É•´ÉŒ©·[t€Kak;MX9HT8ES4DJ2BO.CTBZq…¡»Œ«Ã’°ÊŒ®ÅŒ«Ä¤ÅÛ À×¯Æ¬ÄŒ«Àt“¨n¢|¯v”§`~‘B]n=Wh:Te9Qa1K[4HO6IQ6DM2=J,8D0>JDVa9KX‘®¹”®¹›©LguwNfr=Va<W^9IR@QZ7HP?O[7GS8HT8HT3CP3EP1CN5FS1BO.?L3DP3CS1AQ5EU3CS3CS1AQ3CS4DT3CS/?O2AQ1AQ0=M/<L0=M/9J+5F$.@!,:&4$. %!!&'	
	 475GHF>3/ub]B)%bŒ±h³q—¹vš¸q‘®v”­‚œ´v‘¦m‹¤p§ ¹ƒ¥¿ˆ«Å}Ÿ¼~£¿{ ¼¤Åƒ¦Çv—¸†¨Æ„¦Ä}Ÿ¼°Í€¢¿®Ç­Â|˜§j…E\d@RZ:JW6BS9FL/?L/AS0H^“®É†¥¾³Ë’´Ê®Ç¯Æ£ÃÚŸ¶‹ªÁ…¤¹z™®s’§{™«w•¨g†™<Xh=Yj;Uf8Rc2L^7NU4IQ+<D8COAO[;JWxšš²¾ˆ¥¯Rm|l†”F]mYn}7JW9KV=QX>NX:KT9JS7GS2BN:JU6FS9HV2EO.?L5FS1BO0AM1AQ1AQ1AQ2BR2BR2BR2BR1AQ3CS4DT3CS2AQ0=M0=M/<L0:K1;L)3D(2C#.<)6$."'$), ! !#()	
++!" &'%&$$/(%$OD=k•ºy¡Ä‹±Ó€¤Â‰§Â’®Æ‘«À•¬Ã‹©Â‚ ¹­È°Ê¯Í²Î{¡¿ƒ©Ç…¤È{›¾r“´o“´„¨Å„¨ÆgŒ¨|¡½†£¾¯Æœªw’œE\dCV]7FT>K[9FM3CP*<M$<R–²Ì€¹Œ¯Æ‹­Åˆ§À¢¸¡¸Œ¬Ã€¶{š¯|›°s’§r£m‹k‰œ>Ym=Yj:Te8Rc6Pb1KQ/FO9IR>KX…“Ÿœ­º}–¢^x†[vƒf}ŒOct:L]BQbAN\;GSDMW;MV5GO1AM5EQ5EQ5ER9IV3BO1BO/@M3DQ/@L3CS/?O0@P2BR0@P0@P2BR3CS0@P1AQ1AQ1AQ,9I0=M1>N'4D+5F1;L'1B'1C"-;!*7$.$*&+/&*+"'((,-".+%-,#"%$#!!,+'/+*=98%-&
+\ No newline at end of file
+Index: git/host_applications/linux/apps/hello_pi/hello_wayland/Makefile
+===================================================================
+--- /dev/null
++++ git/host_applications/linux/apps/hello_pi/hello_wayland/Makefile
+@@ -0,0 +1,5 @@
++OBJS=triangle.o
++BIN=hello_wayland.bin
++LDFLAGS+=-lwayland-client -lwayland-egl
++
++include ../Makefile.include
+Index: git/host_applications/linux/apps/hello_pi/hello_wayland/cube_texture_and_coords.h
+===================================================================
+--- /dev/null
++++ git/host_applications/linux/apps/hello_pi/hello_wayland/cube_texture_and_coords.h
+@@ -0,0 +1,100 @@
++/*
++Copyright (c) 2012, Broadcom Europe Ltd
++All rights reserved.
++
++Redistribution and use in source and binary forms, with or without
++modification, are permitted provided that the following conditions are met:
++    * Redistributions of source code must retain the above copyright
++      notice, this list of conditions and the following disclaimer.
++    * Redistributions in binary form must reproduce the above copyright
++      notice, this list of conditions and the following disclaimer in the
++      documentation and/or other materials provided with the distribution.
++    * Neither the name of the copyright holder nor the
++      names of its contributors may be used to endorse or promote products
++      derived from this software without specific prior written permission.
++
++THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
++ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
++WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
++DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
++DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
++(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
++LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
++ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
++(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
++SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
++*/
++
++// Spatial coordinates for the cube
++
++static const GLbyte quadx[6*4*3] = {
++   /* FRONT */
++   -10, -10,  10,
++   10, -10,  10,
++   -10,  10,  10,
++   10,  10,  10,
++
++   /* BACK */
++   -10, -10, -10,
++   -10,  10, -10,
++   10, -10, -10,
++   10,  10, -10,
++
++   /* LEFT */
++   -10, -10,  10,
++   -10,  10,  10,
++   -10, -10, -10,
++   -10,  10, -10,
++
++   /* RIGHT */
++   10, -10, -10,
++   10,  10, -10,
++   10, -10,  10,
++   10,  10,  10,
++
++   /* TOP */
++   -10,  10,  10,
++   10,  10,  10,
++   -10,  10, -10,
++   10,  10, -10,
++
++   /* BOTTOM */
++   -10, -10,  10,
++   -10, -10, -10,
++   10, -10,  10,
++   10, -10, -10,
++};
++
++/** Texture coordinates for the quad. */
++static const GLfloat texCoords[6 * 4 * 2] = {
++   0.f,  0.f,
++   1.f,  0.f,
++   0.f,  1.f,
++   1.f,  1.f,
++
++   0.f,  0.f,
++   1.f,  0.f,
++   0.f,  1.f,
++   1.f,  1.f,
++
++   0.f,  0.f,
++   1.f,  0.f,
++   0.f,  1.f,
++   1.f,  1.f,
++
++   0.f,  0.f,
++   1.f,  0.f,
++   0.f,  1.f,
++   1.f,  1.f,
++
++   0.f,  0.f,
++   1.f,  0.f,
++   0.f,  1.f,
++   1.f,  1.f,
++
++   0.f,  0.f,
++   1.f,  0.f,
++   0.f,  1.f,
++   1.f,  1.f,
++};
++
+Index: git/host_applications/linux/apps/hello_pi/hello_wayland/triangle.c
+===================================================================
+--- /dev/null
++++ git/host_applications/linux/apps/hello_pi/hello_wayland/triangle.c
+@@ -0,0 +1,666 @@
++/*
++Copyright (c) 2012, Broadcom Europe Ltd
++All rights reserved.
++
++Redistribution and use in source and binary forms, with or without
++modification, are permitted provided that the following conditions are met:
++    * Redistributions of source code must retain the above copyright
++      notice, this list of conditions and the following disclaimer.
++    * Redistributions in binary form must reproduce the above copyright
++      notice, this list of conditions and the following disclaimer in the
++      documentation and/or other materials provided with the distribution.
++    * Neither the name of the copyright holder nor the
++      names of its contributors may be used to endorse or promote products
++      derived from this software without specific prior written permission.
++
++THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
++ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
++WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
++DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
++DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
++(INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
++LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
++ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
++(INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
++SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
++*/
++
++// A rotating cube rendered with OpenGL|ES. Three images used as textures on the cube faces.
++
++#define _GNU_SOURCE
++
++#include <stdio.h>
++#include <stdlib.h>
++#include <string.h>
++#include <math.h>
++#include <assert.h>
++#include <unistd.h>
++#include <sys/socket.h>
++#include <sys/un.h>
++
++#include <wayland-egl.h>
++#include <wayland-client.h>
++
++#include "GLES/gl.h"
++#include "EGL/egl.h"
++#include "EGL/eglext.h"
++
++#include "cube_texture_and_coords.h"
++
++#define PATH "./"
++
++#define IMAGE_SIZE 128
++
++#ifndef M_PI
++   #define M_PI 3.141592654
++#endif
++	
++
++typedef struct
++{
++   uint32_t screen_width;
++   uint32_t screen_height;
++// OpenGL|ES objects
++   EGLDisplay display;
++   EGLSurface surface;
++   EGLContext context;
++   GLuint tex[6];
++// model rotation vector and direction
++   GLfloat rot_angle_x_inc;
++   GLfloat rot_angle_y_inc;
++   GLfloat rot_angle_z_inc;
++// current model rotation angles
++   GLfloat rot_angle_x;
++   GLfloat rot_angle_y;
++   GLfloat rot_angle_z;
++// current distance from camera
++   GLfloat distance;
++   GLfloat distance_inc;
++// pointers to texture buffers
++   char *tex_buf1;
++   char *tex_buf2;
++   char *tex_buf3;
++   struct wl_display *wl_display;
++   struct wl_registry *wl_registry;
++   struct wl_shell *wl_shell;
++   struct wl_shell_surface *wl_shell_surface;
++   struct wl_compositor *wl_compositor;
++   struct wl_surface *wl_surface;
++   struct wl_callback *wl_callback;
++   struct wl_egl_window *wl_egl_window;
++   int needs_update;
++   int ellapsed_frames;
++   int kill_compositor;
++   int single_frame;
++   int terminate_abruptly;
++} CUBE_STATE_T;
++
++static void init_ogl(CUBE_STATE_T *state);
++static void init_model_proj(CUBE_STATE_T *state);
++static void reset_model(CUBE_STATE_T *state);
++static GLfloat inc_and_wrap_angle(GLfloat angle, GLfloat angle_inc);
++static GLfloat inc_and_clip_distance(GLfloat distance, GLfloat distance_inc);
++static void redraw_scene(CUBE_STATE_T *state);
++static void update_model(CUBE_STATE_T *state);
++static void init_textures(CUBE_STATE_T *state);
++static void load_tex_images(CUBE_STATE_T *state);
++static void exit_func(CUBE_STATE_T *state);
++
++static void
++registry_handle_global(void *data, struct wl_registry *registry,
++		       uint32_t name, const char *interface, uint32_t version)
++{
++	CUBE_STATE_T *state = data;
++
++	if (strcmp(interface, "wl_compositor") == 0) {
++		state->wl_compositor =
++			wl_registry_bind(registry, name,
++					 &wl_compositor_interface, 1);
++	} else if (strcmp(interface, "wl_shell") == 0) {
++		state->wl_shell = wl_registry_bind(registry, name,
++					    &wl_shell_interface, 1);
++	}
++}
++
++static void
++registry_handle_global_remove(void *data, struct wl_registry *registry,
++			      uint32_t name)
++{
++}
++
++static const struct wl_registry_listener registry_listener = {
++	registry_handle_global,
++	registry_handle_global_remove
++};
++
++/***********************************************************
++ * Name: init_ogl
++ *
++ * Arguments:
++ *       CUBE_STATE_T *state - holds OGLES model info
++ *
++ * Description: Sets the display, OpenGL|ES context and screen stuff
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void init_ogl(CUBE_STATE_T *state)
++{
++   EGLBoolean result;
++   EGLint num_config;
++
++   static const EGLint attribute_list[] =
++   {
++      EGL_RED_SIZE, 8,
++      EGL_GREEN_SIZE, 8,
++      EGL_BLUE_SIZE, 8,
++      EGL_ALPHA_SIZE, 8,
++      EGL_SURFACE_TYPE, EGL_WINDOW_BIT,
++      EGL_NONE
++   };
++   
++   EGLConfig config;
++
++   state->wl_display = wl_display_connect(NULL);
++
++   state->wl_registry = wl_display_get_registry(state->wl_display);
++   wl_registry_add_listener(state->wl_registry, &registry_listener, state);
++
++   wl_display_dispatch(state->wl_display);
++
++   // get an EGL display connection
++   state->display = eglGetDisplay(state->wl_display);
++   assert(state->display!=EGL_NO_DISPLAY);
++
++   // initialize the EGL display connection
++   result = eglInitialize(state->display, NULL, NULL);
++   assert(EGL_FALSE != result);
++
++   // get an appropriate EGL frame buffer configuration
++   result = eglChooseConfig(state->display, attribute_list, &config, 1, &num_config);
++   assert(EGL_FALSE != result);
++
++   // create an EGL rendering context
++   state->context = eglCreateContext(state->display, config, EGL_NO_CONTEXT, NULL);
++   assert(state->context!=EGL_NO_CONTEXT);
++
++   // create an EGL window surface
++   state->screen_width = 1024;
++   state->screen_height = 860;
++
++   state->wl_surface = wl_compositor_create_surface(state->wl_compositor);
++   state->wl_shell_surface = wl_shell_get_shell_surface(state->wl_shell, state->wl_surface);
++
++   wl_shell_surface_set_toplevel(state->wl_shell_surface);
++   wl_shell_surface_set_title(state->wl_shell_surface, "triangle.c");
++
++   state->wl_egl_window = wl_egl_window_create(state->wl_surface, state->screen_width, state->screen_height);
++
++   state->surface = eglCreateWindowSurface( state->display, config, state->wl_egl_window, NULL );
++   assert(state->surface != EGL_NO_SURFACE);
++
++   // connect the context to the surface
++   result = eglMakeCurrent(state->display, state->surface, state->surface, state->context);
++   assert(EGL_FALSE != result);
++
++   // Set background color and clear buffers
++   glClearColor(0.15f, 0.25f, 0.35f, 1.0f);
++
++   // Enable back face culling.
++   glEnable(GL_CULL_FACE);
++
++   glMatrixMode(GL_MODELVIEW);
++}
++
++/***********************************************************
++ * Name: init_model_proj
++ *
++ * Arguments:
++ *       CUBE_STATE_T *state - holds OGLES model info
++ *
++ * Description: Sets the OpenGL|ES model to default values
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void init_model_proj(CUBE_STATE_T *state)
++{
++   float nearp = 1.0f;
++   float farp = 500.0f;
++   float hht;
++   float hwd;
++
++   glHint( GL_PERSPECTIVE_CORRECTION_HINT, GL_NICEST );
++
++   glViewport(0, 0, (GLsizei)state->screen_width, (GLsizei)state->screen_height);
++      
++   glMatrixMode(GL_PROJECTION);
++   glLoadIdentity();
++
++   hht = nearp * (float)tan(45.0 / 2.0 / 180.0 * M_PI);
++   hwd = hht * (float)state->screen_width / (float)state->screen_height;
++
++   glFrustumf(-hwd, hwd, -hht, hht, nearp, farp);
++   
++   glEnableClientState( GL_VERTEX_ARRAY );
++   glVertexPointer( 3, GL_BYTE, 0, quadx );
++
++   reset_model(state);
++}
++
++/***********************************************************
++ * Name: reset_model
++ *
++ * Arguments:
++ *       CUBE_STATE_T *state - holds OGLES model info
++ *
++ * Description: Resets the Model projection and rotation direction
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void reset_model(CUBE_STATE_T *state)
++{
++   // reset model position
++   glMatrixMode(GL_MODELVIEW);
++   glLoadIdentity();
++   glTranslatef(0.f, 0.f, -50.f);
++
++   // reset model rotation
++   state->rot_angle_x = 45.f; state->rot_angle_y = 30.f; state->rot_angle_z = 0.f;
++   state->rot_angle_x_inc = 0.5f; state->rot_angle_y_inc = 0.5f; state->rot_angle_z_inc = 0.f;
++   state->distance = 40.f;
++}
++
++/***********************************************************
++ * Name: update_model
++ *
++ * Arguments:
++ *       CUBE_STATE_T *state - holds OGLES model info
++ *
++ * Description: Updates model projection to current position/rotation
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void update_model(CUBE_STATE_T *state)
++{
++   // update position
++   state->rot_angle_x = inc_and_wrap_angle(state->rot_angle_x, state->rot_angle_x_inc);
++   state->rot_angle_y = inc_and_wrap_angle(state->rot_angle_y, state->rot_angle_y_inc);
++   state->rot_angle_z = inc_and_wrap_angle(state->rot_angle_z, state->rot_angle_z_inc);
++   state->distance    = inc_and_clip_distance(state->distance, state->distance_inc);
++
++   glLoadIdentity();
++   // move camera back to see the cube
++   glTranslatef(0.f, 0.f, -state->distance);
++
++   // Rotate model to new position
++   glRotatef(state->rot_angle_x, 1.f, 0.f, 0.f);
++   glRotatef(state->rot_angle_y, 0.f, 1.f, 0.f);
++   glRotatef(state->rot_angle_z, 0.f, 0.f, 1.f);
++}
++
++/***********************************************************
++ * Name: inc_and_wrap_angle
++ *
++ * Arguments:
++ *       GLfloat angle     current angle
++ *       GLfloat angle_inc angle increment
++ *
++ * Description:   Increments or decrements angle by angle_inc degrees
++ *                Wraps to 0 at 360 deg.
++ *
++ * Returns: new value of angle
++ *
++ ***********************************************************/
++static GLfloat inc_and_wrap_angle(GLfloat angle, GLfloat angle_inc)
++{
++   angle += angle_inc;
++
++   if (angle >= 360.0)
++      angle -= 360.f;
++   else if (angle <=0)
++      angle += 360.f;
++
++   return angle;
++}
++
++/***********************************************************
++ * Name: inc_and_clip_distance
++ *
++ * Arguments:
++ *       GLfloat distance     current distance
++ *       GLfloat distance_inc distance increment
++ *
++ * Description:   Increments or decrements distance by distance_inc units
++ *                Clips to range
++ *
++ * Returns: new value of angle
++ *
++ ***********************************************************/
++static GLfloat inc_and_clip_distance(GLfloat distance, GLfloat distance_inc)
++{
++   distance += distance_inc;
++
++   if (distance >= 120.0f)
++      distance = 120.f;
++   else if (distance <= 40.0f)
++      distance = 40.0f;
++
++   return distance;
++}
++
++static pid_t get_server_pid(CUBE_STATE_T *state)
++{
++   struct ucred ucred;
++   socklen_t len;
++   int fd;
++
++   fd = wl_display_get_fd(state->wl_display);
++   len = sizeof ucred;
++   getsockopt(fd, SOL_SOCKET, SO_PEERCRED, &ucred, &len);
++
++   return ucred.pid;
++}
++
++static void
++frame(void *data, struct wl_callback *callback, uint32_t time)
++{
++   CUBE_STATE_T *state = (CUBE_STATE_T *) data;
++
++   state->needs_update = 1;
++}
++
++static const struct wl_callback_listener frame_listener = {
++	frame
++};
++
++static void
++update(CUBE_STATE_T *state)
++{
++   if (!state->single_frame || state->ellapsed_frames == 0) {
++      update_model(state);
++      redraw_scene(state);
++   }
++
++   state->wl_callback = wl_surface_frame(state->wl_surface);
++   wl_callback_add_listener(state->wl_callback, &frame_listener, state);
++
++   if (state->ellapsed_frames == 100) {
++      if (state->kill_compositor) {
++         fprintf(stderr, "reached frame 100, killing compositor\n");
++         pid_t pid = get_server_pid(state);
++         kill(pid, SIGTERM);
++      } else if (state->terminate_abruptly) {
++         fprintf(stderr, "reached frame 100, terminating right away\n");
++         exit_func(state);
++         exit(0);
++      }
++   }
++
++   if (!state->single_frame || state->ellapsed_frames == 0)
++      eglSwapBuffers(state->display, state->surface);
++   else {
++      wl_surface_damage(state->wl_surface, 0, 0, state->screen_width,
++                        state->screen_height);
++      wl_surface_commit(state->wl_surface);
++   }
++
++   state->ellapsed_frames++;
++}
++
++/***********************************************************
++ * Name: redraw_scene
++ *
++ * Arguments:
++ *       CUBE_STATE_T *state - holds OGLES model info
++ *
++ * Description:   Draws the model and calls eglSwapBuffers
++ *                to render to screen
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void redraw_scene(CUBE_STATE_T *state)
++{
++   // Start with a clear screen
++   glClear( GL_COLOR_BUFFER_BIT );
++
++   // Draw first (front) face:
++   // Bind texture surface to current vertices
++   glBindTexture(GL_TEXTURE_2D, state->tex[0]);
++
++   // Need to rotate textures - do this by rotating each cube face
++   glRotatef(270.f, 0.f, 0.f, 1.f ); // front face normal along z axis
++
++   // draw first 4 vertices
++   glDrawArrays( GL_TRIANGLE_STRIP, 0, 4);
++
++   // same pattern for other 5 faces - rotation chosen to make image orientation 'nice'
++   glBindTexture(GL_TEXTURE_2D, state->tex[1]);
++   glRotatef(90.f, 0.f, 0.f, 1.f ); // back face normal along z axis
++   glDrawArrays( GL_TRIANGLE_STRIP, 4, 4);
++
++   glBindTexture(GL_TEXTURE_2D, state->tex[2]);
++   glRotatef(90.f, 1.f, 0.f, 0.f ); // left face normal along x axis
++   glDrawArrays( GL_TRIANGLE_STRIP, 8, 4);
++
++   glBindTexture(GL_TEXTURE_2D, state->tex[3]);
++   glRotatef(90.f, 1.f, 0.f, 0.f ); // right face normal along x axis
++   glDrawArrays( GL_TRIANGLE_STRIP, 12, 4);
++
++   glBindTexture(GL_TEXTURE_2D, state->tex[4]);
++   glRotatef(270.f, 0.f, 1.f, 0.f ); // top face normal along y axis
++   glDrawArrays( GL_TRIANGLE_STRIP, 16, 4);
++
++   glBindTexture(GL_TEXTURE_2D, state->tex[5]);
++   glRotatef(90.f, 0.f, 1.f, 0.f ); // bottom face normal along y axis
++   glDrawArrays( GL_TRIANGLE_STRIP, 20, 4);
++}
++
++/***********************************************************
++ * Name: init_textures
++ *
++ * Arguments:
++ *       CUBE_STATE_T *state - holds OGLES model info
++ *
++ * Description:   Initialise OGL|ES texture surfaces to use image
++ *                buffers
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void init_textures(CUBE_STATE_T *state)
++{
++   // load three texture buffers but use them on six OGL|ES texture surfaces
++   load_tex_images(state);
++   glGenTextures(6, &state->tex[0]);
++
++   // setup first texture
++   glBindTexture(GL_TEXTURE_2D, state->tex[0]);
++   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
++                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf1);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);
++
++   // setup second texture - reuse first image
++   glBindTexture(GL_TEXTURE_2D, state->tex[1]);
++   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
++                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf1);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);
++
++   // third texture
++   glBindTexture(GL_TEXTURE_2D, state->tex[2]);
++   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
++                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf2);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);
++
++   // fourth texture  - reuse second image
++   glBindTexture(GL_TEXTURE_2D, state->tex[3]);
++   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
++                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf2);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);
++
++   //fifth texture
++   glBindTexture(GL_TEXTURE_2D, state->tex[4]);
++   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
++                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf3);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);
++
++   // sixth texture  - reuse third image
++   glBindTexture(GL_TEXTURE_2D, state->tex[5]);
++   glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, IMAGE_SIZE, IMAGE_SIZE, 0,
++                GL_RGB, GL_UNSIGNED_BYTE, state->tex_buf3);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, (GLfloat)GL_NEAREST);
++   glTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, (GLfloat)GL_NEAREST);
++
++   // setup overall texture environment
++   glTexCoordPointer(2, GL_FLOAT, 0, texCoords);
++   glEnableClientState(GL_TEXTURE_COORD_ARRAY);
++   
++   glEnable(GL_TEXTURE_2D);
++}
++
++/***********************************************************
++ * Name: load_tex_images
++ *
++ * Arguments:
++ *       void
++ *
++ * Description: Loads three raw images to use as textures on faces
++ *
++ * Returns: void
++ *
++ ***********************************************************/
++static void load_tex_images(CUBE_STATE_T *state)
++{
++   FILE *tex_file1 = NULL, *tex_file2=NULL, *tex_file3 = NULL;
++   int bytes_read, image_sz = IMAGE_SIZE*IMAGE_SIZE*3;
++
++   state->tex_buf1 = malloc(image_sz);
++   state->tex_buf2 = malloc(image_sz);
++   state->tex_buf3 = malloc(image_sz);
++
++   tex_file1 = fopen(PATH "Lucca_128_128.raw", "rb");
++   if (tex_file1 && state->tex_buf1)
++   {
++      bytes_read=fread(state->tex_buf1, 1, image_sz, tex_file1);
++      assert(bytes_read == image_sz);  // some problem with file?
++      fclose(tex_file1);
++   }
++
++   tex_file2 = fopen(PATH "Djenne_128_128.raw", "rb");
++   if (tex_file2 && state->tex_buf2)
++   {
++      bytes_read=fread(state->tex_buf2, 1, image_sz, tex_file2);
++      assert(bytes_read == image_sz);  // some problem with file?
++      fclose(tex_file2);      
++   }
++
++   tex_file3 = fopen(PATH "Gaudi_128_128.raw", "rb");
++   if (tex_file3 && state->tex_buf3)
++   {
++      bytes_read=fread(state->tex_buf3, 1, image_sz, tex_file3);
++      assert(bytes_read == image_sz);  // some problem with file?
++      fclose(tex_file3);
++   }   
++}
++
++//------------------------------------------------------------------------------
++
++static void exit_func(CUBE_STATE_T *state)
++{
++   // clear screen
++   glClear( GL_COLOR_BUFFER_BIT );
++   eglSwapBuffers(state->display, state->surface);
++
++   // Release OpenGL resources
++   eglMakeCurrent( state->display, EGL_NO_SURFACE, EGL_NO_SURFACE, EGL_NO_CONTEXT );
++
++   wl_egl_window_destroy(state->wl_egl_window);
++   wl_shell_surface_destroy(state->wl_shell_surface);
++   wl_surface_destroy(state->wl_surface);
++
++   eglDestroySurface( state->display, state->surface );
++   eglDestroyContext( state->display, state->context );
++   eglTerminate( state->display );
++
++   wl_display_flush(state->wl_display);
++
++   // release texture buffers
++   free(state->tex_buf1);
++   free(state->tex_buf2);
++   free(state->tex_buf3);
++
++   printf("\ncube closed\n");
++} // exit_func()
++
++static int running = 1;
++
++static void
++signal_int(int signum)
++{
++	running = 0;
++}
++
++//==============================================================================
++
++int main (int argc, char *argv[])
++{
++   struct sigaction sigint;
++   CUBE_STATE_T state = {0,};
++   int ret = 0;
++   int i;
++
++   for (i = 0; i < argc; i++) {
++      if (strcmp(argv[i], "--kill-compositor") == 0)
++         state.kill_compositor = 1;
++      if (strcmp(argv[i], "--single-frame") == 0)
++         state.single_frame = 1;
++      if (strcmp(argv[i], "--terminate-abruptly") == 0)
++         state.terminate_abruptly = 1;
++      else if (strcmp(argv[i], "--help") == 0 ||
++               strcmp(argv[i], "-h") == 0) {
++         printf("Usage: hello_wayland.bin [OPTION]\n\n");
++         printf("\t--kill-compositor\tkill the Wayland compositor after 100 frames\n");
++         printf("\t-h, --help\t\tshow this text\n");
++         printf("\t--single-frame\t\tupdate the display only once\n");
++         printf("\t--terminate-abruptly\texit right after rendering the 100th frame\n");
++         return 0;
++      }
++   }
++
++   // Start OGLES
++   init_ogl(&state);
++
++   // Setup the model world
++   init_model_proj(&state);
++
++   // initialise the OGLES texture(s)
++   init_textures(&state);
++
++   sigint.sa_handler = signal_int;
++   sigemptyset(&sigint.sa_mask);
++   sigint.sa_flags = SA_RESETHAND;
++   sigaction(SIGINT, &sigint, NULL);
++
++   state.needs_update = 1;
++   while (running && ret != -1) {
++      if (state.needs_update) {
++         update(&state);
++         state.needs_update = 0;
++      }
++
++      ret = wl_display_dispatch(state.wl_display);
++   }
++
++   exit_func(&state);
++
++   return 0;
++}
++
+Index: git/host_applications/linux/apps/hello_pi/rebuild.sh
+===================================================================
+--- git.orig/host_applications/linux/apps/hello_pi/rebuild.sh
++++ git/host_applications/linux/apps/hello_pi/rebuild.sh
+@@ -13,6 +13,7 @@ make -C hello_jpeg clean
+ make -C hello_videocube clean
+ make -C hello_teapot clean
+ make -C hello_fft clean
++make -C hello_wayland clean
+ 
+ make -C libs/ilclient
+ make -C libs/vgfont
+@@ -29,4 +30,4 @@ make -C hello_jpeg
+ make -C hello_videocube
+ make -C hello_teapot
+ make -C hello_fft
+-
++make -C hello_wayland
diff --git a/recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-dependencies.patch b/recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-dependencies.patch
new file mode 100644
index 0000000..011f255
--- /dev/null
+++ b/recipes-graphics/userland/userland/0007-wayland-egl-Add-bcm_host-to-dependencies.patch
@@ -0,0 +1,30 @@
+From de087d5081c45384c40f62de70267581476edba3 Mon Sep 17 00:00:00 2001
+From: Khem Raj <raj.khem@gmail.com>
+Date: Mon, 10 Aug 2015 02:38:27 -0700
+Subject: [PATCH] wayland-egl: Add bcm_host to dependencies
+
+It uses headers like vcos_platform_types.h but does not
+depend on module which should add the required include paths
+lets add the dependency on bcm_host module which should do it
+
+Signed-off-by: Khem Raj <raj.khem@gmail.com>
+---
+Upstream-Status: Submitted
+
+ interface/khronos/wayland-egl/wayland-egl.pc.in | 1 +
+ 1 file changed, 1 insertion(+)
+
+diff --git a/interface/khronos/wayland-egl/wayland-egl.pc.in b/interface/khronos/wayland-egl/wayland-egl.pc.in
+index 8bafc15..fd259c9 100644
+--- a/interface/khronos/wayland-egl/wayland-egl.pc.in
++++ b/interface/khronos/wayland-egl/wayland-egl.pc.in
+@@ -6,5 +6,6 @@ includedir=${prefix}/include
+ Name: wayland-egl
+ Description: VideoCore wayland-egl library
+ Version: @PROJECT_APIVER@
++Requires: bcm_host
+ Libs: -L${libdir} -lwayland-egl
+ Cflags: -I${includedir}
+-- 
+2.1.4
+
diff --git a/recipes-graphics/userland/userland_git.bb b/recipes-graphics/userland/userland_git.bb
index 35e5672..c5f8a12 100644
--- a/recipes-graphics/userland/userland_git.bb
+++ b/recipes-graphics/userland/userland_git.bb
@@ -19,12 +19,22 @@ SRC_URI = "git://github.com/${SRCFORK}/userland.git;protocol=git;branch=${SRCBRA
            file://0001-Use-newer-POSIX-macro.patch \
            file://0002-set-VMCS_INSTALL_PREFIX-to-usr.patch \
            file://0003-cmake-generate-and-install-pkgconfig-files.patch \
+           file://0004-Allow-applications-to-set-next-resource-handle.patch \
+           file://0005-wayland-Add-support-for-the-Wayland-winsys.patch \
+           file://0006-wayland-Add-Wayland-example.patch \
+           file://0007-wayland-egl-Add-bcm_host-to-dependencies.patch \
           "
 S = "${WORKDIR}/git"
 
 inherit cmake pkgconfig
 
-EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed'"
+EXTRA_OECMAKE = "-DCMAKE_BUILD_TYPE=Release -DCMAKE_EXE_LINKER_FLAGS='-Wl,--no-as-needed' \
+                "
+
+PACKAGECONFIG ?= "${@bb.utils.contains('DISTRO_FEATURES', 'wayland', 'wayland', '', d)}"
+
+PACKAGECONFIG[wayland] = "-DBUILD_WAYLAND=TRUE,,wayland,"
+
 CFLAGS_append = " -fPIC"
 
 # Shared libs from userland package  build aren't versioned, so we need
-- 
2.1.4


