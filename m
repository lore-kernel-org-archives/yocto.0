Return-Path: <leon@sidebranch.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0295C433EF
	for <webhook@archiver.kernel.org>; Wed,  3 Nov 2021 12:59:08 +0000 (UTC)
Received: from mail-qt1-f172.google.com (mail-qt1-f172.google.com
 [209.85.160.172])
 by mx.groups.io with SMTP id smtpd.web12.7041.1635944346166864520
 for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 05:59:07 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20210112.gappssmtp.com header.s=20210112
 header.b=T9MIvbFa;
 spf=softfail (domain: sidebranch.com, ip: 209.85.160.172,
 mailfrom: leon@sidebranch.com)
Received: by mail-qt1-f172.google.com with SMTP id s1so647292qta.13
        for <yocto@lists.yoctoproject.org>;
 Wed, 03 Nov 2021 05:59:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KZfPmbn9znZ83APlv/rqmfY9JrjMtOicRT+RznQldZw=;
        b=T9MIvbFavvCQmtMOMcvlEWuGV898HS5qqU9hJP5JIKDEK327JJpf5BEHtnPSm/TXcl
         VlqRTQ3cTPYmLMOODNxKHWN6+4OFzGfimiG1wFxdz+A3FUBail6+mm3xVNQ54tDnnJZE
         KHNJ5s8M249hb56TPLFV/XQQS4tI+RlWXBKeGaBLnPz0lufs8B6wtrdF1CZhg0Du79Aq
         WRKQOcCZ4q4gqcEXvtEOYaL9uDxq7aye06XiKtmVZlACTKXH5fxGxnia7sgDOplj/t9b
         DbaJZfIE5cyLJ5grBBMYgc9abxdPjAfYKWuD0Nhb44/aA99u5iRHyWtVx81rY3GcMm3p
         DgHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KZfPmbn9znZ83APlv/rqmfY9JrjMtOicRT+RznQldZw=;
        b=ss66WQLLvFG7f2DtN0+DlTG4pnazzTNueD/sDSHCa40kXm+DBFVC3k/bAjgcPiKOEm
         tv4+00a/EISuYkVvPRFf7yo/PrEeE5dvxjvVXh7vjEbTzzpGWfO8Inh/VlvxLOlyaou7
         HsXMXwxXKU5rv8r6+ku0KO99lQ0FJ/OpYKqG/mRPGFrYgAFy3imn1IgyHI3fx1ZJ9xV3
         SlMudlpGY/pZiBuTx6Yhnh9hKID+ornvLYWpUm3nIiZO87zNxURr8ywczw+Eo0nnfQDF
         WAUrUYEuvSc/W9eaG5N7VJJmovaNgRgLrqxddOaTUlryvrK4SHBsPwv4ulcGzgBlDtom
         ndxg==
X-Gm-Message-State: AOAM533TxPkok7R6/fn+TSwHVLQR0IDQUnE6uMXcZWoNKGXvW1RK/VbH
	faxwyvD9N7Be5eOS193dra/WoC07l0TgUIYktBFs1w==
X-Google-Smtp-Source: 
 ABdhPJy958nKGqqPM86AyLPJonEzDrrhYJZ5suH4v7YmQdKTozdxQDoZrjVx2d7B7fe5vzKP20nR05GC8F35jaFY4Ac=
X-Received: by 2002:a05:622a:13cc:: with SMTP id
 p12mr46689907qtk.227.1635944344680;
 Wed, 03 Nov 2021 05:59:04 -0700 (PDT)
MIME-Version: 1.0
References: <MADEUP.16B409EFB86C84CD.31069@lists.yoctoproject.org>
In-Reply-To: <MADEUP.16B409EFB86C84CD.31069@lists.yoctoproject.org>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Wed, 3 Nov 2021 13:58:53 +0100
Message-ID: 
 <CAMjhiJh4vn9wJ1_4q0S8otGXZpHmdS9_dTe_wwvaS7JzxNn6Kw@mail.gmail.com>
