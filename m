Return-Path: <ycnakajsph@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8C2CBC54E62
	for <webhook@archiver.kernel.org>; Wed, 28 Aug 2024 09:50:23 +0000 (UTC)
Received: from mail-pj1-f44.google.com (mail-pj1-f44.google.com [209.85.216.44])
 by mx.groups.io with SMTP id smtpd.web11.9676.1724838616430549181
 for <yocto@lists.yoctoproject.org>;
 Wed, 28 Aug 2024 02:50:16 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=JGlP8xUY;
 spf=pass (domain: gmail.com, ip: 209.85.216.44, mailfrom: ycnakajsph@gmail.com)
Received: by mail-pj1-f44.google.com with SMTP id 98e67ed59e1d1-2d3bd8784d3so5066974a91.3
        for <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 02:50:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1724838616; x=1725443416; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=a9/9Vxu0Yw8+mUzGSJteaCdsf/e7yErTgMpTWKqU12Y=;
        b=JGlP8xUYtgTScEYK/d+nXCmQHSZOMG3f9y0XhxEOq4Nhr+waoE30nuN+VQcms5OJ2u
         Wzqg4TvTlSNpNj+wuSiz68kF2NdLPwCnDjnTCVMlMcu8Drf0WQSyIXkMU+PIspqsBcrE
         vtn3C1leErPheCn3wfbV0IbN/S9YFqE1qPzt2YLfEVRFksru4Yst+57HleAtTMS/P29C
         Xm5qSu552GIQuI4fv+86mcsYMaDnMqpo8PKUUhR/oclrzFAYbm/8bY57TKDkQgdx8ir9
         u0uR84wVa36rLTfLo5jKwrbG4s6wg7crk/HXq5vsJrsVtFDXK2+iOyl/n4aPYVrvAUdQ
         LQtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724838616; x=1725443416;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=a9/9Vxu0Yw8+mUzGSJteaCdsf/e7yErTgMpTWKqU12Y=;
        b=VPN6RjM4IYNvIIF2lrIVywtPflHXqYyN3vuq1a35IXjbvD6vMkjIB1RSX0mwgH++as
         QCjgzwYqODbrLk7Hp/ojiPX1YVdP0EXtM57fAOFFz+kWH8fCTq5oAdHENuEeq7hqHI4m
         oGua+hmcXyfx6G74Jejrm9hAEYdoBykRDWKlJjXY2cwqanDdTS+C6xklL+MB+lqVlbtq
         NOm5PxXwc0D35o2M8twqUVVpcJLPEz3hdBC+OO2cqK/mJ/bgPPXDDImBYxEMSryuqVJZ
         SwEwUuvrjltNrE88zVtESu8DoY2yHuz3PatsaL4SHmHEN9hw50xe5mHE3q9rGm6u0n9T
         0zyg==
X-Gm-Message-State: AOJu0YxmuGIAtbyLCSHQlvvBnoHIxeGKaQC1CSpBSyzolbl5/IAKNly6
	JMa0n4IPCBD4Wbh3EST7bOVfLNeDrZwiyoNG/9uV72HH27VjmP06+yvlnkTa2EOEZxkbJqxKmpd
	iXfiStFQ45HaH0OLzRNJXAtLK4aw=
X-Google-Smtp-Source: AGHT+IEOqqoJwmWRszyhasIqdB+BXf3DRpDYJm2ONVxdWO6n5GHIFx4gTPq+eIY4XkNkmfEN7+qqctMDGYsxl1HCt4k=
X-Received: by 2002:a17:90a:6c8f:b0:2cf:fe5d:ea0f with SMTP id
 98e67ed59e1d1-2d646c3ab9cmr19098511a91.22.1724838615654; Wed, 28 Aug 2024
 02:50:15 -0700 (PDT)
MIME-Version: 1.0
References: <CAC3TgA+HFgXcckqxUVgUQsRfJySytZSAj3PtSRD6TLzT5_yDqg@mail.gmail.com>
 <ZrM8ikxC3AwTgDHR@nuoska> <CAC3TgA+-s0BN3D3Bzwcg6_6vF2fipu_wGc4BWFwhZM8S97wjjQ@mail.gmail.com>
 <ZrN0cTChvgsn4skg@nuoska> <CAC3TgAJ7bwU6Q+bC6wyC-4633bQ+XHtqgv-_cnT-x9qCe5OEBQ@mail.gmail.com>
 <ZrOCsPB34L6ITVH8@nuoska>
