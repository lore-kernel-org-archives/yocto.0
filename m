Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 89A35E00C44; Sat, 27 Feb 2016 07:27:30 -0800 (PST)
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
	*      [209.85.192.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f42.google.com (mail-qg0-f42.google.com
	[209.85.192.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02E9CE00CC4
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:17 -0800 (PST)
Received: by mail-qg0-f42.google.com with SMTP id y9so87796777qgd.3
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=qW9mmdHVdj3ZkWhoNZhguFi1iynljPYaG/iLN8ij8LA=;
	b=aiq/pGMpkEPo1KYdmkmlWhvlwlQe3N4FZIwqin0RGMsYV7odeZzAasdycB0ReSvIzm
	+TNEKfkjPndV8UF7UO4c5TujwbVfOiFNuDJWlx1uc7vxADTa04DUN2aECnp15BaCev7g
	KosoJJ32hbMQstwv29E6S2pDd2rylehg16xsyYsOGMn4JesBLTPX1yf2kVuNVxHScGzZ
	5B8M4kGoZnAIlkFvG1DZMszKA6v1R/UaMNFMcxT1lgJB1C/YKWNafHsAzjExKpWWLA0U
	5kAKA7pUQ5I7VFNNCEigYryqtqWM8Bg0VaKNiOEQYYcc3O5InBvHhFVuJPtKFqQSi7f6
	/oew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=qW9mmdHVdj3ZkWhoNZhguFi1iynljPYaG/iLN8ij8LA=;
	b=QnY9nKOLUGx17nWv5YdjA4FEsBF8Bsq2Ait1SqPWx3qJBbeF/gdcm8w06UICYuqy7+
	fC1G4i8izBR7AhlDNBHnNNxQuw2I4tkqa5aX2g97sFtqPVlaNlkEYwTOp7t+k242Y7nj
	JhOqzUSaB2v6a0ATWnrhvYXA+7BrChIAdmFGVkgw0ps/zwIPJvCpjBLDruM1YUsmoc+/
	qxTwZ1fmzF/inGwhqwcSuXPes83K91xRxzD5H06ncJ9ux+U+m15UUgvlIwJ1pPwJN3jK
	HC0CgyU3F/zR4MBrRcnQ0ntIjHB12MLnF08E0a1JiC0IAxzVu8fNCkCn6UxYMn5au9je
	0OaA==
X-Gm-Message-State: AD7BkJJwvuRnxpLoKayo7IPWkrR9/Py2Rgqy5r6eM/+xJEWNgBJaDcTNPiK/vITkelCVkA==
X-Received: by 10.140.157.7 with SMTP id d7mr9416595qhd.17.1456586837072;
	Sat, 27 Feb 2016 07:27:17 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:16 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:53 +0000
Message-Id: <536add59223b30b39bd76f76e0119794f85755c5.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 14/23] gstreamer1.0-omx: Add raspberry pi optimization patches and config options
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
X-List-Received-Date: Sat, 27 Feb 2016 15:27:30 -0000

Patches from Hong Li <honglh@gmail.com>

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../gstreamer1.0-omx/0001-config-files-path.patch  | 137 +++++++++++++++++++++
 ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  47 +++++++
 .../0003-fix-decoder-flushing.patch                |  15 +++
 .../gstreamer/gstreamer1.0-omx_%.bbappend          |  19 +++
 4 files changed, 218 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-fix-decoder-flushing.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
new file mode 100644
index 0000000..a7da922
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
new file mode 100644
index 0000000..aef21a5
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
@@ -0,0 +1,47 @@
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-fix-decoder-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-fix-decoder-flushing.patch
new file mode 100644
index 0000000..a244b09
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-fix-decoder-flushing.patch
@@ -0,0 +1,15 @@
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
new file mode 100644
index 0000000..b313acd
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
@@ -0,0 +1,19 @@
+#
+# Need to make this conditional to gstreamer1
+#
+SRC_URI_append_rpi = " \
+             file://0001-config-files-path.patch \
+             file://0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
+             file://0003-fix-decoder-flushing.patch \
+"
+
+FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
+
+GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
+GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
+
+
+# How to make this RPI specific?
+EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
+#examples only build with GL but not GLES, so disable it for RPI
+EXTRA_OECONF_append_rpi = " --disable-examples"
-- 
1.9.1


