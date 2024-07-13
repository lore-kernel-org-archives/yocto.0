Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A6CCC3DA42
	for <webhook@archiver.kernel.org>; Sat, 13 Jul 2024 15:43:34 +0000 (UTC)
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
 by mx.groups.io with SMTP id smtpd.web11.13986.1720885407594964349
 for <yocto@lists.yoctoproject.org>;
 Sat, 13 Jul 2024 08:43:27 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c9GY37zw;
 spf=pass (domain: gmail.com, ip: 209.85.167.174, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f174.google.com with SMTP id 5614622812f47-3d9c4887533so1594242b6e.2
        for <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 08:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720885407; x=1721490207; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SaFjYS0+N14V+yGf0YuCi/NS9k/70rv3Olw/ynK/8Mc=;
        b=c9GY37zwB3dOCa/6rmAW1vLOIT+/4yElRqoDycJgMqZyrPXIJ5FRTFfwV9CE9hEobj
         c1zHH+SiisEGgz4PQTwn4ENMTF+CqSkVTmMbyIK1IxAZwoaPysogFf518dN8uycBeJVN
         YUruJZ6Qj5kRXPT3milmm30tPkV1yfBPlNpMWLTi97e3GhfykLzMMGSUyXC+tkOIxEHA
         o+Kf9xU3rOR9+iGO9LPfYWbmNCXYEkaiFpvCHo+hrJ+3nPk1FelP7hQo3cO+TnJeSb3P
         utQoR/HBZLe4VHwk3U337Fh5y/kaOi08kWDhBjsml+/NJCqIrNBxio/CReoq5Q6MU/g7
         0QGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720885407; x=1721490207;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SaFjYS0+N14V+yGf0YuCi/NS9k/70rv3Olw/ynK/8Mc=;
        b=BAn1B0cSlKkK/FwZUxaLH/xq6hJbqpxYW8CdUzJNT4+1qPuAnniNX/dVSgqLQMXOVC
         OxhGciqYrMoQ7I0Gp0ZSHKocnGynwnyrk0i0Rps6izTWJOuPioX3npuxnSeDofwyaGBF
         M6de+p5BInv8L0dgkyINgVrT5ffnrd/rKaSUzz+hRSe/FXHQ276yuKOP0YyXi92XwCj4
         2cBzeejfnSnhTm+1vYpQGoVNbKCH2f9K6KbtZG4sWkBg7PwNcrxnKs0INZE2MTGLttF+
         m84auyKPljXB+fZq5EkdNwHxGGtrLP++vBX1tPlsxGHmPo0EY5DoMdNzyx8N1rZXI7bT
         DQ9A==
X-Forwarded-Encrypted: i=1; AJvYcCUNbgrLJWh2PaTZSH3i6kpi6Uj/q7TrEnMxGLgd+YT2ztqfzQdn0JgG4m7jzywgBtrv1YYTy1fZs4jomHtzoDx9o4BuH32VRXAANLvS
X-Gm-Message-State: AOJu0YwtP2ADPp46Q8855QjqAXX7Cgrqj0ttFqbeQLgPwXA6J6tlviHs
	eD85pw44uHofwBrjciDwlv/DfYaC5jYbn0kDElUFRC+aZTOXAb/wp9t4IJIrScSv5oUI6L1G4g3
	y+M0pkq47OD9/Juz9mLLVOW/sCMw=
X-Google-Smtp-Source: AGHT+IEPo/GufSyE9pqr49Z3PP0FJi+lRRTfPDzgdy8tEYTmONHyKhhVhEV+RMBbyd1CImAS0G6dQqsyGzTbpEC5AIk=
X-Received: by 2002:a05:6870:9550:b0:254:948e:bf08 with SMTP id
 586e51a60fabf-25eae8320eamr8131458fac.31.1720885406725; Sat, 13 Jul 2024
 08:43:26 -0700 (PDT)
MIME-Version: 1.0
References: <xXO5.1720884718448336000.EfxL@lists.yoctoproject.org>
In-Reply-To: <xXO5.1720884718448336000.EfxL@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 13 Jul 2024 08:43:15 -0700
Message-ID: <CAMKF1spQk=Yz7AEus4_27iyxoaCjoembuOOEeHG0rj6LH5bA0g@mail.gmail.com>
Subject: Re: [yocto] Bitbake: arm-poky-linux-gnueabi-gcc not found
To: gavrosc@yahoo.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000005e0254061d22db7b"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 13 Jul 2024 15:43:34 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63484

--0000000000005e0254061d22db7b
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Jul 13, 2024 at 8:32=E2=80=AFAM gavrosc via lists.yoctoproject.org =
<gavrosc=3D
yahoo.com@lists.yoctoproject.org> wrote:

> Hi
> i am using ubuntu 22.04.4 LTS, bitbake 2.8.0, poky scarthgap branch and
> beaglebone black. I have created my own layer and my own helloworld recip=
e
> which contain a helloworld.c. I would like to execute it in beaglebone
> black. When i am trying to execute 'bitbake helloworld' i am getting the
> error arm-poky-linux-gnueabi-gcc: not found.
>
> Do i have to install arm-poky-linux-gnueabi-gcc or am i missing something
> else?
>
> Here is the helloworld.bb file:
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> DESCRIPTION =3D "Hello World application"
>
> SECTION =3D "examples"
> LICENSE =3D "MIT"
> LIC_FILES_CHKSUM =3D "file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade698e0=
bcf8506ecda2f7b4f302"
>
>
> SRC_URI =3D "file://helloworld.c"
>
> S =3D "${WORKDIR}"
>
> do_compile() {
>     ${CC} ${CFLAGS} ${LDFLAGS} helloworld.c -o helloworld
> }
>
> do_install() {
>     install -d ${D}${bindir}
>     install -m 0755 helloworld ${D}${bindir}
> }
>
> # Disable default dependency checks (including SHA256)
> INHIBIT_DEFAULT_DEPS =3D "1"
>
> this variable means that default dependencies are not desired and you wil=
l
add them manually if you removed this option it should work

>
>
>
>
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63483):
> https://lists.yoctoproject.org/g/yocto/message/63483
> Mute This Topic: https://lists.yoctoproject.org/mt/107200784/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--0000000000005e0254061d22db7b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Sat, Jul 13, 2024 at 8:32=E2=80=AFAM gavrosc via <a href=
=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a> &lt;gavrosc=
=3D<a href=3D"mailto:yahoo.com@lists.yoctoproject.org">yahoo.com@lists.yoct=
oproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p styl=
e=3D"font-style:normal;font-variant-caps:normal;font-weight:400;letter-spac=
ing:normal;text-indent:0px;text-transform:none;white-space:normal;word-spac=
ing:0px;text-decoration:none;margin:0px 0px 1.1em;padding:0px;border:0px;fo=
nt-stretch:inherit;line-height:inherit;font-family:-apple-system,BlinkMacSy=
stemFont,&#39;Segoe UI Adjusted&#39;,&#39;Segoe UI&#39;,&#39;Liberation San=
s&#39;,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font-varian=
t-alternates:inherit;font-variant-ligatures:inherit;font-variant-numeric:in=
herit;font-variant-east-asian:inherit;font-feature-settings:inherit;font-si=
ze:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:#0c0d0e=
;text-align:left">Hi<br>i am using ubuntu 22.04.4 LTS, bitbake 2.8.0, poky =
scarthgap branch and beaglebone black. I have created my own layer and my o=
wn helloworld recipe which contain a helloworld.c. I would like to execute =
it in beaglebone black. When i am trying to execute &#39;bitbake helloworld=
&#39; i am getting the error arm-poky-linux-gnueabi-gcc: not found.</p>
<p style=3D"font-style:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none;margin:0px 0px 1.1em;padding:0px;border=
:0px;font-stretch:inherit;line-height:inherit;font-family:-apple-system,Bli=
nkMacSystemFont,&#39;Segoe UI Adjusted&#39;,&#39;Segoe UI&#39;,&#39;Liberat=
ion Sans&#39;,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font=
-variant-alternates:inherit;font-variant-ligatures:inherit;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-feature-settings:inherit;=
font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:=
#0c0d0e;text-align:left">Do i have to install arm-poky-linux-gnueabi-gcc or=
 am i missing something else?</p>
