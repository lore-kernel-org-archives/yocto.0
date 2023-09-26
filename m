Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20345E7D271
	for <webhook@archiver.kernel.org>; Tue, 26 Sep 2023 09:34:11 +0000 (UTC)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com [209.85.217.48])
 by mx.groups.io with SMTP id smtpd.web11.14980.1695720846754698694
 for <yocto@lists.yoctoproject.org>;
 Tue, 26 Sep 2023 02:34:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=SwrFKZqf;
 spf=pass (domain: gmail.com, ip: 209.85.217.48, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vs1-f48.google.com with SMTP id ada2fe7eead31-4528bd2c3b2so3441945137.3
        for <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 02:34:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1695720846; x=1696325646; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=MrRdcmmLdR5bUZKOF9war9Cy1hF4SxvhqLsa+VTbw/Y=;
        b=SwrFKZqfbXa1O39BXJIcgORYtBmglOTUoHA3VQgzdwvIOyfCPfkseqtosRVVxogJ7B
         7PBqzC33ixB9HHFksM7vFP5/S/5g8AkD2MWoMJCnGF4v4BewBKxhNoRPAQyS/osEoxwO
         FgC6MWWDl/92dszRiPbRcgkJCdSUyDlrFje9LtdfsH///SiWE7i1oNA5pwT8hGAVQfSQ
         EhkqnVj5s19nGgf0oTSjpNZTet+ReCrx7BGOqNQfa+JNnjzoRKj84q5QIQGtUkr3mozy
         XZO2prBwnWwXkDA+tjMYFXuHnxUTLjc0WFMBh7mPtlz/+6ibKQsESVvRZhRGf/ebLBpO
         Xg9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695720846; x=1696325646;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MrRdcmmLdR5bUZKOF9war9Cy1hF4SxvhqLsa+VTbw/Y=;
        b=Q+UKEuAYJey6krvKJE8fNi7CrPBpCVM1bRVjhmey53rkDfGuN/a442PkuuPKOJ14SG
         pkG4eTUbBqlw77NGZqH5pnhH/W2C4uBz0NVzTNAAaQ5sJpH0JQFAHMz1kLtzltm61zw5
         H779Gd7Pvf9zNd3xmwDk12osnSrO4xLKcE+Nov2Yg/GMh2kYeXd8iyPS8UdRMGl6hbC4
         jKQ+Vo8ZzBymg/Tbpw6Ob1vve1eoegueZqPalyqcUkhXBsRFhPg4tnmoKvumQEtSNhu0
         5kClzHcO975PEf0KCK5k9rrPx6d2sDa9/mC8SpYHQzqDz8yWOXZfSAQMbIstwVJ8D9ZY
         G0Iw==
X-Gm-Message-State: AOJu0Yx1xjWJ/m+MoISLkV4nXOgTBkB3zkUOb6cVLk8R0XRmE25jPXvI
	Dc9IVzBvgXBw6RP7Q7Fe8R7LOInDwSqbWnUftH8=
X-Google-Smtp-Source: AGHT+IHQ8uClS3kZBkn/u/r8liGopVwgzyHREWWyy8iHA6s2J4/ZKwt7Gl2RfxgRvp+McFwW0F1K+myv+E48PrS8kR0=
X-Received: by 2002:a05:6102:2824:b0:452:773c:e0a6 with SMTP id
 ba4-20020a056102282400b00452773ce0a6mr6423776vsb.9.1695720845635; Tue, 26 Sep
 2023 02:34:05 -0700 (PDT)
MIME-Version: 1.0
References: <CAK5yBb8vEFQAL-jsbsXOMxBLerm1W23BUA+JZjuU=G2NaMskEg@mail.gmail.com>
 <31830.1695703275392527795@lists.yoctoproject.org>
In-Reply-To: <31830.1695703275392527795@lists.yoctoproject.org>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Tue, 26 Sep 2023 10:33:54 +0100
Message-ID: <CANPvuRkQvji0oCSkc2+XdtaNjD=u+UbBcAFQ9spnT9B9jvHwEg@mail.gmail.com>
Subject: Re: [yocto] Yocto Project Newcomer & Unassigned Bugs - Help Needed
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a4753e06063fc652"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 26 Sep 2023 09:34:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61123

--000000000000a4753e06063fc652
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mohammed,

MOHAMMED HASSAN <hassanchattarki@gmail.com> escreveu no dia ter=C3=A7a,
26/09/2023 =C3=A0(s) 05:41:

> What prerequiste knowledge should I have before deciding to help. I have
> less experience with yocto and embedded linux in general.


Starting with Qemu will be good as you can build and run your system just
using a computer and without any other hardware requirements.

https://docs.yoctoproject.org/dev-manual/qemu.html

Jose


> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#61115):
> https://lists.yoctoproject.org/g/yocto/message/61115
> Mute This Topic: https://lists.yoctoproject.org/mt/101587890/5052612
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> quaresma.jose@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--=20
Best regards,

Jos=C3=A9 Quaresma

--000000000000a4753e06063fc652
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Mohammed,</div><br><div class=3D"gmail_quote"><div=
 dir=3D"ltr" class=3D"gmail_attr">MOHAMMED HASSAN &lt;<a href=3D"mailto:has=
sanchattarki@gmail.com">hassanchattarki@gmail.com</a>&gt; escreveu no dia t=
er=C3=A7a, 26/09/2023 =C3=A0(s) 05:41:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">What prerequiste knowledge should I have before deci=
ding to help. I have less experience with yocto and embedded linux in gener=
al.</blockquote><div><br></div><div>Starting with Qemu will be good as you =
can build and run your system just using a computer and without any other h=
ardware requirements.<br><br><a href=3D"https://docs.yoctoproject.org/dev-m=
anual/qemu.html">https://docs.yoctoproject.org/dev-manual/qemu.html</a><br>=
<br>Jose<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px=
 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#61115): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/61115" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/61115</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/101587890/505=
2612" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/101587890/5052612</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:quaresma.jose@gmail.com" target=3D"_blank">quare=
sma.jose@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--000000000000a4753e06063fc652--

