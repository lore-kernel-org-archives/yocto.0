Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB60CC47258
	for <webhook@archiver.kernel.org>; Sat, 20 Jan 2024 17:19:17 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.27906.1705771147318854271
 for <yocto@lists.yoctoproject.org>;
 Sat, 20 Jan 2024 09:19:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=aP6rKzI3;
 spf=pass (domain: smile.fr, ip: 209.85.167.50, mailfrom: yoann.congal@smile.fr)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-50edf4f478eso2322916e87.3
        for <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 09:19:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1705771145; x=1706375945; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2YgJ0315MaLr1O9JtRtkdGotbuY1YPHpBWsHGEMaIL0=;
        b=aP6rKzI3ePlWNEkka7Kqt9OaseJjWkC6yvoEk0v6sR8sEUAV6I/JfYTUB3XNlAWgOc
         pqi6y9SsMikID4ABbA/+HgYyBjBGePeDd4LCUP99/3AR4lneo/c+juQDKjY4e4xOCWFg
         SRs76YVVcWuQ+AEYLmp94c4bzk1enkwpP3xb2xSIKOEA14fmjwBmx2VtXU2ZUNkE9xTb
         OnYCABOs5377rVo4+yn+BAll7zm9BC97n+p+EHsVwwmI8g1H1rAfR3GIFnH6/hz4yTWS
         Gz+9lWO6JLYwlDf7eIQxVwpb/OD/0L5uCmSxxWSolNIuFIM8Pwu6t8uEhbtxhb+CWdkS
         r3rw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705771145; x=1706375945;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2YgJ0315MaLr1O9JtRtkdGotbuY1YPHpBWsHGEMaIL0=;
        b=J68/4pgvT2JWKy6rpr6Rgx5kG+yeB8wXE2xqGEGsMi5Pfd6lsCnBuxRVDFA7OYmax9
         PpDubBeIJRCwteHF2jKfsYeGlr5N/FVVhcb1eg9uZKpBreshqqZBT6TVfwlEcp4rY1UB
         vTpchUN9m89haXYKjyN+/y5V/HvhfcnFZrgCyuXTtg1XjJVh7HbKPK48gaSZKWGgPNx9
         7ovWvCHFfoP3CH1XlcAuU321sSx/7KJsuTJhEphk2FOizOfrhUM+v0StAGJQOs/N+5fE
         y7Zb+nYGpgEj6uEyRC1Hk5QCfc58838+uNrjnIyENvRhKKmoAPuZ8TQxmmcFsUl/jIwQ
         Jj9A==
X-Gm-Message-State: AOJu0YwWHivPld+54KpLgYWJZGtq5OdKN1t6HEqNHbeRvAG7BUQEy1yD
	DPzYjNtARWfxvB+nVsIxkUodohlJqIQqUME+J0RWnZKcHtCwisgpQ2AEUFYnFUgsW9rDMXsyCrT
	6MakyPIbjK9jpynwW0UhOZrJwCcLhXNicKABcERpqddmR0zmZIriZDw==
X-Google-Smtp-Source: AGHT+IHzSnuHUUEgj58rwMk+SXaiaREW0u/GH5da+YEzqa0/OLzHWL6KSN08fB1dKeLs96pT/aVSOC0dhJ5UwB3LaI8=
X-Received: by 2002:a05:6512:783:b0:50f:21e2:b346 with SMTP id
 x3-20020a056512078300b0050f21e2b346mr190724lfr.129.1705771144839; Sat, 20 Jan
 2024 09:19:04 -0800 (PST)
MIME-Version: 1.0
References: <20240108133437.2753194-1-richard.purdie@linuxfoundation.org>
In-Reply-To: <20240108133437.2753194-1-richard.purdie@linuxfoundation.org>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Sat, 20 Jan 2024 18:18:38 +0100
Message-ID: <CAMSfU+57Knz24xXrLdbdrx4N3eDZojQNgPHszh0u_d7AGoVTUQ@mail.gmail.com>
Subject: Re: [yocto] [yocto-autobuilder2] [PATCH] schedulers: Drop mickledore
 for meta-oe/layer-checks
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Content-Type: multipart/alternative; boundary="0000000000002818e7060f63cb4d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 20 Jan 2024 17:19:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62205

--0000000000002818e7060f63cb4d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Le lun. 8 janv. 2024 =C3=A0 14:34, Richard Purdie <
richard.purdie@linuxfoundation.org> a =C3=A9crit :

> Signed-off-by: Richard Purdie <richard.purdie@linuxfoundation.org>
> ---
>  schedulers.py | 6 ------
>  1 file changed, 6 deletions(-)
>

This patch has been merged but not applied to the scheduler config maybe ?
meta-oe-mirror still run on Mickledore 12 days after this patch :
https://autobuilder.yoctoproject.org/typhoon/#/builders/156/builds/215


