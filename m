Return-Path: <arik.kleiman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 10426C433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 17:35:48 +0000 (UTC)
Received: from mail-oi1-f177.google.com (mail-oi1-f177.google.com
 [209.85.167.177])
 by mx.groups.io with SMTP id smtpd.web11.10174.1641317747588590811
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 09:35:47 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=YjIhS7Im;
 spf=pass (domain: gmail.com, ip: 209.85.167.177,
 mailfrom: arik.kleiman@gmail.com)
Received: by mail-oi1-f177.google.com with SMTP id i9so52245640oih.4
        for <yocto@lists.yoctoproject.org>;
 Tue, 04 Jan 2022 09:35:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=IhOwv31JFFip/TbgMFmuJtS9kQjTiOcD38ChomqNMuI=;
        b=YjIhS7ImrRXVSyy7Bm6ZNWHDeGIHcZ5xPESYYK432i/rgmLbOxzpAUjugtRABxSye5
         Eq+hAw8Ux1DtyiciluXg84nfB/H/fWRpvm9esYlCcxtFBz9DrmktChJ+lrKtD1Lk/Fj7
         t4N6woFA4+ngHjDITEFYi9wMP/3w9lqZd6eUHYQrX0RG90oEufEABrJskPdsuoZ8DSlm
         A5Sa1CG+eXEsluHVKRoPRy1Wjo3f7PtMLFJr2mzDEs9bGz4j+szWpGgZqHpkjTLGaOgW
         gY8lvbulRufNuOszDUGQlCncH44Utv0MoP73Z3p5E1mqhb3dCzhR9Z8HgQQ8GVv+g2i2
         l39w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=IhOwv31JFFip/TbgMFmuJtS9kQjTiOcD38ChomqNMuI=;
        b=ImptsK9AR+mYpO+PWQroBI8iLm8z9aHJOXU3Zfb8JXu6KqSO6FVxOsE+4T+ycK5bkA
         x6W0ZhoTKgRelE6SureyErofzvyqLxd7Jxf/zxye6Qn6RW8BhY4zuexM4aV9MRfo8iyh
         xsgII+yEZe38k1WWqG6+esBcsgFPRoNeo3HjZcFeRSGxG/YAq7SslcR9t23V1H2E80te
         1BJtXqoqIc/sAqvFTcekjX6+wZrhi72dWbEcXqlZGFpVTgHQwoPwsR5GAlltVTE2YkT7
         e+H7ZABr+yZjjb/UGRcnDGfodRK6NlFb1MX6qFiwsHjlFHUcuFQU3Ifeh3riDhFB38qo
         QPmQ==
X-Gm-Message-State: AOAM532srpAmzu3BXQ2LWsUBTcWzC5pBDRLnWXPKa4fIxY6E58yrKOr5
	XmigSnH9+xYbmCjor6rizryFY8RmbnMR/gdm/nI=
X-Google-Smtp-Source: 
 ABdhPJwQrzZx5+3KJvtX50BriEC/sFvge1dnxbzRSvO5zaV6wX613TkBl6r9yR6ES6B9mNOsPOleI6Xng/5GON6JLY4=
X-Received: by 2002:a54:4793:: with SMTP id o19mr38827797oic.59.1641317746808;
 Tue, 04 Jan 2022 09:35:46 -0800 (PST)
MIME-Version: 1.0
References: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
 <CAAnfSTs31r4z4R8O315piozh3Y=zHDSpjW_gnEoemZM=NK0arg@mail.gmail.com>
 <CAGeH+D1tWdL2wD5R-2GgOfvq3SeLFCKAaMrLGb_-pvXrPW+ePA@mail.gmail.com>
 <e8b3d35c-4752-d2ca-ba1a-22040aeca3cb@bootlin.com>
 <CAGeH+D2ByzQjBCgzUr1WNE7+=gXenViPJBo1XjgUF_Ofv2q4JA@mail.gmail.com>
 <CAAnfSTsHrTvWSieS1-QJLrV8eqPRVG4bYgvTcXbGQ4SnWSvemA@mail.gmail.com>
