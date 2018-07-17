Return-Path: <karim@gillani.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7983FE00B9C; Tue, 17 Jul 2018 12:16:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AAC04E006B4
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 12:16:06 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id s14-v6so465113wmc.1
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2018 12:16:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gillani-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=TDAJRCgppsDu2BWT7YshbOUU0vltbqBfrNOKdQ6KD/8=;
	b=RgA5CJ+h/QEzkWK0mfJzdni15GykBSRt+s/ACLbgp2WrHIdHZLgyc8Ae93mn+6hlzi
	ddGQk2egzilchq5QIdtB3ujMfofAIliBesp30zs9NcM5jHwWk5lx6hGclSYlEPRLcaCA
	hsSs8IniBYE6aY/Dh2dPNdbKiZsn/HUMYinvlbtV+xdA1nZkCU75JUwnUempVcoqZzlN
	4m3MiVrHNyrmKfEdLVMW0GzvzGiCTXHwuIchrhK7ERUgQZH3mHghtuUotgFwZGoYDxFX
	xGDVjHm8ZItWJjq1XjzqhJasbtRFoV2W3fI6fsurDmzYPJAKAdNyMVWxwtlH55rsOhEY
	ZgZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=TDAJRCgppsDu2BWT7YshbOUU0vltbqBfrNOKdQ6KD/8=;
	b=ScprAfWAYezVMGz1PgbZAmxoH9ZDjbyHNsbM8/e2os9lofAXW5zLMT0PmipIbXG70v
	kKTxoCAojmmvA3HMfJKXQpszr9mfOx1aRfk9jUtLcm3lV6NhZ2lSqM7/cQ3P7gCAc8Ji
	P2NSoIeqjYghRVCOIByRGetiWkbvM06qdc/JrPRbSxUx/XRMuaJebs9TmNrFG+4TjIEE
	hQJfulnmXD7GBPifpNaxlnDnj5GydY7HNkRs9qs0qCdj9EwNtlbr+k9fgUf07JJHtzpH
	6hSq5raqXZi5Tv/OL0X/vek0G5DA3r+SopKZIEhqxqE1hEh9e4lWk4BR9Ee6LPhrnmH0
	bhvg==
X-Gm-Message-State: AOUpUlHr1FPpoArJrFx3YAagXbXH4zs/URjB30guWZPkFr/DSyGWdCgB
	Gg1hR+zLr7yt+hFb7V+hW2NwwCyaO0VYHId16HTrnnkCZZI=
X-Google-Smtp-Source: AAOMgpd1NsyPjHy1A28/RL0JM/OlA1RZytKOqKAyXxx1tzY0aDh/psnM+itORY754RctBA5F8hCO9dZGNXDLzTB0ac4=
X-Received: by 2002:a1c:7c0c:: with SMTP id
	x12-v6mr2184609wmc.58.1531854965560; 
	Tue, 17 Jul 2018 12:16:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a1c:e1d4:0:0:0:0:0 with HTTP; Tue, 17 Jul 2018 12:16:05
	-0700 (PDT)
X-Originating-IP: [142.32.124.172]
From: Karim Gillani <karim@gillani.org>
Date: Tue, 17 Jul 2018 12:16:05 -0700
Message-ID: <CAN3t-YDrMh-DjVeFWgvggMPVhNF6kGTOahVV8sPo8SsPnrMi5w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] - X11 EGLSV2 Chromium
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
X-List-Received-Date: Tue, 17 Jul 2018 19:16:08 -0000
Content-Type: multipart/alternative; boundary="00000000000011f0a1057136c78c"

--00000000000011f0a1057136c78c
Content-Type: text/plain; charset="UTF-8"

I am new to yocto and I am trying to build Chromium with userland. I am not
sure what I am missing to have userland build libGLESv2.so, libGLESv2.so.2
and libEGL.



All builds great but when I start Chromium, it complains there is no
libGLESv2.so.2.

