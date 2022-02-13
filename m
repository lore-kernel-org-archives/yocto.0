Return-Path: <abhijeettripathi3003@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 141F1C433EF
	for <webhook@archiver.kernel.org>; Sun, 13 Feb 2022 14:56:46 +0000 (UTC)
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 by mx.groups.io with SMTP id smtpd.web08.21735.1644764204568636101
 for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 06:56:45 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=IjQlih72;
 spf=pass (domain: gmail.com, ip: 209.85.208.179,
 mailfrom: abhijeettripathi3003@gmail.com)
Received: by mail-lj1-f179.google.com with SMTP id j14so18934869lja.3
        for <yocto@lists.yoctoproject.org>;
 Sun, 13 Feb 2022 06:56:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=JAD7L6gmzNATYjuUln9o80ksHKuEVvqfooKJGaW1YrQ=;
        b=IjQlih72PWeumfdAvcSU46HSLGNr8E8M3y7YUJgGwwT1AjlbCDfRz0PtT6UAFeHEzQ
         1kRRO2442WXKXhySN6hT/rl+mPQK/5iTkfqpeFESIzrFGHAoTgxfFxMv84tl6z3hYUgN
         FtyOV2Dr7T/63IpISwgC8ZjFYVuF0XiWThlfOvb5aXeCkIGk5espfS7CWUHLTTD0HZGz
         E0vODAUzrX/W5WJojhQTUNwhCOxno12/BW13XkJb0GP1TmqkyPuNp9QhPuwsn21H+yYk
         MKih5vG5dcaBg5brjY5IfcBWf7Hg10ySe3LiJWQYDRfenQh1F5+LLZNrGpV7ulklbsUk
         9H0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=JAD7L6gmzNATYjuUln9o80ksHKuEVvqfooKJGaW1YrQ=;
        b=tDtqpBQeplBySXhN4tNV2mjvwgbXxlnxK06+8AJVIHdizH7qJdBCTfUPzjQThJ4VQc
         uq+W51kLnNDfvblp2bycVNKtq4MLZV5zt+jetBh6mMiCPJrsTb6Zy4xpkA3hD8JoCuDY
         on1U1c71QjuTBpNKtz6fqMtUUdV1tRRPgglC0hc1ldFY0F1chskj81aURaMwyJxjaX1i
         ToB0MEWsHXaW6TIjDA0qtVEciSNR6YezmWqkC2p6Ia3Vba2I58KAY2xDucgX5BQ6MO91
         J4hoGWiobSTZiIoAbvsPVc2Jtt1vbV9aPv/jvVIowhx3AbujjLZ58Y5bhSyH4zZKe6ZP
         M1mw==
X-Gm-Message-State: AOAM532Ca0tfiGu3AqMRbcZBhpigY+qxBh6kHqVetBBOz6MsT5OqjXvA
	nAiCEvzE0lCiUfXE4WAGZMaHv04wUn/OKi+Ed1I=
X-Google-Smtp-Source: 
 ABdhPJwgBLFsvI74moI2w5Js3AYy1/WiPzW/GMSHL5OhNacOGIvOd5SFvZrgs+l2h5yNifB6WH6z7WeblzrjxDrTKvw=
X-Received: by 2002:a2e:9510:: with SMTP id f16mr1595708ljh.147.1644764202692;
 Sun, 13 Feb 2022 06:56:42 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAB_tbNkB32wAe=3CZvn6a8FSuoA-JGUniQQBM_h-9xLJ-BqKrw@mail.gmail.com>
 <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
In-Reply-To: <E02EE3E6-B0A8-407A-91DF-1FF64E1DC363@iki.fi>
From: Abhijeet Tripathi <abhijeettripathi3003@gmail.com>
Date: Sun, 13 Feb 2022 20:26:31 +0530
Message-ID: 
 <CAB_tbNnmJ-DFyB-8t5S3no0Ta-WSxWhAbJ39SxGkBXW_r_4Tow@mail.gmail.com>
Subject: Re: [yocto] Building Yocto on M1 Mac
To: Anders Montonen <Anders.Montonen@iki.fi>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000000a743c05d7e78201"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 13 Feb 2022 14:56:46 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56172

