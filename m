Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6D4F8E00E96; Fri,  8 Jul 2016 07:52:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.66 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f66.google.com (mail-pa0-f66.google.com
	[209.85.220.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB9C4E00756
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 07:52:28 -0700 (PDT)
Received: by mail-pa0-f66.google.com with SMTP id ts6so7673380pac.0
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 07:52:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references;
	bh=vdyLKk8W/Ld0PIBOVhpMpLgw+8tst1x/LwdKubSHbtI=;
	b=Ahy8UHy+E4onOWK/J9SE9eFVcABB1psRTcgAfD9xI9/xWuf5du9wZyig1xVvgK9aot
	F8lGAkaKDPVtF6meHBtBoo+0E4++P22N+r5+iBKonCq9gbJG0DFECPZdt+YKv8s07j/H
	biF33OQaFiSzjEdEH0Q3TCU31jOFizJLxYb+LggIqwny5L27v1D/TuLvRhVVXeLKjzus
	aw4nNRDEUZTdtPQYFVtS4HasxXUC4jjha59Fo4BtSHAHjRLarx4onaFk/6gkIf8izTSj
	Hw0rovvSTyuRLeHlqb9u76uyY/Hp4TD5cRZHErzKnA5jQERw4bBA9YIHKbYS96x3tv7E
	S/SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references;
	bh=vdyLKk8W/Ld0PIBOVhpMpLgw+8tst1x/LwdKubSHbtI=;
	b=KYrqqP8yqKJ/YnJbmRwLiUgjRXC/A51UrNtQiHKgHBl9NPABpjcYu0CLH4Na8BtH17
	Qj3OixC50mFTmiRSeFA57lZuvqncRNESwQ3VEJk5F1t7Kbtb2+lSi3lXvA8HXTo9eTmq
	TPJzBgGuZzCMu5HxRRAVNrCNX9IcU7ZyJcgHg2THYn26Xf+waultFn7N8Egh5zFsBTPi
	OnD0KWjxZZ+BBo6EkJqRH8bSlrudbXhLvWjjFbAPw6mq1e0k7Pj4gGjc2mGGGK0bOnZU
	8gqbFjjj1MHeB68I7qTdIm+W+yGUGZ7yZMM1UBj3G656VqQuGlJ5eBKHzoZEda7ybw6L
	x9GA==
X-Gm-Message-State: ALyK8tKRWJhabhFoy1tDsH7xkyTCocMmCRev2/eS8CWcQoOXbOtFqakzw2ZcoZ7fajFgwA==
X-Received: by 10.66.73.193 with SMTP id n1mr10868998pav.70.1467989548177;
	Fri, 08 Jul 2016 07:52:28 -0700 (PDT)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	o84sm5254050pfj.95.2016.07.08.07.52.27
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 08 Jul 2016 07:52:27 -0700 (PDT)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Fri,  8 Jul 2016 07:52:21 -0700
Message-Id: <20160708145221.15596-2-raj.khem@gmail.com>
X-Mailer: git-send-email 2.9.0
In-Reply-To: <20160708145221.15596-1-raj.khem@gmail.com>
References: <20160708145221.15596-1-raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 2/2] gstreamer1.0-omx-1.2.0: Add patches and bbappend for 1.2.0 separately
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
X-List-Received-Date: Fri, 08 Jul 2016 14:52:31 -0000

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 ++++++++
 .../0001-config-files-path.patch                   | 137 +++++++++++++++++++++
 .../0002-fix-decoder-flushing.patch                |  16 +++
 .../0003-no-timeout-on-get-state.patch             |  16 +++
 ...erly-handle-drain-requests-while-flushing.patch |  69 +++++++++++
 ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 +++++
 ...-unref-allocator-after-getting-it-from-al.patch |  48 ++++++++
 ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115 +++++++++++++++++
 ..._%.bbappend => gstreamer1.0-omx_1.2.0.bbappend} |   8 +-
 ...mx_%.bbappend => gstreamer1.0-omx_git.bbappend} |   0
 10 files changed, 484 insertions(+), 3 deletions(-)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
 copy recipes-multimedia/gstreamer/{gstreamer1.0-omx_%.bbappend => gstreamer1.0-omx_1.2.0.bbappend} (70%)
 rename recipes-multimedia/gstreamer/{gstreamer1.0-omx_%.bbappend => gstreamer1.0-omx_git.bbappend} (100%)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