I searched for libG* and only the following shows up:

/usr/lib/libGL.so.1.2.0

/usr/lib/libGL.so.1



Can someone let me know what I am missing from my layer.conf?



MACHINE = "raspberrypi3"



GPU_MEM_256 = "128"

GPU_MEM_512 = "196"

GPU_MEM_1024 = "396"

CORE_IMAGE_EXTRA_INSTALL += "chromium-x11"

PACKAGECONFIG_append_pn-chromium-x11 += " use-egl proprietary-codecs"

LICENSE_FLAGS_WHITELIST = " commercial_libav commercial_x264 commercial"

PREFERRED_PROVIDER_virtual/egl = "userland"

PREFERRED_PROVIDER_virtual/libgles2 = "userland"

MACHINE_FEATURES_append += " rpi"

IMAGE_INSTALL_append = " fontconfig kernel-image kernel-devicetree"

IMAGE_FEATURES_append = " ssh-server-dropbear hwcodecs x11"

DISTRO_FEATURES_append += " opengl x11 systemd"

DISTRO_FEATURES_remove = "wayland"

DISTRO_FEATURES_BACKFILL_CONSIDERED = "sysvinit"

VIRTUAL-RUNTIME_init_manager = "systemd"

VIRTUAL-RUNTIME_initscripts = ""



And I am using bitbake core-image-minimal





Thanks in advance..

--00000000000011f0a1057136c78c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

















<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">I am new to yocto and I am trying to build Chro=
mium with
userland. I am not sure what I am missing to have userland build libGLESv2.=
so,
libGLESv2.so.2 and libEGL.<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">All builds great but when I start Chromium, it =
complains
there is no libGLESv2.so.2. <span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">I searched for libG* and only the following sho=
ws up:<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">/usr/lib/libGL.so.1.2.0<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">/usr/lib/libGL.so.1<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Can someone let me know what I am missing from =
my
layer.conf?<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">MACHINE =3D &quot;raspberrypi3&quot;<span></spa=
n></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">GPU_MEM_256 =3D &quot;128&quot;<span></span></p=
>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">GPU_MEM_512 =3D &quot;196&quot;<span></span></p=
>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">GPU_MEM_1024 =3D &quot;396&quot;<span></span></=
p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">CORE_IMAGE_EXTRA_INSTALL +=3D &quot;chromium-x1=
1&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">PACKAGECONFIG_append_pn-chromium-x11 +=3D &quot=
; use-egl
proprietary-codecs&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">LICENSE_FLAGS_WHITELIST =3D &quot; commercial_l=
ibav
commercial_x264 commercial&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">PREFERRED_PROVIDER_virtual/egl =3D &quot;userla=
nd&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">PREFERRED_PROVIDER_virtual/libgles2 =3D &quot;u=
serland&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">MACHINE_FEATURES_append +=3D &quot; rpi&quot;<s=
pan></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">IMAGE_INSTALL_append =3D &quot; fontconfig kern=
el-image
kernel-devicetree&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">IMAGE_FEATURES_append =3D &quot; ssh-server-dro=
pbear hwcodecs
x11&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">DISTRO_FEATURES_append +=3D &quot; opengl x11 s=
ystemd&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">DISTRO_FEATURES_remove =3D &quot;wayland&quot;<=
span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">DISTRO_FEATURES_BACKFILL_CONSIDERED =3D &quot;s=
ysvinit&quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">VIRTUAL-RUNTIME_init_manager =3D &quot;systemd&=
quot;<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">VIRTUAL-RUNTIME_initscripts =3D &quot;&quot;<sp=
an></span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">And I am using bitbake core-image-minimal<span>=
</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><span>=C2=A0</span></p>

<p class=3D"MsoNormal" style=3D"margin:0cm 0cm 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">Thanks in advance..<span></span></p>





<br></div>

--00000000000011f0a1057136c78c--