In-Reply-To: 
 <CAAnfSTsHrTvWSieS1-QJLrV8eqPRVG4bYgvTcXbGQ4SnWSvemA@mail.gmail.com>
From: Arik Kleiman <arik.kleiman@gmail.com>
Date: Tue, 4 Jan 2022 19:35:34 +0200
Message-ID: 
 <CAGeH+D0J1MfuM=Yb-X4k+SFpBCwYmY_NY=j1KNs=57sn2k-1VA@mail.gmail.com>
Subject: Re: [yocto] updating system with local time
To: Ross Burton <ross@burtonini.com>
Cc: Michael Opdenacker <michael.opdenacker@bootlin.com>,
 yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000431d7d05d4c51134"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 17:35:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55727

--000000000000431d7d05d4c51134
Content-Type: text/plain; charset="UTF-8"

can't write it to /etc/localtime ... it's a read only system.


There is an environment variable named TZ, when ever it is changed, local
time is changed as well.

Is there a way (by script or cron job) to set the way system will update as
well?

10x,
Arik

On Tue, Jan 4, 2022 at 5:46 PM Ross Burton <ross@burtonini.com> wrote:

> On Tue, 4 Jan 2022 at 14:58, Arik Kleiman <arik.kleiman@gmail.com> wrote:
> >
> > I don't have option to add systemd.
> >
> > Added alrady tzdata and all time zone folders exist.
> > The issue is that ntpdate returns time in UTC.
> >
> > I found a way to get local time zone (by using ip lookup). Now i looking
> for a way to use it to update system time
>
> Just write a small tool to map the local timezone from the IP lookup
> to a timezone name (such as Europe/London) and write it to
> /etc/timezone. You could do that with a short ifup script.
>
> That said, for headless appliances working in UTC is absolutely fine,
> and for user-facing devices it's perfectly acceptable to ask the user
> what the timezone is, as your geo-IP lookup might be incorrect anyway.
>
> Ross
>

--000000000000431d7d05d4c51134
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div dir=3D"ltr">can&#39;t write it to /etc/localtime ...=
 it&#39;s a read only system.<br></div><div dir=3D"ltr"><br></div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">There is an environment variable named =
TZ, when ever it is changed, local time is changed as well.</div><div dir=
=3D"ltr"><br></div><div dir=3D"ltr">Is there a way (by script or cron job) =
to set the way system will update as well?</div><div dir=3D"ltr"><br></div>=
<div dir=3D"ltr">10x,</div><div dir=3D"ltr">Arik</div></div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Jan 4, 2022 =
at 5:46 PM Ross Burton &lt;<a href=3D"mailto:ross@burtonini.com" target=3D"=
_blank" rel=3D"noreferrer">ross@burtonini.com</a>&gt; wrote:<br></div><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:=
1px solid rgb(204,204,204);padding-left:1ex">On Tue, 4 Jan 2022 at 14:58, A=
rik Kleiman &lt;<a href=3D"mailto:arik.kleiman@gmail.com" target=3D"_blank"=
 rel=3D"noreferrer">arik.kleiman@gmail.com</a>&gt; wrote:<br>
&gt;<br>
&gt; I don&#39;t have option to add systemd.<br>
&gt;<br>
&gt; Added alrady tzdata and all time zone folders exist.<br>
&gt; The issue is that ntpdate returns time in UTC.<br>
&gt;<br>
&gt; I found a way to get local time zone (by using ip lookup). Now i looki=
ng for a way to use it to update system time<br>
<br>
Just write a small tool to map the local timezone from the IP lookup<br>
to a timezone name (such as Europe/London) and write it to<br>
/etc/timezone. You could do that with a short ifup script.<br>
<br>
That said, for headless appliances working in UTC is absolutely fine,<br>
and for user-facing devices it&#39;s perfectly acceptable to ask the user<b=
r>
what the timezone is, as your geo-IP lookup might be incorrect anyway.<br>
<br>
Ross<br>
</blockquote></div>

--000000000000431d7d05d4c51134--

