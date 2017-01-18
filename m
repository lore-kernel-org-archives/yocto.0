Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 41258E0049D; Wed, 18 Jan 2017 09:25:00 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F03B8E0030B
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:24:57 -0800 (PST)
Received: by mail-wm0-f65.google.com with SMTP id r126so5597507wmr.3
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 09:24:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=YqnZi2eLq7ix75T0rV0fdwOhp7yZAWg7rLeOJaqe/Ec=;
	b=d1i0yVPee87eTvSjexvlDxsnnvC3vwiTpuMgnQLfdLsY313OEyAFPCrBbhqKYP1UEk
	etowxwMQ0BeMOxtQjLk4cTxlqsvBU19Txw6NI8fYqfxkUewnBBThR4aEkMW/crBWtkCw
	5TH+nqDN/rXG99nIPEwR/u2I6xGhoEfceFJ14GaEmJKrFagx0dQ/eKgsM2L+rmDqr55o
	TFr+yzrZ8OC0W9air6in9hYT6TOgHOYxV9zkYtYJvsPa6HtuWzo4cGIKjNW8NQe3rhRE
	KT6vxE/XTSebl93yyJCLnklixxFk0QFELHOxtnqrfPlRkgrpr8LnEcwkSP8XJCqeBsN5
	eUuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=YqnZi2eLq7ix75T0rV0fdwOhp7yZAWg7rLeOJaqe/Ec=;
	b=A1ta62FNb55IEypo09SeizyZshyf4AsmbVYJd0oTe2b3/j1aiztppOwYH1m8qaZcMn
	/6lgl7B5CWkRqfvsgyNZClnpkYRTeQSeAeCre6dRioqAOWYf8ci4jIhfdgjpwYOcneEj
	Uugtq2DbxJHdiWemoUyIy9E6/VFwO5euDFI09TVswOtjU/4LOv+ts3112yRjc2/pvlLE
	uUnKLHKLKpHkaEkBgSmOnW+Ekx2t01XTl/IlGuybwbtI/CN5bGOvreiWT1upPDFuBnAO
	JgttD2NQZ3dHBV2RXuJMBQ1u0iohMhxCDZe1QskYxtw7gu+il1wePqk7sGDy1TGCsG+d
	EPVg==
X-Gm-Message-State: AIkVDXINjGOlQkvxE22uAtWVeL9Njuzyc/sf+U/lEN1p4e85bBn5WJQl3N5XOZ9+s3kbQg==
X-Received: by 10.28.173.74 with SMTP id w71mr20349094wme.14.1484760295859;
	Wed, 18 Jan 2017 09:24:55 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118])
	by smtp.gmail.com with ESMTPSA id w18sm6240103wme.9.2017.01.18.09.24.54
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 09:24:55 -0800 (PST)
Date: Wed, 18 Jan 2017 17:24:52 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170118172452.GJ14533@carbonA>
References: <20161222075921.23729-1-raj.khem@gmail.com>
	<20161229181628.GD26059@carbonA>
	<CAMKF1srtJrwG9PSdt0U4EEBehvhYJErCvsEqXbn1T8fzvi+g8g@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAMKF1srtJrwG9PSdt0U4EEBehvhYJErCvsEqXbn1T8fzvi+g8g@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-omx: Add 1.10x support
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
X-List-Received-Date: Wed, 18 Jan 2017 17:25:00 -0000
X-Groupsio-MsgNum: 33915
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="w2xx78T4DcG3O+DJ"
Content-Disposition: inline

