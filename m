Return-Path: <ayoub.zaki@googlemail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8724C77B7C
	for <webhook@archiver.kernel.org>; Fri, 12 May 2023 09:24:21 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.19904.1683883458777898321
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 May 2023 02:24:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@googlemail.com header.s=20221208 header.b=T6ZBn/WE;
 spf=pass (domain: googlemail.com, ip: 209.85.128.182, mailfrom: ayoub.zaki@googlemail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-55a20a56a01so171654527b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 02:24:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1683883458; x=1686475458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vzpwDi98eKIWhcJZxofQsCl2XcdXH96euyiAipgXp0s=;
        b=T6ZBn/WEWWJHs3CFPzK72qTPIi3QGWdWiM8ioOqhQaDxBIGcTpBsdX3OL6n3M6/YdL
         QGHNwQnA2RrhUmJ3G95aMvXB1vfhzYiQN3XXHXLGGu5MaKoX+rh2C54y6q1dh5PQvA97
         VHTooHbEVyU3nbta3I37MZOnCofR32/DPnpu8++8IwkOBbj0/aIjz1QU5gFD5zWWnnmq
         nwLFwqGeKe10lc5YIPKim7JqIuSG/Kod+u65wIZn9UKrRpcWaz9pAkpp+pvyNhQD0fFQ
         tWvoX3lvKOZJtpztIggb3ggSyGA058Ec6n+NTbFDy40eDTSlTG5QVkZuqqcjFyfNXNSs
         vtwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683883458; x=1686475458;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vzpwDi98eKIWhcJZxofQsCl2XcdXH96euyiAipgXp0s=;
        b=BNwmrxAfVnYbG/mrO55bR3UNBVbyySsvx6f34SYJVUi/YI5sqrRhpHdfk3rWc4P22i
         XHez25WASrd1SYhb2AcBodqZYuN1R3oRdDhvnJPiqnsUPy9AE1nNOuVgTPzmWaBkP0dL
         xn0F3SZMlcVg8uL3uNk1V6hTVYeNROYRlPhH9KC37ND3VsIPCMBNd9PB6oQ/EqAhiJxL
         YVMhY4b1kRQa3lTfv8o+u+MKYU6sWRbBIthSd3iaHcFgbSuQ2EBi/mfaV5iMqzd/4VnN
         8xLkQjV4ONSEmhLf9vaWpKv1Ff/LfddRpTY221hFpyIco1I7VM07rNnP/G1R43OeFkVo
         yvSg==
X-Gm-Message-State: AC+VfDw7ov1lWGSDSp+7Kmmhu33/6Tkr3YtvObBUadYJcmAflwlIlRmJ
	ldwNZx8fPdp4IdpnMlL3k5vIwizpameJCCeHNVQ=
X-Google-Smtp-Source: ACHHUZ7xJ/1Jbx1Ug+9DL8le+74MyZqapf1zY7SQIRdQRUnbBI0UObw7owrfl0k4VUTFv6UIC8JErS2kf1qUADss+Ew=
X-Received: by 2002:a0d:d593:0:b0:556:c776:96a2 with SMTP id
 x141-20020a0dd593000000b00556c77696a2mr25093494ywd.44.1683883457788; Fri, 12
 May 2023 02:24:17 -0700 (PDT)
MIME-Version: 1.0
References: <CA+-BmJaCpaKURf0zrWRwY2gUfNkJFSY2mwiBJMhWbqb8W4_Vxw@mail.gmail.com>
 <C00CFD2F-FCE6-4E73-AF4C-D856176267A6@arm.com> <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
In-Reply-To: <CAMKF1soReGst1zJRN6_5CVicCK2BW4F_39Fth=yePQT2Y9NejA@mail.gmail.com>
From: Ayoub Zaki <ayoub.zaki@googlemail.com>
Date: Fri, 12 May 2023 11:24:06 +0200
Message-ID: <CA+-BmJazdjxrFFZjstWfZiTX5VZGiJuK-7Mqoo81Yr9LgWNZVw@mail.gmail.com>
Subject: Re: [yocto] openssl/libffi build broken for musl/cortex-m7
To: Khem Raj <raj.khem@gmail.com>
Cc: Ross Burton <ross.burton@arm.com>, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000583fac05fb7bab54"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 12 May 2023 09:24:21 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60001

--000000000000583fac05fb7bab54
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hey guys thanks for the hints,

Ross' suggestion to remove opkg-utils hard coded build dependency on python
solved the issue, but I noticed that there is a similar issue
if PACKAGE_CLASSES =3D "package_deb" is selected.

wouldn't it be possible to disable in yocto completely package management
e.g PACKAGE_CLASSES =3D "" ?


Another issue I faced since my target is MMU less is that busybox enforce
shared lib build:

http://cgit.openembedded.org/openembedded-core/tree/meta/recipes-core/busyb=
ox/busybox.inc?h=3Dkirkstone#n115

what is the reason behind this? shouldn't yocto support mmu less target ?






On Thu, May 11, 2023 at 6:19=E2=80=AFPM Khem Raj <raj.khem@gmail.com> wrote=
:

> this is known - see https://github.com/libffi/libffi/issues/267
> someone needs to fix it for thumb-only mode.
>
> On Thu, May 11, 2023 at 6:04=E2=80=AFAM Ross Burton <ross.burton@arm.com>=
 wrote:
> >
> > On 11 May 2023, at 10:37, Ayoub Zaki via lists.yoctoproject.org
> <ayoub.zaki=3Dgooglemail.com@lists.yoctoproject.org> wrote:
> > > I'm trying to build a simple yocto (Kirkstone) initramfs image
> containing only busybox for a STM32Fx cortex M7 based MCU:
> > >
> > >
> https://www.st.com/en/microcontrollers-microprocessors/stm32f7-series.htm=
l
> > >
> > > U-boot and Kernel are building and running fine so far.
> > >
> > > The initramfs image Build breaks at openssl/libffi package which I
> DIDN'T enable and not required in my  image. Probably Build dependencies
> for some other packages:
> >
> > It is required, as it=E2=80=99s being built.  This may not be intention=
al so you
> should definitely have a look at what you=E2=80=99re putting into your in=
itramfs,
> and if there are any optional dependencies you can remove.
> >
> > > Is this problem known ? Any suggestions on how to fix this?
> > > 2023-05-11 11:25:31 - INFO     - MACHINE              =3D
> "stm32f769-disco"
> >
> > Is this a custom machine?  Can you share it?
> >
> > > 2023-05-11 11:25:34 - INFO     - | ../libffi-3.4.4/src/arm/sysv.S:104=
:
> Error: selected processor does not support ARM opcodes
> >
> > The M7 doesn=E2=80=99t support ARM opcodes, so if you need libffi then =
you=E2=80=99ll
> need to port it.  Hopefully you don=E2=80=99t actually need libffi if you=
 build
> less into your initramfs.
> >
> > > 2023-05-11 11:25:36 - INFO     - |
> /workspace/meta-stm32f7x/build/tmp/work/cortexm7-poky-linux-musleabi/open=
ssl/3.0.8-r0/recipe-sysroot-native/usr/bin/arm-poky-linux-musleabi/../../li=
bexec/arm-poky-linux-musleabi/gcc/arm-poky-linux-musleabi/11.3.0/ld/workspa=
ce/meta-stm32f7x/build/tmp/work/cortexm7-poky-linux-musleabi/openssl/3.0.8-=
r0/recipe-sysroot-native/usr/bin/arm-poky-linux-musleabi/../../libexec/arm-=
poky-linux-musleabi/gcc/arm-poky-linux-musleabi/11.3.0/ld:
> error: libcrypto.a(libcrypto-lib-armv4-gf2m.o): conflicting architecture
> profiles A/M
> >
> > For some reason openssl is trying to link A and M code together, which
> isn=E2=80=99t right. Hopefully you can also remove OpenSSL from your imag=
e.
> >
> >
> > Ross
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> > Links: You receive all messages sent to this group.
> > You automatically follow any topics you start or reply to.
> > View/Reply Online (#59987):
> https://lists.yoctoproject.org/g/yocto/message/59987
> > Mute This Topic: https://lists.yoctoproject.org/mt/98824124/1997914
> > Group Owner: yocto+owner@lists.yoctoproject.org
> > Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/6692173/1997914/1837948400/x=
yzzy
> [raj.khem@gmail.com]
> > -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> >
>

--000000000000583fac05fb7bab54
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hey guys thanks for the hints,=C2=A0<div><br></div><div>Ro=
ss&#39; suggestion to remove opkg-utils hard coded build dependency on pyth=
on solved the issue, but I noticed that there is a similar issue if=C2=A0PA=
CKAGE_CLASSES =3D &quot;package_deb&quot; is selected.</div><div><br></div>=
<div>wouldn&#39;t it be possible to disable in yocto completely package man=
agement e.g PACKAGE_CLASSES =3D &quot;&quot; ?</div><div><br></div><div><br=
></div><div>Another issue I faced since my target is MMU less is that busyb=
ox enforce shared lib build:</div><div><br></div><div><a href=3D"http://cgi=
t.openembedded.org/openembedded-core/tree/meta/recipes-core/busybox/busybox=
.inc?h=3Dkirkstone#n115">http://cgit.openembedded.org/openembedded-core/tre=
e/meta/recipes-core/busybox/busybox.inc?h=3Dkirkstone#n115</a><br></div><di=
v><br></div><div>what is the reason behind=C2=A0this? shouldn&#39;t yocto=
=C2=A0support mmu less target ?</div><div><br></div><div><br></div><div><br=
></div><div><br></div><div><br></div></div><br><div class=3D"gmail_quote"><=
div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 11, 2023 at 6:19=E2=80=AFP=
M Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>=
&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px =
0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">this=
 is known - see <a href=3D"https://github.com/libffi/libffi/issues/267" rel=
=3D"noreferrer" target=3D"_blank">https://github.com/libffi/libffi/issues/2=
67</a><br>
someone needs to fix it for thumb-only mode.<br>
<br>
On Thu, May 11, 2023 at 6:04=E2=80=AFAM Ross Burton &lt;<a href=3D"mailto:r=
oss.burton@arm.com" target=3D"_blank">ross.burton@arm.com</a>&gt; wrote:<br=
>
&gt;<br>
&gt; On 11 May 2023, at 10:37, Ayoub Zaki via <a href=3D"http://lists.yocto=
project.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a=
> &lt;ayoub.zaki=3D<a href=3D"mailto:googlemail.com@lists.yoctoproject.org"=
 target=3D"_blank">googlemail.com@lists.yoctoproject.org</a>&gt; wrote:<br>
&gt; &gt; I&#39;m trying to build a simple yocto (Kirkstone) initramfs imag=
e containing only busybox for a STM32Fx cortex M7 based MCU:<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://www.st.com/en/microcontrollers-microprocessors=
/stm32f7-series.html" rel=3D"noreferrer" target=3D"_blank">https://www.st.c=
om/en/microcontrollers-microprocessors/stm32f7-series.html</a><br>
&gt; &gt;<br>
&gt; &gt; U-boot and Kernel are building and running fine so far.<br>
&gt; &gt;<br>
&gt; &gt; The initramfs image Build breaks at openssl/libffi package which =
I DIDN&#39;T enable and not required in my=C2=A0 image. Probably Build depe=
ndencies for some other packages:<br>
&gt;<br>
&gt; It is required, as it=E2=80=99s being built.=C2=A0 This may not be int=
entional so you should definitely have a look at what you=E2=80=99re puttin=
g into your initramfs, and if there are any optional dependencies you can r=
emove.<br>
&gt;<br>
&gt; &gt; Is this problem known ? Any suggestions on how to fix this?<br>
&gt; &gt; 2023-05-11 11:25:31 - INFO=C2=A0 =C2=A0 =C2=A0- MACHINE=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =3D &quot;stm32f769-disco&quot;<br>
&gt;<br>
&gt; Is this a custom machine?=C2=A0 Can you share it?<br>
&gt;<br>
&gt; &gt; 2023-05-11 11:25:34 - INFO=C2=A0 =C2=A0 =C2=A0- | ../libffi-3.4.4=
/src/arm/sysv.S:104: Error: selected processor does not support ARM opcodes=
<br>
&gt;<br>
&gt; The M7 doesn=E2=80=99t support ARM opcodes, so if you need libffi then=
 you=E2=80=99ll need to port it.=C2=A0 Hopefully you don=E2=80=99t actually=
 need libffi if you build less into your initramfs.<br>
&gt;<br>
&gt; &gt; 2023-05-11 11:25:36 - INFO=C2=A0 =C2=A0 =C2=A0- | /workspace/meta=
-stm32f7x/build/tmp/work/cortexm7-poky-linux-musleabi/openssl/3.0.8-r0/reci=
pe-sysroot-native/usr/bin/arm-poky-linux-musleabi/../../libexec/arm-poky-li=
nux-musleabi/gcc/arm-poky-linux-musleabi/11.3.0/ld/workspace/meta-stm32f7x/=
build/tmp/work/cortexm7-poky-linux-musleabi/openssl/3.0.8-r0/recipe-sysroot=
-native/usr/bin/arm-poky-linux-musleabi/../../libexec/arm-poky-linux-muslea=
bi/gcc/arm-poky-linux-musleabi/11.3.0/ld: error: libcrypto.a(libcrypto-lib-=
armv4-gf2m.o): conflicting architecture profiles A/M<br>
&gt;<br>
&gt; For some reason openssl is trying to link A and M code together, which=
 isn=E2=80=99t right. Hopefully you can also remove OpenSSL from your image=
.<br>
&gt;<br>
&gt;<br>
&gt; Ross<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt; Links: You receive all messages sent to this group.<br>
&gt; You automatically follow any topics you start or reply to.<br>
&gt; View/Reply Online (#59987): <a href=3D"https://lists.yoctoproject.org/=
g/yocto/message/59987" rel=3D"noreferrer" target=3D"_blank">https://lists.y=
octoproject.org/g/yocto/message/59987</a><br>
&gt; Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98824124=
/1997914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/mt/98824124/1997914</a><br>
&gt; Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" t=
arget=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
&gt; Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/6=
692173/1997914/1837948400/xyzzy" rel=3D"noreferrer" target=3D"_blank">https=
://lists.yoctoproject.org/g/yocto/leave/6692173/1997914/1837948400/xyzzy</a=
> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.c=
om</a>]<br>
&gt; -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
&gt;<br>
</blockquote></div>

--000000000000583fac05fb7bab54--

