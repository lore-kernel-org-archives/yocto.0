Return-Path: <mahendrasondagar08@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBED0ECAAD5
	for <webhook@archiver.kernel.org>; Fri,  2 Sep 2022 19:26:17 +0000 (UTC)
Received: from mail-vk1-f172.google.com (mail-vk1-f172.google.com
 [209.85.221.172])
 by mx.groups.io with SMTP id smtpd.web09.2796.1662146770913004796
 for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 12:26:11 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IPGaZNjk;
 spf=pass (domain: gmail.com, ip: 209.85.221.172,
 mailfrom: mahendrasondagar08@gmail.com)
Received: by mail-vk1-f172.google.com with SMTP id c2so1425800vkm.9
        for <yocto@lists.yoctoproject.org>;
 Fri, 02 Sep 2022 12:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date;
        bh=4Pf5MJV1dxWoiNYN0MSqwtcOYdbTTdYSqsh6ETja4AY=;
        b=IPGaZNjkunpbUTNzzXPvHZfnKzRtS6KBbZelapsXoCX5vmuP01kPxI1UpOwmdkqNKw
         883ZU349VQdY5l31xMgPFnmzXQ81KRb9XAFPzrjXtudK4a8gu9SgmjfXTO3DvKF1tTeo
         s8wYG7QQotgY5gyvJWEjRAzIj7pjOxUG7aWhPFXN1zFKWXLtkDT9Kgql0aX57L4h579V
         ls/AGL2UZIjkANJiFTsmVsphgYC/6Xw2gYOZPgUFn2DZ/372i24XRUhVGdxa201FPZ4a
         ME8JtcKwx7NpFNwRGYCKm95ybeS2x4Sj68sis3bfTDZaJ+EGZrXdGLSkPqrEXJ7sIJhh
         +Kxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date;
        bh=4Pf5MJV1dxWoiNYN0MSqwtcOYdbTTdYSqsh6ETja4AY=;
        b=TO5Zcxp2LzQYvwSTB/I3uwbyGu3CJu4ybw2Y/kZ7kU+wWtlu2jxS5+coqf0rmvPeMl
         l+UeEg0bn+Na/xi/NjN++5QYDKA3mz4laYKvOZHS352cRIPEj8sQURjVCnCwH6Xg/Rz7
         a5tTDGCbBGNIu9aA9buVt28j0zpEsh4zjF+BtzX7b+bhS2molGasZOMOV2UptM3e3GKY
         tBldsNshLUdyC/QmXj320RPBWqCV/7sZxZLt8Cla3qpUqy3RsGosQ/cUH0UtDK2u0Fdm
         7c4qvaBObO4JzSaEBKhSc0Juc4CFe7diZrJwlXY1b6NKRgrGhCumneH6bJ6Q/qLz+mzz
         baYg==
X-Gm-Message-State: ACgBeo2pLB6ktyO2v6u6Ao5qioty0V/ZU7LkcuWjwkyKFY5BQwPtQMkH
	XJnAJem62Ma3phFdBp2MoE1lcswYB+WL/uK97KU=
X-Google-Smtp-Source: 
 AA6agR6fUWeBkQ+od9Leig4+QhvOgG/IcBH+HL9yme9EusVfbCR3n/axf7ruG+pAvxm2UfstUi3sHKlQriuIxOi/eqw=
X-Received: by 2002:a1f:2d15:0:b0:394:cc7b:f465 with SMTP id
 t21-20020a1f2d15000000b00394cc7bf465mr4512774vkt.21.1662146769811; Fri, 02
 Sep 2022 12:26:09 -0700 (PDT)
MIME-Version: 1.0
References: <3751d58b-0306-e10c-6698-1a62e9f670dc@gmail.com>
 <15375.1662139838514653945@lists.yoctoproject.org>
 <CAMKF1srQ=-VpuLof2zTaWTrjMde5CuztQ4Z+i=J=Mqpn5ywiAg@mail.gmail.com>
In-Reply-To: 
 <CAMKF1srQ=-VpuLof2zTaWTrjMde5CuztQ4Z+i=J=Mqpn5ywiAg@mail.gmail.com>
From: Mahendra Sondagar <mahendrasondagar08@gmail.com>
Date: Sat, 3 Sep 2022 00:55:57 +0530
Message-ID: 
 <CAMho1OEMZiBxzn19eJxwZ==0McmEzMAXSHcS0MsQLi2H23hCxg@mail.gmail.com>
Subject: Re: Private: Re: [yocto] Adding the Firmware file (.bin) to the Yocto
 recipes #dunfell
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000c77c9205e7b6b388"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 02 Sep 2022 19:26:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57974

--000000000000c77c9205e7b6b388
Content-Type: text/plain; charset="UTF-8"

Hi.. Khem Raj
Thanks for the prompt response

Yes, it works :)
you made my days

Many thanks,
Mahendra


On Sat, Sep 3, 2022 at 12:15 AM Khem Raj <raj.khem@gmail.com> wrote:

