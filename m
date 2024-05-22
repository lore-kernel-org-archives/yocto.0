Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB48C25B77
	for <webhook@archiver.kernel.org>; Wed, 22 May 2024 06:39:28 +0000 (UTC)
Received: from mail-lj1-f170.google.com (mail-lj1-f170.google.com [209.85.208.170])
 by mx.groups.io with SMTP id smtpd.web11.3633.1716359959044733780
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 May 2024 23:39:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Pd+SkKXy;
 spf=pass (domain: gmail.com, ip: 209.85.208.170, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f170.google.com with SMTP id 38308e7fff4ca-2e3e18c240fso58922341fa.0
        for <yocto@lists.yoctoproject.org>; Tue, 21 May 2024 23:39:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716359957; x=1716964757; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=w6vmQnOL6i7HLI8I5VtjHUMG0i8tSVuKfm38sF3R1GE=;
        b=Pd+SkKXyMdoyUhxdYQWktdrmKMbeMDLFKyvzG+TtU0ituJ2Bw7HeOEjnVBMupqhAG4
         2I6rf8JeqUoNOrGXpqq/FnXHh50kn6gKaAmNK6Ojb4uwyJRimGo+LzwnmXFqlCrFrmhv
         s+uMi1RgjiFE8S5MRC5olqWDDlFQMYpmz2Z+tm0eS0v4ttP2QmP4Kuxfy5Zm/luuPg7E
         1kwuXRvhUjIffwmm6Ncp8O2VxfvirsLJVeWXR4GYphvulbYtNXPWV4+Z9+B0mhANh6lo
         ztBr1AXaGG4KqoATbqP+2dDP2jpOGkHovp7B0IekDkCJnOmnricTZy2xtW62OqHNKPYN
         bccA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716359957; x=1716964757;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w6vmQnOL6i7HLI8I5VtjHUMG0i8tSVuKfm38sF3R1GE=;
        b=pvbWH5/rX8VDCAqiFcJ8uRS2u9kDFaJOcLHJ5xiHnslUJ5/B9+8Oc3TG4QgR/E5Kvs
         yJoBC6XurHPpuKbYHsG+mwkppfMMIF02eO7EPHzv0qfWWqXWbIa9QgYDsy0MtgRAMB/D
         /rBU+g1aXlYaohaBnfrWw7xnXssk9aNhOv+Ob+s1rHQ0JpIZawQD7QqfYe8oBYLZ7JKH
         oPPBn5vqFnldbvpFCD+sYxMZ572rbcTOXfLjfRBCDsq1AFz2/qAcuaxMAoi9hFsvEOS6
         DlTAx8bvEOhsWjekQln6AwiKnPSkCoewvSzc4F0L28YXwJLbfn0wrJsRqlYfqkJ1fwnD
         WlWw==
X-Gm-Message-State: AOJu0Yx2p+bYDau9nfntLBnw0W5AJXgALsIUzPqyPcMJsy6HDnwiTGQx
	m3vxXHdh1S48nKSeY+T0URdpBO/nPNpOMV5Rmsig93DWVyNWqSyJ9R0akXGtSX4SxSK9TVFkzTc
	5h9RBxg0DOHmXY4tnbYQdoPRRB0o=
X-Google-Smtp-Source: AGHT+IEIq6PoIqg7MXnYdX2FdIgRwdbY+L1fzl+Opit/ZxoszdzjiGddhNV6inUnCXsGiVQs/rlX5ByYWxpn8wgLLJg=
X-Received: by 2002:a2e:9010:0:b0:2e6:f469:30c9 with SMTP id
 38308e7fff4ca-2e9494f7fdemr9018261fa.29.1716359956810; Tue, 21 May 2024
 23:39:16 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_Ur679b81UQo+yTfQ6hud_xdK2K-AXT2O+hOVJpory1Q@mail.gmail.com>
 <28231.1716358504486744347@lists.yoctoproject.org>
In-Reply-To: <28231.1716358504486744347@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 May 2024 08:39:05 +0200
Message-ID: <CANNYZj-vGjLnjV3_oY5kMzXD927wmHcX6fpS0w9nDgbg9NwQkQ@mail.gmail.com>
Subject: Re: [yocto] Git Auth error on ls-remote (git-remote-https) since
 update to Yocto-5.0
To: lukas.weiss@janitza.de
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000088518406190531f0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 May 2024 06:39:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63164

--00000000000088518406190531f0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

You might want to try to bisect poky? If there=E2=80=99s any fix, it needs =
to be
justified with something else than =E2=80=98unbreaks passwords in recipes=
=E2=80=99.

Alex

On Wed 22. May 2024 at 8.15, Lukas Wei=C3=9F via Lists.Yoctoproject.Org
<lukas.weiss=3Djanitza.de@lists.yoctoproject.org> wrote:

> You are definitely right, we should switch to another auth mechanism. It'=
s
> not that easy, as build shall work in CI on our Build-Server - haven't
> found a good "best practice" here yet.
>
> But why did it work 2 weeks ago (even on Yocto-5.0) and still does for
> other git-commands than ls-remote?

--00000000000088518406190531f0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">You might want to try to bisect poky? If there=E2=80=99s =
any fix, it needs to be justified with something else than =E2=80=98unbreak=
s passwords in recipes=E2=80=99.</div><div dir=3D"auto"><br></div><div dir=
=3D"auto">Alex</div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" cl=
ass=3D"gmail_attr">On Wed 22. May 2024 at 8.15, Lukas Wei=C3=9F via <a href=
=3D"http://Lists.Yoctoproject.Org">Lists.Yoctoproject.Org</a> &lt;lukas.wei=
ss=3D<a href=3D"mailto:janitza.de@lists.yoctoproject.org">janitza.de@lists.=
yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:s=
olid;padding-left:1ex;border-left-color:rgb(204,204,204)">You are definitel=
y right, we should switch to another auth mechanism. It&#39;s not that easy=
, as build shall work in CI on our Build-Server - haven&#39;t found a good =
&quot;best practice&quot; here yet. <br><br>But why did it work 2 weeks ago=
 (even on Yocto-5.0) and still does for other git-commands than ls-remote?
</blockquote></div></div>

--00000000000088518406190531f0--

