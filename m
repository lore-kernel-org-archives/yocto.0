Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1665EC3DA7F
	for <webhook@archiver.kernel.org>; Tue, 30 Jul 2024 20:46:13 +0000 (UTC)
Received: from mail-pg1-f174.google.com (mail-pg1-f174.google.com [209.85.215.174])
 by mx.groups.io with SMTP id smtpd.web10.27523.1722372366397979826
 for <yocto@lists.yoctoproject.org>;
 Tue, 30 Jul 2024 13:46:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20230601.gappssmtp.com header.s=20230601 header.b=WntCNtSw;
 spf=softfail (domain: sidebranch.com, ip: 209.85.215.174, mailfrom: leon@sidebranch.com)
Received: by mail-pg1-f174.google.com with SMTP id 41be03b00d2f7-7a1be7b7bb5so3715517a12.0
        for <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 13:46:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20230601.gappssmtp.com; s=20230601; t=1722372365; x=1722977165; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zMRSWdGP+ELwOGlGZTFr+Z+6ACXUic24TfgYC9KMsTk=;
        b=WntCNtSwU6EzUpU8iRA7wL5uwbNESEDd3GRltzbGYsMBzryKtWcB9pcUgBAsn+V6pi
         zDHxCQgYfL7bUa7kDcrfWUiI93xAvjtcBF0Dln5AihvTiaqsOZko0nV1EFx5lXp9hj+5
         wJI9hIr4S7t3mhWd7jrO5IaeG8lzdyB55HupYrYQ5Yg7gaLdw5SdR7mDhwjDMGN8MSNk
         EGs0/OV/bY+n7us0plUIR5GwAevOr0nwLY4d+FAYREU6fQgAm3BkQY82Ywt8vHm5cd9F
         dwRavjjRlvvjBtALuHom/y+JS5Booft4+8kn0Mp9wqI2vKPTij03PHEhK2w0qEH0P8L2
         naPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722372365; x=1722977165;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zMRSWdGP+ELwOGlGZTFr+Z+6ACXUic24TfgYC9KMsTk=;
        b=R+yTWKv47vBG9YFFi/n/Wf7ENkjoGJVwRtU7WXvbneVq0QjDF73sGehZMGfEG88/jk
         Sr2Cg00GFrmO57ir2Zx30DDRSIyH7UKZfMalPAdpRYW+yBVqyCtGXUiyQTXEtjGr1yIy
         myh9IPBRbqZqLNuAUYWB9lnQWDQuYg5tnlz8e4iZeY2dPi+zrRgETRHluvx840ZrXs1N
         lOPRN4ftWa9srLVdUAMQsMGfNLcgzcLkdv/MOKRKQ5TW8xnTxuG6UC8/vfacSuvlkskr
         SJiVLokqMzKP0ao8V4bWkCoBk7eBK6vHKL3UraUy+o8MTr2O5yowiuj2U2mRgqEEQGJ3
         Dqkg==
X-Forwarded-Encrypted: i=1; AJvYcCUCSfXoCHz15p4RELGXQFpxrZKt6ESi6YTP3BvTVg8mRramiNJ0A5KBhD0if3pE0DG/mGGn9LajTFFlpXZKj4gZLXV7nj0sr6/nK5gJ
X-Gm-Message-State: AOJu0YxY2tYB8VkUUouZIKHbne0yivCcjcZXyCrBaHswNRL178bBp225
	O2lLRnNxeBlc6Xi2cTCZiFaqjQE0TV/HMwzwqPk6yqPXNqOIkoSSVOfYAUL9DYk99M81bsZ3Ndb
	GOE6McxQJUQieDVrTxUAm/zu8FKVv0rX4y+EvPQ==
X-Google-Smtp-Source: AGHT+IG4DVI0BfUsAD8BnblmJ7Y3brwLaDGp0oxmuYpOgJqpNEgPK3LCCUEU5zBSqKZhMaGL8if6WaPxLca9xyh9Axc=
X-Received: by 2002:a17:90a:888:b0:2cb:55f9:b7c5 with SMTP id
 98e67ed59e1d1-2cf7e1df02dmr14305111a91.12.1722372365308; Tue, 30 Jul 2024
 13:46:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAOf3PZwgrx7jo7mjuQGJZ8YXxHaDrRi8mOiDY5JL-Zz92xx+sg@mail.gmail.com>
In-Reply-To: <CAOf3PZwgrx7jo7mjuQGJZ8YXxHaDrRi8mOiDY5JL-Zz92xx+sg@mail.gmail.com>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Tue, 30 Jul 2024 22:45:53 +0200
Message-ID: <CAMjhiJisg+Fr8pQKA6TtWBbvGD5H-q3d1CkiDHO_OrRZnDSnPQ@mail.gmail.com>
Subject: Re: [yocto] Diff / Delta file between two rootfs images.
To: patryk.seregiet@gmail.com, yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000017436061e7d1171"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 30 Jul 2024 20:46:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63615

--000000000000017436061e7d1171
Content-Type: text/plain; charset="UTF-8"

Hello Patryk,


On Tue, 30 Jul 2024 at 22:02, patryk seregiet via lists.yoctoproject.org
<patryk.seregiet=gmail.com@lists.yoctoproject.org> wrote:

> Hello,
> I'd like to create a diff/delta file between two rootfs images.


You didn't explain why (or I missed that), but the OSTree project might be
interesting; it can do diff based atomic upgrades between images with roll
back etc., but it's probably a bit more setup work then what mender
provides.

Although ostree with yocto worked well in our commercially deployed IoT
devices.

>
Regards, Leon

>
>

--000000000000017436061e7d1171
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Patryk,</div><div><br></div><div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, 30 Jul 2024 at 2=
2:02, patryk seregiet via <a href=3D"http://lists.yoctoproject.org">lists.y=
octoproject.org</a> &lt;patryk.seregiet=3D<a href=3D"mailto:gmail.com@lists=
.yoctoproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-color:=
rgb(204,204,204)" dir=3D"auto">Hello,<br>
I&#39;d like to create a diff/delta file between two rootfs images.</blockq=
uote><div dir=3D"auto"><br></div><div dir=3D"auto">You didn&#39;t explain w=
hy (or I missed that), but the OSTree project might be interesting; it can =
do diff based atomic upgrades between images with roll back etc., but it&#3=
9;s probably a bit more setup work then what mender provides.</div><div dir=
=3D"auto"><br></div><div dir=3D"auto">Although ostree with yocto worked wel=
l in our commercially deployed IoT devices.</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-style:solid;padding-left:1ex;border-left-color:rgb(204,204,204)" dir=3D"au=
to"></blockquote><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px =
0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;bo=
rder-left-color:rgb(204,204,204)" dir=3D"auto">
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Regards, Leon</d=
iv><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;bord=
er-left-width:1px;border-left-style:solid;padding-left:1ex;border-left-colo=
r:rgb(204,204,204)" dir=3D"auto"><br>
</blockquote></div></div>

--000000000000017436061e7d1171--

