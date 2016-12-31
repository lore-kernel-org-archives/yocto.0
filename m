Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D989EE007B5; Sat, 31 Dec 2016 13:29:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D6DFE005B9
	for <yocto@yoctoproject.org>; Sat, 31 Dec 2016 13:29:18 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id 96so21653520uaq.2
	for <yocto@yoctoproject.org>; Sat, 31 Dec 2016 13:29:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZmiL4qgd/x6B+EdTOMPoDziEoXsyWPbtseP1LjIaoog=;
	b=rr/y4JLA9PXnk6ToK5C+Vy0/8wue0RK5pW+2LmXYzSo20lb52w+o1xuImwBjaEa3v4
	Txf/TlOcVyNy3NuNp8Yepki1Oa8iVQZQhOtyMit6dy6Sng7OhI3rKvRi4BWJWEs/z7L9
	qYkyKRumFeKSIxOQr8qEBYC94BMn/HKnerMaH0sevuCTm0gtk2WZGCGg/8X1uINrSZws
	B6x5iGzjHRvHwGweO0YrGqxxFAFFT76yXciWP0mvvo8g9/YPEXcTBOwOPBv5PNPobxYJ
	iNQB8jBkmdQiGtRbPsfrJ2URkTBwU7qbyRlU8itw8DjbLbcKq3LdxRdbuQ0JQSzra7kx
	Fl+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZmiL4qgd/x6B+EdTOMPoDziEoXsyWPbtseP1LjIaoog=;
	b=rQjgvoFB+4c+67eR2Z2AC4TAgdAxQOlY7fgwAdvPZqf2rYeFPffIrbJrzm0rrqnIEE
	hSta2hLyfwFDX4PU4OhYN4Ws30Qs7nlvxICJny5B1DEDqj9oedg3Qv1HiIUC0fESbQ9r
	5s9neI3X/80Y8S5e7T9UdQrZqBkzcWNeecrVgNQd3f/xW6TY/BUP1Lt/M29PwJdFhU28
	IOllkIsZ+pTk37aR2WaKccCYZPQL8YnIrEtDtzFZtSzZEkHa4e0Ht5DfaG9JLbPAcVab
	H9ox7ubazLg2UjoQxffPT5DEsAPkbAyGcF+lG85VGJvAvGMpUuRUXRd5hdELFXGkzH/b
	aZWg==
X-Gm-Message-State: AIkVDXJYJlX06aETncolytNRJrMhfTzayLnoCmXtTXHbmslEC+ztI2T44jBqsFpZd1BnLIJvh9nsmXQD2ccOYw==
X-Received: by 10.176.84.8 with SMTP id n8mr39202138uaa.29.1483219756795; Sat,
	31 Dec 2016 13:29:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.159.48.87 with HTTP; Sat, 31 Dec 2016 13:28:46 -0800 (PST)
In-Reply-To: <20161229181628.GD26059@carbonA>
References: <20161222075921.23729-1-raj.khem@gmail.com>
	<20161229181628.GD26059@carbonA>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 31 Dec 2016 13:28:46 -0800
