Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBEACC77B6E
	for <webhook@archiver.kernel.org>; Fri, 14 Apr 2023 07:37:19 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web11.3825.1681457838018590604
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Apr 2023 00:37:18 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@sidebranch-com.20221208.gappssmtp.com header.s=20221208 header.b=TK5r5c2u;
 spf=softfail (domain: sidebranch.com, ip: 209.85.128.178, mailfrom: leon@sidebranch.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-54fe82d8bf5so15905887b3.3
        for <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 00:37:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20221208.gappssmtp.com; s=20221208; t=1681457836; x=1684049836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=N788JjhBhB+4/CnzCAbmE44yrgiSUJVsNO2tUttaMzk=;
        b=TK5r5c2uCR5kT510WYiOf1D7+Of/tvJ+/HnYzaJeTsgFHqi2llHuHKluBMfVu6tAFt
         7n6CqXQmBwdvGrfEIHbLGwkp5Jdd4O6qDGf7cO6rGPBDOy+VcxmuUn+Ed8Hr9tQHnG4E
         p6n+VbYIaLxJr1EMHXuG/jYRp91NukQyAFoKx00UmWjfo0dWe93OwqbSJ5IUT6uAJUF5
         b88NTP58RB8rTZDXT7EwRGuGUnWN95tQ07TdvH1fMNWTWwEnyt/KtMDqcjwhq6UekRG8
         WsH1Udz+rPS7h2sH94bXknhzG12XCdIJzDhJYxIvuU4CZoFhbiM4SdUBn6cSn83FvvlY
         QdOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681457836; x=1684049836;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N788JjhBhB+4/CnzCAbmE44yrgiSUJVsNO2tUttaMzk=;
        b=IOQkBco1zIo0pG0nNRK3RfcgXycQnPXXYevo6QRCfAvxGpm3YZzYCvUkoOHS8WnQJz
         eQq4swSz9AADfA4Qmrj523Bh6KXYGmQLTmEVJWpYUdJKmMl4DhfqBwo7drSPcHpOnfcM
         qRuPLsuwfT7I1F5j5hiFRey+iFDGGiFD00emsLQVQ+1j7wcRk0MUYq0QcZrq6wfDBmKD
         MFAkPZk0nWR4ew5sFDzKicn0+az+ciEtITg7fg2XOC2swuZAGv7lEQxnq38QRYWDOsFU
         kFmxptmzOEsEWJvvfg70/JRPF3VvnDHIUz1OdMbBTaMmckJ0qZwtu9L3MiADWUAT26dY
         u18g==
X-Gm-Message-State: AAQBX9cbypyVf2KDMumXFa0RpS1jXXWYEHXjQdBYd433bI5aJjkENB7E
	so5LKa5hIExSv4EnZpFqgSbhmIlcbpPRKK6yOuctsQ==
X-Google-Smtp-Source: AKy350YBnwlLohta5ipmX2FB/c1IuQexDNZEMz0EDruQoxaNrJK2HJwcrgM9apaBjLb8MC4IaCNWHDul1geiT7YltUw=
X-Received: by 2002:a81:c406:0:b0:54f:84c0:93ff with SMTP id
 j6-20020a81c406000000b0054f84c093ffmr3029627ywi.5.1681457836444; Fri, 14 Apr
 2023 00:37:16 -0700 (PDT)
MIME-Version: 1.0
References: <YT3P288MB0272CE87F9889C6CDF8F0AEDCF989@YT3P288MB0272.CANP288.PROD.OUTLOOK.COM>
 <ZDj/mVscjqoHyegi@nuoska>
In-Reply-To: <ZDj/mVscjqoHyegi@nuoska>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 14 Apr 2023 09:37:05 +0200
Message-ID: <CAMjhiJgCyuFQCNi7r=Kg+wo66Dh6ZT_LT5igXd0iewThi+Padw@mail.gmail.com>
Subject: Re: [yocto] Give access token to yocto build. (pass environment
 variable to bitbake)
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: philippe@rmds.ca, 
	"yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000000be3e605f946e97d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Apr 2023 07:37:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59712

--0000000000000be3e605f946e97d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Apr 14, 2023 at 9:24=E2=80=AFAM Mikko Rapeli <mikko.rapeli@linaro.o=
rg>
wrote:

>
> The environment variables and thus secrets are easily leaking into build
> logs so I would not use them.
>
> Instead, I would use .netrc for git and anything using curl (http
> fetcher). subversion caches passwords into ~/.subversion directory once
> the password has been given once.
>
> In CI, these can be deployed automatically using ansible etc and
> developers should setup these for their own machines.
>
> Hope this helps,
>
> I think this is wrong advice, we switched away from this years ago as wit=
h
docker and CI/CD, as the security implications are easily exposable.
There is not enough info in OP and I persist this is off-topic here, so no
answer can be good. See:

docker secret

https://blog.gitguardian.com/how-to-handle-secrets-in-docker/

--0000000000000be3e605f946e97d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"g=
mail_attr">On Fri, Apr 14, 2023 at 9:24=E2=80=AFAM Mikko Rapeli &lt;<a href=
=3D"mailto:mikko.rapeli@linaro.org">mikko.rapeli@linaro.org</a>&gt; wrote:<=
br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8e=
x;border-left:1px solid rgb(204,204,204);padding-left:1ex"><br>
The environment variables and thus secrets are easily leaking into build<br=
>
logs so I would not use them.<br>
<br>
Instead, I would use .netrc for git and anything using curl (http<br>
fetcher). subversion caches passwords into ~/.subversion directory once<br>
the password has been given once.<br>
<br>
In CI, these can be deployed automatically using ansible etc and<br>
developers should setup these for their own machines.<br>
<br>
Hope this helps,<br>
<br></blockquote><div>I think this is wrong advice, we switched away from t=
his years ago as with docker and CI/CD, as the security implications are ea=
sily exposable.</div><div>There is not enough info in OP and I persist this=
 is off-topic here, so no answer can be good. See:<br></div><div><br></div>=
<div><pre class=3D"gmail-language-shell" tabindex=3D"0"><code class=3D"gmai=
l-language-shell">docker secret <br><br><a href=3D"https://blog.gitguardian=
.com/how-to-handle-secrets-in-docker/">https://blog.gitguardian.com/how-to-=
handle-secrets-in-docker/</a></code></pre></div></div></div>

--0000000000000be3e605f946e97d--

