Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6D01AC433F5
	for <webhook@archiver.kernel.org>; Fri, 10 Dec 2021 10:33:24 +0000 (UTC)
Received: from mail-vk1-f169.google.com (mail-vk1-f169.google.com
 [209.85.221.169])
 by mx.groups.io with SMTP id smtpd.web08.5490.1639132403143793864
 for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 02:33:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=o5E9+N3B;
 spf=pass (domain: gmail.com, ip: 209.85.221.169,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-vk1-f169.google.com with SMTP id m16so5574667vkl.13
        for <yocto@lists.yoctoproject.org>;
 Fri, 10 Dec 2021 02:33:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=GWRMqzjIFJGucyqwVS/IgYuTN59T8/BFTRwa/EeWosc=;
        b=o5E9+N3BGM5SXlJCEg+3RqiAJxcW8hV14XH1op/vk0lGJYVhcDKRdIRYjNJO4cJIDv
         cQHuzbCgZxWCznHo003fT4Z9C1XRD4N5rVtMVB/ax7s9n5saxj7Le7BAK7GBQItEh2mJ
         mbMqxwvM7V51uPP28CkltnOla3eJAmZjomMlldWqjZev0LElwnnbrZNDL/aXJQS3vTmn
         6brN1jvttBrydWKILwtou37hQJilwtWFvC18gu+mfj+E8Db9JRv6jliGTM5oB+3VT91S
         0u0ge5Tk+nTc+WVSD2gWilLgftclja7jiRvjho86/Cg7yi1PF1ORqSSCnX5IdVtv9bVm
         N6hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=GWRMqzjIFJGucyqwVS/IgYuTN59T8/BFTRwa/EeWosc=;
        b=S4VV/U4ZlrA1qxWHWCfymj0hz3sMCarF8pnEHi2sFoO5eYdSmATLGxzu5YELVbNCQ0
         ptlsQlMFq4BvUmmSC+HZsVR4FVLFAAD7C4lV2g0DmD+PDV0Y33Ru/BftXxKweGAxZkUA
         J9dby4xVct4bIBPyunsY/poc6vF46Ny9zQ55egPq8XSPmLUvUx9jXbdehUpuGLoRly2o
         IBs7kQfv9dNAtswRtrDM5g+CJzNCqpkEN0GIkObKEaKPdTufHMpUms0CVKQOhCR8sGBQ
         XjuLZO9udEl55u5KzeLKQ6i3rWtZWKYoEteCi7skM4LloT8fcbSGmOfA7HDVJYdiOe0f
         iY0w==
X-Gm-Message-State: AOAM530Jee99MgmuuLxVXeDAgH4H6hWgaulTBU48iKFbsT/ZY3sDbsSh
	nMRK0XZfOSSr12qEUvHMnJ4ZD8zKR0faejO0ws4=
X-Google-Smtp-Source: 
 ABdhPJy7tCq87wNTNqjQINmvJBLE6oaIcFr0B6lIYWX6CeirS/PchvFy3txEPTI3ax0AY+t/bb1L6NHl75QR06Cdso0=
X-Received: by 2002:a05:6122:c6f:: with SMTP id
 i47mr17441020vkr.20.1639132402320;
 Fri, 10 Dec 2021 02:33:22 -0800 (PST)
MIME-Version: 1.0
References: <20211210053816.1298142-1-f_l_k@t-online.de>
In-Reply-To: <20211210053816.1298142-1-f_l_k@t-online.de>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 10 Dec 2021 11:33:11 +0100
Message-ID: 
 <CANNYZj9=0C_yr703C_ub=2hgAGVPx3K_Azy0QmPtRjKZTCnUmw@mail.gmail.com>
Subject: Re: [yocto] [OE-core] [PATCH] libva: move wayland PACKAGECONFIG to
 libva.inc
To: Markus Volk <f_l_k@t-online.de>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000009489fd05d2c8401e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 10 Dec 2021 10:33:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55546

--0000000000009489fd05d2c8401e
Content-Type: text/plain; charset="UTF-8"

Please send the patch to openembedded-core list.

Also I wonder about this:
| Run-time dependency wayland-client found: YES 1.19.0

How does it happen? Is something else building wayland items?

Alex

On Fri, 10 Dec 2021 at 06:40, Markus Volk <f_l_k@t-online.de> wrote:

> I encountered an error while trying to build libva under wayland.
> libva-initial
> was missing wayland-native dependency and failed like this:
>
> | Run-time dependency xfixes found: NO (tried pkgconfig and cmake)
> | Run-time dependency wayland-client found: YES 1.19.0
> | Program wayland-scanner /usr/bin/wayland-scanner found: NO
> |
> | ../libva-2.13.0/meson.build:107:4: ERROR: Program 'wayland-scanner
> /usr/bin/wayland-scanner' not found
> |
> | A full log can be found at
> /home/flk/build/poky/build-rock/tmp/work/cortexa72-cortexa53-crypto-poky-linux/libva-initial/2.13.0-r0/build/meson-logs/meson-log.txt
> | ERROR: meson failed
> | WARNING: exit code 1 from a shell command.
>
> This commit moves the PACKAGECONFIG[wayland] to libva.inc to make it
> available to libva-initial also
>
> Signed-off-by: MarkusVolk <f_l_k@t-online.de>
> ---
>  meta/recipes-graphics/libva/libva.inc       | 7 +++++++
>  meta/recipes-graphics/libva/libva_2.13.0.bb | 4 +---
>  2 files changed, 8 insertions(+), 3 deletions(-)
>
> diff --git a/meta/recipes-graphics/libva/libva.inc
> b/meta/recipes-graphics/libva/libva.inc
> index bcf9757c1a..0e2721e291 100644
> --- a/meta/recipes-graphics/libva/libva.inc
> +++ b/meta/recipes-graphics/libva/libva.inc
> @@ -27,3 +27,10 @@ UPSTREAM_CHECK_URI = "
> https://github.com/intel/libva/releases"
>  DEPENDS = "libdrm"
>
>  inherit meson pkgconfig
> +
> +PACKAGECONFIG:append = " \
> +    ${@bb.utils.filter('DISTRO_FEATURES', 'wayland', d)} \
> +"
> +
> +PACKAGECONFIG[wayland] =
> "-Dwith_wayland=yes,-Dwith_wayland=no,wayland-native wayland"
> +
> diff --git a/meta/recipes-graphics/libva/libva_2.13.0.bb
> b/meta/recipes-graphics/libva/libva_2.13.0.bb
> index ed2be289fc..a8c6355b01 100644
> --- a/meta/recipes-graphics/libva/libva_2.13.0.bb
> +++ b/meta/recipes-graphics/libva/libva_2.13.0.bb
> @@ -2,14 +2,12 @@ require libva.inc
>
>  PACKAGECONFIG ??= " \
>      ${@bb.utils.contains('DISTRO_FEATURES', 'x11 opengl', 'glx', '', d)} \
> -    ${@bb.utils.filter('DISTRO_FEATURES', 'x11 wayland', d)} \
> +    ${@bb.utils.filter('DISTRO_FEATURES', 'x11', d)} \
>  "
>
>  PACKAGECONFIG[x11] = "-Dwith_x11=yes,-Dwith_x11=no,virtual/libx11 libxext
> libxfixes"
>  PACKAGECONFIG[glx] = "-Dwith_glx=yes,-Dwith_glx=no,virtual/mesa"
>
> -PACKAGECONFIG[wayland] =
> "-Dwith_wayland=yes,-Dwith_wayland=no,wayland-native wayland"
> -
>  PACKAGES =+ "${PN}-x11 ${PN}-glx ${PN}-wayland"
>
>  RDEPENDS:${PN}-x11 =+ "${PN}"
> --
> 2.25.1
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55544):
> https://lists.yoctoproject.org/g/yocto/message/55544
> Mute This Topic: https://lists.yoctoproject.org/mt/87630461/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000009489fd05d2c8401e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Please send the patch to openembedded-core list.</div=
><div><br></div><div>Also I wonder about this:</div><div>
| Run-time dependency wayland-client found: YES 1.19.0</div><div><br></div>=
<div>How does it happen? Is something else building wayland items?<br></div=
><div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Fri, 10 Dec 2021 at 06:40, Markus Vol=
k &lt;<a href=3D"mailto:f_l_k@t-online.de">f_l_k@t-online.de</a>&gt; wrote:=
<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8=
ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">I encountered a=
n error while trying to build libva under wayland. libva-initial<br>
was missing wayland-native dependency and failed like this:<br>
<br>
| Run-time dependency xfixes found: NO (tried pkgconfig and cmake)<br>
| Run-time dependency wayland-client found: YES 1.19.0<br>
| Program wayland-scanner /usr/bin/wayland-scanner found: NO<br>
|<br>
| ../libva-2.13.0/meson.build:107:4: ERROR: Program &#39;wayland-scanner /u=
sr/bin/wayland-scanner&#39; not found<br>
|<br>
| A full log can be found at /home/flk/build/poky/build-rock/tmp/work/corte=
xa72-cortexa53-crypto-poky-linux/libva-initial/2.13.0-r0/build/meson-logs/m=
eson-log.txt<br>
| ERROR: meson failed<br>
| WARNING: exit code 1 from a shell command.<br>
<br>
This commit moves the PACKAGECONFIG[wayland] to libva.inc to make it availa=
ble to libva-initial also<br>
<br>
Signed-off-by: MarkusVolk &lt;<a href=3D"mailto:f_l_k@t-online.de" target=
=3D"_blank">f_l_k@t-online.de</a>&gt;<br>
---<br>
=C2=A0meta/recipes-graphics/libva/libva.inc=C2=A0 =C2=A0 =C2=A0 =C2=A0| 7 +=
++++++<br>
=C2=A0meta/recipes-graphics/libva/<a href=3D"http://libva_2.13.0.bb" rel=3D=
"noreferrer" target=3D"_blank">libva_2.13.0.bb</a> | 4 +---<br>
=C2=A02 files changed, 8 insertions(+), 3 deletions(-)<br>
<br>
diff --git a/meta/recipes-graphics/libva/libva.inc b/meta/recipes-graphics/=
libva/libva.inc<br>
index bcf9757c1a..0e2721e291 100644<br>
--- a/meta/recipes-graphics/libva/libva.inc<br>
+++ b/meta/recipes-graphics/libva/libva.inc<br>
@@ -27,3 +27,10 @@ UPSTREAM_CHECK_URI =3D &quot;<a href=3D"https://github.c=
om/intel/libva/releases" rel=3D"noreferrer" target=3D"_blank">https://githu=
b.com/intel/libva/releases</a>&quot;<br>
=C2=A0DEPENDS =3D &quot;libdrm&quot;<br>
<br>
=C2=A0inherit meson pkgconfig<br>
+<br>
+PACKAGECONFIG:append =3D &quot; \<br>
+=C2=A0 =C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;wayland&#=
39;, d)} \<br>
+&quot;<br>
+<br>
+PACKAGECONFIG[wayland] =3D &quot;-Dwith_wayland=3Dyes,-Dwith_wayland=3Dno,=
wayland-native wayland&quot;<br>
+<br>
diff --git a/meta/recipes-graphics/libva/<a href=3D"http://libva_2.13.0.bb"=
 rel=3D"noreferrer" target=3D"_blank">libva_2.13.0.bb</a> b/meta/recipes-gr=
