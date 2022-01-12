Return-Path: <Martin.Jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBDD9C433F5
	for <webhook@archiver.kernel.org>; Wed, 12 Jan 2022 15:30:31 +0000 (UTC)
Received: from mail-pj1-f45.google.com (mail-pj1-f45.google.com
 [209.85.216.45])
 by mx.groups.io with SMTP id smtpd.web11.24833.1642001431186521601
 for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 07:30:31 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=XQVkbsyw;
 spf=pass (domain: gmail.com, ip: 209.85.216.45,
 mailfrom: martin.jansa@gmail.com)
Received: by mail-pj1-f45.google.com with SMTP id
 l10-20020a17090a384a00b001b22190e075so12750404pjf.3
        for <yocto@lists.yoctoproject.org>;
 Wed, 12 Jan 2022 07:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6JqZa+l4qPn5gVs/wmX1ijK63fVc7hweLnU9zeSUL5k=;
        b=XQVkbsywYP4WgevcTpwVVhXgPnkpTmKlmhghAU7xcuXCCmIpasRJRrIaUb4tgID2ic
         1zvmCLkjVD1Yaz2snxCvSCbpKkBZkzcjHxcutei2P8Nc7oV1xQESKQmP9UWItICFlwJU
         m9qXA1FRvdjq80HiM2b5oCo7Fa1WFFb8PhDdkgOq2ZfAoQ67zAhxPnPtJKzqyihGUKkz
         SDpMmka9xqLXTdfFMcZ2V8Uy9lxyphVV0lc6Se4d81ggVswQQqOLiX8rkxiDSoRuFfJ3
         ppZxenuwognomGA7Ugko2KwdATQb/RMWirVcOpWAy116t1kvkTE4co74gn1PmqNsKvdc
         AHGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6JqZa+l4qPn5gVs/wmX1ijK63fVc7hweLnU9zeSUL5k=;
        b=Zc5x3/GyUJVc5tvzrtzPN9okHvt+AvU9D8v5SY48i2d7cNpN5IIAHWStE/RXYqQoBo
         sx10nwif2oLldklb0yOCb15gat8x1sW1MHIGFbzwQazZV3jEK6YFJx8X6O0eHjm3JfqY
         /SkwdYpBoMZjwiLAduE0MEJMJDYrroDucRlcnJA/Dc5nNkW++1lJ21xpK+IC6b9Uux/z
         kdKZQLynjs7f5Miwoydb5DvSRcWBhZXSJksx/d5yQ9WTWdScybnrD4wsd0AvEfFHs70k
         U8aY5yLJlcq7/U/VuVEiAleOkS45Ypzw/JiGIqS4Qauti3JvSqxZhfQF0qvU5+fmj1QQ
         w5kw==
X-Gm-Message-State: AOAM531+OuFU6LDFvIsiSnh5IycMGWOPzvDK/DXqOF2DXzBYqHqVLP7J
	vWAOHaWpxZglhe5G5GHPeRgQp2cpqEV+7BFsBxg=
X-Google-Smtp-Source: 
 ABdhPJzPan4uSEZqffmf6LBSPdxLdvHdx+J3MVfaIXPEyZk6whs9pnhXdgrbr1hW6xoL6xzpOA6fYTG9MNsxtViBgDM=
X-Received: by 2002:a63:7c48:: with SMTP id l8mr181212pgn.483.1642001430705;
 Wed, 12 Jan 2022 07:30:30 -0800 (PST)
MIME-Version: 1.0
References: 
 <CA+chaQcM==gPPgvWdkxESaZ2gdP7zb8k_p73PCBQQUZsJJyU_w@mail.gmail.com>
 <24621.1641986137841391049@lists.yoctoproject.org>
In-Reply-To: <24621.1641986137841391049@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 12 Jan 2022 15:30:18 +0100
Message-ID: 
 <CA+chaQf=LLi2d4o+uFmkTeT3PW2=eNZbsufWT7bPL_h_RxYczw@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi][PATCH] Use protocol=https for all
 github SRC_URIs
To: Janne Kiiskila <janne.kiiskila@pelion.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000ff7be005d5643f99"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 12 Jan 2022 15:30:31 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55815

--000000000000ff7be005d5643f99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The exception for github.com was implemented in bitbake fetcher and
backported to various versions, e.g. 1.46 used with dunfell with:
https://github.com/openembedded/bitbake/commit/c222eddcebe892ae209aea7776cf=
c1147ac1df6e

For master branches it's better to change every single recipe which needs
the change to set the necessary protocol explicitly, instead of depending
on fetcher's default (which would be changed for all git servers not just
github.com).



On Wed, Jan 12, 2022 at 12:33 PM Janne Kiiskila <janne.kiiskila@pelion.com>
wrote:

> Hei,
>
> would not the "easier" approach be to change the bitbake tooling to use
> https as the default git fetching protocol, rather than modify every sing=
le
> recipe in the world?
>
> Best Regards,
>
>
> Janne Kiiskil=C3=A4
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#55812):
> https://lists.yoctoproject.org/g/yocto/message/55812
> Mute This Topic: https://lists.yoctoproject.org/mt/86890763/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> Martin.Jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ff7be005d5643f99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">The exception for <a href=3D"http://github.com">github.com=
</a> was implemented in bitbake fetcher and backported to various versions,=
 e.g. 1.46 used with dunfell with:<div><a href=3D"https://github.com/openem=
bedded/bitbake/commit/c222eddcebe892ae209aea7776cfc1147ac1df6e">https://git=
hub.com/openembedded/bitbake/commit/c222eddcebe892ae209aea7776cfc1147ac1df6=
e</a><br></div><div><br></div><div>For master branches it&#39;s better to c=
hange every single recipe which needs the change to set the necessary proto=
col explicitly, instead of depending on fetcher&#39;s default (which would =
be changed for all git servers not just <a href=3D"http://github.com">githu=
b.com</a>).</div><div><br></div><div><br></div></div><br><div class=3D"gmai=
l_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jan 12, 2022 at 12:3=
3 PM Janne Kiiskila &lt;<a href=3D"mailto:janne.kiiskila@pelion.com">janne.=
kiiskila@pelion.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex">Hei,<br><br>would not the &quot;easier&quot; approach be=
 to change the bitbake tooling to use https as the default git fetching pro=
tocol, rather than modify every single recipe in the world?<br><br>Best Reg=
ards,<br><br><br>Janne Kiiskil=C3=A4
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#55812): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/55812" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/55812</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/86890763/3617=
156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/86890763/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:Martin.Jansa@gmail.com" target=3D"_blank">Martin=
.Jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000ff7be005d5643f99--

