Return-Path: <sebastianpetersen84@yahoo.dk>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0D044C6FD1D
	for <webhook@archiver.kernel.org>; Tue, 21 Mar 2023 20:43:59 +0000 (UTC)
Subject: [meta-openembedded] Enabling "libcamerasrc" as a source for gst-launch-1.0
To: yocto@lists.yoctoproject.org
From: "punctuation" <sebastianpetersen84@yahoo.dk>
X-Originating-Location: Norrebro, Capital Region, DK (87.116.45.4)
X-Originating-Platform: Linux Firefox 109
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 21 Mar 2023 13:43:50 -0700
Message-ID: <lbFU.1679431430587284779.BLFD@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="cQ9ioe0AzSG7I8ARZPQf"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Mar 2023 20:43:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59486

--cQ9ioe0AzSG7I8ARZPQf
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear community,

I am trying to build an image for a raspberry pi, that includes libcamera a=
nd gstreamer, such that I can set the streaming source:
gst-launch-1.0 libcamerasrc device=3D/dev/video0 ! video/x-raw,width=3D640,=
height=3D480 ! autovideosink

However, gst-launch is unable to find libcamerasrc.

How do I configure my build to do this?

I include libcamera using IMAGE_INSTALL and enable the libcamera gst PACKAG=
ECONFIG.

Best regards

--cQ9ioe0AzSG7I8ARZPQf
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear community,<br /><br />I am trying to build an image for a raspberry pi=
, that includes libcamera and gstreamer, such that I can set the streaming =
source:<br />
<pre><code class=3D"!whitespace-pre hljs language-perl">gst-launch-1.0 libc=
amerasrc device=3D/dev/video0 ! video/x-raw,width=3D640,height=3D480 ! auto=
videosink</code></pre>
<p>However, gst-launch is unable to find libcamerasrc. </p>
<p>How do I configure my build to do this?</p>
<p>I include libcamera using IMAGE_INSTALL and enable the libcamera gst PAC=
KAGECONFIG.<br /><br />Best regards</p>

--cQ9ioe0AzSG7I8ARZPQf--