aphics/libva/<a href=3D"http://libva_2.13.0.bb" rel=3D"noreferrer" target=
=3D"_blank">libva_2.13.0.bb</a><br>
index ed2be289fc..a8c6355b01 100644<br>
--- a/meta/recipes-graphics/libva/<a href=3D"http://libva_2.13.0.bb" rel=3D=
"noreferrer" target=3D"_blank">libva_2.13.0.bb</a><br>
+++ b/meta/recipes-graphics/libva/<a href=3D"http://libva_2.13.0.bb" rel=3D=
"noreferrer" target=3D"_blank">libva_2.13.0.bb</a><br>
@@ -2,14 +2,12 @@ require libva.inc<br>
<br>
=C2=A0PACKAGECONFIG ??=3D &quot; \<br>
=C2=A0 =C2=A0 =C2=A0${@bb.utils.contains(&#39;DISTRO_FEATURES&#39;, &#39;x1=
1 opengl&#39;, &#39;glx&#39;, &#39;&#39;, d)} \<br>
-=C2=A0 =C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;x11 wayla=
nd&#39;, d)} \<br>
+=C2=A0 =C2=A0 ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;x11&#39;,=
 d)} \<br>
=C2=A0&quot;<br>
<br>
=C2=A0PACKAGECONFIG[x11] =3D &quot;-Dwith_x11=3Dyes,-Dwith_x11=3Dno,virtual=
/libx11 libxext libxfixes&quot;<br>
=C2=A0PACKAGECONFIG[glx] =3D &quot;-Dwith_glx=3Dyes,-Dwith_glx=3Dno,virtual=
/mesa&quot;<br>
<br>
-PACKAGECONFIG[wayland] =3D &quot;-Dwith_wayland=3Dyes,-Dwith_wayland=3Dno,=
wayland-native wayland&quot;<br>
-<br>
=C2=A0PACKAGES =3D+ &quot;${PN}-x11 ${PN}-glx ${PN}-wayland&quot;<br>
<br>
=C2=A0RDEPENDS:${PN}-x11 =3D+ &quot;${PN}&quot;<br>
-- <br>
2.25.1<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55544): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55544" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55544</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/87630461/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/87630461/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--0000000000009489fd05d2c8401e--