Subject: Re: [yocto] preempt-rt
To: steven.monsees@baesystems.com
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000898e5505cfe1f9e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 03 Nov 2021 12:59:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55224

--000000000000898e5505cfe1f9e3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Steve,

On Wed, 3 Nov 2021 at 13:44, Monsees, Steven C (US) via
lists.yoctoproject.org <steven.monsees=3Dbaesystems.com@lists.yoctoproject.=
org>
wrote:

>
>
> I have a platform based off a aarm64 Xilinx based kernel, which is not a
> compliant mainline kernel=E2=80=A6 so, I will need to go the preemp-rt pa=
tch route.
>

Depends, no mainline kernel? Vendor kernel?

Can you share the machine name? Might be supported already in a layer with
-rt.

Regards,

Leon
--=20
--=20
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

--000000000000898e5505cfe1f9e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hello Steve,</div><div><br><div class=3D"gmail_quote"><di=
v dir=3D"ltr" class=3D"gmail_attr">On Wed, 3 Nov 2021 at 13:44, Monsees, St=
even C (US) via <a href=3D"http://lists.yoctoproject.org">lists.yoctoprojec=
t.org</a> &lt;steven.monsees=3D<a href=3D"mailto:baesystems.com@lists.yocto=
project.org">baesystems.com@lists.yoctoproject.org</a>&gt; wrote:<br></div>=
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_-7309717125073599402WordSection1">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have a platform based off a aarm64 Xilinx based ke=
rnel, which is not a compliant mainline kernel=E2=80=A6 so, I will need to =
go the preemp-rt patch route.</p></div></div></blockquote><div dir=3D"auto"=
><br></div><div dir=3D"auto">Depends, no mainline kernel? Vendor kernel?</d=
iv><div dir=3D"auto"><br></div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"=
EN-US" link=3D"#0563C1" vlink=3D"#954F72"><div class=3D"m_-7309717125073599=
402WordSection1"><p class=3D"MsoNormal" dir=3D"auto"></p></div></div></bloc=
kquote><div dir=3D"auto">Can you share the machine name? Might be supported=
 already in a layer with -rt.</div><div dir=3D"auto"><br></div><div dir=3D"=
auto">Regards,</div><div dir=3D"auto"><br></div><div dir=3D"auto">Leon</div=
></div></div>-- <br><div dir=3D"ltr" class=3D"gmail_signature" data-smartma=
il=3D"gmail_signature"><div dir=3D"ltr"><div><div dir=3D"ltr"><div style=3D=
"color:rgb(0,0,0)"><span style=3D"font-family:-webkit-standard;font-size:me=
dium">--=C2=A0</span><br><span style=3D"font-family:-webkit-standard;font-s=
ize:medium">Leon Woestenberg</span><br><span style=3D"font-family:-webkit-s=
tandard;font-size:medium"><a href=3D"mailto:leon@sidebranch.com" target=3D"=
_blank">leon@sidebranch.com</a></span><br><span style=3D"font-family:-webki=
t-standard;font-size:medium">T: +31 40 711 42 76</span><br><span style=3D"f=
ont-family:-webkit-standard;font-size:medium">M: +31 6 472 30 372</span><di=
v style=3D"font-family:Helvetica"><img src=3D"http://www.sidebranch.eu/en/i=
mages/sidebranch-logo.png" width=3D"96" height=3D"53"><br></div><span style=
=3D"font-family:-webkit-standard;font-size:medium">Sidebranch</span><font f=
ace=3D"Helvetica">=C2=A0</font><span style=3D"font-family:-webkit-standard;=
font-size:medium">Embedded Systems</span><br><span style=3D"font-family:-we=
bkit-standard;font-size:medium">Eindhoven, The Netherlands</span><br><span =
style=3D"font-family:-webkit-standard;font-size:medium"><a href=3D"http://w=
ww.sidebranch.com" target=3D"_blank">http://www.sidebranch.com</a></span><d=
iv style=3D"font-family:Helvetica"><br></div></div></div></div></div></div>

--000000000000898e5505cfe1f9e3--

