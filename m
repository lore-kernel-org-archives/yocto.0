Return-Path: <seyd.dany@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 22CCB1061B3F
	for <webhook@archiver.kernel.org>; Tue, 31 Mar 2026 12:36:31 +0000 (UTC)
Subject: Re: [yocto] error while adding device tree overlay for UART to the image #bitbake #linux
To: "Crane" <crane2018@gmail.com>, yocto@lists.yoctoproject.org
From: seyd.dany@gmail.com
X-Originating-Location: Regensburg, Bavaria, DE (95.130.167.66)
X-Originating-Platform: Windows Chrome 146
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 31 Mar 2026 05:36:22 -0700
References: <6kB9.1729694356995050356.znfv@lists.yoctoproject.org>
In-Reply-To: <6kB9.1729694356995050356.znfv@lists.yoctoproject.org>
Message-ID: <725242.1774960582612514995@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="qaJ0yrvtvQOhCdkXxlPs"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 31 Mar 2026 12:36:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66365

--qaJ0yrvtvQOhCdkXxlPs
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Crane,

I faced a similar issue when working with UART overlays on Raspberry Pi 5 u=
sing Yocto (scarthgap + meta-raspberrypi).

In my case, the problem was not the kernel build itself, but how the overla=
ys were handled during image generation (wic stage).

What worked for me was:

1. Instead of relying only on RPI_KERNEL_DEVICETREE_OVERLAYS, I explicitly =
appended the overlay in my configuration:

RPI_KERNEL_DEVICETREE_OVERLAYS:append =3D " \
overlays/uart0-pi5.dtbo \
"

2. Additionally, I created a bbappend in my custom layer to ensure the over=
lay is properly referenced in config.txt:

recipes-bsp/bootfiles/rpi-config_git.bbappend

with the following content:

do_deploy:append() {
echo "dtoverlay=3Duart0-pi5" >> $CONFIG
}

This ensures that:
- the dtbo is deployed correctly
- and also picked up by the boot configuration

It seems that the WIC error ("Malformed boot file entry") can happen if the=
 overlay is present in KERNEL_DEVICETREE but not properly handled or refere=
nced during boot file generation.

After this change, the image was generated without errors and the UART over=
lay was applied correctly at boot.

Hope this helps.

Best regards,
Danyal

--qaJ0yrvtvQOhCdkXxlPs
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p data-start=3D"115" data-end=3D"186">Hello Crane,</p>
<div class=3D"relative w-full mt-4 mb-1">
<div class=3D"">
<div class=3D"relative">
<div class=3D"h-full min-h-0 min-w-0">
<div class=3D"h-full min-h-0 min-w-0">
<div class=3D"border border-token-border-light border-radius-3xl corner-sup=
erellipse/1.1 rounded-3xl">
<div class=3D"h-full w-full border-radius-3xl bg-token-bg-elevated-secondar=
y corner-superellipse/1.1 overflow-clip rounded-3xl lxnfua_clipPathFallback=
">
<div class=3D"w-full overflow-x-hidden overflow-y-auto pe-11 pt-3">
<div class=3D"relative z-0 flex max-w-full">
<div id=3D"code-block-viewer" class=3D"q9tKkq_viewer cm-editor z-10 light:c=
m-light dark:cm-light flex h-full w-full flex-col items-stretch =CD=BCk =CD=
=BCy" dir=3D"ltr">
<div class=3D"cm-scroller">
<div class=3D"cm-content q9tKkq_readonly"><br /><span>I faced a similar iss=
ue when working with UART overlays on Raspberry Pi 5 using Yocto (scarthgap=
 + meta-raspberrypi).</span><br /><br /><span>In my case, the problem was n=
ot the kernel build itself, but how the overlays were handled during image =
generation (wic stage).</span><br /><br /><span>What worked for me was:</sp=
an><br /><br /><span>1. Instead of relying only on RPI_KERNEL_DEVICETREE_OV=
ERLAYS, I explicitly appended the overlay in my configuration:</span><br />=
<br /><span>RPI_KERNEL_DEVICETREE_OVERLAYS:append =3D " \</span><br /><span=
> overlays/uart0-pi5.dtbo \</span><br /><span>"</span><br /><br /><span>2. =
Additionally, I created a bbappend in my custom layer to ensure the overlay=
 is properly referenced in config.txt:</span><br /><br /><span>recipes-bsp/=
bootfiles/rpi-config_git.bbappend</span><br /><br /><span>with the followin=
g content:</span><br /><br /><span>do_deploy:append() {</span><br /><span> =
echo "dtoverlay=3Duart0-pi5" &gt;&gt; $CONFIG</span><br /><span>}</span><br=
 /><br /><span>This ensures that:</span><br /><span>- the dtbo is deployed =
correctly</span><br /><span>- and also picked up by the boot configuration<=
/span><br /><br /><span>It seems that the WIC error ("Malformed boot file e=
ntry") can happen if the overlay is present in KERNEL_DEVICETREE but not pr=
operly handled or referenced during boot file generation.</span><br /><br /=
><span>After this change, the image was generated without errors and the UA=
RT overlay was applied correctly at boot.</span><br /><br /><span>Hope this=
 helps.</span><br /><br /><span>Best regards,<br />Danyal&nbsp;</span></div=
>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

--qaJ0yrvtvQOhCdkXxlPs--

