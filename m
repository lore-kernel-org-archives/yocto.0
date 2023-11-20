Return-Path: <ron.eggler@mistywest.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5ED91C072A2
	for <webhook@archiver.kernel.org>; Mon, 20 Nov 2023 01:35:54 +0000 (UTC)
Received: from mail-yw1-f179.google.com (mail-yw1-f179.google.com [209.85.128.179])
 by mx.groups.io with SMTP id smtpd.web10.41464.1700444144601085264
 for <yocto@lists.yoctoproject.org>;
 Sun, 19 Nov 2023 17:35:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@mistywest-com.20230601.gappssmtp.com header.s=20230601 header.b=Bd8t7OwT;
 spf=pass (domain: mistywest.com, ip: 209.85.128.179, mailfrom: ron.eggler@mistywest.com)
Received: by mail-yw1-f179.google.com with SMTP id 00721157ae682-5cade8466f7so75507b3.1
        for <yocto@lists.yoctoproject.org>; Sun, 19 Nov 2023 17:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistywest-com.20230601.gappssmtp.com; s=20230601; t=1700444143; x=1701048943; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=iB4LjalsZViKEu3YpF4aQDuRckws8M8x0mq2q1DC+RQ=;
        b=Bd8t7OwT5h5bghSQnt9rMuj+KVul2mXtw4BgWFQ/KAg3Ha84xCjvmbagbJ3GQKIWiE
         tslTY7xj2W2S4Q2KF1ZykoFj5rttnofMdJLCteJdZYixAjwzz7IqOBzNLpEa9aTZ//9/
         0sy+h7GLs9lvVCiOoxlHRv9SPhbhW6NIGFZPJd9uj9bB/Ju3uxzSS7YmEETTh/C8XJxM
         qcgE+X+dyk6BxD9AHR7QUXYI05My80UI96b/uKoAIyCIQ2HiC2pln58kTF+yJlMSoSr6
         bjNvU2pWk4U5Ry/IlEUGZXc7J24uKBHCto6p66E5RlPAq83vHKsxlAEF3MvUcfvRZ4Ev
         aHcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700444143; x=1701048943;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iB4LjalsZViKEu3YpF4aQDuRckws8M8x0mq2q1DC+RQ=;
        b=rl3p942y+m4tG0DABEGGUInult45rV5Wn/xBbMfrLLoborhbD+hVEq4oGRNvM4A/z1
         ccxHLBFAyAfiLl++KuFCRuY53IrlXLPjquUR8RII9NGBUQeloghVUzBji0sbmv/LZEmx
         YFhOUU4MulXwV7g0A3ezfmq10Xe5fnWG6JXpl0b8aMwCQFEabdbMqjg38wsn4vq2cvta
         F/LKFi3AdySAAWeFLTjooYXsntE0oaBTfWmGEBuTblBGzQeFB8WvdF4bcLvKOGF6IJec
         ZXvhOdCABjOMM8rHqIuoaKA6PK5AbiTA1fh6FipqqRlmN41PtMippM1IszZOXCahuXb1
         6gyA==
X-Gm-Message-State: AOJu0YyA4mRlLX4avTsQMik7CyftpPAdRFH970NaVPkFwKLyTcbakcaX
	M32MOppef4zVxjtaKPlFJkXRTUPtyy/3JI+zAEOkVRWeAjWErJtxXXuKGw==
X-Google-Smtp-Source: AGHT+IHvyZMYQNmiP/5sb5l85Z/uLbCe2nwhk7arcqWnDvXZ1xiuolquiej6g5wXIj1UZi1gWAwvcWeYi1jFhopJEI0=
X-Received: by 2002:a05:690c:3249:b0:5ca:8f2c:28c5 with SMTP id
 fg9-20020a05690c324900b005ca8f2c28c5mr543675ywb.8.1700444143401; Sun, 19 Nov
 2023 17:35:43 -0800 (PST)
MIME-Version: 1.0
From: Ron Eggler <ron.eggler@mistywest.com>
Date: Sun, 19 Nov 2023 17:35:32 -0800
Message-ID: <CAMNEDzV0_UCQ+vVMqHzo3WmNsLLL8GPufSsPVUnKRvt4V71NtQ@mail.gmail.com>
Subject: wlroots needs 'gbm' ['>=17.1.0']?
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000020d1f3060a8b81bd"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 20 Nov 2023 01:35:54 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61718

