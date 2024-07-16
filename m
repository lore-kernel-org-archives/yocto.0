Return-Path: <ecordonnier@snap.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC379C3DA49
	for <webhook@archiver.kernel.org>; Tue, 16 Jul 2024 14:38:30 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web11.12429.1721140709067124958
 for <yocto@lists.yoctoproject.org>;
 Tue, 16 Jul 2024 07:38:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@snap.com header.s=google header.b=R39LK7xw;
 spf=pass (domain: snapchat.com, ip: 209.85.218.52, mailfrom: ecordonnier@snapchat.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a77d85f7fa3so889435066b.0
        for <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 07:38:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snap.com; s=google; t=1721140707; x=1721745507; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=oZjc39XuDRV1n3Yl6IMUoiqvEZWTxPEB37Whr5SPlRk=;
        b=R39LK7xwIx5+x0zNA1/V8ugGY13/FlZKL6f8etV4wQE/k++Z/DrQNmy6/uoDRj32U0
         wbCS8PTsVeHjG+oq5TfFJbGjq7xwRcTvqP2f/2OGiripb6ASmTKfsEDEuJuwHx8kaNRD
         QXj+uk+Jk3St+ld8vsyblkAfqIPwrphcOq//U=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721140707; x=1721745507;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oZjc39XuDRV1n3Yl6IMUoiqvEZWTxPEB37Whr5SPlRk=;
        b=UGU74jSc1BAcq4M9QhJcKI/tQTmPJanHMDogxd+6n0if28aTzDx3A6mkRB5IgzmwbH
         a0O4iJr9TWsdlT85Mye2rpNkcbU5B25CYQPaQxZCfxNbCBjXdgLKgp5SYfghJ3aj335u
         bYrh05eITSRRLLlEOlMNHSfyTm1YWkyEFZJwnsURW7rNmuuTtvYlhzfeIkrBvAyDCiu8
         4uFXMLXdl9U1hNqSXEwAEklCmNVN2sz+RspvwYxjJUbA3VFW4pxxCPQjdSl3PgFznJ+V
         kNWHdehvXb43DoAu/5OqCmZyQRkL2871pScxMkqt3CBkI80yibdidar9//tNc6riSWzw
         siTg==
X-Gm-Message-State: AOJu0YzVh3WVJF/F3SUQIueqBbNJKzraLaBthZ3H9ex+SKolojYKzKKh
	a2gJxX2b3HVntk5MCW9yah8suMUh2HvRnJELJGe53WXvL61RolPs31OKHTYdk8L+wlFD0ID0vUP
	w9HhY4sGpfu4W9Bk7Qqvi67wsVbra+ugdfmYqbQhy/zUfggQdl+oRkA==
X-Google-Smtp-Source: AGHT+IFOmv3Dmt3s4HLKhFQhxxR6QM8VEhmuWwQXlo/mxdOSCiE6aq3x9i2uBKJtO3n7NlyaFJQ25m5BHSceLHNHyn8=
X-Received: by 2002:a17:906:369a:b0:a6f:6df5:a264 with SMTP id
 a640c23a62f3a-a79eda4204amr194714966b.1.1721140706922; Tue, 16 Jul 2024
 07:38:26 -0700 (PDT)
MIME-Version: 1.0
References: <1619D009AA8C9E469331A8EE22395AEC01106D2BD2@Exchange2013.PRIMES.local>
In-Reply-To: <1619D009AA8C9E469331A8EE22395AEC01106D2BD2@Exchange2013.PRIMES.local>
From: Etienne Cordonnier <ecordonnier@snap.com>
Date: Tue, 16 Jul 2024 16:38:15 +0200
Message-ID: <CAHUKmYbw6ssEshjTFaU7xkLWW+=ZnLmHqqfTh=XH1YZooWdMoQ@mail.gmail.com>
Subject: Re: [yocto] kernel modules
To: yocto@lists.yoctoproject.org, G.Kautzmann@primes.de
Content-Type: multipart/alternative; boundary="00000000000071fba8061d5e4c02"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Jul 2024 14:38:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63513

--00000000000071fba8061d5e4c02
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Gerd,
as far as I know, this should work exactly the same way in Dunfell and
Scarthgap. You should perform the usual checks to debug the issue:
- double-check that your image depends on the kernel modules using bitbake
-g core-image-minimal (if not use bitbake -e to check if something is maybe
modifying IMAGE_INSTALL, etc.)
- try bitbake -c clean sstate hello && bitbake hello to see if this
populates the sysroot
- if everything else, keep the downloads directory and rm -rf the rest,
then build core-image-minimal again

=C3=89tienne

On Tue, Jul 16, 2024 at 3:00=E2=80=AFPM Gerd Kautzmann via lists.yoctoproje=
ct.org
<G.Kautzmann=3DPRIMES.de@lists.yoctoproject.org> wrote:

> Hello ML members,
>
> I used to include some drivers for a camera chip for RaspberryPi4 in Yoct=
o
> dunfell.
>
> Now I=E2=80=99m trying the same under Yicto Scarthgap but it doesn=E2=80=
=99t work.
>
>
> dunfell
>
> ---------
>
> find tmp/work -name my_driver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs=
/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/my_driver/my_dr=
iver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/sysroot-destdir=
/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/image/lib/modul=
es/5.4.72-v7l/extra/my_driver/my_driver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/package/lib/mod=
ules/5.4.72-v7l/extra/my_driver/my_driver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0-r0/packages-split/=
kernel-module-vc-mipi-common-5.4.72-v7l/lib/modules/5.4.72-v7l/extra/my_dri=
ver/my_driver.ko
>
>
> The kernel modules are compiled but they are never transferred or
> installed in the image
>
>
>
> scarthgap
>
> ------------
>
> find tmp/work -name my_driver.ko
>
>
> tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1.0/my_driver/my_drive=
r.ko
>
>
>
> Under dunfell I used an expanded core-image-minimal for my system:
> ------------
>
> cat meta/recipes-core/images/core-image-minimal.bb
>
>
>
> SUMMARY =3D "Small image with own kernel module"
>
>
>
> IMAGE_INSTALL =3D "packagegroup-core-boot ${CORE_IMAGE_EXTRA_INSTALL}"
>
> IMAGE_INSTALL +=3D "kernel-modules v4l-utils hello-mod hello autoconf"
>
> IMAGE_INSTALL +=3D "libgpiod"
>
>
>
> KERNEL_MODULE_AUTOLOAD +=3D "hello"
>
> =E2=80=A6
> ------------
>
>
> I tried different changes on my conf/local.conf without any changes.
>
> I built with:
> bitbake core-image-minimal -c cleanall
> bitbake core-image-minimal
>
> But nothing changed.
>
>
>
>
>
> *PRIMES GmbH    *Max-Planck-Str. 2    64319 Pfungstadt   Germany
>
> T +49 6157 9878 0
>
> CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag
>
> Local Court: Darmstadt HRB 5134
>
> g.kautzmann@primes.de    www.primes.de
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63512):
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_message_63512&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkIC=
C2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3Dv9D15pWAhFSR=
eK1xw5OGOVEnxuekS2Nhlknnv_TbuIX8AlXwW6Ps1pbBoLKyOb1_&s=3DFYrwVYvyu-uSKSgh7j=
lFpsqvx9GOhTUIBdq7CZ5NlDo&e=3D
> Mute This Topic:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_mt_107251140_7048771&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC=
2epckfdiw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3Dv9D15pWAhFSRe=
K1xw5OGOVEnxuekS2Nhlknnv_TbuIX8AlXwW6Ps1pbBoLKyOb1_&s=3D4afPSjmes-A7cdSV70V=
aJxtQcIj2X1ES5xzt0ezDQ-s&e=3D
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://urldefense.proofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject=
.org_g_yocto_unsub&d=3DDwIFaQ&c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfd=
iw&r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&m=3Dv9D15pWAhFSReK1xw5OG=
OVEnxuekS2Nhlknnv_TbuIX8AlXwW6Ps1pbBoLKyOb1_&s=3DW_Mpx9Wj5PoD8AFqGW6r1pZZ7M=
0ee4qqH_RULBDbSG0&e=3D
> [ecordonnier@snap.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000071fba8061d5e4c02
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Gerd,<br>as far as I know, this should work exactly the=
 same way in Dunfell and Scarthgap. You should perform the usual checks to =
debug the issue:<br>- double-check that your image depends on the kernel mo=
dules using bitbake -g core-image-minimal (if not use bitbake -e to check i=
f something is maybe modifying IMAGE_INSTALL, etc.)<br>- try bitbake -c cle=
an sstate hello &amp;&amp; bitbake hello to see if this populates the sysro=
ot<br>- if everything else, keep the downloads directory and rm -rf the res=
t, then build core-image-minimal again<br><br>=C3=89tienne</div><br><div cl=
ass=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jul 16, 2=
024 at 3:00=E2=80=AFPM Gerd Kautzmann via <a href=3D"http://lists.yoctoproj=
ect.org">lists.yoctoproject.org</a> &lt;G.Kautzmann=3D<a href=3D"mailto:PRI=
MES.de@lists.yoctoproject.org">PRIMES.de@lists.yoctoproject.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div class=
=3D"msg4098885771716789682">





<div lang=3D"DE">
<div class=3D"m_4098885771716789682WordSection1">
<p class=3D"MsoNormal">Hello ML members,<br>
<br>
I used to include some drivers for a camera chip for RaspberryPi4 in Yocto =
dunfell.<br>
<br>
Now I=E2=80=99m trying the same under Yicto Scarthgap but it doesn=E2=80=99=
t work.<br>
<br>
<br>
dunfell<u></u><u></u></p>
<p class=3D"MsoNormal">---------<u></u><u></u></p>
<p class=3D"MsoNormal">find tmp/work -name my_driver.ko<u></u><u></u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/core-image-=
minimal/1.0-r0/rootfs/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<u=
></u><u></u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/my_driver/my_driver.ko<u></u><u></u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/sysroot-destdir/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<u=
></u><u></u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/image/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<u></u><u></=
u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/package/lib/modules/5.4.72-v7l/extra/my_driver/my_driver.ko<u></u><u>=
</u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0-r0/packages-split/kernel-module-vc-mipi-common-5.4.72-v7l/lib/modules/5.=
4.72-v7l/extra/my_driver/my_driver.ko<u></u><u></u></p>
<p class=3D"MsoNormal"><br>
The kernel modules are compiled but they are never transferred or installed=
 in the image<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">scarthgap<u></u><u></u></p>
<p class=3D"MsoNormal">------------<u></u><u></u></p>
<p class=3D"MsoNormal">find tmp/work -name my_driver.ko<u></u><u></u></p>
<p class=3D"MsoNormal">tmp/work/raspberrypi4-poky-linux-gnueabi/hello-mod/1=
.0/my_driver/my_driver.ko<br>
<br>
<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9pt;font-fam=
ily:Arial,sans-serif;color:black">Under dunfell I used an expanded core-ima=
ge-minimal for my system:<br>
</span>------------<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black">cat meta/recipes-core/images/<a href=3D"http://core-image-minima=
l.bb" target=3D"_blank">core-image-minimal.bb</a><u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black">SUMMARY =3D &quot;Small image with own kernel module&quot;
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black">IMAGE_INSTALL =3D &quot;packagegroup-core-boot ${CORE_IMAGE_EXTR=
A_INSTALL}&quot;
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black">IMAGE_INSTALL +=3D &quot;kernel-modules v4l-utils hello-mod hell=
o autoconf&quot;
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black">IMAGE_INSTALL +=3D &quot;libgpiod&quot;
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"EN-US" style=3D"font-size:9pt;font-fam=
ily:Arial,sans-serif;color:black">KERNEL_MODULE_AUTOLOAD +=3D &quot;hello&q=
uot;<br>
<br>
=E2=80=A6<br>
</span>------------<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black"><br>
I tried different changes on my conf/local.conf without any changes.<br>
<br>
I built with:<br>
bitbake core-image-minimal -c cleanall<br>
bitbake core-image-minimal<br>
<br>
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:1pt;margin-l=
eft:0cm">
<span lang=3D"EN-US" style=3D"font-size:9pt;font-family:Arial,sans-serif;co=
lor:black">But nothing changed.<br>
<br>
<br>
<br>
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt"><span style=3D"font-siz=
e:2pt;font-family:Arial,sans-serif;color:rgb(56,55,57)"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<b><span lang=3D"EN-GB" style=3D"font-size:8pt;font-family:Arial,sans-serif=
;color:rgb(79,77,81)">PRIMES GmbH=C2=A0=C2=A0=C2=A0
</span></b><span lang=3D"EN-US" style=3D"font-size:8pt;font-family:Arial,sa=
ns-serif;color:rgb(79,77,81)">Max-Planck-Str.
</span><span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(=
79,77,81)">2<b>=C2=A0=C2=A0=C2=A0
</b>64319 Pfungstadt=C2=A0=C2=A0 Germany=C2=A0=C2=A0=C2=A0 <u></u><u></u></=
span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(79,77,8=
1)">T +49 6157 9878 0=C2=A0=C2=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(79,77,8=
1)">CEO: Dr.-Ing. Reinhard Kramer, Dr. rer. nat. Thomas Umschlag=C2=A0=C2=
=A0=C2=A0
<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-left:5.65pt;line-height:11.5pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif;color:rgb(79,77,8=
1)">Local Court: Darmstadt HRB 5134<u></u><u></u></span></p>
<p class=3D"MsoNormal" style=3D"margin-right:0cm;margin-bottom:12pt;margin-=
left:5.65pt;line-height:11.1pt">
<span style=3D"font-size:8pt;font-family:Arial,sans-serif"><a href=3D"mailt=
o:g.kautzmann@primes.de" target=3D"_blank"><span style=3D"color:rgb(5,99,19=
3)">g.kautzmann@primes.de</span></a></span><span style=3D"font-size:8pt;col=
or:rgb(79,77,81)">=C2=A0=C2=A0=C2=A0
</span><span><a title=3D"blocked::http://www.primes.de/
http://www.primes.de/"><span style=3D"font-size:8pt;font-family:Arial,sans-=
serif;color:rgb(79,77,81);text-decoration:none">www.primes.de</span></a></s=
pan><span style=3D"font-size:8pt;color:rgb(79,77,81)">=C2=A0</span><span><u=
></u><u></u></span></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
</div>

