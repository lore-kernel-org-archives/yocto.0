Return-Path: <psiva87@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEC0CE00D58; Mon,  2 May 2016 01:50:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (psiva87[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f66.google.com (mail-lf0-f66.google.com
	[209.85.215.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F32AE00D4F
	for <yocto@yoctoproject.org>; Mon,  2 May 2016 01:50:34 -0700 (PDT)
Received: by mail-lf0-f66.google.com with SMTP id p64so26552688lfg.0
	for <yocto@yoctoproject.org>; Mon, 02 May 2016 01:50:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Db5orxH1Zn7Q7JPhmflJZ6Ip/T2HXaCTOQY1yO7qz/8=;
	b=O3yi06jZPLjkF9H4gZcrYxu+yUqF4TDakhp4TMiVsAombmZtzzg2kpXbxhQGVnmX60
	Bv5IhEoheA1OWWr6XJFAOGVHZxWKQ+GiCrnb93NXlrSbvI+Nmshx9aFkYJPhGs0DeHsA
	Uyh0VOuEywjqbSWHbmRL+WyZsU6VOD3pv6tiXyt5Jc4OjCVwaUowY+K4rGRi4cVBzZY1
	RL1nSIZ5rzD2nyNidPkoLnWPtE7m6kL+yhyhGQDyYcba9dxwP/FNZtEVW6XZPpz/GUlj
	aHVAemJjDQP8QXq+ufR0WJr2QzpX4bij4rZW+u9VhIGhR6GtBDM0dyohvPpgog2A1bbw
	UyVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Db5orxH1Zn7Q7JPhmflJZ6Ip/T2HXaCTOQY1yO7qz/8=;
	b=WdpPcU98IUepd9ZXtefQ20W1yciWylALHxN0TJxrZiT+DtbMHsbdIs/GwF/Oq/ghEN
	fycclPYWt1SoMbwonag1I7icq9C+7y7CkfTkftWZtW9b7I+RdGqUYsa5uTp0iefTiXg2
	D/TKt8aogn8FmYOXvpFtnq50UiKa5FW5OybGKzrThpnwbdCFDkYRTMuRh+d8/kVIyeeQ
	YnmlImALE4BqqVsDiqAHDGX3chhHlg1OQ95sbB2a8EB9n5IKolm8SEUw2IXXzzHYsYvD
	7QCR3zJt69sS+0iQdMaH7P6JbwnL5ciy3JrDBCRewsgY5JyY4ABd9MVdDd+CfbgaAVDV
	mSCQ==
X-Gm-Message-State: AOPr4FUHYXiiCw9dLG7npeTVWoOviJwBBLdBf1B13o3fGrQCmtIIx/UUHFgwkQowQbWTRBxK6krcQAx+zt0Pog==
MIME-Version: 1.0
X-Received: by 10.25.206.71 with SMTP id e68mr9405394lfg.19.1462179032988;
	Mon, 02 May 2016 01:50:32 -0700 (PDT)
Received: by 10.112.124.10 with HTTP; Mon, 2 May 2016 01:50:32 -0700 (PDT)
Date: Mon, 2 May 2016 14:20:32 +0530
Message-ID: <CAOorjZTLEmVt7TQk4yxVFE=NOLG5SAu+jmO92F+UDtJAj99E=g@mail.gmail.com>
From: "SIVA SUBRAMANIAN.P" <psiva87@gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: [meta-raspberrypi][PATCH] Fixing 0001-config-files-path patch file failure
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
X-List-Received-Date: Mon, 02 May 2016 08:50:39 -0000
Content-Type: text/plain; charset=UTF-8

From 7e794a3ae5fb790b0bb6c4f4d0c9269a2cc3a9c5 Mon Sep 17 00:00:00 2001
From: Sivasubramanian <psiva87@gmail.com>
Date: Mon, 2 May 2016 14:17:29 +0530
Subject: [meta-raspberrypi][PATCH] Fixing 0001-config-files-path patch file
 failure Signed-off-by: Sivasubramanian
 <psiva87@gmail.com>

Signed-off-by: Sivasubramanian <psiva87@gmail.com>
---
 .../gstreamer1.0-omx/0001-config-files-path.patch  |   45 ++++++--------------
 1 file changed, 14 insertions(+), 31 deletions(-)

diff --git a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
index a7da922..36a4ac7 100644
--- a/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
+++ b/recipes-multimedia/gstreamer/gstreamer1.0-omx/0001-config-files-path.patch
@@ -1,5 +1,5 @@
---- a/config/bellagio/gstomx.conf
-+++ b/config/bellagio/gstomx.conf
+--- a/config/bellagio/gstomx.conf 2016-04-29 06:53:51.522277467 +0000
++++ b/config/bellagio/gstomx.conf 2016-04-29 06:59:14.334175816 +0000
 @@ -1,6 +1,6 @@
  [omxmpeg4videodec]
  type-name=GstOMXMPEG4VideoDec
@@ -35,15 +35,15 @@
  component-name=OMX.st.audio_encoder.aac
  rank=0
  in-port-index=0
---- a/config/rpi/gstomx.conf
-+++ b/config/rpi/gstomx.conf
+--- a/config/rpi/gstomx.conf 2016-04-29 06:54:09.282271701 +0000
++++ b/config/rpi/gstomx.conf 2016-04-29 07:01:43.390131481 +0000
 @@ -1,6 +1,6 @@
  [omxmpeg2videodec]
  type-name=GstOMXMPEG2VideoDec
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -9,7 +9,7 @@

@@ -52,7 +52,7 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -18,7 +18,7 @@

@@ -61,7 +61,7 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -27,7 +27,7 @@

@@ -70,7 +70,7 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -36,7 +36,7 @@

@@ -79,7 +79,7 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -45,7 +45,7 @@

@@ -88,7 +88,7 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -54,7 +54,7 @@

@@ -97,7 +97,7 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_decode
- rank=257
+ rank=256
  in-port-index=130
 @@ -63,7 +63,7 @@

@@ -105,7 +105,7 @@
  type-name=GstOMXWMVDec
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.video_decode
+ component-name=OMX.broadcom.video_encode
  rank=256
  in-port-index=130
 @@ -73,7 +73,7 @@
@@ -115,23 +115,6 @@
 -core-name=/opt/vc/lib/libopenmaxil.so
 +core-name=/usr/lib/libopenmaxil.so
  component-name=OMX.broadcom.video_encode
- rank=257
- in-port-index=200
-@@ -82,7 +82,7 @@
-
- [omxanalogaudiosink]
- type-name=GstOMXAnalogAudioSink
--core-name=/opt/vc/lib/libopenmaxil.so
-+core-name=/usr/lib/libopenmaxil.so
- component-name=OMX.broadcom.audio_render
  rank=256
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
+ in-port-index=200
+
-- 
1.7.9.5

