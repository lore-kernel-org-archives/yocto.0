Return-Path: <martin.jansa@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0F6C47DDF
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 13:13:01 +0000 (UTC)
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
 by mx.groups.io with SMTP id smtpd.web11.14847.1706793175563800734
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 05:12:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=Ry0FPay6;
 spf=pass (domain: gmail.com, ip: 209.85.128.49, mailfrom: martin.jansa@gmail.com)
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-40fc22f372cso2556285e9.1
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 05:12:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706793174; x=1707397974; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Uk8lufH12gg1kU7/tC8I7oQdnaBUFWnJwQr9hJTzel8=;
        b=Ry0FPay6mvfSicF7vVyBI9GkQF5PyXyknTnLvzfnrgGuTclikS07ewCOxRlp2coF8y
         x2di9xlQTLBSJYeOS1V8UOatTsJFEvRRksJLDOcynDNNCuit77+bKbG0GA9i97Yqy4wQ
         1dKFeUPBKrmUAHS7ur3ym66iirSU6s6a894VcghV+60Ohyl6QmcK8YgtIf4GuPYs9fjV
         yRCa/TKrz6K/xgL3xhDjzRncBedPQlWqVbzXId2RDjwUcGw2dzNoKR2BcIF0yy1rct0q
         1WYRVWoqjZNaE66REWu4bKUqF0u6rF1rMKAZ1KpqNKmeynIOeBQgBlV84zsy0ew3Ly1B
         icXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706793174; x=1707397974;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uk8lufH12gg1kU7/tC8I7oQdnaBUFWnJwQr9hJTzel8=;
        b=eqvJvo6ManSFoBfpqCmnKIBfjPaAOolHQjYFukkBmqQg9Ts+BP9d/SnlVllJRuGYFi
         BycZ9mFaPpPwkL7TpdZalzTfo4nmTT5Z4HYgMHJpKFXbdoy5jZddkbAmDnTn9cqfnYge
         0puLiNNTMnO040Qiih3nj0kIm4mvW9AArpeZgqsNeLI1vUHv/O9/TtUkSRWOOjmDr4h4
         Y3QiWNdJfGtax3SsROhvJx6aGEIuS0NnDYJtQcAOrEmlLfuBEWwM//1FlpvuPokvJkI+
         jBDwXwtFVs2492NjWUoj6tbUXArqUlgvzvqtZOL9GNLpdGh/+wdc2iPKF3+ym++Akhng
         Kmtw==
X-Gm-Message-State: AOJu0YxG3yZbDUKlw369nB/V8Yp5bmBC9wjsT/OawBb3oTdTQdZuXc2W
	B06II3W4W8WjORshRDrXJg/JucfIZOiXXnGcUs6EJVA2lFkDz7fSHjbP4lXF8Pcem5ZxvZgex1E
	tBTnR23/Hmn2Nvafv57jDW6jFTcKiT9XXzxM=
X-Google-Smtp-Source: AGHT+IH53zRHqG7GdGzi/1NGZNQmbyc5EfXEr0Jet135kFo4fHOvCHx9Izpk735t0HTfXlGUeULMYOyxgMbm0kDgaJs=
X-Received: by 2002:adf:eb42:0:b0:33a:efe0:5a37 with SMTP id
 u2-20020adfeb42000000b0033aefe05a37mr2900032wrn.6.1706793173762; Thu, 01 Feb
 2024 05:12:53 -0800 (PST)
MIME-Version: 1.0
References: <CANNYZj-t4yhegR4Q-8s1K2u3YvdB9ctekHTXKLR8GB9UEERVuA@mail.gmail.com>
 <23652.1706792492588535839@lists.yoctoproject.org>
In-Reply-To: <23652.1706792492588535839@lists.yoctoproject.org>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Thu, 1 Feb 2024 14:12:40 +0100
Message-ID: <CA+chaQfSiDw0g6oFKF9AO4MAfx2m+c_UuR_BB97M7X26ntOOxg@mail.gmail.com>
Subject: Re: [yocto] Is there a way to speed up the initial fetch task?
To: yocto@lists.yoctoproject.org, timotheus.giuliani@philips.com
Cc: Alexander Kanavin <alex.kanavin@gmail.com>
Content-Type: multipart/alternative; boundary="000000000000d3c6f6061051c09e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 13:13:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62362

--000000000000d3c6f6061051c09e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

> The latest SSTATE cache is provided via HTTP.
> All sources are provided by a mix of private git repositories and
tarballs on a private HTTP source mirror.

Is the "private HTTP source mirror" configured as PREMIRROR (not just
MIRROR, see own-mirrors.bbclass) to fetch from there before trying upstream
sites?

If it is, then is it as fast as the sstate mirror you're using? If the
network access is slow then you would see the same issue with sstate, so
I'm surprised that you worry only about fetched sources.

Regards,

On Thu, Feb 1, 2024 at 2:01=E2=80=AFPM timotheus.giuliani via lists.yoctopr=
oject.org
<timotheus.giuliani=3Dphilips.com@lists.yoctoproject.org> wrote:

> It=E2=80=99s not possible to keep the download directory, since the build=
 runs on
> cloud runners that are shared resources. Every time a PR is created a new
> runner instance with an empty workspace will be assigned. Therefore, I
> can=E2=80=99t reuse anything local from previous builds.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62360):
> https://lists.yoctoproject.org/g/yocto/message/62360
> Mute This Topic: https://lists.yoctoproject.org/mt/104095616/3617156
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> martin.jansa@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000d3c6f6061051c09e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt; The latest SSTATE cache is provided via HTTP.<br>&gt;=
 All sources are provided by a mix of private git repositories and tarballs=
 on a private HTTP source mirror.<br><div><br></div><div>Is the &quot;priva=
te HTTP source mirror&quot; configured as PREMIRROR (not just MIRROR, see o=
wn-mirrors.bbclass) to fetch from there before trying upstream sites?</div>=
<div><br></div><div>If it is, then is it as fast as the sstate mirror you&#=
39;re using? If the network access is slow then you would see the same issu=
e with sstate, so I&#39;m surprised that you worry only about fetched sourc=
es.</div><div><br></div><div>Regards,</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, Feb 1, 2024 at 2:01=E2=
=80=AFPM timotheus.giuliani via <a href=3D"http://lists.yoctoproject.org">l=
ists.yoctoproject.org</a> &lt;timotheus.giuliani=3D<a href=3D"mailto:philip=
s.com@lists.yoctoproject.org">philips.com@lists.yoctoproject.org</a>&gt; wr=
ote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><p style=3D=
"margin:0px"><span lang=3D"EN-US">It=E2=80=99s not possible to keep the dow=
nload directory, since the build runs on cloud runners that are shared reso=
urces. Every time a PR is created a new runner instance with an empty works=
pace will be assigned. Therefore, I can=E2=80=99t reuse anything local from=
 previous builds.</span></p>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62360): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62360" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62360</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/104095616/361=
7156" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/104095616/3617156</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin=
.jansa@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000d3c6f6061051c09e--