--w2xx78T4DcG3O+DJ
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sat, Dec 31, 2016 at 01:28:46PM -0800, Khem Raj wrote:
> On Thu, Dec 29, 2016 at 10:16 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Wed, Dec 21, 2016 at 11:59:21PM -0800, Khem Raj wrote:
> >> Restructure the bbappends such that common portions
> >> can be put in a common bbappend and version specific
> >> bbappend then only do the patching
> >>
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> ---
> >>  .../gstreamer/gstreamer1.0-omx%.bbappend           |   9 ++
> >>  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 ++++++++
> >>  .../0001-config-files-path.patch                   | 137 +++++++++++++++++++++
> >>  .../0002-fix-decoder-flushing.patch                |  16 +++
> >>  .../0003-no-timeout-on-get-state.patch             |  16 +++
> >>  ...erly-handle-drain-requests-while-flushing.patch |  30 +++++
> >>  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 +++++
> >>  .../gstreamer/gstreamer1.0-omx_1.10%.bbappend      |  13 ++
> >>  .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  10 --
> >>  .../gstreamer/gstreamer1.0-omx_git.bbappend        |   9 --
> >>  10 files changed, 299 insertions(+), 19 deletions(-)
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> >>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
> >>
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
> >> new file mode 100644
> >> index 0000000..67e46de
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
> >
> > Is the wildcard working like this? A potentially TIL
> >
> >> @@ -0,0 +1,9 @@
> >> +GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
> >> +GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
> >> +
> >> +
> >> +# How to make this RPI specific?
> >> +EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
> >> +#examples only build with GL but not GLES, so disable it for RPI
> >> +EXTRA_OECONF_append_rpi = " --disable-examples"
> >> +
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> >> new file mode 100644
> >> index 0000000..815a7c2
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
> >> @@ -0,0 +1,48 @@
> >> +From 2e111e52f96f0b942abda120c30a876629bd73fc Mon Sep 17 00:00:00 2001
> >> +From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
> >> +Date: Mon, 25 May 2015 14:53:35 +0200
> >> +Subject: [PATCH] Don't try to acquire buffer when src pad isn't active
> >> +
> >> +This solves a race condition when setting the pipeline from PAUSE to
> >> +NULL while the decoder loop is still running. Without this patch, the
> >> +thread which interacts with the decode sink pad gets blocked here:
> >> +
> >> +  gst_element_change_state()
> >> +  gst_element_change_state_func()
> >> +  gst_element_pads_activate() --> Deactivating pads
> >> +  activate_pads()
> >> +  gst_pad_set_active()
> >> +  gst_pad_activate_mode()
> >> +  post_activate()
> >> +  GST_PAD_STREAM_LOCK()
> >> +
> >> +while gst_omx_port_acquire_buffer() gets stalled forever in
> >> +gst_omx_component_wait_message() waiting for a message that will never
> >> +arrive:
> >> +
> >> +  gst_omx_video_dec_loop()
> >> +  gst_omx_port_acquire_buffer()
> >> +  gst_omx_component_wait_message()
> >> +---
> >> + omx/gstomxvideodec.c | 5 +++++
> >> + 1 file changed, 5 insertions(+)
> >> +
> >> +diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
> >> +index cd24944..57a61dd 100644
> >> +--- a/omx/gstomxvideodec.c
> >> ++++ b/omx/gstomxvideodec.c
> >> +@@ -1247,6 +1247,11 @@ gst_omx_video_dec_loop (GstOMXVideoDec * self)
> >> +   GstClockTimeDiff deadline;
> >> +   OMX_ERRORTYPE err;
> >> +
> >> ++  if (!gst_pad_is_active(GST_VIDEO_DECODER_SRC_PAD (self))) {
> >> ++    GST_DEBUG_OBJECT (self, "Src pad not active, not acquiring buffer and flushing instead");
> >> ++      goto flushing;
> >> ++  }
> >> ++
> >> + #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
> >> +   port = self->eglimage ? self->egl_out_port : self->dec_out_port;
> >> + #else
> >> +--
> >> +1.8.3.2
> >> +
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
> >> new file mode 100644
> >> index 0000000..a7da922
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
> >> @@ -0,0 +1,137 @@
> >> +--- a/config/bellagio/gstomx.conf
> >> ++++ b/config/bellagio/gstomx.conf
> >> +@@ -1,6 +1,6 @@
> >> + [omxmpeg4videodec]
> >> + type-name=GstOMXMPEG4VideoDec
> >> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
> >> ++core-name=/usr/lib/libomxil-bellagio.so.0
> >> + component-name=OMX.st.video_decoder.mpeg4
> >> + rank=256
> >> + in-port-index=0
> >> +@@ -9,7 +9,7 @@
> >> +
> >> + [omxh264dec]
> >> + type-name=GstOMXH264Dec
> >> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
> >> ++core-name=/usr/lib/libomxil-bellagio.so.0
> >> + component-name=OMX.st.video_decoder.avc
> >> + rank=256
> >> + in-port-index=0
> >> +@@ -18,7 +18,7 @@
> >> +
> >> + [omxmpeg4videoenc]
> >> + type-name=GstOMXMPEG4VideoEnc
> >> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
> >> ++core-name=/usr/lib/libomxil-bellagio.so.0
> >> + component-name=OMX.st.video_encoder.mpeg4
> >> + rank=0
> >> + in-port-index=0
> >> +@@ -27,7 +27,7 @@
> >> +
> >> + [omxaacenc]
> >> + type-name=GstOMXAACEnc
> >> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
> >> ++core-name=/usr/lib/libomxil-bellagio.so.0
> >> + component-name=OMX.st.audio_encoder.aac
> >> + rank=0
> >> + in-port-index=0
> >> +--- a/config/rpi/gstomx.conf
> >> ++++ b/config/rpi/gstomx.conf
> >> +@@ -1,6 +1,6 @@
> >> + [omxmpeg2videodec]
> >> + type-name=GstOMXMPEG2VideoDec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -9,7 +9,7 @@
> >> +
> >> + [omxmpeg4videodec]
> >> + type-name=GstOMXMPEG4VideoDec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -18,7 +18,7 @@
> >> +
> >> + [omxh263dec]
> >> + type-name=GstOMXH263Dec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -27,7 +27,7 @@
> >> +
> >> + [omxh264dec]
> >> + type-name=GstOMXH264Dec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -36,7 +36,7 @@
> >> +
> >> + [omxtheoradec]
> >> + type-name=GstOMXTheoraDec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -45,7 +45,7 @@
> >> +
> >> + [omxvp8dec]
> >> + type-name=GstOMXVP8Dec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -54,7 +54,7 @@
> >> +
> >> + [omxmjpegdec]
> >> + type-name=GstOMXMJPEGDec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=257
> >> + in-port-index=130
> >> +@@ -63,7 +63,7 @@
> >> +
> >> + [omxvc1dec]
> >> + type-name=GstOMXWMVDec
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_decode
> >> + rank=256
> >> + in-port-index=130
> >> +@@ -73,7 +73,7 @@
> >> +
> >> + [omxh264enc]
> >> + type-name=GstOMXH264Enc
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.video_encode
> >> + rank=257
> >> + in-port-index=200
> >> +@@ -82,7 +82,7 @@
> >> +
> >> + [omxanalogaudiosink]
> >> + type-name=GstOMXAnalogAudioSink
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.audio_render
> >> + rank=256
> >> + in-port-index=100
> >> +@@ -92,7 +92,7 @@
> >> +
> >> + [omxhdmiaudiosink]
> >> + type-name=GstOMXHdmiAudioSink
> >> +-core-name=/opt/vc/lib/libopenmaxil.so
> >> ++core-name=/usr/lib/libopenmaxil.so
> >> + component-name=OMX.broadcom.audio_render
> >> + rank=257
> >> + in-port-index=100
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
> >> new file mode 100644
> >> index 0000000..d4c7c81
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
> >> @@ -0,0 +1,16 @@
> >> +diff --git a/omx/gstomx.c b/omx/gstomx.c
> >> +index 69696c4..c382019 100644
> >> +--- a/omx/gstomx.c
> >> ++++ b/omx/gstomx.c
> >> +@@ -1508,8 +1508,8 @@ gst_omx_port_set_flushing (GstOMXPort * port, GstClockTime timeout,
> >> +     last_error = OMX_ErrorNone;
> >> +     gst_omx_component_handle_messages (comp);
> >> +     while (signalled && last_error == OMX_ErrorNone && !port->flushed
> >> +-        && port->buffers
> >> +-        && port->buffers->len > g_queue_get_length (&port->pending_buffers)) {
> >> ++     /* && port->buffers
> >> ++        && port->buffers->len > g_queue_get_length (&port->pending_buffers) */) {
> >> +       signalled = gst_omx_component_wait_message (comp, timeout);
> >> +       if (signalled)
> >> +         gst_omx_component_handle_messages (comp);
> >> +
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
> >> new file mode 100644
> >> index 0000000..0a0050d
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
> >> @@ -0,0 +1,16 @@
> >> +diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
> >> +index 0d4e7a1..a0d9c74 100644
> >> +--- a/omx/gstomxvideodec.c
> >> ++++ b/omx/gstomxvideodec.c
> >> +@@ -1697,9 +1697,9 @@ gst_omx_video_dec_stop (GstVideoDecoder * decoder)
> >> +   g_cond_broadcast (&self->drain_cond);
> >> +   g_mutex_unlock (&self->drain_lock);
> >> +
> >> +-  gst_omx_component_get_state (self->dec, 5 * GST_SECOND);
> >> ++  gst_omx_component_get_state (self->dec, 0);
> >> + #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
> >> +-  gst_omx_component_get_state (self->egl_render, 1 * GST_SECOND);
> >> ++  gst_omx_component_get_state (self->egl_render, 0);
> >> + #endif
> >> +
> >> +   gst_buffer_replace (&self->codec_data, NULL);
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
> >> new file mode 100644
> >> index 0000000..4d10f24
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
> >> @@ -0,0 +1,30 @@
> >> +From 80dddfd13aaf2fe7272765f8cf291215fe375e28 Mon Sep 17 00:00:00 2001
> >> +From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
> >> +Date: Tue, 17 Nov 2015 16:51:27 +0000
> >> +Subject: [PATCH] Properly handle drain requests while flushing
> >> +
> >> +Without this commit the decoder streaming thread stops without ever attending
> >> +the drain request, leaving the decoder input thread waiting forever.
> >> +---
> >> + omx/gstomx.c         |  7 +++++++
> >> + omx/gstomxvideodec.c | 13 +++++++++++++
> >> + 2 files changed, 20 insertions(+)
> >> +
> >> +Index: gst-omx-1.10.2/omx/gstomx.c
> >> +===================================================================
> >> +--- gst-omx-1.10.2.orig/omx/gstomx.c
> >> ++++ gst-omx-1.10.2/omx/gstomx.c
> >> +@@ -737,6 +737,13 @@ gst_omx_component_new (GstObject * paren
> >> +
> >> +   g_mutex_lock (&comp->lock);
> >> +   gst_omx_component_handle_messages (comp);
> >> ++
> >> ++  if (err != OMX_ErrorNone && comp->last_error == OMX_ErrorNone) {
> >> ++    GST_ERROR_OBJECT (comp->parent,
> >> ++        "Last operation returned an error. Setting last_error manually.");
> >> ++    comp->last_error = err;
> >> ++  }
> >> ++
> >> +   g_mutex_unlock (&comp->lock);
> >> +
> >> +   return comp;
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> >> new file mode 100644
> >> index 0000000..b7a8753
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
> >> @@ -0,0 +1,30 @@
> >> +From 12103842d5f347cf245e71071d0c44297bcdb1f9 Mon Sep 17 00:00:00 2001
> >> +From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
> >> +Date: Fri, 4 Dec 2015 18:39:59 +0100
> >> +Subject: [PATCH] Don't abort gst_omx_video_dec_set_format() if there's a
> >> + timeout releasing the buffers taken by the egl_render out port
> >> +
> >> +---
> >> + omx/gstomxvideodec.c | 5 ++++-
> >> + 1 file changed, 4 insertions(+), 1 deletion(-)
> >> +
> >> +diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
> >> +index 2368f34..da35e0d 100644
> >> +--- a/omx/gstomxvideodec.c
> >> ++++ b/omx/gstomxvideodec.c
> >> +@@ -1905,8 +1905,11 @@ gst_omx_video_dec_set_format (GstVideoDecoder * decoder,
> >> +               5 * GST_SECOND) != OMX_ErrorNone)
> >> +         return FALSE;
> >> +       if (gst_omx_port_wait_buffers_released (out_port,
> >> +-              1 * GST_SECOND) != OMX_ErrorNone)
> >> ++              1 * GST_SECOND) != OMX_ErrorNone) {
> >> ++#if !(defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL))
> >> +         return FALSE;
> >> ++#endif
> >> ++      }
> >> +       if (gst_omx_port_deallocate_buffers (self->dec_in_port) != OMX_ErrorNone)
> >> +         return FALSE;
> >> +       if (gst_omx_video_dec_deallocate_output_buffers (self) != OMX_ErrorNone)
> >> +--
> >> +2.1.4
> >> +
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
> >
> > Where is the main recipe for this? I get the following error when using
> > master meta-oe and poky:
> >
> > ERROR: No recipes available for:
> >   /home/andrei/work/raspberrypi/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
> >
>
>
> This will work once the following patch goes into OE-Core
> https://patchwork.openembedded.org/patch/135383/
>
> We can wait until then or live with dangling bbappend until then
>