In-Reply-To: <ZrOCsPB34L6ITVH8@nuoska>
From: Yann CARDAILLAC Pro <yann.cardaillac@gmail.com>
Date: Wed, 28 Aug 2024 11:50:03 +0200
Message-ID: <CAC3TgA+Z3=ifRxcm075ARPkaf9rmDpjRUEa+NpbN6sku+zTnhw@mail.gmail.com>
Subject: Re: [yocto][meta-openembedded] How to properly build a lib package
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000fb2bd60620bb4856"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 28 Aug 2024 09:50:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63756

--000000000000fb2bd60620bb4856
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Mikko,

Well without the RPROVIDES I get the following error when a package DEPENDS
on it :

ERROR: rj2d-com-1.1-r0 do_package_qa: QA Issue: /usr/bin/rj2d- com
contained in package rj2d- com requires librj2d.so()(64bit), but no
providers found in RDEPENDS:rj2d-com? [file-rdeps]

The only solution I found was to add the RPROVIDES. Is there something I'm
doing wrong?

Basically the rj2d-com package DEPENDS and RDEPENDS:${PN}  to librj2d, and
without the RPROVIDES with  librj2d.so()(64bit) I get errors.

Is there something wrong with the approach ?

Bests,

Yann

On Wed, Aug 7, 2024 at 4:20=E2=80=AFPM Mikko Rapeli <mikko.rapeli@linaro.or=
g> wrote:

> Hi,
>
> On Wed, Aug 07, 2024 at 04:14:29PM +0200, Yann CARDAILLAC Pro wrote:
> > Thanks Mikko, that was it indeed! I didn't test on target yet but it
> seems
> > ok so far!
> >
> > I'm still not sure about the librj2d.so()(64bit) though any idea?
>
> I would leave all RPROVIDES for bitbake etc automation to set. I don't kn=
ow
> what is the reson for setting RPROVIDES manually.
>
> Cheers,
>
> -Mikko
>

--000000000000fb2bd60620bb4856
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Hi Mikko,</div><div><br></div><div>W=
ell without the RPROVIDES I get the following error when a package DEPENDS =
on it :</div><div><br></div><div>ERROR: rj2d-com-1.1-r0 do_package_qa: QA I=
ssue: /usr/bin/rj2d-
com

contained in package rj2d-
com

requires librj2d.so()(64bit), but no providers found in RDEPENDS:rj2d-com? =
[file-rdeps]<br></div><div><br></div><div>The only solution I found was to =
add the RPROVIDES. Is there something I&#39;m doing wrong?</div><div><br></=
div><div>Basically the rj2d-com package DEPENDS and RDEPENDS:${PN}=C2=A0 to=
 librj2d, and without the RPROVIDES with=C2=A0
<span class=3D"gmail-im">librj2d.so()(64bit) I get errors.</span></div><div=
><span class=3D"gmail-im"><br></span></div><div><span class=3D"gmail-im">Is=
 there something wrong with the approach ?<br></span></div><div><span class=
=3D"gmail-im"><br></span></div><div><span class=3D"gmail-im">Bests,<br> </s=
pan>

 </div><div><br></div><div><div dir=3D"ltr" class=3D"gmail_signature"><div =
dir=3D"ltr"><div>Yann</div></div></div></div></div></div><br><div class=3D"=
gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Wed, Aug 7, 2024 at 4=
:20=E2=80=AFPM Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org">=
mikko.rapeli@linaro.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex">Hi,<br>
<br>
On Wed, Aug 07, 2024 at 04:14:29PM +0200, Yann CARDAILLAC Pro wrote:<br>
&gt; Thanks Mikko, that was it indeed! I didn&#39;t test on target yet but =
it seems<br>
&gt; ok so far!<br>
&gt; <br>
&gt; I&#39;m still not sure about the librj2d.so()(64bit) though any idea?<=
br>
<br>
I would leave all RPROVIDES for bitbake etc automation to set. I don&#39;t =
know<br>
what is the reson for setting RPROVIDES manually.<br>
<br>
Cheers,<br>
<br>
-Mikko<br>
</blockquote></div>

--000000000000fb2bd60620bb4856--