new file mode 100644
index 0000000..815a7c2
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
@@ -0,0 +1,48 @@
+From 2e111e52f96f0b942abda120c30a876629bd73fc Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
+Date: Mon, 25 May 2015 14:53:35 +0200
+Subject: [PATCH] Don't try to acquire buffer when src pad isn't active
+
+This solves a race condition when setting the pipeline from PAUSE to
+NULL while the decoder loop is still running. Without this patch, the
+thread which interacts with the decode sink pad gets blocked here:
+
+  gst_element_change_state()
+  gst_element_change_state_func()
+  gst_element_pads_activate() --> Deactivating pads
+  activate_pads()
+  gst_pad_set_active()
+  gst_pad_activate_mode()
+  post_activate()
+  GST_PAD_STREAM_LOCK()
+
+while gst_omx_port_acquire_buffer() gets stalled forever in
+gst_omx_component_wait_message() waiting for a message that will never
+arrive:
+
+  gst_omx_video_dec_loop()
+  gst_omx_port_acquire_buffer()
+  gst_omx_component_wait_message()
+---
+ omx/gstomxvideodec.c | 5 +++++
+ 1 file changed, 5 insertions(+)
+
+diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
+index cd24944..57a61dd 100644
+--- a/omx/gstomxvideodec.c
++++ b/omx/gstomxvideodec.c
+@@ -1247,6 +1247,11 @@ gst_omx_video_dec_loop (GstOMXVideoDec * self)
+   GstClockTimeDiff deadline;
+   OMX_ERRORTYPE err;
+ 
++  if (!gst_pad_is_active(GST_VIDEO_DECODER_SRC_PAD (self))) {
++    GST_DEBUG_OBJECT (self, "Src pad not active, not acquiring buffer and flushing instead");
++      goto flushing;
++  }
++
+ #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
+   port = self->eglimage ? self->egl_out_port : self->dec_out_port;
+ #else
+-- 
+1.8.3.2
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
new file mode 100644
index 0000000..a7da922
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
@@ -0,0 +1,137 @@
+--- a/config/bellagio/gstomx.conf
++++ b/config/bellagio/gstomx.conf
+@@ -1,6 +1,6 @@
+ [omxmpeg4videodec]
+ type-name=GstOMXMPEG4VideoDec
+-core-name=/usr/local/lib/libomxil-bellagio.so.0
++core-name=/usr/lib/libomxil-bellagio.so.0
+ component-name=OMX.st.video_decoder.mpeg4
+ rank=256
+ in-port-index=0
+@@ -9,7 +9,7 @@
+ 
+ [omxh264dec]
+ type-name=GstOMXH264Dec
+-core-name=/usr/local/lib/libomxil-bellagio.so.0
++core-name=/usr/lib/libomxil-bellagio.so.0
+ component-name=OMX.st.video_decoder.avc
+ rank=256
+ in-port-index=0
+@@ -18,7 +18,7 @@
+ 
+ [omxmpeg4videoenc]
+ type-name=GstOMXMPEG4VideoEnc
+-core-name=/usr/local/lib/libomxil-bellagio.so.0
++core-name=/usr/lib/libomxil-bellagio.so.0
+ component-name=OMX.st.video_encoder.mpeg4
+ rank=0
+ in-port-index=0
+@@ -27,7 +27,7 @@
+ 
+ [omxaacenc]
+ type-name=GstOMXAACEnc
+-core-name=/usr/local/lib/libomxil-bellagio.so.0
++core-name=/usr/lib/libomxil-bellagio.so.0
+ component-name=OMX.st.audio_encoder.aac
+ rank=0
+ in-port-index=0
+--- a/config/rpi/gstomx.conf
++++ b/config/rpi/gstomx.conf
+@@ -1,6 +1,6 @@
+ [omxmpeg2videodec]
+ type-name=GstOMXMPEG2VideoDec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -9,7 +9,7 @@
+ 
+ [omxmpeg4videodec]
+ type-name=GstOMXMPEG4VideoDec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -18,7 +18,7 @@
+ 
+ [omxh263dec]
+ type-name=GstOMXH263Dec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -27,7 +27,7 @@
+ 
+ [omxh264dec]
+ type-name=GstOMXH264Dec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -36,7 +36,7 @@
+ 
+ [omxtheoradec]
+ type-name=GstOMXTheoraDec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -45,7 +45,7 @@
+ 
+ [omxvp8dec]
+ type-name=GstOMXVP8Dec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -54,7 +54,7 @@
+ 
+ [omxmjpegdec]
+ type-name=GstOMXMJPEGDec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=257
+ in-port-index=130
+@@ -63,7 +63,7 @@
+ 
+ [omxvc1dec]
+ type-name=GstOMXWMVDec
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_decode
+ rank=256
+ in-port-index=130
+@@ -73,7 +73,7 @@
+ 
+ [omxh264enc]
+ type-name=GstOMXH264Enc
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.video_encode
+ rank=257
+ in-port-index=200
+@@ -82,7 +82,7 @@
+ 
+ [omxanalogaudiosink]
+ type-name=GstOMXAnalogAudioSink
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.audio_render
+ rank=256
+ in-port-index=100
+@@ -92,7 +92,7 @@
+ 
+ [omxhdmiaudiosink]
+ type-name=GstOMXHdmiAudioSink
+-core-name=/opt/vc/lib/libopenmaxil.so
++core-name=/usr/lib/libopenmaxil.so
+ component-name=OMX.broadcom.audio_render
+ rank=257
+ in-port-index=100
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
new file mode 100644
index 0000000..d4c7c81
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
@@ -0,0 +1,16 @@
+diff --git a/omx/gstomx.c b/omx/gstomx.c
+index 69696c4..c382019 100644
+--- a/omx/gstomx.c
++++ b/omx/gstomx.c
+@@ -1508,8 +1508,8 @@ gst_omx_port_set_flushing (GstOMXPort * port, GstClockTime timeout,
+     last_error = OMX_ErrorNone;
+     gst_omx_component_handle_messages (comp);
+     while (signalled && last_error == OMX_ErrorNone && !port->flushed
+-        && port->buffers
+-        && port->buffers->len > g_queue_get_length (&port->pending_buffers)) {
++     /* && port->buffers
++        && port->buffers->len > g_queue_get_length (&port->pending_buffers) */) {
+       signalled = gst_omx_component_wait_message (comp, timeout);
+       if (signalled)
+         gst_omx_component_handle_messages (comp);
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
new file mode 100644
index 0000000..0a0050d
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
@@ -0,0 +1,16 @@
+diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
+index 0d4e7a1..a0d9c74 100644
+--- a/omx/gstomxvideodec.c
++++ b/omx/gstomxvideodec.c
+@@ -1697,9 +1697,9 @@ gst_omx_video_dec_stop (GstVideoDecoder * decoder)
+   g_cond_broadcast (&self->drain_cond);
+   g_mutex_unlock (&self->drain_lock);
+ 
+-  gst_omx_component_get_state (self->dec, 5 * GST_SECOND);
++  gst_omx_component_get_state (self->dec, 0);
+ #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
+-  gst_omx_component_get_state (self->egl_render, 1 * GST_SECOND);
++  gst_omx_component_get_state (self->egl_render, 0);
+ #endif
+ 
+   gst_buffer_replace (&self->codec_data, NULL);
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
new file mode 100644
index 0000000..98689f3
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
@@ -0,0 +1,69 @@
+From 80dddfd13aaf2fe7272765f8cf291215fe375e28 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
+Date: Tue, 17 Nov 2015 16:51:27 +0000
+Subject: [PATCH] Properly handle drain requests while flushing
+
+Without this commit the decoder streaming thread stops without ever attending
+the drain request, leaving the decoder input thread waiting forever.
+---
+ omx/gstomx.c         |  7 +++++++
+ omx/gstomxvideodec.c | 13 +++++++++++++
+ 2 files changed, 20 insertions(+)
+
+diff --git a/omx/gstomx.c b/omx/gstomx.c
+index 69696c4..f0cd890 100644
+--- a/omx/gstomx.c
++++ b/omx/gstomx.c
+@@ -830,6 +830,13 @@ gst_omx_component_set_state (GstOMXComponent * comp, OMX_STATETYPE state)
+ done:
+ 
+   gst_omx_component_handle_messages (comp);
++
++  if (err != OMX_ErrorNone && comp->last_error == OMX_ErrorNone) {
++    GST_ERROR_OBJECT (comp->parent,
++        "Last operation returned an error. Setting last_error manually.");
++    comp->last_error = err;
++  }
++
+   g_mutex_unlock (&comp->lock);
+ 
+   if (err != OMX_ErrorNone) {
+diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
+index d531f75..a26c4a6 100644
+--- a/omx/gstomxvideodec.c
++++ b/omx/gstomxvideodec.c
+@@ -1539,9 +1539,16 @@ component_error:
+ flushing:
+   {
+     GST_DEBUG_OBJECT (self, "Flushing -- stopping task");
++
++    g_mutex_lock (&self->drain_lock);
++    if (self->draining) {
++      self->draining = FALSE;
++      g_cond_broadcast (&self->drain_cond);
++    }
+     gst_pad_pause_task (GST_VIDEO_DECODER_SRC_PAD (self));
+     self->downstream_flow_ret = GST_FLOW_FLUSHING;
+     self->started = FALSE;
++    g_mutex_unlock (&self->drain_lock);
+     return;
+   }
+ 
+@@ -1599,8 +1606,14 @@ flow_error:
+       self->started = FALSE;
+     } else if (flow_ret == GST_FLOW_FLUSHING) {
+       GST_DEBUG_OBJECT (self, "Flushing -- stopping task");
++      g_mutex_lock (&self->drain_lock);
++      if (self->draining) {
++        self->draining = FALSE;
++        g_cond_broadcast (&self->drain_cond);
++      }
+       gst_pad_pause_task (GST_VIDEO_DECODER_SRC_PAD (self));
+       self->started = FALSE;
++      g_mutex_unlock (&self->drain_lock);
+     }
+     GST_VIDEO_DECODER_STREAM_UNLOCK (self);
+     return;
+-- 
+1.8.3.2
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
new file mode 100644
index 0000000..b7a8753
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
@@ -0,0 +1,30 @@
+From 12103842d5f347cf245e71071d0c44297bcdb1f9 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
+Date: Fri, 4 Dec 2015 18:39:59 +0100
+Subject: [PATCH] Don't abort gst_omx_video_dec_set_format() if there's a
+ timeout releasing the buffers taken by the egl_render out port
+
+---
+ omx/gstomxvideodec.c | 5 ++++-
+ 1 file changed, 4 insertions(+), 1 deletion(-)
+
+diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
+index 2368f34..da35e0d 100644
+--- a/omx/gstomxvideodec.c
++++ b/omx/gstomxvideodec.c
+@@ -1905,8 +1905,11 @@ gst_omx_video_dec_set_format (GstVideoDecoder * decoder,
+               5 * GST_SECOND) != OMX_ErrorNone)
+         return FALSE;
+       if (gst_omx_port_wait_buffers_released (out_port,
+-              1 * GST_SECOND) != OMX_ErrorNone)
++              1 * GST_SECOND) != OMX_ErrorNone) {
++#if !(defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL))
+         return FALSE;
++#endif
++      }
+       if (gst_omx_port_deallocate_buffers (self->dec_in_port) != OMX_ErrorNone)
+         return FALSE;
+       if (gst_omx_video_dec_deallocate_output_buffers (self) != OMX_ErrorNone)
+-- 
+2.1.4
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
new file mode 100644
index 0000000..ace60a6
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
@@ -0,0 +1,48 @@
+From d2df0fb032c36b366a08a1355c4f4c816eb53447 Mon Sep 17 00:00:00 2001
+From: =?UTF-8?q?Aur=C3=A9lien=20Zanelli?= <aurelien.zanelli@darkosphere.fr>
+Date: Fri, 3 Jul 2015 00:26:48 +0200
+Subject: [PATCH] omxvideodec: unref allocator after getting it from allocation
+ query
+
+Otherwise a reference will be leaked for each allocator. It only happens
+when target platform is Raspberry Pi and when we have GL support.
+
+https://bugzilla.gnome.org/show_bug.cgi?id=751867
+---
+ omx/gstomxvideodec.c | 20 ++++++++++++--------
+ 1 file changed, 12 insertions(+), 8 deletions(-)
+
+diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
+index cd24944..b8c3756 100644
+--- a/omx/gstomxvideodec.c
++++ b/omx/gstomxvideodec.c
+@@ -2530,14 +2530,18 @@ gst_omx_video_dec_decide_allocation (GstVideoDecoder * bdec, GstQuery * query)
+         GstAllocationParams params;
+ 
+         gst_query_parse_nth_allocation_param (query, i, &allocator, &params);
+-        if (allocator
+-            && g_strcmp0 (allocator->mem_type,
+-                GST_EGL_IMAGE_MEMORY_TYPE) == 0) {
+-          found = TRUE;
+-          gst_query_set_nth_allocation_param (query, 0, allocator, &params);
+-          while (gst_query_get_n_allocation_params (query) > 1)
+-            gst_query_remove_nth_allocation_param (query, 1);
+-          break;
++        if (allocator) {
++          if (g_strcmp0 (allocator->mem_type, GST_EGL_IMAGE_MEMORY_TYPE) == 0) {
++            found = TRUE;
++            gst_query_set_nth_allocation_param (query, 0, allocator, &params);
++            while (gst_query_get_n_allocation_params (query) > 1)
++              gst_query_remove_nth_allocation_param (query, 1);
++          }
++
++          gst_object_unref (allocator);
++
++          if (found)
++            break;
+         }
+       }
+ 
+-- 
+2.5.5
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
new file mode 100644
index 0000000..ed828c3
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
@@ -0,0 +1,115 @@
+From 1cb902edb51d8f5d95f910b79b9b4c208550a7b6 Mon Sep 17 00:00:00 2001
+From: Gwang Yoon Hwang <yoon@igalia.com>
+Date: Wed, 20 Jan 2016 03:10:38 +0900
+Subject: [PATCH] omxvideodec : Use gstglmemoryegl for the RPi
+
+Modified to use gstglmemoryegl to avoid texture creation/copy operations
+at the glupload.
+---
+ omx/gstomxvideodec.c | 28 ++++++++++++++--------------
+ 1 file changed, 14 insertions(+), 14 deletions(-)
+
+diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
+index ec97731..c9d60ff 100644
+--- a/omx/gstomxvideodec.c
++++ b/omx/gstomxvideodec.c
+@@ -38,7 +38,7 @@
+ 
+ #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
+ #include <gst/gl/gl.h>
+-#include <gst/gl/egl/gsteglimagememory.h>
++#include <gst/gl/egl/gstglmemoryegl.h>
+ #endif
+ 
+ #if defined (USE_OMX_TARGET_RPI) && defined(__GNUC__)
+@@ -125,7 +125,7 @@ gst_omx_video_dec_class_init (GstOMXVideoDecClass * klass)
+   klass->cdata.type = GST_OMX_COMPONENT_TYPE_FILTER;
+   klass->cdata.default_src_template_caps =
+ #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
+-      GST_VIDEO_CAPS_MAKE_WITH_FEATURES (GST_CAPS_FEATURE_MEMORY_EGL_IMAGE,
++      GST_VIDEO_CAPS_MAKE_WITH_FEATURES (GST_CAPS_FEATURE_MEMORY_GL_MEMORY,
+       "RGBA") "; "
+ #endif
+       "video/x-raw, "
+@@ -596,8 +596,8 @@ gst_omx_video_dec_allocate_output_buffers (GstOMXVideoDec * self)
+     gst_structure_free (config);
+ 
+ #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
+-    eglimage = self->eglimage && (allocator
+-        && g_strcmp0 (allocator->mem_type, GST_EGL_IMAGE_MEMORY_TYPE) == 0);
++    eglimage = self->eglimage
++               && (allocator && GST_IS_GL_MEMORY_EGL_ALLOCATOR (allocator));
+ #else
+     /* TODO: Implement something that works for other targets too */
+     eglimage = FALSE;
+@@ -640,12 +640,12 @@ gst_omx_video_dec_allocate_output_buffers (GstOMXVideoDec * self)
+     for (i = 0; i < min; i++) {
+       GstBuffer *buffer;
+       GstMemory *mem;
++      GstGLMemoryEGL *gl_mem;
+ 
+       if (gst_buffer_pool_acquire_buffer (pool, &buffer, &params) != GST_FLOW_OK
+           || gst_buffer_n_memory (buffer) != 1
+           || !(mem = gst_buffer_peek_memory (buffer, 0))
+-          || g_strcmp0 (mem->allocator->mem_type,
+-              GST_EGL_IMAGE_MEMORY_TYPE) != 0) {
++          || !GST_IS_GL_MEMORY_EGL_ALLOCATOR (mem->allocator)) {
+         GST_INFO_OBJECT (self, "Failed to allocated %d-th EGLImage", i);
+         g_list_free_full (buffers, (GDestroyNotify) gst_buffer_unref);
+         g_list_free (images);
+@@ -656,13 +656,13 @@ gst_omx_video_dec_allocate_output_buffers (GstOMXVideoDec * self)
+         err = OMX_ErrorUndefined;
+         goto done;
+       }
+-
++      gl_mem = (GstGLMemoryEGL *)mem;
+       buffers = g_list_append (buffers, buffer);
+-      gst_egl_image_memory_set_orientation (mem,
++      gst_gl_memory_egl_set_orientation (gl_mem,
+           GST_VIDEO_GL_TEXTURE_ORIENTATION_X_NORMAL_Y_FLIP);
+-      images = g_list_append (images, gst_egl_image_memory_get_image (mem));
++      images = g_list_append (images, gst_gl_memory_egl_get_image (gl_mem));
+       if (egl_display == EGL_NO_DISPLAY)
+-        egl_display = gst_egl_image_memory_get_display (mem);
++        egl_display = gst_gl_memory_egl_get_display (gl_mem);
+     }
+ 
+     GST_DEBUG_OBJECT (self, "Allocated %d EGLImages successfully", min);
+@@ -954,14 +954,14 @@ gst_omx_video_dec_reconfigure_output_port (GstOMXVideoDec * self)
+         gst_caps_unref (state->caps);
+       state->caps = gst_video_info_to_caps (&state->info);
+       gst_caps_set_features (state->caps, 0,
+-          gst_caps_features_new (GST_CAPS_FEATURE_MEMORY_EGL_IMAGE, NULL));
++          gst_caps_features_new (GST_CAPS_FEATURE_MEMORY_GL_MEMORY, NULL));
+ 
+       /* try to negotiate with caps feature */
+       if (!gst_video_decoder_negotiate (GST_VIDEO_DECODER (self))) {
+ 
+         GST_DEBUG_OBJECT (self,
+             "Failed to negotiate with feature %s",
+-            GST_CAPS_FEATURE_MEMORY_EGL_IMAGE);
++            GST_CAPS_FEATURE_MEMORY_GL_MEMORY);
+ 
+         if (state->caps)
+           gst_caps_replace (&state->caps, NULL);
+@@ -2554,7 +2554,7 @@ gst_omx_video_dec_decide_allocation (GstVideoDecoder * bdec, GstQuery * query)
+ 
+         gst_query_parse_nth_allocation_param (query, i, &allocator, &params);
+         if (allocator) {
+-          if (g_strcmp0 (allocator->mem_type, GST_EGL_IMAGE_MEMORY_TYPE) == 0) {
++          if (GST_IS_GL_MEMORY_EGL_ALLOCATOR (allocator)) {
+             found = TRUE;
+             gst_query_set_nth_allocation_param (query, 0, allocator, &params);
+             while (gst_query_get_n_allocation_params (query) > 1)
+@@ -2572,7 +2572,7 @@ gst_omx_video_dec_decide_allocation (GstVideoDecoder * bdec, GstQuery * query)
+        * and if allocator is not of type memory EGLImage then fails */
+       if (feature
+           && gst_caps_features_contains (feature,
+-              GST_CAPS_FEATURE_MEMORY_EGL_IMAGE) && !found) {
++              GST_CAPS_FEATURE_MEMORY_GL_MEMORY) && !found) {
+         return FALSE;
+       }
+     }
+-- 
+2.5.0
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
similarity index 70%
copy from recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
copy to recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
index a13aad7..1e84abe 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
@@ -3,14 +3,16 @@
 #
 SRC_URI_append_rpi = " \
              file://0001-config-files-path.patch \
-             file://0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
-             file://0003-fix-decoder-flushing.patch \
+             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
+             file://0002-fix-decoder-flushing.patch \
              file://0003-no-timeout-on-get-state.patch \
              file://0004-Properly-handle-drain-requests-while-flushing.patch \
              file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
+             file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
+             file://0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch \
 "
 
-FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
+FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
 
 GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
 GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
similarity index 100%
rename from recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
rename to recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
-- 
2.9.0


