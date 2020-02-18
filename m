Received: from mail-ua1-f51.google.com (mail-ua1-f51.google.com [209.85.222.51])
 by mx.groups.io with SMTP id smtpd.web09.1124.1582011809661442216
 for <yocto@lists.yoctoproject.org>;
 Mon, 17 Feb 2020 23:43:29 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=W0JJINz1;
 spf=pass (domain: gmail.com, ip: 209.85.222.51, mailfrom: alex.kanavin@gmail.com)
Received: by mail-ua1-f51.google.com with SMTP id 1so7121439uao.1
        for <yocto@lists.yoctoproject.org>; Mon, 17 Feb 2020 23:43:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aDBYhyQB6MUj/3z1NwG+28Ea04F3GlNLDu5cZ9wlA0o=;
        b=W0JJINz1GKWXA0OdDjhvHYS43QTPCcB9J0jEcJRaf/GHSDqlMzetXQryf7ZSqk5aEj
         pQg0461ls6xGhFb2G4un41FOr5PjFf7zZlKUJEAD0S9Ewl8fQbndnrdIN19gfZ5nE0xr
         c6b47OdiJ+xBRblVw9Tx+Ge4uSdO8lBOMFjUneYjvPNwJfqLR8Kq7/jEBGDnm7AUQGDV
         /rk0zWWixKHwaFqkR7BKMd+H5P20hOtIZwdR7g62v/5F/KtC8o7VNPt3M5GpbOivsiN9
         t8mZwUazClelC6t6n6t4xfSh+/7flTvnEJX6jO872hvw1+t8p3/OOnsMJK+vVGXvjQj1
         fuWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aDBYhyQB6MUj/3z1NwG+28Ea04F3GlNLDu5cZ9wlA0o=;
        b=KHDSADThCl8dNH7DBwYwjaDhfshAc4DQq6vm1bvYo5843GBcKi+FrlCLsOsgw4scs8
         KlW/OBGthycj2dQK1AkIFRpXraqpikdYvnaeYoDI6Dw5gGGV2wLA2PWAXjzIim6ivN0y
         sCJlhVnPnkZsL3cP8iouv6NXA622V+JFL4PUR8kIiTyi5prAFcvw5Om+Dzmv3EEysjx6
         gg5ry/GbXJnbTprJwJVQnRcEC+ri3rAfT4fNabgsRCqsiJG03SN6UfUJj/gyR/gVbDsx
         IWrsWM0rsGc+uw5xlrfE2VKNP3+JqRcgatWEOk9wC1VEeAYvf8xaW67aHpRfCSeqsvRV
         4jzw==
X-Gm-Message-State: APjAAAXBhQZW3miwaWeGIuYYDZgoYXtTktZUcMJQtuiinjTaXl0hg21m
	2KsDp3BpkSnAb97zTtPdKo5Mr4IvZvsWF9ps9Yw=
X-Google-Smtp-Source: APXvYqzPfljNxQAmocDLBzYalVhiy+hRhJhREEY7RDPtnVFyPzhGzNnDUeyHXbLWzm+7PArm5Hh2qEelD/mkhzjCdls=
X-Received: by 2002:ab0:2006:: with SMTP id v6mr8937108uak.22.1582011808838;
 Mon, 17 Feb 2020 23:43:28 -0800 (PST)
MIME-Version: 1.0
References: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
In-Reply-To: <d73Z.1582010752108711892.tD7g@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Tue, 18 Feb 2020 08:43:17 +0100
Message-ID: <CANNYZj-3urA5rw8fzcAY9ch5Z-zOEt4tRjNNBsquZuvVD6+BJQ@mail.gmail.com>
Subject: Re: [yocto] Issue while adding the support for TLS1.3 in existing krogoth yocto #yocto #yocto #yocto #yocto #apt #raspberrypi #yocto
To: amayajindal786@gmail.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000e57644059ed4d3de"

--000000000000e57644059ed4d3de
Content-Type: text/plain; charset="UTF-8"

Backporting core pieces across many yocto releases is basically impossible.
You more or less end up having to move and integrate half of the stack,
which is a herculean task.

The correct way to approach this is to have a strategy and plan for
migrating to newer yocto releases. Investigate what you need to to do to
move to thud, or newer, because thud is not a supported release anymore.

Alex

On Tue, 18 Feb 2020 at 08:25, <amayajindal786@gmail.com> wrote:

> I am using currently krogoth yocto for my current Arm based board. I am
> having currently openssl 1.0.2h and related recipes from current version
> but when I want to add TLs 1.3 that is openssl 1.1.1a/b/pre etc from
> available yocto source or from thud20. 0 yocto I am getting lot of issues.
> First of all I had to change rpm 4.14. 2 from current 5.4.16. After some
> time I got error in gobject-introspection recipe 1.46 version that sha1
> sha256 hash not found when try to search in python 2.7.2 Please guide
> 
>

--000000000000e57644059ed4d3de
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Backporting core pieces across many yocto releases is=
 basically impossible. You more or less end up having to move and integrate=
 half of the stack, which is a herculean task.</div><div><br></div><div>The=
 correct way to approach this is to have a strategy and plan for migrating =
to newer yocto releases. Investigate what you need to to do to move to thud=
, or newer, because thud is not a supported release anymore.<br></div><div>=
<br></div><div>Alex<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Tue, 18 Feb 2020 at 08:25, &lt;<a href=3D=
"mailto:amayajindal786@gmail.com">amayajindal786@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">I am using curren=
tly krogoth yocto for my current Arm based board. I am having currently ope=
nssl 1.0.2h and related recipes from current version but when I want to add=
 TLs 1.3 that is openssl 1.1.1a/b/pre etc from available yocto source or fr=
om thud20. 0 yocto I am getting lot of issues. First of all I had to change=
 rpm 4.14. 2 from current 5.4.16. After some time I got error in gobject-in=
trospection recipe 1.46 version that sha1 sha256 hash not found when try to=
 search in python 2.7.2 Please guide
<br>
</blockquote></div>

--000000000000e57644059ed4d3de--
