Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web11.781.1582561664311335140
 for <yocto@lists.yoctoproject.org>;
 Mon, 24 Feb 2020 08:27:44 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=f0HyUIwD;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: alex.kanavin@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id x123so6061144vsc.2
        for <yocto@lists.yoctoproject.org>; Mon, 24 Feb 2020 08:27:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3CePcbH73fRJ/WL2NB+ViXA2qrRyQW2CShgbTD7wivI=;
        b=f0HyUIwDWy2CnK9LXOZyugLMQ4+SYfa/ZgiousuFOS+79k5vkVIsGFTXpokhFNbxZ1
         wVzfzpq1CPTP9y9dH+2zAwAcLqhnAYSWBHUngHL0ZEOaA+UJx1U4Mbbr+bh5/lkjbzzp
         bMJTdL32fIB0Ox97JFl/wfiBsdQPSLehUbqucwUXZhcahXh6f6fQjVT1oLVdYQHINFhB
         HVqvAOM1iGtSrwR2q5BCgWSRbhG5jf/dhnf2wDVpsx322Owc8CPFwwVQ61Px/yZ6280u
         ptDQlb12IIajccBRrzQQaZ2nt5RrO+dYqo5OxPA9Bfk8+8/duEFd1m0xTLuXm0HckYbt
         mZPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3CePcbH73fRJ/WL2NB+ViXA2qrRyQW2CShgbTD7wivI=;
        b=PAYWKa37VjA2bPlbLqP+WNmFezRieHrAv1ezOY7gPjucb0KJ+u+T7cRQMmvRE4RrGo
         FFnWukw/2RgoNJNjRmErsd+uXP0X6e/4GRdFvbuv7ia6MRagv5AvnMLDQH9ZsD37y6ZG
         maguKFiReXONzVBqINg2UCARdCOA0ovTGEU3tMXRPtM9e2n4iEZXSJiRZRUsd6e8jfx6
         MJ97hjniWFW2yyk2gLJw//nW3rUax2An2pKwvROyVmK9mTFK/1HlyNxCOFejkxAqMaLn
         F/lrScVIDSaGD/qz9Rz47e5CiHy9px9dp8QjCPsi73PKAl8RqfzlM/byZ4yo2W5aYKdt
         +/zg==
X-Gm-Message-State: APjAAAUo+ZS+jGwRLWBHkwIJ7/B3ReeyZzetpwVBYsaklRw5hCMUf4K6
	hcnpn5Tyzit0FmKSJ5Xzth6sUBGTIIqoK8go8T4=
X-Google-Smtp-Source: APXvYqwshfbWNvx52joACkb+GMFuJVX/ePMN21AG7VuRousaDiQvw+LNZiEgwJXTAoI1JU2M8c6GIEq3XTA5k8Faenc=
X-Received: by 2002:a05:6102:103:: with SMTP id z3mr27648414vsq.23.1582561663379;
 Mon, 24 Feb 2020 08:27:43 -0800 (PST)
MIME-Version: 1.0
References: <ud1Z.1582560955811630456.OJUS@lists.yoctoproject.org>
In-Reply-To: <ud1Z.1582560955811630456.OJUS@lists.yoctoproject.org>
From: "Alexander Kanavin" <alex.kanavin@gmail.com>
Date: Mon, 24 Feb 2020 17:28:02 +0100
Message-ID: <CANNYZj9H+eqsOZXGzQEgmkrHDM+OL4BCpHsvLr40u123iMiwPg@mail.gmail.com>
Subject: Re: [yocto] Building CentOS based filesystem #yocto
To: Bill.Kulp@azuresummit.com
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c7edfa059f54d917"

--000000000000c7edfa059f54d917
Content-Type: text/plain; charset="UTF-8"

If a customer wants CentOS, they should be using CentOS. I really wouldn't
want to embark on that path, you'll be constantly dealing with
incompatibilities and incorrect assumptions.

Alex

On Mon, 24 Feb 2020 at 17:16, <Bill.Kulp@azuresummit.com> wrote:

> Hello!  I am currently using Yocto with default Poky distro.  A customer
> would like a CentOS-based filesystem, and I am wondering if this is
> possible using Yocto?
>
> My initial thought is to imitate
> https://github.com/meta-debian/meta-debian, creating Bitbake recipes to
> directly download CentOS binary .rpm packages, or to download and build
> CentOS .rpm source packages.
>
> Does this approach seem feasible?  Would it be fairly straightforward, or
> are there pitfalls to beware of?  I would really appreciate any insight.
> Thank you! 
>

--000000000000c7edfa059f54d917
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">If a customer wants CentOS, they should be using CentOS. I=
 really wouldn&#39;t want to embark on that path, you&#39;ll be constantly =
dealing with incompatibilities and incorrect assumptions.<div><div><div><br=
></div><div>Alex</div></div></div></div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">On Mon, 24 Feb 2020 at 17:16, &lt;<a href=
=
=3D"mailto:Bill.Kulp@azuresummit.com">Bill.Kulp@azuresummit.com</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(=
204,204,204);padding-left:1ex">Hello!=C2=A0 I am currently using Yocto with=
 default Poky distro.=C2=A0 A customer would like a CentOS-based filesystem=
, and I am wondering if this is possible using Yocto?<br><br>My initial tho=
ught is to imitate=C2=A0<a href=3D"https://github.com/meta-debian/meta-debi=
an" target=3D"_blank">https://github.com/meta-debian/meta-debian</a>, creat=
ing Bitbake recipes to directly download CentOS binary .rpm packages, or to=
 download and build CentOS .rpm source packages.<br><br>Does this approach =
seem feasible?=C2=A0 Would it be fairly straightforward, or are there pitfa=
lls to beware of?=C2=A0 I would really appreciate any insight.<br>Thank you=
!
<br>
</blockquote></div>

--000000000000c7edfa059f54d917--