Merged to master as upstream merged the version mentioned above.

> >
> >> new file mode 100644
> >> index 0000000..d419867
> >> --- /dev/null
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
> >> @@ -0,0 +1,13 @@
> >> +#
> >> +# Need to make this conditional to gstreamer1
> >> +#
> >> +SRC_URI_append_rpi = " \
> >> +             file://0001-config-files-path.patch \
> >> +             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
> >> +             file://0002-fix-decoder-flushing.patch \
> >> +             file://0003-no-timeout-on-get-state.patch \
> >> +             file://0004-Properly-handle-drain-requests-while-flushing.patch \
> >> +             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
> >> +"
> >> +
> >> +FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.10:"
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> >> index 1e84abe..49ba376 100644
> >> --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> >> @@ -9,16 +9,6 @@ SRC_URI_append_rpi = " \
> >>               file://0004-Properly-handle-drain-requests-while-flushing.patch \
> >>               file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
> >>               file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
> >> -             file://0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch \
> >>  "
> >>
> >>  FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
> >> -
> >> -GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
> >> -GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
> >> -
> >> -
> >> -# How to make this RPI specific?
> >> -EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
> >> -#examples only build with GL but not GLES, so disable it for RPI
> >> -EXTRA_OECONF_append_rpi = " --disable-examples"
> >> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> >> index a13aad7..9bcc446 100644
> >> --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> >> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
> >> @@ -11,12 +11,3 @@ SRC_URI_append_rpi = " \
> >>  "
> >>
> >>  FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
> >> -
> >> -GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
> >> -GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
> >> -
> >> -
> >> -# How to make this RPI specific?
> >> -EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
> >> -#examples only build with GL but not GLES, so disable it for RPI
> >> -EXTRA_OECONF_append_rpi = " --disable-examples"
> >> --
> >> 2.11.0
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Andrei Gherzan

