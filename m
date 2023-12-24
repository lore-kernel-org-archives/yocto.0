Return-Path: <vincent.prince.fr@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 06677C46CD3
	for <webhook@archiver.kernel.org>; Sun, 24 Dec 2023 09:43:17 +0000 (UTC)
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com [209.85.167.182])
 by mx.groups.io with SMTP id smtpd.web10.24293.1703410989543797967
 for <yocto@lists.yoctoproject.org>;
 Sun, 24 Dec 2023 01:43:09 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FKjAQanb;
 spf=pass (domain: gmail.com, ip: 209.85.167.182, mailfrom: vincent.prince.fr@gmail.com)
Received: by mail-oi1-f182.google.com with SMTP id 5614622812f47-3bb69f38855so2376333b6e.1
        for <yocto@lists.yoctoproject.org>; Sun, 24 Dec 2023 01:43:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1703410988; x=1704015788; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0GGnlkEbVvJGrTZknWcmRxsMzKASqfVVheD2DzzB6Zg=;
        b=FKjAQanbrO6h4TPFLyrmYvObf77HPVx3CmWuAXZyXz2EqsECrcD7Tcm+MlVEeBWiuV
         Xvh084ugT3w04vvAeE6dRQDToxwkSwDbsu8Q4Low3DoThY31wPoir4GYDH8tkltx96pf
         VksuLSIYDb5nbNOaxBTqeitM2ldHmifNTlDEc4GNQjskEJZEiCpph1vZIggmJlMxnOxF
         eQUitAIpAgLCDKloe7iUcN57oRjOWQZ+/XhnXLccbtLKy0Syopadz1D6EWinqhWl0zvp
         yqcxblIVfjbUV0TqWmuhU+wlwYerixSC9ACw0H25QPQkxgPqgbWtraSCaECC6JhGa5hd
         8cAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1703410988; x=1704015788;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0GGnlkEbVvJGrTZknWcmRxsMzKASqfVVheD2DzzB6Zg=;
        b=IXqZ6FZjNN6s97TWzSQ8v/58/cBi8TdJh+wci28i/o7xiA/2ASFAice3htPnNwyJKx
         gcD1jujDeTrPs8PaqzA9uQgSBISFkiD7nk3w7MITfe2Y4qRHgmrhDZgeyKlZMzJcHGtU
         emP2Rj63S6S4JjR7zuSNjX0It0tbulvU+p5P1dD18IKQepLUGErvojpjFq/rbzs9SP5e
         QF1Zse7kLLtsHvuQZUJIsAM0yq6BzAu1fhV4FROhGbJGhP3doXkI99cWGaXIzKG+2bDu
         lbV78bJt5pT5RxaTY3dNGdQ6MgUHPkBt+UDIK9SdsBfE0+3xL0lIVNxWTT+wRZstBX30
         mJQw==
X-Gm-Message-State: AOJu0YytF/w7yPZjob6iRUps9YWi+Dm/TlbaxYPUBKR3f5l2SYK1pSm0
	2WoeEETV1XKfzxU5kWrZSCKRSZrAQfCgsFMS3bzhBQdW
X-Google-Smtp-Source: AGHT+IHsfj5EZ6nZ3fnCXEI1NWJw7DChtuWAHKoHJg58hSqY9jCSicCNVaEJAHwIzXA1SJUwSV68TiJEIhPeY3K+qB0=
X-Received: by 2002:a05:6808:1823:b0:3b9:e580:c21b with SMTP id
 bh35-20020a056808182300b003b9e580c21bmr3607760oib.20.1703410988511; Sun, 24
 Dec 2023 01:43:08 -0800 (PST)
MIME-Version: 1.0
References: <01of.1703328456869824351.98Vs@lists.yoctoproject.org> <b94e8b6ccdd6692c95f683ed878e3d0335ba4ec5.camel@linuxfoundation.org>
In-Reply-To: <b94e8b6ccdd6692c95f683ed878e3d0335ba4ec5.camel@linuxfoundation.org>
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Sun, 24 Dec 2023 10:42:57 +0100
Message-ID: <CAB2nKc9=uKrrtvpeyQBXWJ0eTsaafxUtZDmNFMeTTcQ9Fwh1Cw@mail.gmail.com>
Subject: Re: [yocto] CVE Scanners and Package Version
To: yocto@lists.yoctoproject.org, richard.purdie@linuxfoundation.org
Cc: fabian.hanke@bosch.com
Content-Type: multipart/alternative; boundary="000000000000e07867060d3e467a"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 24 Dec 2023 09:43:16 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62033

--000000000000e07867060d3e467a
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello,

I don't know if it will help, in our company, we modified cve-check.bbclass
so it is linked to our JIRA.
At first build, it creates a ticket for every active CVE.
We analyse CVEs on JIRA and close tickets that are not relevant for our
product.
At next builds, modified cve-check.bbclass checks for each CVE if there is
a corresponding JIRA ticket, and whitelist CVE if status is closed.

Best regards,
Vincent

Le dim. 24 d=C3=A9c. 2023 =C3=A0 10:24, Richard Purdie <
richard.purdie@linuxfoundation.org> a =C3=A9crit :

> On Sat, 2023-12-23 at 02:47 -0800, fabian.hanke via lists.yoctoproject.or=
g
> wrote:
> > we must provide a SBOM for our Yocto based product which will then be
> > used for (internal) CVE scanning by the security department.
> > Generating the base document in cycloneDX format is fairly easy
> > (thanks to the nature of Yocto).
> > But we do not know how to include information about CVE patches for
> > each package in the document. Not providing these, will cause a lot
> > of =E2=80=9Cfalse=E2=80=9D feedback on CVEs for specific versions which=
 are already
