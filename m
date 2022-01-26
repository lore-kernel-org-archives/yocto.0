Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8B0A5C3526D
	for <webhook@archiver.kernel.org>; Wed, 26 Jan 2022 16:51:33 +0000 (UTC)
Received: from mail-ua1-f43.google.com (mail-ua1-f43.google.com
 [209.85.222.43])
 by mx.groups.io with SMTP id smtpd.web12.15046.1643215892693373860
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 08:51:32 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Vrs6JB84;
 spf=pass (domain: gmail.com, ip: 209.85.222.43,
 mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f43.google.com with SMTP id f24so43837692uab.11
        for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jan 2022 08:51:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sVoGa6i5N/gBTDiEdGTuPnswI10ddwp3tamWY7bmmaU=;
        b=Vrs6JB84GARUcPCLEjd9WUHZTJVgWfdtdrJDJA0tkBTt1u4ghCd0IdQdNU7JlTjxIj
         tfLf3xf8ZgfVbmKl88lUMwAXQliD0mRsM7mjXyH6SRA0B/uK2CLvbSyyfuBL6Ha0JggW
         i3cpFJW282kuhPVUIIrxfT4szxJ0qkGilRJT/Yg2WDP2qnAi4miqg27lUKAAG6OVh5C5
         zLOltA9TFjOS25g056GJ4E6y1z3Omi3C3LRC24ps7PzvOEreqMIgEtq7n7YVtaXnGjxm
         Z0bAWHe8ZKnDIgU2uwadsEYr7NL6rR3BjA3tcgYpJmbk+nCkD28QLRas/cmoJ6sxmLkP
         TcpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sVoGa6i5N/gBTDiEdGTuPnswI10ddwp3tamWY7bmmaU=;
        b=SWDCcuDtysb2OvA+hOoyMT1aNkrb4rbRJveYUKvdBNzNWrG9XQ+jnDG/iPKFKPa3uu
         4nTbYywIbpySjb4QCgeJ6+5NGi89gvqnBOM4y6DrslHTFCM3i4wRPTw7NnwvfEKCG4sG
         82SxWUhSlGxHiQCDXdjVsd6KPECJlzAN2ofkFhueljxWNJ7Lqv/fY085el6+heOrBgI1
         0UkalEWVI5prJUJ4HsbTrVG4V4fIFsr3MaEN/o1aX7mlu7tc4xOtv28qVSy4yd41Jjhz
         Ni7z36e1BbNiHKhrIgDTUNnEG6JhMtT6Cxq/bO+Cdq1Qr2Rk8X8gOi4BPzFgPVUUHZgS
         yLow==
X-Gm-Message-State: AOAM532/+uu5Zp2QyIFlEmKJuVNl+yip18UR6EeKjUlRXri4vkuSJMWL
	5RKeL5X6fgAGpGf75kzx/fc5CYkRljsepmm5whM=
X-Google-Smtp-Source: 
 ABdhPJwItIC9nwevG/w45XdLOoTE0MwtPObs8K7hKOrQKPvLnvBXN4h19fxiCQmTtXfBPT1/qdRPAfCfAWANwMkaUvo=
X-Received: by 2002:a67:a401:: with SMTP id n1mr5821584vse.38.1643215891805;
 Wed, 26 Jan 2022 08:51:31 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAD_Sx13pi-4HoXvwJSbL851xC_W-Zoyh65qmz4u8+qTwBsSoSQ@mail.gmail.com>
In-Reply-To: 
 <CAD_Sx13pi-4HoXvwJSbL851xC_W-Zoyh65qmz4u8+qTwBsSoSQ@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 26 Jan 2022 17:51:20 +0100
Message-ID: 
 <CANNYZj-c3Xq9vLsQRrJqjNPJ0Z899a494PmgsN+fx5=cgruE0g@mail.gmail.com>
Subject: Re: [yocto] build yocto 2.6 on Ubuntu 20.04
To: Jacob Avraham <jacob.avraham@auto-talks.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000085379e05d67f0368"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jan 2022 16:51:33 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55981

--00000000000085379e05d67f0368
Content-Type: text/plain; charset="UTF-8"

I think the best way out for you is to set up a container with a supported
older distribution. Usually you need an older gcc version from the host
machine, so the container will have that.

Alex

On Wed, 26 Jan 2022 at 17:43, Jacob Avraham <jacob.avraham@auto-talks.com>
wrote:

> Hi,
> Has anyone tried to build yocto 2.6 on Ubuntu 20.04?
> I know it's not supported, but it's a major task for me to upgrade to
> yocto 3.x.
> I tried it myself and it fails on building qemu-native.
> I wonder if anyone worked around this.
>
> Thanks,
> Jacob
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55980):
> https://lists.yoctoproject.org/g/yocto/message/55980
> Mute This Topic: https://lists.yoctoproject.org/mt/88700838/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> alex.kanavin@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--00000000000085379e05d67f0368
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I think the best way out for you is to set up a conta=
iner with a supported older distribution. Usually you need an older gcc ver=
sion from the host machine, so the container will have that.</div><div><br>=
</div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">On Wed, 26 Jan 2022 at 17:43, Jacob Avraham &lt;<a=
 href=3D"mailto:jacob.avraham@auto-talks.com">jacob.avraham@auto-talks.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><=
div dir=3D"ltr">Hi,<div>Has anyone tried to build yocto 2.6 on Ubuntu 20.04=
?</div><div>I know it&#39;s not supported, but it&#39;s a major task for me=
 to upgrade=C2=A0to yocto 3.x.</div><div>I tried=C2=A0it myself and it fail=
s on building qemu-native.</div><div>I wonder if anyone worked around this.=
</div><div><br></div><div>Thanks,</div><div>Jacob<br clear=3D"all"><div><br=
></div><div dir=3D"ltr"><div dir=3D"ltr"><p style=3D"font-family:Roboto,Rob=
otoDraft,Helvetica,Arial,sans-serif;font-size:12.8px"><span style=3D"color:=
rgb(17,85,204);font-size:10pt"></span></p></div></div></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55980): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55980" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55980</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/88700838/1686=
489" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/88700838/1686489</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:alex.kanavin@gmail.com" target=3D"_blank">alex.k=
anavin@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--00000000000085379e05d67f0368--

