Return-Path: <maxin.john@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CC38E0074B; Mon,  6 Mar 2017 07:28:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92994E0050B
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 07:28:44 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	06 Mar 2017 07:28:43 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,254,1484035200"; d="scan'208";a="831502303"
Received: from linux.intel.com ([10.54.29.200])
	by FMSMGA003.fm.intel.com with ESMTP; 06 Mar 2017 07:28:43 -0800
Received: from mbabyjoh-desk.fi.intel.com (mbabyjoh-desk.fi.intel.com
	[10.237.72.71])
	by linux.intel.com (Postfix) with ESMTP id EE3856A4080
	for <yocto@yoctoproject.org>; Mon,  6 Mar 2017 07:28:39 -0800 (PST)
From: "Maxin B. John" <maxin.john@intel.com>
To: yocto@yoctoproject.org
Date: Mon,  6 Mar 2017 17:28:03 +0200
Message-Id: <1488814083-7886-1-git-send-email-maxin.john@intel.com>
X-Mailer: git-send-email 2.4.0
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-omx: remove bbappend for version 1.2.0
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
X-List-Received-Date: Mon, 06 Mar 2017 15:28:47 -0000

OE-Core rev: aa06a18d59eb391d1a7ace9daa0681bdf8daf17f
removed gstreamer1.0-omx_1.2.0 recipe.

Signed-off-by: Maxin B. John <maxin.john@intel.com>
---
 ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
 .../0001-config-files-path.patch                   | 137 ---------------------
 .../0002-fix-decoder-flushing.patch                |  16 ---
 .../0003-no-timeout-on-get-state.patch             |  16 ---
 ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
 ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
 ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
 ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115 -----------------
 .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  14 ---
 9 files changed, 493 deletions(-)
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
 delete mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