> > patched (but version number did not change).
>
>
> https://docs.yoctoproject.org/dev/dev-manual/vulnerabilities.html#vulnera=
bility-check-at-build-time
>
> The cve-check tooling can check which issues are present and which are
> fixed in some way so that information is there.
>
> >  This problem was also mentioned a few days ago in the presentation
> > from David Reyna: https://youtu.be/PegU1G1bA80?t=3D1127 . I like the
> > proposed solution of adding a vendor specific string to the package
> > version. But I'm still wondering: How would the CVE scanner vendor
> > know which CVEs are included in a yocto specific version and which
> > are not?
>
> The data could also be written into our SPDX SBoM information, offhand
> I'm not sure if it is already or not.
>
> > I hope this is the correct place to start a discussion (if not please
> > point me to the correct place):
> > Does anyone else also have the same problem with false feedback from
> > CVE scanners? How do you deal with it?
>
> The project has been focused around the cve-check tooling and SPDX SBoM
> generation. If you want to use that data we'd suggest you extract it
> from those sources as the proejct iself doesn't want to try and
> generate multiple different output formats.
>
> Cheers,
>
> Richard
>
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#62032):
> https://lists.yoctoproject.org/g/yocto/message/62032
> Mute This Topic: https://lists.yoctoproject.org/mt/103332846/3616779
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe:
> https://lists.yoctoproject.org/g/yocto/leave/6692360/3616779/666645251/xy=
zzy
> [vincent.prince.fr@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000e07867060d3e467a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I don&#39;t know if it will help=
, in our company, we modified cve-check.bbclass so it is linked to our JIRA=
.<br>At first build, it creates a ticket for every active CVE. <br>We analy=
se CVEs on JIRA and close tickets that are not relevant for our product.<br=
>At next builds, modified cve-check.bbclass checks for each CVE if there is=
 a corresponding JIRA ticket, and whitelist CVE if status is closed.<br><br=
>Best regards,</div><div>Vincent</div></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Le=C2=A0dim. 24 d=C3=A9c. 2023 =C3=A0=
=C2=A010:24, Richard Purdie &lt;<a href=3D"mailto:richard.purdie@linuxfound=
ation.org">richard.purdie@linuxfoundation.org</a>&gt; a =C3=A9crit=C2=A0:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left:1px solid rgb(204,204,204);padding-left:1ex">On Sat, 2023-12-2=
3 at 02:47 -0800, fabian.hanke via <a href=3D"http://lists.yoctoproject.org=
" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wrote:<br=
>
&gt; we must provide a SBOM for our Yocto based product which will then be<=
br>
&gt; used for (internal) CVE scanning by the security department.<br>
&gt; Generating the base document in cycloneDX format is fairly easy<br>
&gt; (thanks to the nature of Yocto).<br>
&gt; But we do not know how to include information about CVE patches for<br=
>
&gt; each package in the document. Not providing these, will cause a lot<br=
>
&gt; of =E2=80=9Cfalse=E2=80=9D feedback on CVEs for specific versions whic=
h are already<br>
&gt; patched (but version number did not change).<br>
<br>
<a href=3D"https://docs.yoctoproject.org/dev/dev-manual/vulnerabilities.htm=
l#vulnerability-check-at-build-time" rel=3D"noreferrer" target=3D"_blank">h=
ttps://docs.yoctoproject.org/dev/dev-manual/vulnerabilities.html#vulnerabil=
ity-check-at-build-time</a><br>
<br>
The cve-check tooling can check which issues are present and which are<br>
fixed in some way so that information is there.<br>
<br>
&gt;=C2=A0 This problem was also mentioned a few days ago in the presentati=
on<br>
&gt; from David Reyna:=C2=A0<a href=3D"https://youtu.be/PegU1G1bA80?t=3D112=
7" rel=3D"noreferrer" target=3D"_blank">https://youtu.be/PegU1G1bA80?t=3D11=
27</a>=C2=A0. I like the<br>
&gt; proposed solution of adding a vendor specific string to the package<br=
>
&gt; version. But I&#39;m still wondering: How would the CVE scanner vendor=
<br>
&gt; know which CVEs are included in a yocto specific version and which<br>
&gt; are not?<br>
<br>
The data could also be written into our SPDX SBoM information, offhand<br>
I&#39;m not sure if it is already or not.<br>
<br>
&gt; I hope this is the correct place to start a discussion (if not please<=
br>
&gt; point me to the correct place):<br>
&gt; Does anyone else also have the same problem with false feedback from<b=
r>
&gt; CVE scanners? How do you deal with it?<br>
<br>
The project has been focused around the cve-check tooling and SPDX SBoM<br>
generation. If you want to use that data we&#39;d suggest you extract it<br=
>
from those sources as the proejct iself doesn&#39;t want to try and<br>
generate multiple different output formats.<br>
<br>
Cheers,<br>
<br>
Richard<br>
<br>
<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#62032): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/62032" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/62032</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/103332846/361=
6779" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/103332846/3616779</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/leave/669236=
0/3616779/666645251/xyzzy" rel=3D"noreferrer" target=3D"_blank">https://lis=
ts.yoctoproject.org/g/yocto/leave/6692360/3616779/666645251/xyzzy</a> [<a h=
ref=3D"mailto:vincent.prince.fr@gmail.com" target=3D"_blank">vincent.prince=
.fr@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000e07867060d3e467a--