--0000000000000a743c05d7e78201
Content-Type: text/plain; charset="UTF-8"

On Sun, Feb 13, 2022 at 7:09 PM Anders Montonen <Anders.Montonen@iki.fi>
wrote:

> Hi,
>
> On 13 Feb 2022, at 14:24, Abhijeet Tripathi <
> abhijeettripathi3003@gmail.com> wrote:
>
> Hello yocto-devs,
>
> I'm new to the yocto project and trying to set up a build environment on
> my M1 Mac which is arm64 architecture.
>
> I'm following the steps as mentioned in below link:
> https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions
>
> But it is always pulling up containers based on amd64 architecture. Are
> there any updated steps/link to set up a build environment specific to M1
> Mac(arm64)?
>
>
> Looking at Docker Hub, none of the published Crops containers are built
> for ARM64. You can try building the containers yourself, making sure to
> pick base distros that are available for ARM64.
>
> Note that there are plenty of reports of Docker performing poorly on Macs,
> probably because of the file system implementation. You may be better off
> using a full VM via e.g. UTM.
>

I initially started with UTM but the problem with virtual machines is that
we can only use half the resources of the machine.
This makes the builds slower, so I was looking at the container way.

Can you point me to any documentation which I can use to build customized
containers for yocto builds?

Thanks,
Abhijeet


>
> -a
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#56170):
> https://lists.yoctoproject.org/g/yocto/message/56170
> Mute This Topic: https://lists.yoctoproject.org/mt/89112092/6750569
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> abhijeettripathi3003@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000000a743c05d7e78201
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Sun, Feb 13, 2022 at 7:09 PM Anders Montonen &lt;<=
a href=3D"mailto:Anders.Montonen@iki.fi">Anders.Montonen@iki.fi</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><div style=
=3D"overflow-wrap: break-word;">Hi,<br><div><br><blockquote type=3D"cite"><=
div>On 13 Feb 2022, at 14:24, Abhijeet Tripathi &lt;<a href=3D"mailto:abhij=
eettripathi3003@gmail.com" target=3D"_blank">abhijeettripathi3003@gmail.com=
</a>&gt; wrote:</div><br><div><div dir=3D"ltr">Hello yocto-devs,<div><br></=
div><div>I&#39;m new to the yocto project and trying to set up a build envi=
ronment on my M1 Mac which is arm64 architecture.=C2=A0</div><div><br></div=
><div>I&#39;m following the steps as mentioned in below link:</div><div><a =
href=3D"https://github.com/crops/docker-win-mac-docs/wiki/Mac-Instructions"=
 target=3D"_blank">https://github.com/crops/docker-win-mac-docs/wiki/Mac-In=
structions</a>=C2=A0<br></div><div><br></div><div>But it is always pulling =
up containers based on amd64 architecture. Are there any updated steps/link=
 to set up a build environment specific to M1 Mac(arm64)?</div></div></div>=
</blockquote></div><div><br></div><div>Looking at Docker Hub, none of the p=
ublished Crops containers are built for ARM64. You can try building the con=
tainers yourself, making sure to pick base distros that are available for A=
RM64.</div><div><br></div><div>Note that there are plenty of reports of Doc=
ker performing poorly on Macs, probably because of the file system implemen=
tation. You may be better off using a full VM via e.g. UTM.</div></div></bl=
ockquote><div>=C2=A0</div><div>I initially started with UTM but the problem=
 with virtual machines is that we can only use half the resources of the ma=
chine.</div><div>This makes the builds slower, so I was looking at the cont=
ainer way.</div><div><br></div><div>Can you point me to any documentation w=
hich I can use to build customized containers for yocto builds?</div><div><=
br></div><div>Thanks,</div><div>Abhijeet</div><div>=C2=A0</div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div style=3D"overflow-wrap: break-wo=
rd;"><div><br></div><div>-a</div></div><br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#56170): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/56170" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/56170</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/89112092/6750=
569" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/89112092/6750569</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:abhijeettripathi3003@gmail.com" target=3D"_blank=
">abhijeettripathi3003@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000000a743c05d7e78201--

