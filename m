Return-Path: <sschuberth@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 75648C04FFE
	for <webhook@archiver.kernel.org>; Wed,  8 May 2024 11:59:52 +0000 (UTC)
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
 by mx.groups.io with SMTP id smtpd.web10.10322.1715169583582175180
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 May 2024 04:59:43 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=nGOVvjXq;
 spf=pass (domain: gmail.com, ip: 209.85.218.52, mailfrom: sschuberth@gmail.com)
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a5971c4211bso120005866b.2
        for <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 04:59:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1715169582; x=1715774382; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=tk0XfEmi4Ngo/+CZq9LTx5TpqJa0HdFT3pGBBmZePho=;
        b=nGOVvjXqx0zKkRFuu726i5stBGTgjxerlc0uxVA4eVzRdP+f2sQcNyj309xd2nUYbQ
         6Kf6KzznaaoCYGCqmjRF+ApkHdGCP0gIFXtIs5vXo6HDFdOmI39ES9qf/RYpyPq9mnJI
         COC3d8E6lE+2qgo74hm55zS9EVrN4dtK/clYZSqNrg6HN+o5zbuixW5Agh5z7LnGiEOL
         qdCP025ASa+oSVEBqV4qGQZETzFipbO67ofwUZfvkiuU9ELgMXoLNrfLOUfNM83/jko+
         8ZnItL7/RYDpTSBcNVP2loq3gSRAa/QQhYS7hXm9zpOgo10msJGy8Mx92HCStuCsimLn
         nM3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1715169582; x=1715774382;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tk0XfEmi4Ngo/+CZq9LTx5TpqJa0HdFT3pGBBmZePho=;
        b=ife13OGgNlJ+u005LIJUanxk1Y5UgiRMevx7PVbzBEdyhLrqf2+AcPD1Io74ONuqXR
         nV+Drrk8iF1J4D+mcT8TCpQATBoYsnQIe/ER9gnWyQCtnSTDUhV2QEWQ28Fvdo/ebGC6
         BzbyaSvSRP4NaZIXlEqLUgpRIkmX2G7I31G298EbJg/Ny39Ob56HsOY1f+pXghgbDqC4
         OKqA75MczCOdqrZyEyrs3GZlJKM2d4Hac4d1d1Pq9tfN7lwwyxgZBJsjHoiGTRZf0F4Z
         nySq0n1h/ZSWubaMEQRjiKkKcWR/EEZvnC2jridaNbkRG/ZwKEmMZCn79U+tOApvRw9o
         12ow==
X-Gm-Message-State: AOJu0Yw1kprvGz8UhRUOZpYIN3r5+2WpDD+QjaMo7tilW89S9BJpyoe+
	AlU+rOUFCFdzp6/5bLZL9iRMbzmr9thWvK13r4rxiE6w0whU0l1fhQCSJ5AfJiXq+QJ9MBEop1U
	28mO2MmOE1ixvqEuV0T6CNhp3cRTYnXS1
X-Google-Smtp-Source: AGHT+IGp6ihuy/ZECXK+uyACvn45mYybq3Kj6quYECuIy4L+Oz42Nfyx6++BvFkWXdtB0fSq/Md+ZhmoR5jYf6RO+E0=
X-Received: by 2002:a05:6402:3894:b0:572:543c:70eb with SMTP id
 4fb4d7f45d1cf-5731da28059mr1694680a12.2.1715169581269; Wed, 08 May 2024
 04:59:41 -0700 (PDT)
MIME-Version: 1.0
From: Sebastian Schuberth <sschuberth@gmail.com>
Date: Wed, 8 May 2024 13:59:29 +0200
Message-ID: <CAHGBnuPBiOEEHnnCuPA-1AxTq60qCsMcP3-y=PvkVqguGyAt+w@mail.gmail.com>
Subject: Generating SPDX documents without actually building anything
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009f0bc00617f009e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 May 2024 11:59:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63052

--0000000000009f0bc00617f009e3
Content-Type: text/plain; charset="UTF-8"

Hi all,

to start with a disclaimer, I'm a total noob when it comes to Open Embedded
/ Embedded Linux / Yocto / BitBake stuff. That said, I'm in need of
creating SPDX documents for Yocto projects in the context of [1]. I'm
already quite far in that I work with Poky and programmatically run
something like

