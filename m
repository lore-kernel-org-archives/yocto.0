Return-Path: <challinan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2BBCC433EF
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 15:07:38 +0000 (UTC)
Received: from mail-yb1-f172.google.com (mail-yb1-f172.google.com
 [209.85.219.172])
 by mx.groups.io with SMTP id smtpd.web09.105.1645024057430098694
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 07:07:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=NFZsBHK2;
 spf=pass (domain: gmail.com, ip: 209.85.219.172,
 mailfrom: challinan@gmail.com)
Received: by mail-yb1-f172.google.com with SMTP id v186so6727783ybg.1
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 07:07:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=bpMbrrOCvoUojfmwXwSvvyXJmeDfIriU29otZdRuvRw=;
        b=NFZsBHK2NdXcK0QcjJPZzgWvPT0Zdxk1twp7YhwxgT4qUB2LpkSz14xAtXkweDTlBn
         WiZEG98WFonw33/D236FW4X+nDEZ+AWox/pHGaG1PLUmBg1qy1oSDJev7E9pJq8EMmrq
         Ls+C3n7MBYgnisYTaMlSppV5ri3Dj4PbThYhvfTJXlNlCVxECN7Ru4Z0Svwzv7YWgUsn
         YRULo/xMo9xldUfB8f55/8fJKrJnKLkWDdJwQYMG2XhVjaSrvyX5DoY4n/wqseJ+oof+
         FjFqLAATd1/f0ZigmYGVfVaAfP08oHgSvtj2OxvYDu9vuPnAA8+4n/LFI+Tq/V7+88UQ
         2NWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=bpMbrrOCvoUojfmwXwSvvyXJmeDfIriU29otZdRuvRw=;
        b=vMHOqBbq++gUs2GDvUPPwV2OEGepMVUMaGdZPSKxnyfqhG7wF35Zdu4g4ltJo4f9e7
         WLmPfmCEfM1LzsxMDMq1CRAmVsU1ysltbt9gxWtcZe/Zrn/6uKKeRgZ+WcbR3MRXCb7l
         NDkXdJg48kUgGoQmJ+F6QS453cVgGI1HzHhs2TMt4It72hNKqkk3vxbloMPzM+hE23kk
         3ADIeWPRWiU3ixjfm018wOt/mofAFqzPwE7GhkRf3dGc30/qJsQykDTzuAK7hs43e7H0
         RCRqXqjwMHLJY6+3LL4+QBE6l3jpIWuaHXjkmhhFkanMr7zaF0/lQjIwYa7fVA8EoHoY
         bksQ==
X-Gm-Message-State: AOAM533YOCJekgZrOnPd5l0wPDE7C2VRQyk4i43YsuUXtPxamePaeMDD
	8AJAa/yDvJvJAmSx5G4LP9BycasfAS3FF+AG4BPYB9q2
X-Google-Smtp-Source: 
 ABdhPJwteYp9SmpSdltGH2BFs/qsmh1UqBDSJpZR7A2X/6yp1jUqIvMOcQYcN5hbB8NFpJZMBCwSHXoyHsOMBytsQyQ=
X-Received: by 2002:a81:4ed2:0:b0:2d2:5bc5:250a with SMTP id
 c201-20020a814ed2000000b002d25bc5250amr2820419ywb.130.1645024056211; Wed, 16
 Feb 2022 07:07:36 -0800 (PST)
MIME-Version: 1.0
From: Chris Hallinan <challinan@gmail.com>
Date: Wed, 16 Feb 2022 10:07:25 -0500
Message-ID: 
 <CAME0jBQoyY20a8z6kuP4WEfjBk1W88tLOUS=i1vYA_byaOEQ=w@mail.gmail.com>
Subject: Interesting discussion on github relating to branch (re)naming
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000847b3605d82402e4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 15:07:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56209

--000000000000847b3605d82402e4
Content-Type: text/plain; charset="UTF-8"

https://github.com/fsnotify/fsnotify/issues/426

I discovered the issue while building something on Warrior.  Yeah, I know
it's been fixed a couple weeks ago in Yocto, but it brings up a bigger
point of discussion.

Thought some of you might want to know if you haven't come across the issue
yet.

Cheers!

Chris

--000000000000847b3605d82402e4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><a href=3D"https://github.com/fsnotify/fsnotify/issues/426=
" target=3D"_blank">https://github.com/fsnotify/fsnotify/issues/426</a><br>=
<div><br></div><div>I discovered the issue while building something on Warr=
ior.=C2=A0 Yeah, I know it&#39;s been fixed a couple weeks ago in Yocto, bu=
t it brings up a bigger point of discussion.=C2=A0</div><div><br></div><div=
>Thought some of you might want to know if you haven&#39;t come across the =
issue yet.</div><div><br></div><div>Cheers!</div><div><br></div><div>Chris<=
/div></div>

--000000000000847b3605d82402e4--

