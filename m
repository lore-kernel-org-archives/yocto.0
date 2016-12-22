Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85540E009F0; Wed, 21 Dec 2016 23:59:34 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B967E006C7
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 23:59:30 -0800 (PST)
Received: by mail-pg0-f65.google.com with SMTP id b1so19239274pgc.1
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2016 23:59:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:to:cc:subject:date:message-id;
	bh=UQNTyAGS9SjBI+1biEnULIZYsUw2n9lOhYG+Ol0Zofw=;
	b=RunTtbKUUQF+ztJwM3wCNM3jaYm5wS7aDontdmF8T2fCBF89SQYRRWAwgPI81pNu6I
	0GovlW+Gen2ti3vMPUsbHTDhlOU1gYuYDsQCy1GdXtQvw6ylEQbCuk2fl6F7CD7pKUxx
	QO6wSwLAu9g98ImMAPHSrxmJUkDYpiX25bQMPnXWup3OwOzyvIz8o1mGuvr84UE9Zzof
	N3m8Px1SpZvaG36nk7Xe2W92lZmpofGG7/QKzaDUgt1RsxSkKfB9WMPrHMC808o+xSR+
	Tjv58PhBkC84dpGgcXVZLB/Fq/2wsjyPqYkKvWZDKkb/bwkXLTBUXn1IbxEWUzJRBwrX
	TVUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:to:cc:subject:date:message-id;
	bh=UQNTyAGS9SjBI+1biEnULIZYsUw2n9lOhYG+Ol0Zofw=;
	b=F1WB4WGyzBe/56gwdee+B6x4aD7qw/R1HYctDZebS6S8mf6OoHZImMHx1w8HAojffr
	0Nc/Om7ZAfcrUq+7vsJsbWsopwhLFEM4Enpw6sxE/4gLHlffIjsS5oZUtRK7SbeDMzGX
	PKeLhG8vDuWAJ7KNrxnnUG2ANOwKMlFr061zrR1K0aQKABEsEHTY4u8zE39qxjU5kKLX
	ZAilEfZUyAKzj890wocudkb1EAzsMhr8MJA/6Kn5sLYq3RgbVZIj8c8g9h51FpEtVrtd
	XDaBJnYUDcgIHxG32MmIkoYJdCEr+kE5a458JvFbJRTfG+WoSmqA3Cd1KaCmGMI4nXEr
	fLkw==
X-Gm-Message-State: AIkVDXJAh75IPOfT5WpTBHZzlKR7i+2J0aMD0+1ShR4M8qqr3mlgnVo92AaeInqTv8MbYg==
X-Received: by 10.99.168.10 with SMTP id o10mr14790586pgf.105.1482393569844;
	Wed, 21 Dec 2016 23:59:29 -0800 (PST)
Received: from localhost.localdomain (c-76-102-32-192.hsd1.ca.comcast.net.
	[76.102.32.192]) by smtp.gmail.com with ESMTPSA id
	c15sm52160583pfd.36.2016.12.21.23.59.28
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 21 Dec 2016 23:59:29 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Wed, 21 Dec 2016 23:59:21 -0800
Message-Id: <20161222075921.23729-1-raj.khem@gmail.com>
X-Mailer: git-send-email 2.11.0
Subject: [meta-raspberrypi][PATCH] gstreamer1.0-omx: Add 1.10x support
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
X-List-Received-Date: Thu, 22 Dec 2016 07:59:34 -0000

Restructure the bbappends such that common portions
can be put in a common bbappend and version specific
bbappend then only do the patching

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../gstreamer/gstreamer1.0-omx%.bbappend           |   9 ++
 ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 ++++++++
 .../0001-config-files-path.patch                   | 137 +++++++++++++++++++++
 .../0002-fix-decoder-flushing.patch                |  16 +++
 .../0003-no-timeout-on-get-state.patch             |  16 +++
 ...erly-handle-drain-requests-while-flushing.patch |  30 +++++
 ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 +++++
 .../gstreamer/gstreamer1.0-omx_1.10%.bbappend      |  13 ++
 .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  10 --
 .../gstreamer/gstreamer1.0-omx_git.bbappend        |   9 --
 10 files changed, 299 insertions(+), 19 deletions(-)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
new file mode 100644
index 0000000..67e46de
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
@@ -0,0 +1,9 @@
+GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
+GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
+
+
+# How to make this RPI specific?
+EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
+#examples only build with GL but not GLES, so disable it for RPI
+EXTRA_OECONF_append_rpi = " --disable-examples"
+
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
new file mode 100644
index 0000000..815a7c2
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
new file mode 100644
index 0000000..a7da922
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
new file mode 100644
index 0000000..d4c7c81
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
new file mode 100644
index 0000000..0a0050d
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
new file mode 100644
index 0000000..4d10f24
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
@@ -0,0 +1,30 @@
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
+Index: gst-omx-1.10.2/omx/gstomx.c
+===================================================================
+--- gst-omx-1.10.2.orig/omx/gstomx.c
++++ gst-omx-1.10.2/omx/gstomx.c
+@@ -737,6 +737,13 @@ gst_omx_component_new (GstObject * paren
+ 
+   g_mutex_lock (&comp->lock);
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
+   return comp;
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
new file mode 100644
index 0000000..b7a8753
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
new file mode 100644
index 0000000..d419867
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
@@ -0,0 +1,13 @@
+#
+# Need to make this conditional to gstreamer1
+#
+SRC_URI_append_rpi = " \
+             file://0001-config-files-path.patch \
+             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
+             file://0002-fix-decoder-flushing.patch \
+             file://0003-no-timeout-on-get-state.patch \
+             file://0004-Properly-handle-drain-requests-while-flushing.patch \
+             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
+"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.10:"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
index 1e84abe..49ba376 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
@@ -9,16 +9,6 @@ SRC_URI_append_rpi = " \
              file://0004-Properly-handle-drain-requests-while-flushing.patch \
              file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
              file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
-             file://0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch \
 "
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
-
-GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
-GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
-
-
-# How to make this RPI specific?
-EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
-#examples only build with GL but not GLES, so disable it for RPI
-EXTRA_OECONF_append_rpi = " --disable-examples"
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
index a13aad7..9bcc446 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
@@ -11,12 +11,3 @@ SRC_URI_append_rpi = " \
 "
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
-
-GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
-GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
-
-
-# How to make this RPI specific?
-EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
-#examples only build with GL but not GLES, so disable it for RPI
-EXTRA_OECONF_append_rpi = " --disable-examples"
-- 
2.11.0