<p style=3D"font-style:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none;margin:0px 0px 1.1em;padding:0px;border=
:0px;font-stretch:inherit;line-height:inherit;font-family:-apple-system,Bli=
nkMacSystemFont,&#39;Segoe UI Adjusted&#39;,&#39;Segoe UI&#39;,&#39;Liberat=
ion Sans&#39;,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font=
-variant-alternates:inherit;font-variant-ligatures:inherit;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-feature-settings:inherit;=
font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:=
#0c0d0e;text-align:left">Here is the <a href=3D"http://helloworld.bb" targe=
t=3D"_blank">helloworld.bb</a> file:<br><br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><br></p>
<pre style=3D"font-style:normal;font-variant-caps:normal;font-weight:400;le=
tter-spacing:normal;text-indent:0px;text-transform:none;word-spacing:0px;te=
xt-decoration:none;margin:0px 0px calc(1.5em);padding:var(--su12);border:0p=
x;font-stretch:inherit;line-height:var(--lh-md);font-family:var(--ff-mono);=
font-size-adjust:inherit;font-kerning:inherit;font-variant-alternates:inher=
it;font-variant-ligatures:inherit;font-variant-numeric:inherit;font-variant=
-east-asian:inherit;font-feature-settings:inherit;font-size:var(--fs-body1)=
;vertical-align:baseline;box-sizing:inherit;width:auto;max-height:600px;ove=
rflow:auto;background-color:var(--highlight-bg);border-radius:var(--br-md);=
color:#0c0d0e;text-align:left"><code style=3D"margin:0px;padding:0px;border=
:0px;font-style:inherit;font-variant-caps:inherit;font-weight:inherit;font-=
stretch:inherit;line-height:inherit;font-family:var(--ff-mono);font-size-ad=
just:inherit;font-kerning:inherit;font-variant-alternates:inherit;font-vari=
ant-ligatures:inherit;font-variant-numeric:inherit;font-variant-east-asian:=
inherit;font-feature-settings:inherit;font-size:var(--_pr-code-fs);vertical=
-align:baseline;box-sizing:inherit;background-color:transparent;white-space=
:inherit;color:var(--black-600);border-radius:0px">DESCRIPTION =3D &quot;He=
llo World application&quot;

