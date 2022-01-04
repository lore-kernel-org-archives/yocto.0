Return-Path: <arik.kleiman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 7A20DC433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 14:58:24 +0000 (UTC)
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com
 [209.85.210.52])
 by mx.groups.io with SMTP id smtpd.web09.7869.1641308303347467541
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 06:58:23 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=FdppV0JO;
 spf=pass (domain: gmail.com, ip: 209.85.210.52,
 mailfrom: arik.kleiman@gmail.com)
Received: by mail-ot1-f52.google.com with SMTP id
 45-20020a9d0a30000000b0058f1a6df088so47634942otg.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 06:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=n6XGvSeAQKbUrDBEek2xxnyhICCoc4xYBpjpjE722rU=;
        b=FdppV0JO0kK9br29iC2pfqy0VYldgdEoyyYk95Uife+1IrECkKmlZ/fDri+Pghnl/v
         u2sDF5z/cTSwKobstDGcPwC4R2kyb/A/8msIAU+BjEFzGbhM53x/mXJk6KaAQ2TYAsy8
         dFY6TjYzQ+GSX2TB6ROG2cEMwwJQ4A5mFilBJr6IQOluPd3GtmEhW6ePNKsB/ytSWnWD
         QOHcXfU7UPzyLPaBlVVqjzWIEflmeg5pTxLI3PTFKUbRgFam8ccWawH1+PnNy6p5K5qc
         KLBpr9S4PTh/qrKyiIGB4Wl3sR5nxEXQNgwFrno3VsipujIs4f8BFR+ZiqFSkcthhkOy
         K6zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=n6XGvSeAQKbUrDBEek2xxnyhICCoc4xYBpjpjE722rU=;
        b=qWDa6nPvRZCzoK4QVZhjrDFVp/xgZjgqHlyrc+Y/BY+5uHHej4+Irvwq3AstmsZrRk
         fk+EfI5xmSWsYi2QaSjNUccukVZtplqTdN6vIKMvdsHZYLyKqIK88HHiFU2UEPpi210f
         ylkfINhfT6ec0DXHPXr8S52G/pzjZi8/ZD1X/iziVRABgN90/bCdZeL8YMGp0iq5I37g
         wdU7dAXIcNaTLr1O8dzMpjA3I1fdftXGdRNoo7tFNykx+fVJz9qZZ1rRm2AyaVi/sSi5
         EZwz1F6c69eL4sdaDUzgPHvY2pyFuuGPRr1m9n9nenusLMeqFWVi5rr2ZQZC14kwGSzs
         4MEw==
X-Gm-Message-State: AOAM533frWTtZZosTA4PinYdd1t7PvCqAjg/uSia1S4+p9RmCxiTJdiO
	DkjRZHI35f3cDF/ltpxSDpN/OCN4yGsdzqhr1t4=
X-Google-Smtp-Source: 
 ABdhPJyN0BPO06cdtCYbDlyFqWqyBdRREkrHbDIFrC0EQIS5cOrF6NocLK046B2NyH8X+pHSSfZ2RneE8PGf5veM2MI=
X-Received: by 2002:a9d:5c81:: with SMTP id a1mr34258037oti.277.1641308302485;
 Tue, 04 Jan 2022 06:58:22 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
 <CAGeH+D1tWdL2wD5R-2GgOfvq3SeLFCKAaMrLGb_-pvXrPW+ePA@mail.gmail.com>
 <e8b3d35c-4752-d2ca-ba1a-22040aeca3cb@bootlin.com>
In-Reply-To: <e8b3d35c-4752-d2ca-ba1a-22040aeca3cb@bootlin.com>
From: Arik Kleiman <arik.kleiman@gmail.com>
Date: Tue, 4 Jan 2022 16:58:09 +0200
Message-ID: 
 <CAGeH+D2ByzQjBCgzUr1WNE7+=gXenViPJBo1XjgUF_Ofv2q4JA@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: Ross Burton <ross@burtonini.com>, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000562d9105d4c2de95"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 14:58:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55721

--000000000000562d9105d4c2de95
Content-Type: text/plain; charset="UTF-8"

I don't have option to add systemd.

Added alrady tzdata and all time zone folders exist.
The issue is that ntpdate returns time in UTC.

I found a way to get local time zone (by using ip lookup). Now i looking
for a way to use it to update system time

On Tue, Jan 4, 2022, 15:47 Michael Opdenacker <
michael.opdenacker@bootlin.com> wrote:

> Hi Arik,
>
> On 1/4/22 1:15 PM, Arik Kleiman wrote:
> > The thing is that ntpdate syncs system time to UTC
> >
> > How can i set my system's time according to time zone?
>
>
> If you're using systemd, you could use the timedatectl command:
>
> https://linuxiac.com/how-to-set-timezone-and-sync-server-time-with-ntp-in-linux/
>
> Otherwise, you can add the "tzdata" recipe to your image. It should
> allow you to set the timezone that you want:
> https://www.yoctoproject.org/pipermail/yocto/2018-October/042964.html
>
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>

--000000000000562d9105d4c2de95
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">I don&#39;t have option to add systemd.<div dir=3D"auto">=
<br></div><div dir=3D"auto">Added alrady tzdata and all time zone folders e=
xist.</div><div dir=3D"auto">The issue is that ntpdate returns time in UTC.=
</div><div dir=3D"auto"><br></div><div dir=3D"auto">I found a way to get lo=
cal time zone (by using ip lookup). Now i looking for a way to use it to up=
date system time</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Tue, Jan 4, 2022, 15:47 Michael Opdenacker &lt;<a =
href=3D"mailto:michael.opdenacker@bootlin.com">michael.opdenacker@bootlin.c=
om</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Arik,<br>
<br>
On 1/4/22 1:15 PM, Arik Kleiman wrote:<br>
&gt; The thing is that ntpdate syncs system time to UTC=C2=A0<br>
&gt;<br>
&gt; How can i set my system&#39;s time according to time zone?<br>
<br>
<br>
If you&#39;re using systemd, you could use the timedatectl command:<br>
<a href=3D"https://linuxiac.com/how-to-set-timezone-and-sync-server-time-wi=
th-ntp-in-linux/" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
inuxiac.com/how-to-set-timezone-and-sync-server-time-with-ntp-in-linux/</a>=
<br>
<br>
Otherwise, you can add the &quot;tzdata&quot; recipe to your image. It shou=
ld<br>
allow you to set the timezone that you want:<br>
<a href=3D"https://www.yoctoproject.org/pipermail/yocto/2018-October/042964=
.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https://www.yoctopro=
ject.org/pipermail/yocto/2018-October/042964.html</a><br>
<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://bootlin.com</a><br>
<br>
</blockquote></div>

--000000000000562d9105d4c2de95--