--00000000000020d1f3060a8b81bd
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I would like to include wlroots in my build but it requires gbm >=3D17.1.0
which appears to be a problem, as seen on https://github.com/cran/gbm/tags
the release numbers are far below 17. The output I'm getting more
particularly looks like:
| Run-time dependency libdrm found: YES 2.4.101
| Dependency gbm found: NO found 1.0.0 but need: '>=3D17.1.0'
| Found CMake: NO
| Run-time dependency gbm found: NO
|
| meson.build:106:0: ERROR: Invalid version of dependency, need 'gbm'
['>=3D17.1.0'] found '1.0.0'.
|
| A full log can be found at
/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/wlroots/0.12.0=
-r0/build/meson-logs/meson-log.txt

| ERROR: meson failed
| WARNING: exit code 1 from a shell command.
| ERROR: Execution of
'/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/wlroots/0.12.=
0-r0/temp/run.do_configure.340360'
failed with exit code 1
ERROR: Task
(/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistysom/recipes-display/wlroots/=
wlroots.bb:do_configure)
failed with exit code '1'

Where the wlroots.bb recipe looks like:

$ cat ../meta-mistysom/recipes-display/wlroots/wlroots.bb
SUMMARY =3D "Modules for building a Wayland compositor"
HOMEPAGE =3D "https://github.com/swaywm/wlroots"
LICENSE =3D "MIT"
LIC_FILES_CHKSUM =3D "file://LICENSE;md5=3D7578fad101710ea2d289ff5411f1b818=
"

DEPENDS =3D " \
   wayland-native \
   wayland \
   wayland-protocols \
   virtual/egl \
   virtual/libgles2 \
   libdrm \
   virtual/libgbm \
   libinput \
   libxkbcommon \
   udev \
   pixman \
"

inherit meson features_check

REQUIRED_DISTRO_FEATURES =3D "wayland opengl"

PACKAGECONFIG ??=3D "${@bb.utils.contains('DISTRO_FEATURES','x11','xwayland
x11-backend','',d)}"
PACKAGECONFIG[xwayland] =3D
"-Dxwayland=3Denabled,-Dxwayland=3Ddisabled,xserver-xorg,xserver-xorg-xwayl=
and"
PACKAGECONFIG[x11-backend] =3D
"-Dx11-backend=3Denabled,-Dx11-backend=3Ddisabled,xserver-xorg"

SRC_URI =3D " \
   git://github.com/swaywm/${BPN}.git \
   file://0001-Adjust-meson.build-to-meson-0.54.patch \
"
SRCREV =3D "238d1c078fb03338e9f271d98f7bf6b1fc399285"
PV =3D "0.12.0"
S =3D "${WORKDIR}/git"

and the meson patch:

$ cat
../meta-mistysom/recipes-display/wlroots/wlroots/0001-Adjust-meson.build-to=
-meson-0.54.patch

From df8a70b2db61a395bb424d4f4942434544e3ef43 Mon Sep 17 00:00:00 2001
From: =3D?UTF-8?q?Andreas=3D20M=3DC3=3DBCller?=3D <schnitzeltony@gmail.com>
Date: Tue, 8 Dec 2020 01:57:15 +0100
Subject: [PATCH] Adjust meson.build to meson < 0.54
MIME-Version: 1.0
Content-Type: text/plain; charset=3DUTF-8
Content-Transfer-Encoding: 8bit

* meson.override_dependency is not required here. It requires meson >=3D 0.=
54
* we set min version to what dunfell ships

Upstream-Status: Inappropriate[Configuration]

