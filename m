Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 909E8E9539A
	for <webhook@archiver.kernel.org>; Wed,  4 Feb 2026 13:06:27 +0000 (UTC)
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.19911.1770210382210093476
 for <yocto@lists.yoctoproject.org>;
 Wed, 04 Feb 2026 05:06:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile.fr header.s=google header.b=GMX6UCZf;
 spf=pass (domain: smile.fr, ip: 209.85.221.45, mailfrom: yoann.congal@smile.fr)
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-432d2c7a8b9so5751746f8f.2
        for <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 05:06:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1770210380; cv=none;
        d=google.com; s=arc-20240605;
        b=YjfPsOPcnOXVI2oyoFNBad3tksWC9nYUjgPs6wMUusqZg2DFfycibEzV9/1/GCY0RU
         Vxzcey2YeApWVqStIInxW4t6aQRWmGxtS288XAXf/NH6rPhpJ0L/LDV1aDCi+4DS5yfb
         9vQgkcAtfP8gVWnQtcUZ4GePGJrLAvmdZE2urez3GlmoNL7v+z+MZhvC581hWWCdukEH
         PW8qSGv3egpAA27GaYV6isxdqFM8D/Pct8JqRRom1qzUPPgjd1VRXJaEGFBuWMsLit90
         +0OnZppqmNqWzOW7Ay3zDckNing7gFmchj2g+cGb58E1S2U7V1TDtbydZEQM8EGVe3c+
         8JbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20240605;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-signature;
        bh=bVG54xbO4gPfZgiX06hw/JuSwwVCbiyN1YdZxHWCrD4=;
        fh=RfvKi+EEeC7Pt0xnNMP3OnZ5f8VEet97HACNkB0NEag=;
        b=cIPJZ5Zze3MmdIn+UnSzGi+i/JofAVMomUIrs5GIlKuUB1HaZwhQqFimzVQ59lyszQ
         WMrSXVC7kgVeWuz43d2EGyY4j7oAUqt7QLNmyVCmDZHvYmLGmdnSFlB47c86ksa/2RHf
         WMGmV7o3+Rii87gdIk5SsMcERzVHPqx1Fudc7P7UprEKqUvESdKNS1+DjMtg7cLOjcK7
         IWodQaNdX+UGHyTmWzQPZHleMZWPZVsu2DLAYNL/HMvxM+WG/knHSVal4oQxY5zNn/7F
         j3Zhd1CuOlCgx6q1PqNC74SSply/DBo7EPeI2GdfEKHa+ZWA7GwMnrwt6ZtUlsj064Vq
         F2xA==;
        darn=lists.yoctoproject.org
ARC-Authentication-Results: i=1; mx.google.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile.fr; s=google; t=1770210380; x=1770815180; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=bVG54xbO4gPfZgiX06hw/JuSwwVCbiyN1YdZxHWCrD4=;
        b=GMX6UCZfS5E0UIGa/YkaQiY4d0+ameDMPspTd/jBfTYAzaDWQi2bAvi6gXis6xTEvB
         19L1bEWJCWjtBrXDeLZhI/fv5XUK0ySG394xRYkC1I7nB+ijrKuz8uyqxMRCcmklK94k
         tZVcug0YDODzpeFezLLlCZ9okR8p4hK5L0Ntw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770210380; x=1770815180;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=bVG54xbO4gPfZgiX06hw/JuSwwVCbiyN1YdZxHWCrD4=;
        b=j+cN4g7BfDOMfH7MwsO6Y3OFWPTEStEXegANrThVajh7IMX62DPQDWnqEeEp5IsSRV
         OzhkH8JJBNCm0vr6tvB+ESsaxX4OfCVrFEtl02K45YC8nN9IC+3tVoln5TJDMcH4BS8n
         fJ6MIjdLqAS/0uQhbTDlgcvxsQ1WEJwYkggSe1cWHsg+Kfu16bHS1881ink0Tux4GjId
         LegNhR1MUZFLodEZ8YNpQWRvnCjZx0SO+S5xguQsTR7FpLxLo8/VhBTrzpRc5yKTdTuN
         tn6VJOnutsrDDn+qpSr8iH4xAVc4S3aSyddnbleilYpxCr+lpk2acuPec+tKGpff/o0/
         JHSw==
X-Gm-Message-State: AOJu0Yw7ZPUhpZuq8pV9J5/rVtekLnwXxEUyFQUer/l6evl5F/ojBXaL
	G636WrzGwT2CiyTDcYRKnhE2RpqeE0WqHI2CUrn5YTOyQ29Lfn4USky0eFI4/lhh+Kx/kFNCj5w
	ZCrWiWMaSO637Nttq/6d+nTx9Wvd12YNCGdxv6t40KkZO1ZnEARK2K9c=
