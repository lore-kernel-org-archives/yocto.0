Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F05AAC433F5
	for <webhook@archiver.kernel.org>; Thu,  9 Dec 2021 02:38:02 +0000 (UTC)
Received: from mail-qk1-f176.google.com (mail-qk1-f176.google.com
 [209.85.222.176])
 by mx.groups.io with SMTP id smtpd.web11.6426.1639017482060657245
 for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:38:02 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=nTaDsyjE;
 spf=pass (domain: gmail.com, ip: 209.85.222.176,
 mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f176.google.com with SMTP id w14so3841779qkf.5
        for <yocto@lists.yoctoproject.org>;
 Wed, 08 Dec 2021 18:38:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=fnHVNOzqJVAQBV5GN60A1tQY3GDvJQ1trxIH1rCHB9Q=;
        b=nTaDsyjEKStrAlzVcH83kan1R7Jzynzco+out9ArMODd5imRFTRlKb8DFeyobvmwvW
         gwbyVoCrdl02hIpqP1GuDtfvTpFgDUItT0E8IZgO19HKQpQYBrIiCvKlAupA/Wa/LFCg
         1GBiu22gIyiaT5Rs7xi2K1B4a9llRDHWpz8lOK4oM0/nBRtkUd3tMzNXrL6X/skB4Bll
         ds/Ocwjn8rPDqthg0aE2AIkZQ1JwOIx2ljxqYMXHX079A38uGybpmKWpWqGXKz865YA9
         QS5oV0KdBNi/DVmvftJm+ia21ff6ocWDeUUE8dNqIqcWWls1PYwqk/aDM9PJg2F4ji+7
         8ZBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=fnHVNOzqJVAQBV5GN60A1tQY3GDvJQ1trxIH1rCHB9Q=;
        b=UFW0X5ygGz2pA2f1AoIDCbYQAWAFXysWG2D0VhKKSCNF7/PVOtYmbyOrwi9KXSz9yp
         Kc/+TKE6lbF2LWTFOkhks8s02WAmLghP/t9JuUQ+LlY4A5c4d/JnsAxbMFPFXdktX2IE
         kFOKqkWltwtasaUnsWWJ3THhZXXim9it4HLHnO6FzpJsIAWejkxT7axzMhhyc3o3eJv4
         rQwvLU7G4rUGAmBdqXeIch3S0nxqC0smUYKJH6V85JK7z9wyN7YBilHbEiDceECRIWMw
         UEIbVYRjrR7JZBHW/D+jufg9XJg5OsF8JxHfsDjwPMH3rp6JF4K2fT0IQ5KTzmOTG5kW
         3eew==
X-Gm-Message-State: AOAM533f4hSMhthDPNjiI9IKi/xkQ2BT9Ba0xE3ZnfGpMMC+hO5/rrzl
	3dWrL1BdA025ciGS1tERpR/6YD2ZR0GsTip37o/XI1gu
X-Google-Smtp-Source: 
 ABdhPJw9/7qA7WKt6nPd3FWoEcOyCPD0Ax7DTBbJMl9gyo5InMZL90IlPOaNHcW3T4Yr186ao2w5tk0m/6a6ApKOpVY=
X-Received: by 2002:a37:dd4:: with SMTP id 203mr10970344qkn.149.1639017481195;
 Wed, 08 Dec 2021 18:38:01 -0800 (PST)
MIME-Version: 1.0
References: <20211208211526.3287971-1-raj.khem@gmail.com>
 <20211209020340.GB4676@localhost>
In-Reply-To: <20211209020340.GB4676@localhost>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 8 Dec 2021 18:37:50 -0800
Message-ID: 
 <CAMKF1soBOm0y9O4ZFLxBevqeb2Ey6ywx4egZ-hzhCy1BQyyvDA@mail.gmail.com>
Subject: Re: [meta-rockchip][PATCH] u-boot: Replace virtual/trusted-firmware-a
 with trusted-firmware-a
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000bf563505d2ad7e9e"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 09 Dec 2021 02:38:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55530

--000000000000bf563505d2ad7e9e
Content-Type: text/plain; charset="UTF-8"

On Wed, Dec 8, 2021 at 6:03 PM Trevor Woerner <twoerner@gmail.com> wrote:

> On Wed 2021-12-08 @ 01:15:26 PM, Khem Raj wrote:
> > meta-arm has dropped exporting virtual/trusted-firmware-a and expects
> > direct use of trusted-firmware-a on depends sections
> >
> > Signed-off-by: Khem Raj <raj.khem@gmail.com>
> > ---
> >  recipes-bsp/u-boot/u-boot%.bbappend | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
>
> Oops, looks like we both noticed this at about the same time.
> Since both our patches are identical, I simply added your SoB line.


Cool


>
> Thanks!
>

--000000000000bf563505d2ad7e9e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><br></div><div><br><div class=3D"gmail_quote"><div dir=3D=
"ltr" class=3D"gmail_attr">On Wed, Dec 8, 2021 at 6:03 PM Trevor Woerner &l=
t;<a href=3D"mailto:twoerner@gmail.com">twoerner@gmail.com</a>&gt; wrote:<b=
r></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex=
;border-left-width:1px;border-left-style:solid;padding-left:1ex;border-left=
-color:rgb(204,204,204)">On Wed 2021-12-08 @ 01:15:26 PM, Khem Raj wrote:<b=
r>
&gt; meta-arm has dropped exporting virtual/trusted-firmware-a and expects<=
br>
&gt; direct use of trusted-firmware-a on depends sections<br>
&gt; <br>
&gt; Signed-off-by: Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com" targ=
et=3D"_blank">raj.khem@gmail.com</a>&gt;<br>
&gt; ---<br>
&gt;=C2=A0 recipes-bsp/u-boot/u-boot%.bbappend | 4 ++--<br>
&gt;=C2=A0 1 file changed, 2 insertions(+), 2 deletions(-)<br>
<br>
Oops, looks like we both noticed this at about the same time.<br>
Since both our patches are identical, I simply added your SoB line.</blockq=
uote><div dir=3D"auto"><br></div><div dir=3D"auto">Cool</div><div dir=3D"au=
to"><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px=
 0.8ex;border-left-width:1px;border-left-style:solid;padding-left:1ex;borde=
r-left-color:rgb(204,204,204)" dir=3D"auto"><br>
<br>
Thanks!<br>
</blockquote></div></div>

--000000000000bf563505d2ad7e9e--

