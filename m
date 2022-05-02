Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 08664C433F5
	for <webhook@archiver.kernel.org>; Mon,  2 May 2022 09:25:08 +0000 (UTC)
Received: from mail-lf1-f43.google.com (mail-lf1-f43.google.com
 [209.85.167.43])
 by mx.groups.io with SMTP id smtpd.web08.8475.1651483504520313100
 for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 02:25:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Da4Wp0WP;
 spf=pass (domain: gmail.com, ip: 209.85.167.43,
 mailfrom: quaresma.jose@gmail.com)
Received: by mail-lf1-f43.google.com with SMTP id w19so24235622lfu.11
        for <yocto@lists.yoctoproject.org>;
 Mon, 02 May 2022 02:25:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SxtgwQ69VUKrSTrvRBb5RY/3KtBNnImZyC+nmW5wlBE=;
        b=Da4Wp0WPOxQRy5pWDNpLIRBBUUSvMfiZljksCmocBTfcspZoECdp6nPQZkMxeYhi55
         uVZcSy88gPvhoKykmNegXeVCMwo7ay1H3JsRqV0THe8eOl8hTTPgx26pWao8qsQuyWP7
         Yb4fhl3tgbbaf+Q0X6kZ4a9Is90DFnEb9qaFJQSPQCUY6niBWsL7R2/tvJIqWL730KYZ
         uAOaMZIXpyK7DvU90fcGwKW1E72ih16Zq0hOcOZ3KakXnSRPalG/3M2xVc+OyR4Y/DXz
         43qS/NTV+6D9qK5EKe/TDnIDM17yMio9B2nc/x+Bq+kGdazwQNIxe/4ofcbFBGIfRlKg
         bH3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SxtgwQ69VUKrSTrvRBb5RY/3KtBNnImZyC+nmW5wlBE=;
        b=JRB/8JTVo7aaAjUg/9KYSV0Ym7VMFPSPXVe7ytpCEXodsnm03GCa9R1EXdEbb/zMw4
         yz3oxxQqDtO310+Sl2KWfaZm8MkWYj6jrEYPFVEr3/QG71lWFXvDaz0QSzVf8smvJhhd
         nCN3z3n5o/eXdSfz0Z066r9Djdpf6XfWITAIfbgyJ8pwSG0px7y+HONMVvsYe+3pNUBE
         hD6qzr8lD+gMV+2lRntgocjl3bImrGhDa+a28DfX/w3i8Cmd+MuEF4xa9I5w2VSv+Ny+
         KlC1FwSKb1l27+Vbi6XWUYx4Tje4nRcdhtLFc8KxeCfaFK2BfmOpNkPVezCnOe/3EnBo
         TkwA==
X-Gm-Message-State: AOAM533G6BaWzDYe4EzoVBlqKq/Zan6u8RWtsQMBqYwfxXeskrEJDxjc
	XtuAfu2LS321nNs2AsrqYx5eVcbW8AGrldqqkXE=
X-Google-Smtp-Source: 
 ABdhPJyJp5ZWCqaDuhES3drOLvO1LpLtJVIzpobWoPIhKRyNvagK2KAUJCbB/Ed7LW4PkEHSbCiGeLgTtvHVqNOoOe0=
X-Received: by 2002:a05:6512:10d4:b0:473:9eb4:6a43 with SMTP id
 k20-20020a05651210d400b004739eb46a43mr2479106lfg.324.1651483502693; Mon, 02
 May 2022 02:25:02 -0700 (PDT)
MIME-Version: 1.0
References: 
 <CAPk1OjHyko81NFi0FtGruE5Z8TvUiwsdyT9aOyKRSv5886Guvg@mail.gmail.com>
 <7f7b75a8-356d-886b-429c-45460a804d0e@gmail.com>
In-Reply-To: <7f7b75a8-356d-886b-429c-45460a804d0e@gmail.com>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Mon, 2 May 2022 10:24:50 +0100
Message-ID: 
 <CANPvuRm-rbWw-rKst+ipyK9ce3qT3PVqMxAdgpEhW05Yr_KEGQ@mail.gmail.com>
Subject: Re: [yocto] OS-less SDK
To: Khem Raj <raj.khem@gmail.com>
Cc: Alessio Igor Bogani <alessio.bogani@elettra.eu>,
	Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000087d0e005de03f72a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 02 May 2022 09:25:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56969