Message-ID: <CAMKF1srtJrwG9PSdt0U4EEBehvhYJErCvsEqXbn1T8fzvi+g8g@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
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
X-List-Received-Date: Sat, 31 Dec 2016 21:29:21 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Dec 29, 2016 at 10:16 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> On Wed, Dec 21, 2016 at 11:59:21PM -0800, Khem Raj wrote:
>> Restructure the bbappends such that common portions
>> can be put in a common bbappend and version specific
>> bbappend then only do the patching
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  .../gstreamer/gstreamer1.0-omx%.bbappend           |   9 ++
>>  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 ++++++++
>>  .../0001-config-files-path.patch                   | 137 +++++++++++++++++++++
>>  .../0002-fix-decoder-flushing.patch                |  16 +++
>>  .../0003-no-timeout-on-get-state.patch             |  16 +++
>>  ...erly-handle-drain-requests-while-flushing.patch |  30 +++++
>>  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 +++++
>>  .../gstreamer/gstreamer1.0-omx_1.10%.bbappend      |  13 ++
>>  .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend      |  10 --
>>  .../gstreamer/gstreamer1.0-omx_git.bbappend        |   9 --
>>  10 files changed, 299 insertions(+), 19 deletions(-)
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
>>  create mode 100644 recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
>>
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
>> new file mode 100644
>> index 0000000..67e46de
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx%.bbappend
>
> Is the wildcard working like this? A potentially TIL
>
>> @@ -0,0 +1,9 @@
>> +GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
>> +GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
>> +
>> +
>> +# How to make this RPI specific?
>> +EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
>> +#examples only build with GL but not GLES, so disable it for RPI
>> +EXTRA_OECONF_append_rpi = " --disable-examples"
>> +
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
>> new file mode 100644
>> index 0000000..815a7c2
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
>> @@ -0,0 +1,48 @@
>> +From 2e111e52f96f0b942abda120c30a876629bd73fc Mon Sep 17 00:00:00 2001
>> +From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
>> +Date: Mon, 25 May 2015 14:53:35 +0200
>> +Subject: [PATCH] Don't try to acquire buffer when src pad isn't active
>> +
>> +This solves a race condition when setting the pipeline from PAUSE to
>> +NULL while the decoder loop is still running. Without this patch, the
>> +thread which interacts with the decode sink pad gets blocked here:
>> +
>> +  gst_element_change_state()
>> +  gst_element_change_state_func()
>> +  gst_element_pads_activate() --> Deactivating pads
>> +  activate_pads()
>> +  gst_pad_set_active()
>> +  gst_pad_activate_mode()
>> +  post_activate()
>> +  GST_PAD_STREAM_LOCK()
>> +
>> +while gst_omx_port_acquire_buffer() gets stalled forever in
>> +gst_omx_component_wait_message() waiting for a message that will never
>> +arrive:
>> +
>> +  gst_omx_video_dec_loop()
>> +  gst_omx_port_acquire_buffer()
>> +  gst_omx_component_wait_message()
>> +---
>> + omx/gstomxvideodec.c | 5 +++++
>> + 1 file changed, 5 insertions(+)
>> +
>> +diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
>> +index cd24944..57a61dd 100644
>> +--- a/omx/gstomxvideodec.c
>> ++++ b/omx/gstomxvideodec.c
>> +@@ -1247,6 +1247,11 @@ gst_omx_video_dec_loop (GstOMXVideoDec * self)
>> +   GstClockTimeDiff deadline;
>> +   OMX_ERRORTYPE err;
>> +
>> ++  if (!gst_pad_is_active(GST_VIDEO_DECODER_SRC_PAD (self))) {
>> ++    GST_DEBUG_OBJECT (self, "Src pad not active, not acquiring buffer and flushing instead");
>> ++      goto flushing;
>> ++  }
>> ++
>> + #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
>> +   port = self->eglimage ? self->egl_out_port : self->dec_out_port;
>> + #else
>> +--
>> +1.8.3.2
>> +
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
>> new file mode 100644
>> index 0000000..a7da922
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0001-config-files-path.patch
>> @@ -0,0 +1,137 @@
>> +--- a/config/bellagio/gstomx.conf
>> ++++ b/config/bellagio/gstomx.conf
>> +@@ -1,6 +1,6 @@
>> + [omxmpeg4videodec]
>> + type-name=GstOMXMPEG4VideoDec
>> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
>> ++core-name=/usr/lib/libomxil-bellagio.so.0
>> + component-name=OMX.st.video_decoder.mpeg4
>> + rank=256
>> + in-port-index=0
>> +@@ -9,7 +9,7 @@
>> +
>> + [omxh264dec]
>> + type-name=GstOMXH264Dec
>> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
>> ++core-name=/usr/lib/libomxil-bellagio.so.0
>> + component-name=OMX.st.video_decoder.avc
>> + rank=256
>> + in-port-index=0
>> +@@ -18,7 +18,7 @@
>> +
>> + [omxmpeg4videoenc]
>> + type-name=GstOMXMPEG4VideoEnc
>> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
>> ++core-name=/usr/lib/libomxil-bellagio.so.0
>> + component-name=OMX.st.video_encoder.mpeg4
>> + rank=0
>> + in-port-index=0
>> +@@ -27,7 +27,7 @@
>> +
>> + [omxaacenc]
>> + type-name=GstOMXAACEnc
>> +-core-name=/usr/local/lib/libomxil-bellagio.so.0
>> ++core-name=/usr/lib/libomxil-bellagio.so.0
>> + component-name=OMX.st.audio_encoder.aac
>> + rank=0
>> + in-port-index=0
>> +--- a/config/rpi/gstomx.conf
>> ++++ b/config/rpi/gstomx.conf
>> +@@ -1,6 +1,6 @@
>> + [omxmpeg2videodec]
>> + type-name=GstOMXMPEG2VideoDec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -9,7 +9,7 @@
>> +
>> + [omxmpeg4videodec]
>> + type-name=GstOMXMPEG4VideoDec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -18,7 +18,7 @@
>> +
>> + [omxh263dec]
>> + type-name=GstOMXH263Dec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -27,7 +27,7 @@
>> +
>> + [omxh264dec]
>> + type-name=GstOMXH264Dec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -36,7 +36,7 @@
>> +
>> + [omxtheoradec]
>> + type-name=GstOMXTheoraDec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -45,7 +45,7 @@
>> +
>> + [omxvp8dec]
>> + type-name=GstOMXVP8Dec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -54,7 +54,7 @@
>> +
>> + [omxmjpegdec]
>> + type-name=GstOMXMJPEGDec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=257
>> + in-port-index=130
>> +@@ -63,7 +63,7 @@
>> +
>> + [omxvc1dec]
>> + type-name=GstOMXWMVDec
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_decode
>> + rank=256
>> + in-port-index=130
>> +@@ -73,7 +73,7 @@
>> +
>> + [omxh264enc]
>> + type-name=GstOMXH264Enc
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.video_encode
>> + rank=257
>> + in-port-index=200
>> +@@ -82,7 +82,7 @@
>> +
>> + [omxanalogaudiosink]
>> + type-name=GstOMXAnalogAudioSink
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.audio_render
>> + rank=256
>> + in-port-index=100
>> +@@ -92,7 +92,7 @@
>> +
>> + [omxhdmiaudiosink]
>> + type-name=GstOMXHdmiAudioSink
>> +-core-name=/opt/vc/lib/libopenmaxil.so
>> ++core-name=/usr/lib/libopenmaxil.so
>> + component-name=OMX.broadcom.audio_render
>> + rank=257
>> + in-port-index=100
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
>> new file mode 100644
>> index 0000000..d4c7c81
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0002-fix-decoder-flushing.patch
>> @@ -0,0 +1,16 @@
>> +diff --git a/omx/gstomx.c b/omx/gstomx.c
>> +index 69696c4..c382019 100644
>> +--- a/omx/gstomx.c
>> ++++ b/omx/gstomx.c
>> +@@ -1508,8 +1508,8 @@ gst_omx_port_set_flushing (GstOMXPort * port, GstClockTime timeout,
>> +     last_error = OMX_ErrorNone;
>> +     gst_omx_component_handle_messages (comp);
>> +     while (signalled && last_error == OMX_ErrorNone && !port->flushed
>> +-        && port->buffers
>> +-        && port->buffers->len > g_queue_get_length (&port->pending_buffers)) {
>> ++     /* && port->buffers
>> ++        && port->buffers->len > g_queue_get_length (&port->pending_buffers) */) {
>> +       signalled = gst_omx_component_wait_message (comp, timeout);
>> +       if (signalled)
>> +         gst_omx_component_handle_messages (comp);
>> +
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
>> new file mode 100644
>> index 0000000..0a0050d
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0003-no-timeout-on-get-state.patch
>> @@ -0,0 +1,16 @@
>> +diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
>> +index 0d4e7a1..a0d9c74 100644
>> +--- a/omx/gstomxvideodec.c
>> ++++ b/omx/gstomxvideodec.c
>> +@@ -1697,9 +1697,9 @@ gst_omx_video_dec_stop (GstVideoDecoder * decoder)
>> +   g_cond_broadcast (&self->drain_cond);
>> +   g_mutex_unlock (&self->drain_lock);
>> +
>> +-  gst_omx_component_get_state (self->dec, 5 * GST_SECOND);
>> ++  gst_omx_component_get_state (self->dec, 0);
>> + #if defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL)
>> +-  gst_omx_component_get_state (self->egl_render, 1 * GST_SECOND);
>> ++  gst_omx_component_get_state (self->egl_render, 0);
>> + #endif
>> +
>> +   gst_buffer_replace (&self->codec_data, NULL);
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
>> new file mode 100644
>> index 0000000..4d10f24
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0004-Properly-handle-drain-requests-while-flushing.patch
>> @@ -0,0 +1,30 @@
>> +From 80dddfd13aaf2fe7272765f8cf291215fe375e28 Mon Sep 17 00:00:00 2001
>> +From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
>> +Date: Tue, 17 Nov 2015 16:51:27 +0000
>> +Subject: [PATCH] Properly handle drain requests while flushing
>> +
>> +Without this commit the decoder streaming thread stops without ever attending
>> +the drain request, leaving the decoder input thread waiting forever.
>> +---
>> + omx/gstomx.c         |  7 +++++++
>> + omx/gstomxvideodec.c | 13 +++++++++++++
>> + 2 files changed, 20 insertions(+)
>> +
>> +Index: gst-omx-1.10.2/omx/gstomx.c
>> +===================================================================
>> +--- gst-omx-1.10.2.orig/omx/gstomx.c
>> ++++ gst-omx-1.10.2/omx/gstomx.c
>> +@@ -737,6 +737,13 @@ gst_omx_component_new (GstObject * paren
>> +
>> +   g_mutex_lock (&comp->lock);
>> +   gst_omx_component_handle_messages (comp);
>> ++
>> ++  if (err != OMX_ErrorNone && comp->last_error == OMX_ErrorNone) {
>> ++    GST_ERROR_OBJECT (comp->parent,
>> ++        "Last operation returned an error. Setting last_error manually.");
>> ++    comp->last_error = err;
>> ++  }
>> ++
>> +   g_mutex_unlock (&comp->lock);
>> +
>> +   return comp;
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
>> new file mode 100644
>> index 0000000..b7a8753
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx-1.10/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
>> @@ -0,0 +1,30 @@
>> +From 12103842d5f347cf245e71071d0c44297bcdb1f9 Mon Sep 17 00:00:00 2001
>> +From: =?UTF-8?q?Enrique=20Oca=C3=B1a=20Gonz=C3=A1lez?= <eocanha@igalia.com>
>> +Date: Fri, 4 Dec 2015 18:39:59 +0100
>> +Subject: [PATCH] Don't abort gst_omx_video_dec_set_format() if there's a
>> + timeout releasing the buffers taken by the egl_render out port
>> +
>> +---
>> + omx/gstomxvideodec.c | 5 ++++-
>> + 1 file changed, 4 insertions(+), 1 deletion(-)
>> +
>> +diff --git a/omx/gstomxvideodec.c b/omx/gstomxvideodec.c
>> +index 2368f34..da35e0d 100644
>> +--- a/omx/gstomxvideodec.c
>> ++++ b/omx/gstomxvideodec.c
>> +@@ -1905,8 +1905,11 @@ gst_omx_video_dec_set_format (GstVideoDecoder * decoder,
>> +               5 * GST_SECOND) != OMX_ErrorNone)
>> +         return FALSE;
>> +       if (gst_omx_port_wait_buffers_released (out_port,
>> +-              1 * GST_SECOND) != OMX_ErrorNone)
>> ++              1 * GST_SECOND) != OMX_ErrorNone) {
>> ++#if !(defined (USE_OMX_TARGET_RPI) && defined (HAVE_GST_GL))
>> +         return FALSE;
>> ++#endif
>> ++      }
>> +       if (gst_omx_port_deallocate_buffers (self->dec_in_port) != OMX_ErrorNone)
>> +         return FALSE;
>> +       if (gst_omx_video_dec_deallocate_output_buffers (self) != OMX_ErrorNone)
>> +--
>> +2.1.4
>> +
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
>
> Where is the main recipe for this? I get the following error when using
> master meta-oe and poky:
>
> ERROR: No recipes available for:
>   /home/andrei/work/raspberrypi/meta-raspberrypi/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
>


