Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B4E05C001DB
	for <webhook@archiver.kernel.org>; Tue,  8 Aug 2023 18:34:51 +0000 (UTC)
Received: from mail-oi1-f176.google.com (mail-oi1-f176.google.com [209.85.167.176])
 by mx.groups.io with SMTP id smtpd.web10.69896.1691519683641441184
 for <yocto@lists.yoctoproject.org>;
 Tue, 08 Aug 2023 11:34:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=g/1riVeR;
 spf=pass (domain: gmail.com, ip: 209.85.167.176, mailfrom: raj.khem@gmail.com)
Received: by mail-oi1-f176.google.com with SMTP id 5614622812f47-3a44cccbd96so4180100b6e.3
        for <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 11:34:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1691519683; x=1692124483;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ghnX2obo29g0kyDYCyGBc08oMrCNKuzb/rIqQQiizk8=;
        b=g/1riVeRJH0JSqcwkJxNjVceCzwAklUdLaEFu6770hUzTP0IrLS9Pv0LVenRfFenSR
         eTZw1hUV6LQcYWx25ws9wO4nG/K/FMWBqJtBnHv22XxbT3QOHhzUJbSMzhm/AuxuzbY5
         GNHwhlG6ddvkJCSNQVksne2H7A55wGSfl6wFTWEHm2zUvpdpWrk4tOEbQ9Bu2ciT/QLa
         49xUMEK01b38obhhunKl1mABWa7JEseGzHz/r3x378JADoQyJ87dU9fWTKQRFU5nDmia
         Bf+UgGnXNLPEOYlNwUiEVR0xCVHbA2ItsruygRDNrGy6T9nqjfDv7m6jhUnjIbcz6gFT
         9dJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691519683; x=1692124483;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ghnX2obo29g0kyDYCyGBc08oMrCNKuzb/rIqQQiizk8=;
        b=kyHLqik9WQ5vxYU4XCila0D9nPrefQTn9Kn3AiUH/7YFxgrMjE3j8cOlwGNLDLNutN
         nChQkuv4OKPc2E0duue+GyqVxJ2id3EEg4xnjJfhCmmF45xYwuA488KrLlN9l3n53Rmo
         iob2JB+j2huC0C7qCYN859XPHdyeX3LXwADczgNRevlOIx2X+WGsilsYJz85q02eZD4X
         SIGe3f2W/iuIrBqfNWbMYwAXf9S/AiFjV5pp+gvxZKSHA/1elO6oixRnBpzBVL9/zZJk
         2WzLZOdGLCZX1T9iGA2s+ZgnBHf1mVndRjak3sXmZ8GhbQF7vVTx/1uASOr+RYViTY3s
         TBug==
X-Gm-Message-State: AOJu0YyKDfcLvot1YIMPRh6TCtzLBxCDoX4sgFRaIHfDJs9EeYKhYb4u
	lYta/MTINFLoUz/ZxAiAzZC0LlpAZKshgdmNQztjwDUnkLw=
X-Google-Smtp-Source: AGHT+IEHuwFhVk+u0YjZm0N4vr1c6TCQR7NgjWsaeoUv6woNdq0gJtmatoybjBYW1gWo4t0v9WjBwCtbmMeTuIdf53A=
X-Received: by 2002:a05:6808:2386:b0:3a1:bfda:c6d2 with SMTP id
 bp6-20020a056808238600b003a1bfdac6d2mr673317oib.11.1691519682822; Tue, 08 Aug
 2023 11:34:42 -0700 (PDT)
MIME-Version: 1.0
References: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
In-Reply-To: <CABKMkPK8pAVXVWXBG0nc-aKpgKzYpQt1dvfZH2sj9T2pS3p=hA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 8 Aug 2023 11:34:31 -0700
Message-ID: <CAMKF1sorNvKwy9tKMRv4FSDFP270t7ryimrv8s8tUzgXoJ=L6A@mail.gmail.com>
Subject: Re: [yocto] Rootless Podman
To: Joel Winarske <joel.winarske@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000d3455606026d9dee"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 08 Aug 2023 18:34:51 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60746