> Adding back mailing list.
>
> On Fri, Sep 2, 2022 at 10:30 AM Mahendra Sondagar
> <mahendrasondagar08@gmail.com> wrote:
> >
> > On Fri, Sep 2, 2022 at 02:21 AM, Khem Raj wrote:
> >
> > inux-firmware-rtl8761b
> >
> > Hi... Khem Raj
> >
> > Thanks for the quick revert
> >
> > Yes, i have made the changes as per your suggestions
> > Unfortunately, it's seems the same result
> >
>
> you have not followed what I said. The bbappend is still a kernel
> bbappend, so please make a bbappend for linux-firmware recipe
> instead as suggested.
>
> secondly, the bbappend itself has issues
>
> PACKAGES =+ "${PN}-rtl8761b"
> FILES_${PN}-example = "/lib/firmware/rtl_bt/rtl8761b.bin"
>
> PACKAGES and FILES do not match. what you want is something like
>
> PACKAGES =+ "${PN}-rtl8761b"
> FILES_${PN}-rtl8761b = "/lib/firmware/rtl_bt/rtl8761b.bin"
>
> then in image add.
>
> IMAGE_INSTALL += "linux-firmware-rtl8761b"
> >
> >
> >
> >
> > here is the error logs
> > Can you please check ?
> > -----------------------------------------------------------
> >
> > Loaded 3484 entries from dependency cache.
> > NOTE: Resolving any missing task queue dependencies
> > ERROR: Nothing RPROVIDES 'linux-firmware-rtl8761b' (but
> /home/mahendra/STM32MPU_workspace/Digikey_YoctoSeries/Digikey_Yocto/meta-custom/recipes-core/images/
> custom-image.bb RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'linux-firmware-rtl8761b' is unbuildable,
> removing...
> > Missing or unbuildable dependency chain was: ['linux-firmware-rtl8761b']
> > ERROR: Required build target 'custom-image' has no buildable providers.
> > Missing or unbuildable dependency chain was: ['custom-image',
> 'linux-firmware-rtl8761b']
> >
> > Summary: There was 1 WARNING message shown.
> > Summary: There were 2 ERROR messages shown, returning a non-zero exit
> code
> >
> > ----------------------------------------
> >
> > Thanks
> >
> > Mahendra
>

--000000000000c77c9205e7b6b388
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi.. Khem Raj <br></div><div>Thanks for the prompt re=
sponse <br></div><div><br></div><div>Yes, it works :)</div><div>you made my=
 days <br><br></div><div>Many thanks,<br></div><div>Mahendra <br></div><div=
><br></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Sat, Sep 3, 2022 at 12:15 AM Khem Raj &lt;<a href=3D"mailto:r=
aj.khem@gmail.com">raj.khem@gmail.com</a>&gt; wrote:<br></div><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex">Adding back mailing list.<br>
<br>
On Fri, Sep 2, 2022 at 10:30 AM Mahendra Sondagar<br>
&lt;<a href=3D"mailto:mahendrasondagar08@gmail.com" target=3D"_blank">mahen=
drasondagar08@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On Fri, Sep 2, 2022 at 02:21 AM, Khem Raj wrote:<br>
&gt;<br>
&gt; inux-firmware-rtl8761b<br>
&gt;<br>
&gt; Hi... Khem Raj<br>
&gt;<br>
&gt; Thanks for the quick revert<br>
&gt;<br>
&gt; Yes, i have made the changes as per your suggestions<br>
&gt; Unfortunately, it&#39;s seems the same result<br>
&gt;<br>
<br>
you have not followed what I said. The bbappend is still a kernel<br>
bbappend, so please make a bbappend for linux-firmware recipe<br>
instead as suggested.<br>
<br>
secondly, the bbappend itself has issues<br>
<br>
PACKAGES =3D+ &quot;${PN}-rtl8761b&quot;<br>
FILES_${PN}-example =3D &quot;/lib/firmware/rtl_bt/rtl8761b.bin&quot;<br>
<br>
PACKAGES and FILES do not match. what you want is something like<br>
<br>
PACKAGES =3D+ &quot;${PN}-rtl8761b&quot;<br>
FILES_${PN}-rtl8761b =3D &quot;/lib/firmware/rtl_bt/rtl8761b.bin&quot;<br>
<br>
then in image add.<br>
<br>
IMAGE_INSTALL +=3D &quot;linux-firmware-rtl8761b&quot;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; here is the error logs<br>
&gt; Can you please check ?<br>
&gt; -----------------------------------------------------------<br>
&gt;<br>
&gt; Loaded 3484 entries from dependency cache.<br>
&gt; NOTE: Resolving any missing task queue dependencies<br>
&gt; ERROR: Nothing RPROVIDES &#39;linux-firmware-rtl8761b&#39; (but /home/=
mahendra/STM32MPU_workspace/Digikey_YoctoSeries/Digikey_Yocto/meta-custom/r=
ecipes-core/images/<a href=3D"http://custom-image.bb" rel=3D"noreferrer" ta=
rget=3D"_blank">custom-image.bb</a> RDEPENDS on or otherwise requires it)<b=
r>
&gt; NOTE: Runtime target &#39;linux-firmware-rtl8761b&#39; is unbuildable,=
 removing...<br>
&gt; Missing or unbuildable dependency chain was: [&#39;linux-firmware-rtl8=
761b&#39;]<br>
&gt; ERROR: Required build target &#39;custom-image&#39; has no buildable p=
roviders.<br>
&gt; Missing or unbuildable dependency chain was: [&#39;custom-image&#39;, =
&#39;linux-firmware-rtl8761b&#39;]<br>
&gt;<br>
&gt; Summary: There was 1 WARNING message shown.<br>
&gt; Summary: There were 2 ERROR messages shown, returning a non-zero exit =
code<br>
&gt;<br>
&gt; ----------------------------------------<br>
&gt;<br>
&gt; Thanks<br>
&gt;<br>
&gt; Mahendra<br>
</blockquote></div>

--000000000000c77c9205e7b6b388--