SECTION =3D &quot;examples&quot;
LICENSE =3D &quot;MIT&quot;
LIC_FILES_CHKSUM =3D &quot;file://${COMMON_LICENSE_DIR}/MIT;md5=3D0835ade69=
8e0bcf8506ecda2f7b4f302&quot;


SRC_URI =3D &quot;file://helloworld.c&quot;

S =3D &quot;${WORKDIR}&quot;

do_compile() {
    ${CC} ${CFLAGS} ${LDFLAGS} helloworld.c -o helloworld
}

do_install() {
    install -d ${D}${bindir}
    install -m 0755 helloworld ${D}${bindir}
}

# Disable default dependency checks (including SHA256)
INHIBIT_DEFAULT_DEPS =3D &quot;1&quot;
</code></pre>
<p style=3D"font-style:normal;font-variant-caps:normal;font-weight:400;lett=
er-spacing:normal;text-indent:0px;text-transform:none;white-space:normal;wo=
rd-spacing:0px;text-decoration:none;margin:0px 0px 1.1em;padding:0px;border=
:0px;font-stretch:inherit;line-height:inherit;font-family:-apple-system,Bli=
nkMacSystemFont,&#39;Segoe UI Adjusted&#39;,&#39;Segoe UI&#39;,&#39;Liberat=
ion Sans&#39;,sans-serif;font-size-adjust:inherit;font-kerning:inherit;font=
-variant-alternates:inherit;font-variant-ligatures:inherit;font-variant-num=
eric:inherit;font-variant-east-asian:inherit;font-feature-settings:inherit;=
font-size:15px;vertical-align:baseline;box-sizing:inherit;clear:both;color:=
#0c0d0e;text-align:left"></p></blockquote><div dir=3D"auto">this variable m=
eans that default dependencies are not desired and you will add them manual=
ly if you removed this option it should work=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><p style=3D"font-style:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-indent:0px;text-transform:none;white-s=
pace:normal;word-spacing:0px;text-decoration:none;margin:0px 0px 1.1em;padd=
ing:0px;border:0px;font-stretch:inherit;line-height:inherit;font-family:-ap=
ple-system,BlinkMacSystemFont,&#39;Segoe UI Adjusted&#39;,&#39;Segoe UI&#39=
;,&#39;Liberation Sans&#39;,sans-serif;font-size-adjust:inherit;font-kernin=
g:inherit;font-variant-alternates:inherit;font-variant-ligatures:inherit;fo=
nt-variant-numeric:inherit;font-variant-east-asian:inherit;font-feature-set=
tings:inherit;font-size:15px;vertical-align:baseline;box-sizing:inherit;cle=
ar:both;color:#0c0d0e;text-align:left"><br><br><br><br>=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D</p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63483): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63483" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63483</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/107200784/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/107200784/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000005e0254061d22db7b--

