Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 771A0E00C44; Sat, 27 Feb 2016 07:27:30 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.50 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f50.google.com (mail-qg0-f50.google.com
	[209.85.192.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD615E00E04
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:18 -0800 (PST)
Received: by mail-qg0-f50.google.com with SMTP id d32so30899708qgd.0
	for <yocto@yoctoproject.org>; Sat, 27 Feb 2016 07:27:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:to:cc:subject:date:message-id:in-reply-to:references
	:in-reply-to:references;
	bh=5G8VDo+w9hxe7OxBjIi/kERzqHYJaM3kll4yohJDnAE=;
	b=rJGyR9px577LR1ykLPnwm/cxNmd9YdYCFtG8fRH5c7g0TNFs6Uqc1B9vW5N+b6zMde
	bJDCkZz4Bry595GXYhJt78DlteLYeLf1FsbgiwAqATobj2c6AFMyG2qCS2MtyOeOrrah
	yPfmDpLlZoStJCjjulthxpI/omq5bqU0D8vmthbtWM2GtPV7Gm9kh2tUVSGcjWqsk6MY
	FdG3rDlHfkhJFKHkpfM6vOSg1cnN/N+C00rBCczHi2KhTFHY2F7eODGMvOuX6GEShGW6
	OqFJVAKAVzn+cGHuMO/PwyapRHU+TgXgq/kCgAc/76/yDbM2upryWX21QBQiwoUSkwmF
	W4iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
	:references:in-reply-to:references;
	bh=5G8VDo+w9hxe7OxBjIi/kERzqHYJaM3kll4yohJDnAE=;
	b=Ucak7ZKnQyMXVYWyFhiMLq1hp0Xc7yaN6tN2ka9LDRt2QAYYozlC21h0Zd7/DAahi2
	IH8TWsi+g1bohgCM9x6kvDHBG2LngtGjnugbkYJN6iLJPQznMUTCQa/v/UCE0ZfCuotU
	3DfUO0vhcmMq+6c8KXJdvlzIN8zgfsvfKItBjoiEhcgSd9b7qxx1OZsz9vETAqdQInSc
	17H7hNIR4xGhTYjFc7zZk/Ex7PZ+JgH+cmBZVqLhD6yJpSKaQ+JUQZLYgRiFQZ9Au7V6
	Ba2veDRut3c/kL9YxUK1tZ9lzJtSRDS22NvtOiXnlNHQc7BoAYyKQ8Mb4FCBEAwKjKiN
	8rKw==
X-Gm-Message-State: AD7BkJJcm1Qy8BM48OV/eSjLzT221fW0rNBOQI6SNtncEmMoxaBkdz6gCigODLDkWA7Adw==
X-Received: by 10.140.21.229 with SMTP id 92mr9128390qgl.89.1456586838016;
	Sat, 27 Feb 2016 07:27:18 -0800 (PST)
Received: from eos.sys.comcast.net (a-96-118-179-133.sys.comcast.net.
	[96.118.179.133]) by smtp.gmail.com with ESMTPSA id
	197sm7416770qhr.36.2016.02.27.07.27.17
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Sat, 27 Feb 2016 07:27:17 -0800 (PST)
From: Khem Raj <raj.khem@gmail.com>
To: yocto@yoctoproject.org
Date: Sat, 27 Feb 2016 15:26:55 +0000
Message-Id: <035c2825238663ee4583025aa1d70ce08022215c.1456586389.git.raj.khem@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
In-Reply-To: <cover.1456586389.git.raj.khem@gmail.com>
References: <cover.1456586389.git.raj.khem@gmail.com>
Subject: [meta-raspberrypi][PATCH 16/23] gstreamer1.0-omx: Backports and fixes for smooth video playback
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

Signed-off-by: Khem Raj <raj.khem@gmail.com>
---
 .../0003-no-timeout-on-get-state.patch             | 16 +++++
 ...erly-handle-drain-requests-while-flushing.patch | 69 ++++++++++++++++++++++
 ...-gst_omx_video_dec_set_format-if-there-s-.patch | 30 ++++++++++
 .../gstreamer/gstreamer1.0-omx_%.bbappend          |  3 +
 4 files changed, 118 insertions(+)
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-no-timeout-on-get-state.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx/0004-Properly-handle-drain-requests-while-flushing.patch
 create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-no-timeout-on-get-state.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-no-timeout-on-get-state.patch
new file mode 100644
index 0000000..0a0050d
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0003-no-timeout-on-get-state.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0004-Properly-handle-drain-requests-while-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0004-Properly-handle-drain-requests-while-flushing.patch
new file mode 100644
index 0000000..98689f3
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0004-Properly-handle-drain-requests-while-flushing.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
new file mode 100644
index 0000000..b7a8753
--- /dev/null
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
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
diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
index b313acd..a13aad7 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_%.bbappend
@@ -5,6 +5,9 @@ SRC_URI_append_rpi = " \
              file://0001-config-files-path.patch \
              file://0002-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
              file://0003-fix-decoder-flushing.patch \
+             file://0003-no-timeout-on-get-state.patch \
+             file://0004-Properly-handle-drain-requests-while-flushing.patch \
+             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
 "
 
 FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
-- 
1.9.1