> diff --git a/schedulers.py b/schedulers.py
> index 4d7522a9..b8ff44b5 100644
> --- a/schedulers.py
> +++ b/schedulers.py
> @@ -487,12 +487,6 @@
> schedulers.append(sched.Nightly(name=3D'nightly-check-layer-nanbield',
> properties=3D
>  schedulers.append(sched.Nightly(name=3D'nightly-meta-oe-mirror-nanbield'=
,
> properties=3Dparent_default_props('meta-oe-mirror', 'nanbield'),
>                    builderNames=3D['meta-oe-mirror'], dayOfWeek=3D[3, 7],
> hour=3D2, minute=3D0, codebases =3D {'' : {'branch' : 'nanbield'}}))
>
> -# Run check-layer-nightly amd meta-oe-mirror twice a week for mickledore
> -schedulers.append(sched.Nightly(name=3D'nightly-check-layer-mickledore',
> properties=3Dparent_default_props('check-layer-nightly', 'mickledore'),
> -                  builderNames=3D['check-layer-nightly'], dayOfWeek=3D[2=
, 5],
> hour=3D2, minute=3D0, codebases =3D {'' : {'branch' : 'mickledore'}}))
> -schedulers.append(sched.Nightly(name=3D'nightly-meta-oe-mirror-mickledor=
e',
> properties=3Dparent_default_props('meta-oe-mirror', 'mickledore'),
> -                  builderNames=3D['meta-oe-mirror'], dayOfWeek=3D[2, 5],
> hour=3D2, minute=3D0, codebases =3D {'' : {'branch' : 'mickledore'}}))
> -
>  # Run check-layer-nightly and meta-oe-mirror twice a week for kirkstone
>  schedulers.append(sched.Nightly(name=3D'nightly-check-layer-kirkstone',
> properties=3Dparent_default_props('check-layer-nightly', 'kirkstone'),
>                    builderNames=3D['check-layer-nightly'], dayOfWeek=3D[0=
, 3],
> hour=3D2, minute=3D0, codebases =3D {'' : {'branch' : 'kirkstone'}}))
> --
> 2.39.2
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62101):
> https://lists.yoctoproject.org/g/yocto/message/62101
> Mute This Topic: https://lists.yoctoproject.org/mt/103596671/4316185
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/7785375/4316185/289819188/xy=
zzy
> [yoann.congal@smile.fr]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000002818e7060f63cb4d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">Le=C2=A0lun. 8 janv. 2024 =C3=A0=C2=A014:34, =
Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org">ri=
chard.purdie@linuxfoundation.org</a>&gt; a =C3=A9crit=C2=A0:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">Signed-off-by: Richard Purdie =
&lt;<a href=3D"mailto:richard.purdie@linuxfoundation.org" target=3D"_blank"=
>richard.purdie@linuxfoundation.org</a>&gt;<br>
---<br>
=C2=A0schedulers.py | 6 ------<br>
=C2=A01 file changed, 6 deletions(-)<br></blockquote><div><br></div><div>Th=
is patch has been merged but not applied to the scheduler config maybe ?=C2=
=A0</div><div>meta-oe-mirror still run on Mickledore 12 days after this pat=
ch : <a href=3D"https://autobuilder.yoctoproject.org/typhoon/#/builders/156=
/builds/215">https://autobuilder.yoctoproject.org/typhoon/#/builders/156/bu=
ilds/215</a></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex">
diff --git a/schedulers.py b/schedulers.py<br>
index 4d7522a9..b8ff44b5 100644<br>
--- a/schedulers.py<br>
+++ b/schedulers.py<br>
@@ -487,12 +487,6 @@ schedulers.append(sched.Nightly(name=3D&#39;nightly-ch=
eck-layer-nanbield&#39;, properties=3D<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-meta-oe-mirror-na=
nbield&#39;, properties=3Dparent_default_props(&#39;meta-oe-mirror&#39;, &#=
39;nanbield&#39;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0builde=
rNames=3D[&#39;meta-oe-mirror&#39;], dayOfWeek=3D[3, 7], hour=3D2, minute=
=3D0, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;nanbield&#39;}})=
)<br>
<br>
-# Run check-layer-nightly amd meta-oe-mirror twice a week for mickledore<b=
r>
-schedulers.append(sched.Nightly(name=3D&#39;nightly-check-layer-mickledore=
&#39;, properties=3Dparent_default_props(&#39;check-layer-nightly&#39;, &#3=
9;mickledore&#39;),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 builderName=
s=3D[&#39;check-layer-nightly&#39;], dayOfWeek=3D[2, 5], hour=3D2, minute=
=3D0, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;mickledore&#39;}=
}))<br>
-schedulers.append(sched.Nightly(name=3D&#39;nightly-meta-oe-mirror-mickled=
ore&#39;, properties=3Dparent_default_props(&#39;meta-oe-mirror&#39;, &#39;=
mickledore&#39;),<br>
-=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 builderName=
s=3D[&#39;meta-oe-mirror&#39;], dayOfWeek=3D[2, 5], hour=3D2, minute=3D0, c=
odebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;mickledore&#39;}}))<br>
-<br>
=C2=A0# Run check-layer-nightly and meta-oe-mirror twice a week for kirksto=
ne<br>
=C2=A0schedulers.append(sched.Nightly(name=3D&#39;nightly-check-layer-kirks=
tone&#39;, properties=3Dparent_default_props(&#39;check-layer-nightly&#39;,=
 &#39;kirkstone&#39;),<br>
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0builde=
rNames=3D[&#39;check-layer-nightly&#39;], dayOfWeek=3D[0, 3], hour=3D2, min=
ute=3D0, codebases =3D {&#39;&#39; : {&#39;branch&#39; : &#39;kirkstone&#39=
;}}))<br>
-- <br>
2.39.2<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62101): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62101" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62101</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103596671/431=
6185" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103596671/4316185</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/778537=
5/4316185/289819188/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/leave/7785375/4316185/289819188/xyzzy</a> [<a h=
ref=3D"mailto:yoann.congal@smile.fr" target=3D"_blank">yoann.congal@smile.f=
r</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D</blockquote></div><span class=
=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_s=
ignature"><div dir=3D"ltr"><font face=3D"Raleway, regular">Yoann Congal</fo=
nt><div><font face=3D"Raleway, regular">Smile ECS - Tech expert<br></font><=
/div></div></div></div>

--0000000000002818e7060f63cb4d--