--000000000000d3455606026d9dee
Content-Type: text/plain; charset="UTF-8"

We have tried it hard in yoe distro but it always fails in novel ways so
much. I have switched back to docker for now

On Tue, Aug 8, 2023 at 11:07 AM Joel Winarske <joel.winarske@gmail.com>
wrote:

> Anyone successfully building using Rootless Podman?
>
> I'm seeing a variety of strange issues.
>
> My baseline podman config:
> --user 1001:1001
> --ipc host
> --privileged
> --security-opt label=disable
> --pid host
> --userns keep-id
> --ulimit host
> --mount type=devpts,destination=/dev/pts
> --security-opt label=disable
> --group-add keep-groups
>
>
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60743):
> https://lists.yoctoproject.org/g/yocto/message/60743
> Mute This Topic: https://lists.yoctoproject.org/mt/100627665/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000d3455606026d9dee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div dir=3D"auto">We have tried it hard in yoe distro but it=
 always fails in novel ways so much. I have switched back to docker for now=
=C2=A0</div><div dir=3D"auto"><br><div class=3D"gmail_quote" dir=3D"auto"><=
div dir=3D"ltr" class=3D"gmail_attr">On Tue, Aug 8, 2023 at 11:07 AM Joel W=
inarske &lt;<a href=3D"mailto:joel.winarske@gmail.com">joel.winarske@gmail.=
com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"=
><div>Anyone successfully building using Rootless Podman?</div><div><br></d=
iv><div>I&#39;m seeing a variety of strange issues.<br><br></div><div>My ba=
seline podman config:<br><div style=3D"color:rgb(204,204,204);background-co=
lor:rgb(31,31,31);font-family:&quot;Droid Sans Mono&quot;,&quot;monospace&q=
uot;,monospace;font-weight:normal;font-size:14px;line-height:19px;white-spa=
ce:pre-wrap"><div><span style=3D"color:rgb(204,204,204)">        </span><sp=
an style=3D"color:rgb(206,145,120)">--user 1001:1001</span></div><div><span=
 style=3D"color:rgb(204,204,204)">        </span><span style=3D"color:rgb(2=
06,145,120)">--ipc host</span></div><div><span style=3D"color:rgb(204,204,2=
04)">        </span><span style=3D"color:rgb(206,145,120)">--privileged</sp=
an></div><div><span style=3D"color:rgb(204,204,204)">        </span><span s=
tyle=3D"color:rgb(206,145,120)">--security-opt label=3Ddisable</span></div>=
<div><span style=3D"color:rgb(204,204,204)">        </span><span style=3D"c=
olor:rgb(206,145,120)">--pid host</span></div><div><span style=3D"color:rgb=
(204,204,204)">        </span><span style=3D"color:rgb(206,145,120)">--user=
ns keep-id</span></div><div><span style=3D"color:rgb(204,204,204)">        =
</span><span style=3D"color:rgb(206,145,120)">--ulimit host</span><span sty=
le=3D"color:rgb(204,204,204)"> </span></div><div><span style=3D"color:rgb(2=
04,204,204)">        </span><span style=3D"color:rgb(206,145,120)">--mount =
type=3Ddevpts,destination=3D/dev/pts</span></div><div><span style=3D"color:=
rgb(204,204,204)">        </span><span style=3D"color:rgb(206,145,120)">--s=
ecurity-opt label=3Ddisable</span></div><div><span style=3D"color:rgb(204,2=
04,204)">        </span><span style=3D"color:rgb(206,145,120)">--group-add =
keep-groups</span></div><div><span style=3D"color:rgb(204,204,204)"><br></s=
pan></div></div></div><div><br><br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#60743): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/60743" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/60743</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/100627665/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/100627665/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000d3455606026d9dee--