bitbake -r
/home/sebastian/Development/GitHub/doubleopen-project/ort/plugins/package-managers/bitbake/src/main/resources/spdx.conf
-c create_spdx xmlto

However, I continuously run into various build problems on my Fedora 40
machine (one of which has been recently addressed by [2]), let alone the
time it takes to build something from scratch, even something as small as
e.g. the "xmlto" target. So, ideally, I would be able to create SPDX
documents without really building any binaries at all. I probably want all
the source download and patching to happen, in order to archive the patched
code that goes into the binaries, but skip the actual compiler / linker
invocations to save time, and just create the SPDX documents.

Is something like this already possible somehow, maybe by setting from
compiler / linker variables to fake scripts that just do nothing?

Thanks for any insights!

[1]: https://github.com/oss-review-toolkit/ort/issues/722
[2]:
https://github.com/openembedded/bitbake/commit/f10e630fd7561746d835a4378e8777e78f56e44a

-- 
Sebastian Schuberth

--0000000000009f0bc00617f009e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><div class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace">Hi all,</div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-fami=
ly:monospace,monospace">to
 start with a disclaimer, I&#39;m a total noob when it comes to Open=20
Embedded / Embedded Linux / Yocto / BitBake stuff. That said, I&#39;m in=20
need of creating SPDX documents for Yocto projects in the context of=20
[1]. I&#39;m already quite far in that I work with Poky and programmaticall=
y
 run something like</div><div class=3D"gmail_default" style=3D"font-family:=
monospace,monospace"><br></div><div class=3D"gmail_default" style=3D"font-f=
amily:monospace,monospace"><span style=3D"font-family:monospace"><span styl=
e=3D"color:rgb(0,0,0);background-color:rgb(255,255,255)">bitbake -r /home/s=
ebastian/Development/GitHub/doubleopen-project/ort/plugins/package-manager<=
/span>s/bitbake/src/main/resources/spdx.conf -c create_spdx xmlto<br></span=
></div><div class=3D"gmail_default" style=3D"font-family:monospace,monospac=
e"><span style=3D"font-family:monospace"><br></span></div><div class=3D"gma=
il_default" style=3D"font-family:monospace,monospace"><span>However,
 I continuously run into various build problems on my Fedora 40 machine=20
(one of which has been recently addressed by [2]), let alone the time it
 takes to build something from scratch, even something as small as e.g.=20
the &quot;xmlto&quot; target. So, ideally, I would be able to create SPDX=
=20
documents without really building any binaries at all. I probably want=20
all the source download and patching to happen, in order to archive the=20
patched code that goes into the binaries, but skip the actual compiler /
 linker invocations to save time, and just create the SPDX documents.</span=
></div><div class=3D"gmail_default" style=3D"font-family:monospace,monospac=
e"><span><br></span></div><div class=3D"gmail_default" style=3D"font-family=
:monospace,monospace"><span>Is
 something like this already possible somehow, maybe by setting from=20
compiler / linker variables to fake scripts that just do nothing?</span></d=
iv><div class=3D"gmail_default" style=3D"font-family:monospace,monospace"><=
span><br></span></div><div class=3D"gmail_default" style=3D"font-family:mon=
ospace,monospace"><span>Thanks for any insights!<br></span></div><div class=
=3D"gmail_default" style=3D"font-family:monospace,monospace"><br></div><div=
 class=3D"gmail_default" style=3D"font-family:monospace,monospace">[1]: <a =
href=3D"https://github.com/oss-review-toolkit/ort/issues/722" target=3D"_bl=
ank">https://github.com/oss-review-toolkit/ort/issues/722</a></div><div cla=
ss=3D"gmail_default" style=3D"font-family:monospace,monospace">[2]: <a href=
=3D"https://github.com/openembedded/bitbake/commit/f10e630fd7561746d835a437=
8e8777e78f56e44a" target=3D"_blank">https://github.com/openembedded/bitbake=
/commit/f10e630fd7561746d835a4378e8777e78f56e44a</a></div><div class=3D"gma=
il_default" style=3D"font-family:monospace,monospace"><br></div></div><div>=
<div dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signatur=
e"><div dir=3D"ltr"><div>-- <br></div><div>Sebastian Schuberth</div></div><=
/div></div></div>

--0000000000009f0bc00617f009e3--