This will work once the following patch goes into OE-Core
https://patchwork.openembedded.org/patch/135383/

We can wait until then or live with dangling bbappend until then

>
>> new file mode 100644
>> index 0000000..d419867
>> --- /dev/null
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.10%.bbappend
>> @@ -0,0 +1,13 @@
>> +#
>> +# Need to make this conditional to gstreamer1
>> +#
>> +SRC_URI_append_rpi = " \
>> +             file://0001-config-files-path.patch \
>> +             file://0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch \
>> +             file://0002-fix-decoder-flushing.patch \
>> +             file://0003-no-timeout-on-get-state.patch \
>> +             file://0004-Properly-handle-drain-requests-while-flushing.patch \
>> +             file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
>> +"
>> +
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.10:"
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
>> index 1e84abe..49ba376 100644
>> --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
>> @@ -9,16 +9,6 @@ SRC_URI_append_rpi = " \
>>               file://0004-Properly-handle-drain-requests-while-flushing.patch \
>>               file://0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch \
>>               file://0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch \
>> -             file://0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch \
>>  "
>>
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx-1.2.0:"
>> -
>> -GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
>> -GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
>> -
>> -
>> -# How to make this RPI specific?
>> -EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
>> -#examples only build with GL but not GLES, so disable it for RPI
>> -EXTRA_OECONF_append_rpi = " --disable-examples"
>> diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
>> index a13aad7..9bcc446 100644
>> --- a/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
>> +++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx_git.bbappend
>> @@ -11,12 +11,3 @@ SRC_URI_append_rpi = " \
>>  "
>>
>>  FILESEXTRAPATHS_prepend := "${THISDIR}/gstreamer1.0-omx:"
>> -
>> -GSTREAMER_1_0_OMX_TARGET_rpi = "rpi"
>> -GSTREAMER_1_0_OMX_CORE_NAME_rpi = "${libdir}/libopenmaxil.so"
>> -
>> -
>> -# How to make this RPI specific?
>> -EXTRA_OECONF_append_rpi  = " CFLAGS="$CFLAGS -I${STAGING_DIR_TARGET}/usr/include/IL -I${STAGING_DIR_TARGET}/usr/include/interface/vcos/pthreads -I${STAGING_DIR_TARGET}/usr/include/interface/vmcs_host/linux""
>> -#examples only build with GL but not GLES, so disable it for RPI
>> -EXTRA_OECONF_append_rpi = " --disable-examples"
>> --
>> 2.11.0
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> Andrei Gherzan

