Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9860DC001DF
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 13:32:38 +0000 (UTC)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com [209.85.167.169])
 by mx.groups.io with SMTP id smtpd.web10.54295.1697808754211308426
 for <yocto@lists.yoctoproject.org>;
 Fri, 20 Oct 2023 06:32:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=b39QZDXa;
 spf=pass (domain: gmail.com, ip: 209.85.167.169, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oi1-f169.google.com with SMTP id 5614622812f47-3af64a4c97eso551713b6e.2
        for <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 06:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697808753; x=1698413553; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=T/MeSHmwgCBewHRVVF+wRlQcuE/172oQl+qlxurrsjE=;
        b=b39QZDXaqhfCA7QyN63bgXkvXPlO2XrCmaAIl2rbjWoYPbVSxSMUb99oNMyTGHIub1
         phr71OIZ8eN1LHqDQXgoiq8UHHD11sU3D0AWR9oijmk+0PbmxbreKzwX6gjbe11u6NA9
         Y1Lr+k9luXhhw/XK0GD7+eND1iJEr0Q2mU1r/QiwP4JRmp9PlyR7C8sslrOnI58dMFij
         q+WM2vFQPIea+XNivLhuMAE7p2dyz0gHThtTPLm9Eg4FPeAy2RIyGpAD8yp3NOVciS+Y
         JCuxgpJccLLNqkD5xdcw7cfG3cavXTZaGBmfU5N1mua7NfgwhFYbGNLMWI9yTx+9/qe+
         aq7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697808753; x=1698413553;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T/MeSHmwgCBewHRVVF+wRlQcuE/172oQl+qlxurrsjE=;
        b=CoDKxukL8RFpd1J9KM74TdRDzchme4cWOaGWJwiu2oW5atI+3U0e6NDtfwSaUeNTwn
         /aN+gGjAPc51d2wkgVzRmIq+hyrlSme7pRPGN2PKf3xTtvwLKLyehQMYilg567rnCJhc
         HgSj0ERyP/ut25Zu9k03N6UbX0MXAehVekWwNk2FmQOXgk3sS+fxeuK8HR90Q/Sch4Bu
         d79g5vcQ2ZLCKd3r1jJUzQCR0YvLYXVW1eRdTV5hNomxkaJqzH35rjB9qc9YvJfa0fwF
         ykE/ad4EKWBZ9tzsdBUlrRPrQZAIoG5CcBH3DGm8P8BFSngOxRHBilVphNfWgwoOQIjt
         RWpw==
X-Gm-Message-State: AOJu0Yws6T1C9HXOJA74zsMYozI6lGnJOMD85NCQciRlBlpUJpau1Bs+
	WRYapKwuNhMVIMLb1MgRUjbeSyr0RaZx/oDY+4g=
X-Google-Smtp-Source: AGHT+IFd5REr0Hbo+wlGvYypUYjFyJ43JAOubSuASZ2MWu3DsaWE/3Wy0n8FM8D8G76tZFm5afsFvSGFjfj4p1+TdJY=
X-Received: by 2002:a05:6808:ca:b0:3a8:3d5b:aad6 with SMTP id
 t10-20020a05680800ca00b003a83d5baad6mr1915858oic.55.1697808753435; Fri, 20
 Oct 2023 06:32:33 -0700 (PDT)
MIME-Version: 1.0
References: <SI8G.1697802918201554942.vNSZ@lists.yoctoproject.org>
In-Reply-To: <SI8G.1697802918201554942.vNSZ@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Fri, 20 Oct 2023 15:32:21 +0200
Message-ID: <CAB3asfjOm1+SMBi2S4n5qrOnx-rNfgg48mjihaRekLY5-k35EA@mail.gmail.com>
Subject: Re: [yocto] Http access token fetching with gitsm fetcher
To: alexzoyv@gmail.com
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000a52a4b060825e7cb"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 13:32:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61433

--000000000000a52a4b060825e7cb
Content-Type: text/plain; charset="UTF-8"

Did you already consider to write the credentials in a  .netrc file?

Regards
Adrian

<alexzoyv@gmail.com> schrieb am Fr., 20. Okt. 2023, 13:55:

> Greetings!
> I try to use gitsm fetcher to fetch bitbucket repository with read-only
> https access token. SRC_URI looks like this
>
> SRC_URI =
> "gitsm://******.git;protocol=https;branch=${BRANCH};user=azoykin:${TOKEN}"
>
> This recipe fetches parent repository, but is unable to fetch submodule,
> writing *fatal: could not read Username for 'https://tps-git.topcon.com
> <https://tps-git.topcon.com>': No such device or address *in log.do_fetch
> It happens because url is passed to fetcher function already with user
> string. I suggest a patch to fix this issue
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61430):
> https://lists.yoctoproject.org/g/yocto/message/61430
> Mute This Topic: https://lists.yoctoproject.org/mt/102079282/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--000000000000a52a4b060825e7cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Did you already consider to write the credentials in a=C2=
=A0 .netrc file?<div dir=3D"auto"><br></div><div dir=3D"auto">Regards</div>=
<div dir=3D"auto">Adrian</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr"> &lt;<a href=3D"mailto:alexzoyv@gmail.com">al=
exzoyv@gmail.com</a>&gt; schrieb am Fr., 20. Okt. 2023, 13:55:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex">Greetings!<br>I try to use gitsm fetcher to fet=
ch bitbucket repository with read-only https access token. SRC_URI looks li=
ke this
<blockquote>
<div>SRC_URI =3D &quot;gitsm://******.git;protocol=3Dhttps;branch=3D${BRANC=
H};user=3Dazoykin:${TOKEN}&quot;</div>
</blockquote>
<div>This recipe fetches parent repository, but is unable to fetch submodul=
e, writing=C2=A0<em>fatal: could not read Username for &#39;<a href=3D"http=
s://tps-git.topcon.com" target=3D"_blank" rel=3D"noreferrer">https://tps-gi=
t.topcon.com</a>&#39;: No such device or address </em>in log.do_fetch<br>It=
 happens because url is passed to fetcher function already with user string=
. I suggest a patch to fix this issue<br><br></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61430): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61430" rel=3D"noreferrer noreferrer" target=3D"_blank">https://l=
ists.yoctoproject.org/g/yocto/message/61430</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/102079282/445=
4582" rel=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctopr=
oject.org/mt/102079282/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank" rel=3D"noreferrer">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer" target=3D"_blank">https://lists.yoctoproject.org=
/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofer@gmail.com" target=3D=
"_blank" rel=3D"noreferrer">adrian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a52a4b060825e7cb--

