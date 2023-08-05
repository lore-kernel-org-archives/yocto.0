Return-Path: <sveyret@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC06C001DB
	for <webhook@archiver.kernel.org>; Sat,  5 Aug 2023 14:04:31 +0000 (UTC)
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
 by mx.groups.io with SMTP id smtpd.web10.6411.1691244267769456802
 for <yocto@lists.yoctoproject.org>;
 Sat, 05 Aug 2023 07:04:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=jz4t8EU0;
 spf=pass (domain: gmail.com, ip: 209.85.208.41, mailfrom: sveyret@gmail.com)
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5216095a698so876371a12.0
        for <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 07:04:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691244266; x=1691849066;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yKTCujJ2FdgrTUnP//cGokkPdz5eCy4vuT4kyMonwGk=;
        b=jz4t8EU0gSonjdk9/mr0bFSbhNk8bp4pokpKe4QW0NpH7YmuhG0RbrEDV1Ih1cn7jH
         21PzYu4vKIQlD9oahS5zGcaxtruBAEvmNC2gK+7WtUA6CgszeCzrdlTDkVTjhxDk39U3
         0HVcy3uYTyj/XctVmjLtBOgEylAGA8/BROMHj3tGdCdCHTeN/WJ+KDUDuKjFYsoFlkog
         cIcVwJ4KSq+jUW+YtIOAVfLjgGtaQKCDyjbcXrc8SDo6qRdxZbJ/l/XwIhmoOHAY+P2E
         r3TlE0obDl4Et5lRc/0Zklejl2EEY6+o6RQv4+Rm3texLaE9rSVTjtlWzV4sf3TVSaJB
         m+UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691244266; x=1691849066;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yKTCujJ2FdgrTUnP//cGokkPdz5eCy4vuT4kyMonwGk=;
        b=HtdTYH617AJAX/7iy1LKi5q3xsPO6bxUPD22l1oaNK/0UWVParK+obAQ+vm40lXzfp
         KCsFpoFIruBGfqvq64ibwQefsN+POMSpQv1jsDe1NkDd1ZHDWWhjO+uIavk0Hu9putC/
         hYdzny35/4xa3Z7KqgRe4Qodp5bpz9sx6yhOk621SwHRt3zTc4DUaAqCCaJ+aE/t4LsX
         BfD7vQXnSfOLuwjPMOvWjeTJfK9AkLsGJqwY+pYMtQvMQidtWxA2oTLGJuhcL+QNvF50
         TIOlQSsD47rtIoWrH5neOAiQrnmRWAN3AcAJx3CTbQ9lPouqS0B7ncjZVRRZTKHKTvSP
         LedA==
X-Gm-Message-State: ABy/qLaZvMW3xaL7LwAePUg/slvN+r0AnrlgDb7+1s6BLtaMDKbS/X8r
	cmMTzjPv6SZrqPj0W9y8Ml0eg21cceEuLBMgapQRJP/br88=
X-Google-Smtp-Source: APBJJlGT+NAALGJZJpnYBJGA9ZYq1Vuph76cGmhg+O/nEupsnNH+yVkIZetisE00WoiuT0LsTOgg6cB8EJMqO/ePbKg=
X-Received: by 2002:a05:6402:4404:b0:522:e6b0:8056 with SMTP id
 y4-20020a056402440400b00522e6b08056mr12314509eda.4.1691244265840; Sat, 05 Aug
 2023 07:04:25 -0700 (PDT)
MIME-Version: 1.0
References: <17775879C46AA70D.29484@lists.yoctoproject.org>
In-Reply-To: <17775879C46AA70D.29484@lists.yoctoproject.org>
From: =?UTF-8?Q?St=C3=A9phane_Veyret?= <sveyret@gmail.com>
Date: Sat, 5 Aug 2023 16:04:14 +0200
Message-ID: <CAFs+hh7nisDjEG2C0cF9i2gR+xVhtyBGSCr2v4xWRgQ1Cz-5Lw@mail.gmail.com>
Subject: Re: [yocto] Questions on multiconfig
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000b1a53406022d7d19"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 05 Aug 2023 14:04:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60715