--00000000000087d0e005de03f72a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Alessio,

meta-arm have some binary baremetal toolchains for arm and aarch64 at:
https://git.yoctoproject.org/meta-arm/tree/meta-arm-toolchain/recipes-devto=
ols/external-arm-toolchain

Jose

Khem Raj <raj.khem@gmail.com> escreveu no dia sexta, 29/04/2022 =C3=A0(s) 1=
6:53:

>
>
> On 4/29/22 4:51 AM, Alessio Igor Bogani wrote:
> > Dear Yocto developers,
> >
> > Is there a way to generate an SDK which contains the toolchain for
> > bare-metal systems (i.e. MCU without operating system)?
> >
>
> its possible to build baremetal toolchains, e.g. look at meta-riscv
> baremetal machines e.g.
>
>
>
> https://github.com/riscv/meta-riscv/blob/master/conf/machine/baremetal-ri=
scv32.conf
>
>
> you can do
>
> MACHINE=3Dbaremetal-riscv32 bitbake meta-toolchain
>
> Which will give you a toolchain, but if you want more like what we can
> do with MCU OSes like freertos and zephyr take a look at
>
> meta-zephyr (https://git.yoctoproject.org/meta-zephyr/) and
> meta-freertos (https://github.com/aehs29/meta-freertos)
>
> > Thanks in advance!
> >
> > Ciao,
> > Alessio
> >
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56964):
> https://lists.yoctoproject.org/g/yocto/message/56964
> Mute This Topic: https://lists.yoctoproject.org/mt/90774037/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000087d0e005de03f72a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi Alessio,<div dir=3D"auto"><br style=3D=
"color:rgb(0,0,0)"></div></div><div>meta-arm have some binary baremetal too=
lchains for arm and aarch64 at:</div><div dir=3D"ltr"><a href=3D"https://gi=
t.yoctoproject.org/meta-arm/tree/meta-arm-toolchain/recipes-devtools/extern=
al-arm-toolchain">https://git.yoctoproject.org/meta-arm/tree/meta-arm-toolc=
hain/recipes-devtools/external-arm-toolchain</a><br></div><div><br></div>Jo=
se<div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr"=
>Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">raj.khem@gmail.com</a>&=
gt; escreveu no dia sexta, 29/04/2022 =C3=A0(s) 16:53:<br></div><blockquote=
 class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px so=
lid rgb(204,204,204);padding-left:1ex"><br>
<br>
On 4/29/22 4:51 AM, Alessio Igor Bogani wrote:<br>
&gt; Dear Yocto developers,<br>
&gt; <br>
&gt; Is there a way to generate an SDK which contains the toolchain for<br>
&gt; bare-metal systems (i.e. MCU without operating system)?<br>
&gt; <br>
<br>
its possible to build baremetal toolchains, e.g. look at meta-riscv <br>
baremetal machines e.g.<br>
<br>
<br>
<a href=3D"https://github.com/riscv/meta-riscv/blob/master/conf/machine/bar=
emetal-riscv32.conf" rel=3D"noreferrer" target=3D"_blank">https://github.co=
m/riscv/meta-riscv/blob/master/conf/machine/baremetal-riscv32.conf</a><br>
<br>
<br>
you can do<br>
<br>
MACHINE=3Dbaremetal-riscv32 bitbake meta-toolchain<br>
<br>
Which will give you a toolchain, but if you want more like what we can <br>
do with MCU OSes like freertos and zephyr take a look at<br>
<br>
meta-zephyr (<a href=3D"https://git.yoctoproject.org/meta-zephyr/" rel=3D"n=
oreferrer" target=3D"_blank">https://git.yoctoproject.org/meta-zephyr/</a>)=
 and <br>
meta-freertos (<a href=3D"https://github.com/aehs29/meta-freertos" rel=3D"n=
oreferrer" target=3D"_blank">https://github.com/aehs29/meta-freertos</a>)<b=
r>
<br>
&gt; Thanks in advance!<br>
&gt; <br>
&gt; Ciao,<br>
&gt; Alessio<br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
&gt; <br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56964): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56964" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56964</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/90774037/5052=
612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/90774037/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr">Best regards,<div><br>Jos=C3=A9=
 Quaresma</div></div></div></div></div>

--00000000000087d0e005de03f72a--