X-Gm-Gg: AZuq6aKcrO/vtT2W7EuY2pIW8AegD3SbwnKHiVln8xRNTEUGO3B7A+IfF22IHk537KR
	eW6rVU7WYpy9Ehn21yiAORLe/bzIoRM2HdzvWiMjWF3xG5+7H4cli1zWz9u/JvPiurOc39BKYuu
	zjcJpxfRIZrEXD+4B+/vPvnJh21hsv/rXlw5Mb/XoWq0ovKxlEGIyq09Zh4uTMN6fBYZzPaNHi8
	jNcfNiAOEkF+A8FCbDHcXrgJmRMCODY3hiFGfH7ANDvcsmJQFSS/E0wD3FSyCmlSFs1lxixsEjL
	Au8CckBXxbtTzdG8maIViMnMnx8U
X-Received: by 2002:adf:ea44:0:b0:436:1e6:e1d6 with SMTP id
 ffacd0b85a97d-4361805cff0mr3778620f8f.46.1770210380058; Wed, 04 Feb 2026
 05:06:20 -0800 (PST)
MIME-Version: 1.0
References: <nBqk.1770208426472571743.QePX@lists.yoctoproject.org>
In-Reply-To: <nBqk.1770208426472571743.QePX@lists.yoctoproject.org>
From: Yoann Congal <yoann.congal@smile.fr>
Date: Wed, 4 Feb 2026 14:05:53 +0100
X-Gm-Features: AZwV_QjoqPpN0sjf3DwK0aLX_Ud9StQUjrBWBntqygaQ9ygO3SwdJ1Z-4OWqH_4
Message-ID: <CAMSfU+7rTEt-8GQ-QsSZ3j-MC+UoaL9QT8Gv1J2OGQpRMPr7pQ@mail.gmail.com>
Subject: Re: [yocto] State of crops/poky-container
To: yocto@lists.yoctoproject.org, mns@gomspace.com
Content-Type: multipart/alternative; boundary="000000000000e1a3f60649ff38fa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 04 Feb 2026 13:06:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66218

--000000000000e1a3f60649ff38fa
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Le mer. 4 f=C3=A9vr. 2026 =C3=A0 13:33, Martin Siegumfeldt via lists.yoctop=
roject.org
<mns=3Dgomspace.com@lists.yoctoproject.org> a =C3=A9crit :

> Hi all,
>
> We have happily been using crops/poky-container the last years for CI
> work. Maintenance of it appears decreasing though, last commit is two yea=
rs
> old and the most recent supported Ubuntu LTS version is 22.04. PRs have n=
ot
> been responded to for the last ~1 year. I thus wonder if there is no
> intention of maintaining it in the future? AFAICT, there is no associated
> mailing list and GH PRs (at least used to be) seems the means for
> contributing.
>

Hello,

CROPS is in dire need of a maintainer and has been for a long time (look
for "CROPS" in
https://wiki.yoctoproject.org/wiki/2025_Yocto_Project_Weekly_Status_Archive
).
Would you be willing to take that role? (Basically, there can be no
maintenance without a maintainer)

Thanks
> Martin
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#66217):
> https://lists.yoctoproject.org/g/yocto/message/66217
> Mute This Topic: https://lists.yoctoproject.org/mt/117633064/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Yoann Congal
Smile ECS

--000000000000e1a3f60649ff38fa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Le=C2=A0mer. 4 f=C3=A9vr. 2026 =C3=A0=C2=
=A013:33, Martin Siegumfeldt via <a href=3D"http://lists.yoctoproject.org">=
lists.yoctoproject.org</a> &lt;mns=3D<a href=3D"mailto:gomspace.com@lists.y=
octoproject.org">gomspace.com@lists.yoctoproject.org</a>&gt; a =C3=A9crit=
=C2=A0:</div><div class=3D"gmail_quote gmail_quote_container"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px soli=
d rgb(204,204,204);padding-left:1ex"><div>Hi all,</div>
<div>=C2=A0</div>
<div>We have happily been using crops/poky-container the last years for CI =
work. Maintenance of it appears decreasing though, last commit is two years=
 old and the most recent supported Ubuntu LTS version is 22.04. PRs have no=
t been responded to for the last ~1 year. I thus wonder if there is no inte=
ntion of maintaining it in the future? AFAICT, there is no associated maili=
ng list and GH PRs (at least used to be) seems the means for contributing.<=
/div></blockquote><div><br></div><div>Hello,</div><div><br></div><div>CROPS=
 is in dire need of a maintainer and has been for a long time (look for &qu=
ot;CROPS&quot; in=C2=A0<a href=3D"https://wiki.yoctoproject.org/wiki/2025_Y=
octo_Project_Weekly_Status_Archive">https://wiki.yoctoproject.org/wiki/2025=
_Yocto_Project_Weekly_Status_Archive</a>).</div><div>Would you be willing t=
o take that role? (Basically, there can be no maintenance without=C2=A0a ma=
intainer)</div><div><br></div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:=
1ex"><div>Thanks</div>
<div>Martin</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#66217): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/66217" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/66217</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/117633064/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/117633064/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.c=
ongal@smile.fr</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><div><br clear=3D"all"></div><br><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</font><div><fon=
t face=3D"Raleway, regular">Smile ECS</font></div></div></div></div>

--000000000000e1a3f60649ff38fa--