Signed-off-by: Andreas M=C3=BCller <schnitzeltony@gmail.com>
---
meson.build | 4 +---
1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/meson.build b/meson.build
index 835e0195..b07760ab 100644
--- a/meson.build
+++ b/meson.build
@@ -3,7 +3,7 @@ project(
       'c',
       version: '0.12.0',
       license: 'MIT',
-       meson_version: '>=3D0.54.0',
+       meson_version: '>=3D0.53.2',
       default_options: [
               'c_std=3Dc11',
               'warning_level=3D2',
@@ -172,8 +172,6 @@ wlroots =3D declare_dependency(
       include_directories: wlr_inc,
)

-meson.override_dependency('wlroots', wlroots)
-
summary({
       'systemd': conf_data.get('WLR_HAS_SYSTEMD', 0),
       'elogind': conf_data.get('WLR_HAS_ELOGIND', 0),
--
2.26.2

Can anyone help me out on how to resolve this conflict?

--00000000000020d1f3060a8b81bd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<br><div><br></div><div>I would like to include wlroots=
 in my build but it requires gbm &gt;=3D17.1.0 which appears to be a proble=
m, as seen on=C2=A0<a href=3D"https://github.com/cran/gbm/tags">https://git=
hub.com/cran/gbm/tags</a> the release numbers are far below 17. The output=
=C2=A0I&#39;m getting more particularly looks like:</div><div><span style=
=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0)">| Run-time depe=
ndency libdrm found: YES 2.4.101
</span><br>| Dependency gbm found: NO found 1.0.0 but need: &#39;&gt;=3D17.=
1.0&#39;
<br>| Found CMake: NO
<br>| Run-time dependency gbm found: NO
<br>| =C2=A0<br>| meson.build:106:0: ERROR: Invalid version of dependency, =
need &#39;gbm&#39; [&#39;&gt;=3D17.1.0&#39;] found &#39;1.0.0&#39;.
<br>| =C2=A0<br>| A full log can be found at /home/yocto/rzv_vlp_v3.0.0/bui=
ld/tmp/work/aarch64-poky-linux/wlroots/0.12.0-r0/build/meson-logs/meson-log=
.txt
<br>| ERROR: meson failed
<br>| WARNING: exit code 1 from a shell command.
<br>| ERROR: Execution of &#39;/home/yocto/rzv_vlp_v3.0.0/build/tmp/work/aa=
rch64-poky-linux/wlroots/0.12.0-r0/temp/run.do_configure.340360&#39; failed=
 with exit code 1
<br><span style=3D"font-weight:bold;color:rgb(255,84,84)">ERROR</span><span=
 style=3D"color:rgb(0,0,0)">: </span><span style=3D"color:rgb(178,24,24)">T=
ask (/home/yocto/rzv_vlp_v3.0.0/build/../meta-mistysom/recipes-display/wlro=
ots/wlroots.bb:do_configure) failed with exit code &#39;1&#39;</span><br></=
span></div><div><span style=3D"font-family:monospace"><span style=3D"color:=
rgb(178,24,24)"><br></span></span></div><div>Where the <a href=3D"http://wl=
roots.bb">wlroots.bb</a> recipe looks like:<br></div><div><span style=3D"fo=
nt-family:monospace"><span style=3D"color:rgb(178,24,24)"><br></span></span=
></div><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(=
0,0,0)">$ cat ../meta-mistysom/recipes-display/wlroots/<a href=3D"http://wl=
roots.bb">wlroots.bb</a>
</span><br>SUMMARY =3D &quot;Modules for building a Wayland compositor&quot=
;
<br>HOMEPAGE =3D &quot;<a href=3D"https://github.com/swaywm/wlroots">https:=
//github.com/swaywm/wlroots</a>&quot; =C2=A0<br>LICENSE =3D &quot;MIT&quot;
<br>LIC_FILES_CHKSUM =3D &quot;file://LICENSE;md5=3D7578fad101710ea2d289ff5=
411f1b818&quot; =C2=A0<br>
<br>DEPENDS =3D &quot; \
<br> =C2=A0=C2=A0=C2=A0wayland-native \
<br> =C2=A0=C2=A0=C2=A0wayland \
<br> =C2=A0=C2=A0=C2=A0wayland-protocols \
<br> =C2=A0=C2=A0=C2=A0virtual/egl \
<br> =C2=A0=C2=A0=C2=A0virtual/libgles2 \
<br> =C2=A0=C2=A0=C2=A0libdrm \
<br> =C2=A0=C2=A0=C2=A0virtual/libgbm \
<br> =C2=A0=C2=A0=C2=A0libinput \
<br> =C2=A0=C2=A0=C2=A0libxkbcommon \
<br> =C2=A0=C2=A0=C2=A0udev \
<br> =C2=A0=C2=A0=C2=A0pixman \
<br>&quot;
<br>
<br>inherit meson features_check
<br>
<br>REQUIRED_DISTRO_FEATURES =3D &quot;wayland opengl&quot;
<br>
<br>PACKAGECONFIG ??=3D &quot;${@bb.utils.contains(&#39;DISTRO_FEATURES&#39=
;,&#39;x11&#39;,&#39;xwayland x11-backend&#39;,&#39;&#39;,d)}&quot;
<br>PACKAGECONFIG[xwayland] =3D &quot;-Dxwayland=3Denabled,-Dxwayland=3Ddis=
abled,xserver-xorg,xserver-xorg-xwayland&quot;
<br>PACKAGECONFIG[x11-backend] =3D &quot;-Dx11-backend=3Denabled,-Dx11-back=
end=3Ddisabled,xserver-xorg&quot;
<br>
<br>SRC_URI =3D &quot; \
<br> =C2=A0=C2=A0=C2=A0git://<a href=3D"http://github.com/swaywm/${BPN}.git=
">github.com/swaywm/${BPN}.git</a> \
<br> =C2=A0=C2=A0=C2=A0file://0001-Adjust-meson.build-to-meson-0.54.patch \
<br>&quot;
<br>SRCREV =3D &quot;238d1c078fb03338e9f271d98f7bf6b1fc399285&quot;
<br>PV =3D &quot;0.12.0&quot;
<br>S =3D &quot;${WORKDIR}/git&quot;<br></span><br></div><div>and the meson=
 patch:<span style=3D"font-family:monospace"><br></span></div><div><br></di=
v><div><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0=
)">$ cat ../meta-mistysom/recipes-display/wlroots/wlroots/0001-Adjust-meson=
.build-to-meson-0.54.patch =C2=A0</span><br>From df8a70b2db61a395bb424d4f49=
42434544e3ef43 Mon Sep 17 00:00:00 2001
<br>From: =3D?UTF-8?q?Andreas=3D20M=3DC3=3DBCller?=3D &lt;<a href=3D"mailto=
:schnitzeltony@gmail.com">schnitzeltony@gmail.com</a>&gt;
<br>Date: Tue, 8 Dec 2020 01:57:15 +0100
<br>Subject: [PATCH] Adjust meson.build to meson &lt; 0.54
<br>MIME-Version: 1.0
<br>Content-Type: text/plain; charset=3DUTF-8
<br>Content-Transfer-Encoding: 8bit
<br>
<br>* meson.override_dependency is not required here. It requires meson &gt=
;=3D 0.54
<br>* we set min version to what dunfell ships
<br>
<br>Upstream-Status: Inappropriate[Configuration]
<br>
<br>Signed-off-by: Andreas M=C3=BCller &lt;<a href=3D"mailto:schnitzeltony@=
gmail.com">schnitzeltony@gmail.com</a>&gt;
<br>---
<br> meson.build | 4 +---
<br> 1 file changed, 1 insertion(+), 3 deletions(-)
<br>
<br>diff --git a/meson.build b/meson.build
<br>index 835e0195..b07760ab 100644
<br>--- a/meson.build
<br>+++ b/meson.build
<br>@@ -3,7 +3,7 @@ project(
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;c&#39;,
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0version: &#39;0.12.0&#39;,
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0license: &#39;MIT&#39;,
<br>- =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0meson_version: &#39;&gt;=3D0.54.0=
&#39;,
<br>+ =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0meson_version: &#39;&gt;=3D0.53.2=
&#39;,
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default_options: [
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0&#39;c_std=3Dc11&#39;,
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0&#39;warning_level=3D2&#39;,
<br>@@ -172,8 +172,6 @@ wlroots =3D declare_dependency(
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0include_directories: wlr_inc=
,
<br> )
<br> =C2=A0<br>-meson.override_dependency(&#39;wlroots&#39;, wlroots)
<br>-
<br> summary({
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;systemd&#39;: conf_data=
.get(&#39;WLR_HAS_SYSTEMD&#39;, 0),
<br> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&#39;elogind&#39;: conf_data=
.get(&#39;WLR_HAS_ELOGIND&#39;, 0),
<br>-- =C2=A0<br>2.26.2<br></span><br></div><div>Can anyone help me out on =
how to resolve this conflict?<span style=3D"font-family:monospace"><br></sp=
an></div><div><br></div></div>

--00000000000020d1f3060a8b81bd--