<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#63512): <a href=3D"https://urldefense.proofpoint.com/v2=
/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_63512&amp;d=3DDwI=
FaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMI=
GRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3Dv9D15pWAhFSReK1xw5OGOVEnxuekS2Nhlk=
nnv_TbuIX8AlXwW6Ps1pbBoLKyOb1_&amp;s=3DFYrwVYvyu-uSKSgh7jlFpsqvx9GOhTUIBdq7=
CZ5NlDo&amp;e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.p=
roofpoint.com/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_message_6=
3512&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp=
;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3Dv9D15pWAhFSReK1xw5=
OGOVEnxuekS2Nhlknnv_TbuIX8AlXwW6Ps1pbBoLKyOb1_&amp;s=3DFYrwVYvyu-uSKSgh7jlF=
psqvx9GOhTUIBdq7CZ5NlDo&amp;e=3D</a> <br>
Mute This Topic: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dht=
tps-3A__lists.yoctoproject.org_mt_107251140_7048771&amp;d=3DDwIFaQ&amp;c=3D=
ncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsR=
ih1DULJTKUkSGa66m67E&amp;m=3Dv9D15pWAhFSReK1xw5OGOVEnxuekS2Nhlknnv_TbuIX8Al=
XwW6Ps1pbBoLKyOb1_&amp;s=3D4afPSjmes-A7cdSV70VaJxtQcIj2X1ES5xzt0ezDQ-s&amp;=
e=3D" rel=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.co=
m/v2/url?u=3Dhttps-3A__lists.yoctoproject.org_mt_107251140_7048771&amp;d=3D=
DwIFaQ&amp;c=3DncDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonV=
uMIGRfPx_Qj9TsRih1DULJTKUkSGa66m67E&amp;m=3Dv9D15pWAhFSReK1xw5OGOVEnxuekS2N=
hlknnv_TbuIX8AlXwW6Ps1pbBoLKyOb1_&amp;s=3D4afPSjmes-A7cdSV70VaJxtQcIj2X1ES5=
xzt0ezDQ-s&amp;e=3D</a> <br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://urldefense.proofpoint.com/v2/url?u=3Dhttps-=
3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3DncDTmphkJTv=
jIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRih1DULJTKUk=
SGa66m67E&amp;m=3Dv9D15pWAhFSReK1xw5OGOVEnxuekS2Nhlknnv_TbuIX8AlXwW6Ps1pbBo=
LKyOb1_&amp;s=3DW_Mpx9Wj5PoD8AFqGW6r1pZZ7M0ee4qqH_RULBDbSG0&amp;e=3D" rel=
=3D"noreferrer" target=3D"_blank">https://urldefense.proofpoint.com/v2/url?=
u=3Dhttps-3A__lists.yoctoproject.org_g_yocto_unsub&amp;d=3DDwIFaQ&amp;c=3Dn=
cDTmphkJTvjIDPh0hpF_4vCHvabgGkICC2epckfdiw&amp;r=3DAhkbNonVuMIGRfPx_Qj9TsRi=
h1DULJTKUkSGa66m67E&amp;m=3Dv9D15pWAhFSReK1xw5OGOVEnxuekS2Nhlknnv_TbuIX8AlX=
wW6Ps1pbBoLKyOb1_&amp;s=3DW_Mpx9Wj5PoD8AFqGW6r1pZZ7M0ee4qqH_RULBDbSG0&amp;e=
=3D</a>=C2=A0 [<a href=3D"mailto:ecordonnier@snap.com" target=3D"_blank">ec=
ordonnier@snap.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</div></blockquote></div>

--00000000000071fba8061d5e4c02--