deleted file mode 100644
index 815a7c2..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From 2e111e52f96f0b942abda120c30a876629bd73fc Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
-Date: Mon, 25 May 2015 14:53:35 +0200
-Subject: [PATCH] Don't try to acquire buffer when src pad isn't active
-
-This solves a race condition when setting the pipeline from PAUSE to
-NULL while the decoder loop is still running. Without this patch, the
-thread which interacts with the decode sink pad gets blocked here:
-
-  gst_element_change_state()
-  gst_element_change_state_func()
-  gst_element_pads_activate() --> Deactivating pads
-  activate_pads()
-  gst_pad_set_active()
-  gst_pad_activate_mode()
-  post_activate()
-  GST_PAD_STREAM_LOCK()
-
-while gst_omx_port_acquire_buffer() gets stalled forever in
-gst_omx_component_wait_message() waiting for a message that will never
-arrive:
-
-  gst_omx_video_dec_loop()
-  gst_omx_port_acquire_buffer()
-  gst_omx_component_wait_message()
----
- omx/gstomxvideodec.c | 5 +++++
- 1 file changed, 5 insertions(+)
-
-diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
-index cd24944..57a61dd 100644
---- a/omx/gstomxvideodec.c
-+++ b/omx/gstomxvideodec.c
-@@ -1247,6 +1247,11 @@ gst_omx_video_dec_loop (GstOMXVideoDec * self)
-   GstClockTimeDiff deadline;
-   OMX_ERRORTYPE err;
- 
-+  if (!gst_pad_is_active(GST_VIDEO_DECODER_SRC_PAD (self))) {
-+    GST_DEBUG_OBJECT (self, "Src pad not active, not acquiring buffer and flushing instead");
-+      goto flushing;
-+  }
-+
- #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
-   port = self->eglimage ? self->egl_out_port : self->dec_out_port;
- #else
--- 
-1.8.3.2
-
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
deleted file mode 100644
index a7da922..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
+++ /dev/null
@@ -1,137 +0,0 @@
---- a/config/bellagio/gstomx.conf
-+++ b/config/bellagio/gstomx.conf
-@@ -1,6 +1,6 @@
- [omxmpeg4videodec]
- type-name=GstOMXMPEG4VideoDec
--core-name=/usr/local/lib/libomxil-bellagio.so.0
-+core-name=/usr/lib/libomxil-bellagio.so.0
- component-name=OMX.st.video_decoder.mpeg4
- rank=256
- in-port-index=0
-@@ -9,7 +9,7 @@
- 
- [omxh264dec]
- type-name=GstOMXH264Dec
--core-name=/usr/local/lib/libomxil-bellagio.so.0
-+core-name=/usr/lib/libomxil-bellagio.so.0
- component-name=OMX.st.video_decoder.avc
- rank=256
- in-port-index=0
-@@ -18,7 +18,7 @@
- 
- [omxmpeg4videoenc]
- type-name=GstOMXMPEG4VideoEnc
--core-name=/usr/local/lib/libomxil-bellagio.so.0
-+core-name=/usr/lib/libomxil-bellagio.so.0
- component-name=OMX.st.video_encoder.mpeg4
- rank=0
- in-port-index=0
-@@ -27,7 +27,7 @@
- 
- [omxaacenc]
- type-name=GstOMXAACEnc
--core-name=/usr/local/lib/libomxil-bellagio.so.0
-+core-name=/usr/lib/libomxil-bellagio.so.0
- component-name=OMX.st.audio_encoder.aac
- rank=0
- in-port-index=0
---- a/config/rpi/gstomx.conf
-+++ b/config/rpi/gstomx.conf
-@@ -1,6 +1,6 @@
- [omxmpeg2videodec]
- type-name=GstOMXMPEG2VideoDec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -9,7 +9,7 @@
- 
- [omxmpeg4videodec]
- type-name=GstOMXMPEG4VideoDec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -18,7 +18,7 @@
- 
- [omxh263dec]
- type-name=GstOMXH263Dec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -27,7 +27,7 @@
- 
- [omxh264dec]
- type-name=GstOMXH264Dec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -36,7 +36,7 @@
- 
- [omxtheoradec]
- type-name=GstOMXTheoraDec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -45,7 +45,7 @@
- 
- [omxvp8dec]
- type-name=GstOMXVP8Dec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -54,7 +54,7 @@
- 
- [omxmjpegdec]
- type-name=GstOMXMJPEGDec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=257
- in-port-index=130
-@@ -63,7 +63,7 @@
- 
- [omxvc1dec]
- type-name=GstOMXWMVDec
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
- rank=256
- in-port-index=130
-@@ -73,7 +73,7 @@
- 
- [omxh264enc]
- type-name=GstOMXH264Enc
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_encode
- rank=257
- in-port-index=200
-@@ -82,7 +82,7 @@
- 
- [omxanalogaudiosink]
- type-name=GstOMXAnalogAudioSink
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.audio_render
- rank=256
- in-port-index=100
-@@ -92,7 +92,7 @@
- 
- [omxhdmiaudiosink]
- type-name=GstOMXHdmiAudioSink
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.audio_render
- rank=257
- in-port-index=100
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
deleted file mode 100644
index d4c7c81..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-diff --git a/omx/gstomx.c b/omx/gstomx.c
-index 69696c4..c382019 100644
---- a/omx/gstomx.c
-+++ b/omx/gstomx.c
-@@ -1508,8 +1508,8 @@ gst_omx_port_set_flushing (GstOMXPort * port, GstClockTime timeout,
-     last_error = OMX_ErrorNone;
-     gst_omx_component_handle_messages (comp);
-     while (signalled && last_error == OMX_ErrorNone && !port->flushed
--        && port->buffers
--        && port->buffers->len > g_queue_get_length (&port->pending_buffers)) {
-+     /* && port->buffers
-+        && port->buffers->len > g_queue_get_length (&port->pending_buffers) */) {
-       signalled = gst_omx_component_wait_message (comp, timeout);
-       if (signalled)
-         gst_omx_component_handle_messages (comp);
-
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
deleted file mode 100644
index 0a0050d..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
+++ /dev/null
@@ -1,16 +0,0 @@
-diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
-index 0d4e7a1..a0d9c74 100644
---- a/omx/gstomxvideodec.c
-+++ b/omx/gstomxvideodec.c
-@@ -1697,9 +1697,9 @@ gst_omx_video_dec_stop (GstVideoDecoder * decoder)
-   g_cond_broadcast (&self->drain_cond);
-   g_mutex_unlock (&self->drain_lock);
- 
--  gst_omx_component_get_state (self->dec, 5 * GST_SECOND);
-+  gst_omx_component_get_state (self->dec, 0);
- #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
--  gst_omx_component_get_state (self->egl_render, 1 * GST_SECOND);
-+  gst_omx_component_get_state (self->egl_render, 0);
- #endif
- 
-   gst_buffer_replace (&self->codec_data, NULL);
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
deleted file mode 100644
index 98689f3..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
+++ /dev/null
@@ -1,69 +0,0 @@
-From 80dddfd13aaf2fe7272765f8cf291215fe375e28 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
-Date: Tue, 17 Nov 2015 16:51:27 +0000
-Subject: [PATCH] Properly handle drain requests while flushing
-
-Without this commit the decoder streaming thread stops without ever attending
-the drain request, leaving the decoder input thread waiting forever.
----
- omx/gstomx.c         |  7 +++++++
- omx/gstomxvideodec.c | 13 +++++++++++++
- 2 files changed, 20 insertions(+)
-
-diff --git a/omx/gstomx.c b/omx/gstomx.c
-index 69696c4..f0cd890 100644
---- a/omx/gstomx.c
-+++ b/omx/gstomx.c
-@@ -830,6 +830,13 @@ gst_omx_component_set_state (GstOMXComponent * comp, OMX_STATETYPE state)
- done:
- 
-   gst_omx_component_handle_messages (comp);
-+
-+  if (err != OMX_ErrorNone && comp->last_error == OMX_ErrorNone) {
-+    GST_ERROR_OBJECT (comp->parent,
-+        "Last operation returned an error. Setting last_error manually.");
-+    comp->last_error = err;
-+  }
-+
-   g_mutex_unlock (&comp->lock);
- 
-   if (err != OMX_ErrorNone) {
-diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
-index d531f75..a26c4a6 100644
---- a/omx/gstomxvideodec.c
-+++ b/omx/gstomxvideodec.c
-@@ -1539,9 +1539,16 @@ component_error:
- flushing:
-   {
-     GST_DEBUG_OBJECT (self, "Flushing -- stopping task");
-+
-+    g_mutex_lock (&self->drain_lock);
-+    if (self->draining) {
-+      self->draining = FALSE;
-+      g_cond_broadcast (&self->drain_cond);
-+    }
-     gst_pad_pause_task (GST_VIDEO_DECODER_SRC_PAD (self));
-     self->downstream_flow_ret = GST_FLOW_FLUSHING;
-     self->started = FALSE;
-+    g_mutex_unlock (&self->drain_lock);
-     return;
-   }
- 
-@@ -1599,8 +1606,14 @@ flow_error:
-       self->started = FALSE;
-     } else if (flow_ret == GST_FLOW_FLUSHING) {
-       GST_DEBUG_OBJECT (self, "Flushing -- stopping task");
-+      g_mutex_lock (&self->drain_lock);
-+      if (self->draining) {
-+        self->draining = FALSE;
-+        g_cond_broadcast (&self->drain_cond);
-+      }
-       gst_pad_pause_task (GST_VIDEO_DECODER_SRC_PAD (self));
-       self->started = FALSE;
-+      g_mutex_unlock (&self->drain_lock);
-     }
-     GST_VIDEO_DECODER_STREAM_UNLOCK (self);
-     return;
--- 
-1.8.3.2
-
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
deleted file mode 100644
index b7a8753..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
+++ /dev/null
@@ -1,30 +0,0 @@
-From 12103842d5f347cf245e71071d0c44297bcdb1f9 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
-Date: Fri, 4 Dec 2015 18:39:59 +0100
-Subject: [PATCH] Don't abort gst_omx_video_dec_set_format() if there's a
- timeout releasing the buffers taken by the egl_render out port
-
----
- omx/gstomxvideodec.c | 5 ++++-
- 1 file changed, 4 insertions(+), 1 deletion(-)
-
-diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
-index 2368f34..da35e0d 100644
---- a/omx/gstomxvideodec.c
-+++ b/omx/gstomxvideodec.c
-@@ -1905,8 +1905,11 @@ gst_omx_video_dec_set_format (GstVideoDecoder * decoder,
-               5 * GST_SECOND) != OMX_ErrorNone)
-         return FALSE;
-       if (gst_omx_port_wait_buffers_released (out_port,
--              1 * GST_SECOND) != OMX_ErrorNone)
-+              1 * GST_SECOND) != OMX_ErrorNone) {
-+#if !(defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL))
-         return FALSE;
-+#endif
-+      }
-       if (gst_omx_port_deallocate_buffers (self->dec_in_port) != OMX_ErrorNone)
-         return FALSE;
-       if (gst_omx_video_dec_deallocate_output_buffers (self) != OMX_ErrorNone)
--- 
-2.1.4
-
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
deleted file mode 100644
index ace60a6..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
+++ /dev/null
@@ -1,48 +0,0 @@
-From d2df0fb032c36b366a08a1355c4f4c816eb53447 Mon Sep 17 00:00:00 2001
-From: =?UTF-8?q?Aur=C3=A9lien=20Zanelli?= <aurelien.zanelli@darkosphere.fr>
-Date: Fri, 3 Jul 2015 00:26:48 +0200
-Subject: [PATCH] omxvideodec: unref allocator after getting it from allocation
- query
-
-Otherwise a reference will be leaked for each allocator. It only happens
-when target platform is Raspberry Pi and when we have GL support.
-
-https://bugzilla.gnome.org/show_bug.cgi?id=751867
----
- omx/gstomxvideodec.c | 20 ++++++++++++--------
- 1 file changed, 12 insertions(+), 8 deletions(-)
-
-diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
-index cd24944..b8c3756 100644
---- a/omx/gstomxvideodec.c
-+++ b/omx/gstomxvideodec.c
-@@ -2530,14 +2530,18 @@ gst_omx_video_dec_decide_allocation (GstVideoDecoder * bdec, GstQuery * query)
-         GstAllocationParams params;
- 
-         gst_query_parse_nth_allocation_param (query, i, &allocator, &params);
--        if (allocator
--            && g_strcmp0 (allocator->mem_type,
--                GST_EGL_IMAGE_MEMORY_TYPE) == 0) {
--          found = TRUE;
--          gst_query_set_nth_allocation_param (query, 0, allocator, &params);
--          while (gst_query_get_n_allocation_params (query) > 1)
--            gst_query_remove_nth_allocation_param (query, 1);
--          break;
-+        if (allocator) {
-+          if (g_strcmp0 (allocator->mem_type, GST_EGL_IMAGE_MEMORY_TYPE) == 0) {
-+            found = TRUE;
-+            gst_query_set_nth_allocation_param (query, 0, allocator, &params);
-+            while (gst_query_get_n_allocation_params (query) > 1)
-+              gst_query_remove_nth_allocation_param (query, 1);
-+          }
-+
-+          gst_object_unref (allocator);
-+
-+          if (found)
-+            break;
-         }
-       }
- 
--- 
-2.5.5
-
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
deleted file mode 100644
index ed828c3..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
+++ /dev/null
@@ -1,115 +0,0 @@
-From 1cb902edb51d8f5d95f910b79b9b4c208550a7b6 Mon Sep 17 00:00:00 2001
-From: Gwang Yoon Hwang <yoon@igalia.com>
-Date: Wed, 20 Jan 2016 03:10:38 +0900
-Subject: [PATCH] omxvideodec : Use gstglmemoryegl for the RPi
-
-Modified to use gstglmemoryegl to avoid texture creation/copy operations
-at the glupload.
----
- omx/gstomxvideodec.c | 28 ++++++++++++++--------------
- 1 file changed, 14 insertions(+), 14 deletions(-)
-
-diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
-index ec97731..c9d60ff 100644
---- a/omx/gstomxvideodec.c
-+++ b/omx/gstomxvideodec.c
-@@ -38,7 +38,7 @@
- 
- #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
- #include <gst/gl/gl.h>
--#include <gst/gl/egl/gsteglimagememory.h>
-+#include <gst/gl/egl/gstglmemoryegl.h>
- #endif
- 
- #if defined (USE_OMX_TARGET_RPI) && defined(__GNUC__)
-@@ -125,7 +125,7 @@ gst_omx_video_dec_class_init (GstOMXVideoDecClass * klass)
-   klass->cdata.type = GST_OMX_COMPONENT_TYPE_FILTER;
-   klass->cdata.default_src_template_caps =
- #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
--      GST_VIDEO_CAPS_MAKE_WITH_FEATURES (GST_CAPS_FEATURE_MEMORY_EGL_IMAGE,
-+      GST_VIDEO_CAPS_MAKE_WITH_FEATURES (GST_CAPS_FEATURE_MEMORY_GL_MEMORY,
-       "RGBA") "; "
- #endif
-       "video/x-raw, "
-@@ -596,8 +596,8 @@ gst_omx_video_dec_allocate_output_buffers (GstOMXVideoDec * self)
-     gst_structure_free (config);
- 
- #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
--    eglimage = self->eglimage && (allocator
--        && g_strcmp0 (allocator->mem_type, GST_EGL_IMAGE_MEMORY_TYPE) == 0);
-+    eglimage = self->eglimage
-+               && (allocator && GST_IS_GL_MEMORY_EGL_ALLOCATOR (allocator));
- #else
-     /* TODO: Implement something that works for other targets too */
-     eglimage = FALSE;
-@@ -640,12 +640,12 @@ gst_omx_video_dec_allocate_output_buffers (GstOMXVideoDec * self)
-     for (i = 0; i < min; i++) {
-       GstBuffer *buffer;
-       GstMemory *mem;
-+      GstGLMemoryEGL *gl_mem;
- 
-       if (gst_buffer_pool_acquire_buffer (pool, &buffer, &params) != GST_FLOW_OK
-           || gst_buffer_n_memory (buffer) != 1
-           || !(mem = gst_buffer_peek_memory (buffer, 0))
--          || g_strcmp0 (mem->allocator->mem_type,
--              GST_EGL_IMAGE_MEMORY_TYPE) != 0) {
-+          || !GST_IS_GL_MEMORY_EGL_ALLOCATOR (mem->allocator)) {
-         GST_INFO_OBJECT (self, "Failed to allocated %d-th EGLImage", i);
-         g_list_free_full (buffers, (GDestroyNotify) gst_buffer_unref);
-         g_list_free (images);
-@@ -656,13 +656,13 @@ gst_omx_video_dec_allocate_output_buffers (GstOMXVideoDec * self)
-         err = OMX_ErrorUndefined;
-         goto done;
-       }
--
-+      gl_mem = (GstGLMemoryEGL *)mem;
-       buffers = g_list_append (buffers, buffer);
--      gst_egl_image_memory_set_orientation (mem,
-+      gst_gl_memory_egl_set_orientation (gl_mem,
-           GST_VIDEO_GL_TEXTURE_ORIENTATION_X_NORMAL_Y_FLIP);
--      images = g_list_append (images, gst_egl_image_memory_get_image (mem));
-+      images = g_list_append (images, gst_gl_memory_egl_get_image (gl_mem));
-       if (egl_display == EGL_NO_DISPLAY)
--        egl_display = gst_egl_image_memory_get_display (mem);
-+        egl_display = gst_gl_memory_egl_get_display (gl_mem);
-     }
- 
-     GST_DEBUG_OBJECT (self, "Allocated %d EGLImages successfully", min);
-@@ -954,14 +954,14 @@ gst_omx_video_dec_reconfigure_output_port (GstOMXVideoDec * self)
-         gst_caps_unref (state->caps);
-       state->caps = gst_video_info_to_caps (&state->info);
-       gst_caps_set_features (state->caps, 0,
--          gst_caps_features_new (GST_CAPS_FEATURE_MEMORY_EGL_IMAGE, NULL));
-+          gst_caps_features_new (GST_CAPS_FEATURE_MEMORY_GL_MEMORY, NULL));
- 
-       /* try to negotiate with caps feature */
-       if (!gst_video_decoder_negotiate (GST_VIDEO_DECODER (self))) {
- 
-         GST_DEBUG_OBJECT (self,
-             "Failed to negotiate with feature %s",
--            GST_CAPS_FEATURE_MEMORY_EGL_IMAGE);
-+            GST_CAPS_FEATURE_MEMORY_GL_MEMORY);
- 
-         if (state->caps)
-           gst_caps_replace (&state->caps, NULL);
-@@ -2554,7 +2554,7 @@ gst_omx_video_dec_decide_allocation (GstVideoDecoder * bdec, GstQuery * query)
- 
-         gst_query_parse_nth_allocation_param (query, i, &allocator, &params);
-         if (allocator) {
--          if (g_strcmp0 (allocator->mem_type, GST_EGL_IMAGE_MEMORY_TYPE) == 0) {
-+          if (GST_IS_GL_MEMORY_EGL_ALLOCATOR (allocator)) {
-             found = TRUE;
-             gst_query_set_nth_allocation_param (query, 0, allocator, &params);
-             while (gst_query_get_n_allocation_params (query) > 1)
-@@ -2572,7 +2572,7 @@ gst_omx_video_dec_decide_allocation (GstVideoDecoder * bdec, GstQuery * query)
-        * and if allocator is not of type memory EGLImage then fails */
-       if (feature
-           && gst_caps_features_contains (feature,
--              GST_CAPS_FEATURE_MEMORY_EGL_IMAGE) && !found) {
-+              GST_CAPS_FEATURE_MEMORY_GL_MEMORY) && !found) {
-         return FALSE;
-       }
-     }
--- 
-2.5.0
-
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
deleted file mode 100644
index 49ba376..0000000
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
+++ /dev/null
@@ -1,14 +0,0 @@
-#
-# Need to make this conditional to gstreamer1
-#
-SRC_URI_append_rpi = " \
-             file://0001-config-files-path.patch \
-             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
-             file://0002-fix-decoder-flushing.patch \
-             file://0003-no-timeout-on-get-state.patch \
-             file://0004-Properly-handle-drain-requests-while-flushing.patch \
-             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
-             file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
-"
-
-FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
-- 
2.4.0


