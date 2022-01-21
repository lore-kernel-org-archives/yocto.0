Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66E89C433F5
	for <webhook@archiver.kernel.org>; Fri, 21 Jan 2022 19:09:53 +0000 (UTC)
Received: from mail-ua1-f47.google.com (mail-ua1-f47.google.com
 [209.85.222.47])
 by mx.groups.io with SMTP id smtpd.web11.173.1642792192836139807
 for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 11:09:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=UoESylCe;
 spf=pass (domain: gmail.com, ip: 209.85.222.47,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f47.google.com with SMTP id b37so872685uad.12
        for <yocto@lists.yoctoproject.org>;
 Fri, 21 Jan 2022 11:09:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=QvQ+NwbkKoQj7/WmEKSVtm/xobdFiKP3lzpvgl9cAwY=;
        b=UoESylCeErY3phHk4bi8meSjNJmg0jzgeIWJU58SxRfQlCxu1dA9MkOGLdFm/wkOKL
         hziN6jLs0yXNtlrIEsfH5vHRqDuBwaj2UoRQoUeb5Mf7Nct6G/13LsKT/5jshLnV3Hxu
         he/8tzxh8G1/spE3vppg8X7IzUHNqxZVelB9yA/qoEKLZo3JKJNBr13M4rtxrNxaA/at
         BqrHSfEmo5FJEhHLlIA12mr7nay/aRupnqY/dITYgYqjicqzojphK9Prd/IeOOu4ZOXM
         vWYsNu9XnvFVqwpALRtYmI96dEJuuYWBmHTICDVVsQZLm62AsiaF2XGx66dyovFFUcJF
         d7jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=QvQ+NwbkKoQj7/WmEKSVtm/xobdFiKP3lzpvgl9cAwY=;
        b=fmjTdgWqeN6xdJL2a1MOlHpI8wiSHY6KdU3RVQ7rBJL4lnMfO+mwPaR8kRSEW+rjr1
         frClJzz2epBG32qNaDl4S3GRur0fGbBJbJLVFVHoAfFu24BuzmYIxwvQpYg2QSVSvknE
         2Zdfj+UufJGx37SsqBHtEk/xu6SqApjRqEpD3SdaUUC9DC8w5SSmGIgqR+LQB+8bMlkz
         6nP97I6nVFTJN1275rYrXAM98qoH8LbKB7PyJYIIv0VSB5rfAxHgBO8NOMiixsHQ5ki1
         FFmrX6PYKUnCbFlGkdrjlRTsc8N3zTH9MlEb6sFzkOOubROBOw8q3AXXO3MNscboa/pY
         NaXA==
X-Gm-Message-State: AOAM5329FRKH6+1vmrHCGIRiBRx8zT0H4udkMHNKhcS+RSBwgXZczu4d
	ovEFLXgHoYvrwU5Bc0zZehS9zMb4HpCLAFCZSMAHlWHX
X-Google-Smtp-Source: 
 ABdhPJzWiq+8YMLhAbBKWaKFnT+Kh4EXJfR+xkcYRNYk85V9iaRo2kXFLwG0qnOpW2Llucs1/YOWru9qqYZk3o5ZLfY=
X-Received: by 2002:a9f:3e01:: with SMTP id o1mr2497685uai.89.1642792191192;
 Fri, 21 Jan 2022 11:09:51 -0800 (PST)
MIME-Version: 1.0
References: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
In-Reply-To: <195584031.4249850.1642792001108@kpc.webmail.kpnmail.nl>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Fri, 21 Jan 2022 20:09:40 +0100
Message-ID: 
 <CANNYZj9jP9TRmgGcWmPcgF7TJwLJnPxVAXj6SdykxzFzDRYcaw@mail.gmail.com>
Subject: Re: [yocto] non-existent task do_package_write_rpm error
To: "W. Dobbe" <winfried_mb2@xmsnet.nl>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000fef1fd05d61c5cd6"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 21 Jan 2022 19:09:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55941

--000000000000fef1fd05d61c5cd6
Content-Type: text/plain; charset="UTF-8"

You need to drop the -native suffix when installing to target image or SDK.
-native is only for the bitbake build itself.

Alex

On Fri, 21 Jan 2022 at 20:07, W. Dobbe <winfried_mb2@xmsnet.nl> wrote:

> Hi,
>
> I'm writing a recipe for package hardening-check
> <http://deb.debian.org/debian/pool/main/h/hardening-wrapper/> .
> This package builds with only a simple Makefile (that has no install
> target). The recipe only installs a script hardening-check in /usr/bin.
>
> I would like to include this script in our SDK.
> The recipe itself builds fine (bitbake hardening-check-native).
>
> But when I add hardening-check-native to IMAGE_INSTALL in my image the
> build fails with:
>
> Task do_populate_sdk in myimage.bb rdepends upon non-existent task do_package_write_rpm in virtual:native:(...)/recipes-devtools/hardening-check/hardening-check_2.6.bb
>
> Same error when I append the package to TOOLCHAIN_HOST_TASK instead.
>
> Any idea how to solve this? Do I need to inherit my recipe from something?
> Recipe included below.
>
> Thanks in advance for the help!
>
> regards,
> Winfried
>
>
> SUMMARY = "Script to check an executable for certain security weaknesses."
> LICENSE = "GPLv2"
> LIC_FILES_CHKSUM =
> "file://debian/copyright;md5=06ff97d53f05a9b8ce2a416b30f496b9"
>
> SRC_URI = "
> http://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_${PV}.tar.xz
> \
>           file://0001-perl_regex.patch \
>          "
> SRC_URI[md5sum] = "47c93c05b4d0199be8df0d35dbd68192"
> SRC_URI[sha256sum] =
> "c5fc46439646d0929a0605e4f3db67e57eefbbf5ceec5a2888440dbdf4450224"
>
> RDEPENDS_${PN} = "perl"
>
> S = "${WORKDIR}/hardening-wrapper"
>
> do_patch () {
>    cd ${S}
>    patch -p1 -u -i ${WORKDIR}/0001-perl_regex.patch
> }
>
> do_configure () {
>        # Specify any needed configure commands here
>        :
> }
>
> do_compile () {
>        export DEB_HOST_ARCH=`uname -m`
>        export DEB_HOST_ARCH_OS=`uname -s`
>        oe_runmake
> }
>
> do_install () {
>    install -d ${D}/${bindir}
>    install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir}
> }
>
> BBCLASSEXTEND = "native nativesdk"
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55940):
> https://lists.yoctoproject.org/g/yocto/message/55940
> Mute This Topic: https://lists.yoctoproject.org/mt/88590330/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000fef1fd05d61c5cd6
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You need to drop the -native suffix when installing t=
o target image or SDK. -native is only for the bitbake build itself.</div><=
div><br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div =
dir=3D"ltr" class=3D"gmail_attr">On Fri, 21 Jan 2022 at 20:07, W. Dobbe &lt=
;<a href=3D"mailto:winfried_mb2@xmsnet.nl">winfried_mb2@xmsnet.nl</a>&gt; w=
rote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><u></u>

 =20
  =20