--
Andrei Gherzan

--w2xx78T4DcG3O+DJ
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/pOMACgkQc7voa356
t89uAg/8C/x8kJC4H9wWCu/PJjyQHw+JAqMLPndeYPBy/s8Z/hSLhPKnf8MwP5IC
wJwmaD9vmEnVTCsCrF4Qp07x/pBPpHkSsP9R2MY4qLPFob4F3j+6ilcdK4+NULQF
quoKPuoIvpVJW6x/mlb5bK3k76nKZEnccVufQO/wk8vYjOmQFfydBuCaUSjJ0DKi
kQCLBiveM/KJToqQy1GarKyIq7aclnE2yjZy+fUJC12+jyd/V2KmsCIny6cSV8SI
VHCS82tNNbjXHc2BiXUG1qWnZUnz0sekGXtNPYOhwJz39EtClUjcWoY8UE1rlRbz
H0GNSrKcCcpAsKcuOYHTjABOnEa11f1pvD6HJJWl09FpCgmy+aa16lW91ovm0v4J
WA9IysKUQrzJsKqzDYC/OVMqVzPHG+LNdT/fxMRCfyXMhHbYLlu2ynTqIcYtJMnx
kz01lsabPDoR3NPY+2t2udgPHNDjbBT5lUD4NE7Yh5LmvGb1ZyJ1+bcEaf1lgbJK
JoOCncPJcpMLdKNDPETsSQxyj7MsgWq1cKrOFFTVu1TQXUiGsUm7wJn0xWlnWuYU
E4tT06meKeBakpZ/KlZdUN3K+5xuetCGXqSPJcMyeoosIGRuGAQ5ihBYxHuYUAVT
dCcglRcwfu1TltzW/GPCUwmofV5KI62S8IWwrijxgL4KWeQSdXY=
=rBYr
-----END PGP SIGNATURE-----

--w2xx78T4DcG3O+DJ--