--000000000000b1a53406022d7d19
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I=E2=80=99m answering to myself in case some other people have the same err=
or.
My problem mostly came from my distro, which was the same for main image
and initramfs, and which was using systemd. Because systemd depends on the
kernel, and the kernel needs the embedded initramfs, there was a circular
dependency.
The correction was to create a specific distro for initramfs, using busybox
as init manager. And of course, configuring this distro in the
multiconfig/initramfs.conf file.

So, I can now answer to some of my questions:

Le mar. 1 ao=C3=BBt 2023 =C3=A0 21:17, St=C3=A9phane Veyret via lists.yocto=
project.org
<sveyret=3Dgmail.com@lists.yoctoproject.org> a =C3=A9crit :

> First, I created a multiconfig/initramfs.conf file in my private layer
> containing:
>
> TMPDIR =3D "${TOPDIR}/tmp-initramfs"
> BUSYBOX_MY_INITRAMFS_CONFIG =3D "-initramfs"
>
> Then, I created a busybox_%.bbappend with this content:
>
> SRC_URI +=3D "file://fragment.cfg;subdir=3Dbusybox-${PV}"
> BUSYBOX_MY_INITRAMFS_CONFIG ?=3D ""
> FILESEXTRAPATHS:prepend :=3D
> "${THISDIR}/${BPN}${BUSYBOX_MY_INITRAMFS_CONFIG}:"
>
> First question: is this the right way to create and use a custom variable=
?
> I want the recipe to choose the good fragment depending on
> BUSYBOX_MY_INITRAMFS_CONFIG, but I=E2=80=99m not sure it is really workin=
g.
>

Yes, the BUSYBOX_MY_INITRAMFS_CONFIG is used correctly, giving me 2
different busybox configuration, one for the initramfs and one for the main
image.


> After that, I added the following line in distro.conf:
>
> BBMULTICONFIG =3D "initramfs"
>
> Second question: documents state that this variable should be in
> local.conf, but it seems to also work in distro.conf; am I correct or is =
it
> creating unwanted side effects?
>

I didn=E2=80=99t notice any side effect. Note that I=E2=80=99m actually usi=
ng an appending
syntax (+=3D) so that it is still possible to define additionnal multiconfi=
g
if the build directory.


> First of all, I am spammed with messages like:
>
> NOTE: Deferred task
> mc:initramfs:/home/stephane/Developpements/yocto/sources/poky/meta/recipe=
s-devtools/qemu/qemuwrapper-cross_1.0.bb:do_package_qa
> now buildable
> NOTE: Deferred task
> mc:initramfs:virtual:native:/home/stephane/Developpements/yocto/sources/p=
oky/meta/recipes-devtools/opkg/opkg_0.6.1.bb:do_populate_sysroot
> now buildable
>

I am still spammed by all these messages. I=E2=80=99d like to understand wh=
y. And
if possible, I=E2=80=99d also like to mute the messages I=E2=80=99ve seen a=
nd decided they
are not important. It doesn=E2=80=99t seem possible, so I may send a patch =
in the
future for that case.


> Other point, it seems to build a full image in the initramfs
> configuration, while I expected that it would only build the initramfs
> image. My first attempt (when the tmp-initramfs directory was empty) took
> ages to build and I saw it tried to build the Linux kernel in it.
>

No, it took ages because it was using systemd which is rather big, and
which has a dependency on the kernel.


> And on top of that, it fails because when building the kernel for
> initramfs configuration, it cannot find the initramfs image. Which sounds
> logical, because it is currently building the initramfs. So there seem to
> be a kind of circular dependencies=E2=80=A6
>

The circular dependency was due to systemd. It has now disappeared=E2=80=A6

--=20
Bien cordialement, / Plej kore,

St=C3=A9phane Veyret

--000000000000b1a53406022d7d19
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,</div><div><br></div><div>I=E2=80=99m answering=
 to myself in case some other people have the same error.</div><div>My prob=
lem mostly came from my distro, which was the same for main image and initr=
amfs, and which was using systemd. Because systemd depends on the kernel, a=
nd the kernel needs the embedded initramfs, there was a circular dependency=
.</div><div>The correction was to create a specific distro for initramfs, u=
sing busybox as init manager. And of course, configuring this distro in the=
 multiconfig/initramfs.conf file.</div><div><br></div><div>So, I can now an=