=20
 <div>
  <div>
   Hi,
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   I&#39;m writing a recipe for package <a href=3D"http://deb.debian.org/de=
bian/pool/main/h/hardening-wrapper/" target=3D"_blank">hardening-check</a> =
.
   <br>
  </div>
  <div>
   This package builds with only a simple Makefile (that has no install tar=
get). The recipe only installs a script hardening-check in /usr/bin.
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   I would like to include this script in our SDK.
   <br>
  </div>
  <div>
   The recipe itself builds fine (bitbake hardening-check-native).
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   But when I add hardening-check-native to IMAGE_INSTALL in my image the b=
uild fails with:
  </div>
  <pre><span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0=
)"><span style=3D"background-color:rgb(255,255,255)">Task do_populate_sdk i=
n <a href=3D"http://myimage.bb" target=3D"_blank">myimage.bb</a> rdepends u=
pon non-existent task do_package_write_rpm i</span>n virtual:native:(...)/r=
ecipes-devtools/hardening-check/<a href=3D"http://hardening-check_2.6.bb" t=
arget=3D"_blank">hardening-check_2.6.bb</a></span><br></span></pre>
  <div>
   Same error when I append the package to <span style=3D"font-family:monos=
pace"><span style=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">TO=
OLCHAIN_HOST_TASK <span style=3D"font-family:-apple-system,BlinkMacSystemFo=
nt,helvetica,sans-serif">instead</span></span></span>.
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   Any idea how to solve this? Do I need to inherit my recipe from somethin=
g?
  </div>
  <div>
   Recipe included below.
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   Thanks in advance for the help!
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   regards,
   <br>
  </div>
  <div>
   Winfried
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   <br>
  </div>
  <div>
   <span style=3D"font-family:monospace"><span style=3D"color:rgb(0,0,0);ba=
ckground-color:rgb(255,255,255)">SUMMARY =3D &quot;Script to check an execu=
table for certain security weaknesses.&quot; </span><br>LICENSE =3D &quot;G=
PLv2&quot; <br>LIC_FILES_CHKSUM =3D &quot;file://debian/copyright;md5=3D06f=
f97d53f05a9b8ce2a416b30f496b9&quot; <br><br>SRC_URI =3D &quot;<a href=3D"ht=
tp://ftp.debian.org/debian/pool/main/h/hardening-wrapper/hardening-wrapper_=
$%7BPV%7D.tar.xz" target=3D"_blank">http://ftp.debian.org/debian/pool/main/=
h/hardening-wrapper/hardening-wrapper_${PV}.tar.xz</a> \ <br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0file://0001-perl_regex.patc=
h \ <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0&quot; <br>SR=
C_URI[md5sum] =3D &quot;47c93c05b4d0199be8df0d35dbd68192&quot; <br>SRC_URI[=
sha256sum] =3D &quot;c5fc46439646d0929a0605e4f3db67e57eefbbf5ceec5a2888440d=
bdf4450224&quot; <br><br>RDEPENDS_${PN} =3D &quot;perl&quot; <br><br>S =3D =
&quot;${WORKDIR}/hardening-wrapper&quot;<br><br>do_patch () { <br>=C2=A0=C2=
=A0=C2=A0cd ${S} <br>=C2=A0=C2=A0=C2=A0patch -p1 -u -i ${WORKDIR}/0001-perl=
_regex.patch <br>} <br><br>do_configure () { <br>=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0# Specify any needed configure commands here <br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0: <br>} <br><br>do_compile () <span sty=
le=3D"color:rgb(0,0,0);background-color:rgb(24,178,178)">{</span> <br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0export DEB_HOST_ARCH=3D`uname -m` <b=
r>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0export DEB_HOST_ARCH_OS=3D`unam=
e -s` <br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0oe_runmake <br><span st=
yle=3D"color:rgb(0,0,0);background-color:rgb(24,178,178)">}</span> <br><br>=
do_install () { <br>=C2=A0=C2=A0=C2=A0install -d ${D}/${bindir} <br>=C2=A0=
=C2=A0=C2=A0install -m 755 ${S}/build-tree/hardening-check ${D}/${bindir} <=
br>} <br><br>BBCLASSEXTEND =3D &quot;native nativesdk&quot;<br></span>
  </div>
 </div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55940): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55940" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55940</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88590330/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88590330/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000fef1fd05d61c5cd6--