swer to some of my questions:</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0mar. 1 ao=C3=BBt 2023 =C3=A0=C2=A021:=
17, St=C3=A9phane Veyret via <a href=3D"http://lists.yoctoproject.org">list=
s.yoctoproject.org</a> &lt;sveyret=3D<a href=3D"mailto:gmail.com@lists.yoct=
oproject.org">gmail.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=C2=A0:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"=
><div>First, I created a multiconfig/initramfs.conf file in my private laye=
r containing:</div><div><br></div><div>TMPDIR =3D &quot;${TOPDIR}/tmp-initr=
amfs&quot;<br>BUSYBOX_MY_INITRAMFS_CONFIG =3D &quot;-initramfs&quot;<br><di=
v><br></div><div>Then, I created a busybox_%.bbappend with this content:</d=
iv><div><br></div><div>SRC_URI +=3D &quot;file://fragment.cfg;subdir=3Dbusy=
box-${PV}&quot;<br>BUSYBOX_MY_INITRAMFS_CONFIG=C2=A0?=3D &quot;&quot;<br>FI=
LESEXTRAPATHS:prepend :=3D &quot;${THISDIR}/${BPN}${BUSYBOX_MY_INITRAMFS_CO=
NFIG}:&quot;<br></div><div><br></div><div>First question: is this the right=
 way to create and use a custom variable? I want the recipe to choose the g=
ood fragment depending on BUSYBOX_MY_INITRAMFS_CONFIG, but I=E2=80=99m not =
sure it is really working.</div></div></div></blockquote><div><br></div><di=
v>Yes, the BUSYBOX_MY_INITRAMFS_CONFIG is used correctly, giving me 2 diffe=
rent busybox configuration, one for the initramfs and one for the main imag=
e.</div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">=
<div dir=3D"ltr"><div>After that, I added the following line in distro.conf=
:<br></div><div><br></div><div>BBMULTICONFIG =3D &quot;initramfs&quot;<br><=
/div><div><br></div><div>Second question: documents state that this variabl=
e should be in local.conf, but it seems to also work in distro.conf; am I c=
orrect or is it creating unwanted side effects?</div></div></blockquote><di=
v><br></div><div>I didn=E2=80=99t notice any side effect. Note that I=E2=80=
=99m actually using an appending syntax (+=3D) so that it is still possible=
 to define additionnal multiconfig if the build directory.</div><div>=C2=A0=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;b=
order-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><d=
iv>First of all, I am spammed with messages like:<br></div><div><br></div><=
div>NOTE: Deferred task mc:initramfs:/home/stephane/Developpements/yocto/so=
urces/poky/meta/recipes-devtools/qemu/qemuwrapper-cross_1.0.bb:do_package_q=
a now buildable<br>NOTE: Deferred task mc:initramfs:virtual:native:/home/st=
ephane/Developpements/yocto/sources/poky/meta/recipes-devtools/opkg/opkg_0.=
6.1.bb:do_populate_sysroot now buildable<br></div></div></blockquote><div><=
br></div><div>I am still spammed by all these messages. I=E2=80=99d like to=
 understand why. And if possible, I=E2=80=99d also like to mute the message=
s I=E2=80=99ve seen and decided they are not important. It doesn=E2=80=99t =
seem possible, so I may send a patch in the future for that case.</div><div=
>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"=
ltr"><div></div><div>Other point, it seems to build a full image in the ini=
tramfs configuration, while I expected that it would only build the initram=
fs image. My first attempt (when the tmp-initramfs directory was empty) too=
k ages to build and I saw it tried to build the Linux kernel in it.<br></di=
v></div></blockquote><div><br></div><div>No, it took ages because it was us=
ing systemd which is rather big, and which has a dependency on the kernel.<=
/div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div></div><div>And on top of that, it fails because when bui=
lding the kernel for initramfs configuration, it cannot find the initramfs =
image. Which sounds logical, because it is currently building the initramfs=
. So there seem to be a kind of circular dependencies=E2=80=A6<br></div></d=
iv></blockquote><div><br></div><div>The circular dependency was due to syst=
emd. It has now disappeared=E2=80=A6</div></div><div><br></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature">Bien cordialement, / Plej kore,<br><br>St=C3=A9phane Veyret</div>=
</div>

--000000000000b1a53406022d7d19--

