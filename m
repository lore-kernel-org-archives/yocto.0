Return-Path: <quaresma.jose@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0AF92C5AD4C
	for <webhook@archiver.kernel.org>; Thu, 23 Nov 2023 11:37:07 +0000 (UTC)
Received: from mail-vk1-f182.google.com (mail-vk1-f182.google.com [209.85.221.182])
 by mx.groups.io with SMTP id smtpd.web10.88810.1700739423049268729
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 Nov 2023 03:37:03 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=DLwzTE8e;
 spf=pass (domain: gmail.com, ip: 209.85.221.182, mailfrom: quaresma.jose@gmail.com)
Received: by mail-vk1-f182.google.com with SMTP id 71dfb90a1353d-4b06a13d053so212134e0c.2
        for <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 03:37:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700739422; x=1701344222; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=nqYha459TGQhz9xGfzj2RmHHF2dXMMCspqJScqSfaS4=;
        b=DLwzTE8eT5ikqLdLuvqo99Roe8dM5fzMAN4bcrfDC012xNeCkSrwagkFJk6hDS89mK
         3zgR0eFLDnBtxDeydZ4/LCMRzTqeLyyxDoW4/Rdn9zfbf1wLXd9RS4vgaQSvQNQqBmJ7
         sEyfjKkH2QtH8aM5lJdO08RgxsfsHrk8xY4DGQa1ijYPeJpX7hwrJJpm9rKR4/VLUfk6
         oQcdgW78X/N+aYwp/5SMUllszeEIgWeuoZg8IHoqgmfB5G0L5DkWzRTkZNLuRoSgn5KF
         oRbTlt4daLwFJNY5xmIXBL/CDBkh2Sla7/+x2HJbDRkrL3Tmq1pNGwq4VF31QQwzwY3K
         S0Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700739422; x=1701344222;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nqYha459TGQhz9xGfzj2RmHHF2dXMMCspqJScqSfaS4=;
        b=DX2TZP1UXMPCqVs5ARof/+rj+cTSr/hsbZ/CVvXRczRfUFUGc1hHkh+qoCihpvxhip
         apGZ/pzCn1LDAD6SUWB7v4AjaFRqM3D1tzfNOF4NzAxUf0Af9H5UaVTgmh6B7Ih2cMTP
         M00HjoWb/RTnFf3Q7Ie9DrU5vybdgT+AhvY8uQAHZFPhy16UoXs89O6dCJiWsFUOUvkA
         c5gSBqYIQhuRsAZCGWaRASMa5H0Gs+9JVgAr94YjMOWSyJu/VGgkq0KCJBhhcF0kgATp
         mDMkU/Y12zMjaYis1jQ+EqrNNLDYg+h8aRe37cDwtB784XQiOZk9FuE1+v2WgA88GH+X
         lgDg==
X-Gm-Message-State: AOJu0YyXg5WJrXyQlrs9sZTd8K4Cwz2PV8rL9vGjfbOIvwPjWhBIiW5g
	pBc7rgitkq8uyGVnZ2EO/2mkMdd0np58MSijTac=
X-Google-Smtp-Source: AGHT+IGP5Lyg3Q+KTiz7KnAVRi38w41DaRqpkAS2VrfpKOlS4PERNZyKTcjTCbQ65cZD07ij4njNQWe//KP2dhRiPiY=
X-Received: by 2002:a1f:5583:0:b0:4a0:8a35:6686 with SMTP id
 j125-20020a1f5583000000b004a08a356686mr4395767vkb.11.1700739421805; Thu, 23
 Nov 2023 03:37:01 -0800 (PST)
MIME-Version: 1.0
References: <20231123105340.3929836-1-mikko.rapeli@linaro.org>
 <CANPvuRkY1Nvy3+us3UHRDUqLEX-V4-+15Wa-v2T__GP62o+zSQ@mail.gmail.com> <ZV8ygN3viTwBTee7@nuoska>
In-Reply-To: <ZV8ygN3viTwBTee7@nuoska>
From: Jose Quaresma <quaresma.jose@gmail.com>
Date: Thu, 23 Nov 2023 11:36:50 +0000
Message-ID: <CANPvuR=kaKP-05kAe_RY2HDZGN2r5MU7waNNDJO4MDLA+NTmSQ@mail.gmail.com>
Subject: Re: [yocto] [meta-security][PATCH] tpm2-tss: support native builds
To: Mikko Rapeli <mikko.rapeli@linaro.org>
Cc: yocto@lists.yoctoproject.org, Erik Schilling <erik.schilling@linaro.org>, 
	Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, Ricardo Salveti <ricardo@foundries.io>
Content-Type: multipart/alternative; boundary="00000000000017a0cf060ad041ca"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 Nov 2023 11:37:07 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61737

--00000000000017a0cf060ad041ca
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Mikko Rapeli <mikko.rapeli@linaro.org> escreveu no dia quinta, 23/11/2023
=C3=A0(s) 11:07:

> Hi,
>
> On Thu, Nov 23, 2023 at 11:01:12AM +0000, Jose Quaresma wrote:
> > Hi Mikko,
> >
> > Mikko Rapeli <mikko.rapeli@linaro.org> escreveu no dia quinta,
> 23/11/2023
> > =C3=A0(s) 10:53:
> >
> > > systemd tool ukify
> > > https://www.freedesktop.org/software/systemd/man/latest/ukify.html
> > > depends on systemd-measure
> > >
> > >
> https://www.freedesktop.org/software/systemd/man/latest/systemd-measure.h=
tml
> > > which depends on tpm2-tss. So to support creating UKI
> > > images containing both kernel and initramfs with systemd-native,
> > >
> >
> > Is systemd-native supported in any public layer?
> > I saw some proposals on the oe-core mailing list but they were not
> > integrated.
>
> Not yet. But for uki and systemd style secure boot that will be needed.
> Current public systemd-native proposal is in
>
> https://lore.kernel.org/all/20230901233231.1109712-1-michelle.linto91@gma=
il.com/T/
> and on Linaro side we're checking that among other things. There will
> likely
> be a need to move some recipes to oe-core so that singing etc tooling can
> be
> compiled from there without additional layers. But all this depends on ho=
w
> maintainers
> see the situation.
>

We at Foundries.io are also very interested in the uki and friends.
Thanks for all the details and clarifications.

Jose


> Cheers,
>
> -Mikko
>


--=20
Best regards,

Jos=C3=A9 Quaresma

--00000000000017a0cf060ad041ca
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">Mikko Rapeli &lt;<a href=3D"mailto:mi=
kko.rapeli@linaro.org">mikko.rapeli@linaro.org</a>&gt; escreveu no dia quin=
ta, 23/11/2023 =C3=A0(s) 11:07:<br></div><blockquote class=3D"gmail_quote" =
style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pa=
dding-left:1ex">Hi,<br>
<br>
On Thu, Nov 23, 2023 at 11:01:12AM +0000, Jose Quaresma wrote:<br>
&gt; Hi Mikko,<br>
&gt; <br>
&gt; Mikko Rapeli &lt;<a href=3D"mailto:mikko.rapeli@linaro.org" target=3D"=
_blank">mikko.rapeli@linaro.org</a>&gt; escreveu no dia quinta, 23/11/2023<=
br>
&gt; =C3=A0(s) 10:53:<br>
&gt; <br>
&gt; &gt; systemd tool ukify<br>
&gt; &gt; <a href=3D"https://www.freedesktop.org/software/systemd/man/lates=
t/ukify.html" rel=3D"noreferrer" target=3D"_blank">https://www.freedesktop.=
org/software/systemd/man/latest/ukify.html</a><br>
&gt; &gt; depends on systemd-measure<br>
&gt; &gt;<br>
&gt; &gt; <a href=3D"https://www.freedesktop.org/software/systemd/man/lates=
t/systemd-measure.html" rel=3D"noreferrer" target=3D"_blank">https://www.fr=
eedesktop.org/software/systemd/man/latest/systemd-measure.html</a><br>
&gt; &gt; which depends on tpm2-tss. So to support creating UKI<br>
&gt; &gt; images containing both kernel and initramfs with systemd-native,<=
br>
&gt; &gt;<br>
&gt; <br>
&gt; Is systemd-native supported in any public layer?<br>
&gt; I saw some proposals on the oe-core mailing list but they were not<br>
&gt; integrated.<br>
<br>
Not yet. But for uki and systemd style secure boot that will be needed.<br>
Current public systemd-native proposal is in<br>
<a href=3D"https://lore.kernel.org/all/20230901233231.1109712-1-michelle.li=
nto91@gmail.com/T/" rel=3D"noreferrer" target=3D"_blank">https://lore.kerne=
l.org/all/20230901233231.1109712-1-michelle.linto91@gmail.com/T/</a><br>
and on Linaro side we&#39;re checking that among other things. There will l=
ikely<br>
be a need to move some recipes to oe-core so that singing etc tooling can b=
e<br>
compiled from there without additional layers. But all this depends on how =
maintainers<br>
see the situation.<br></blockquote><div><br></div><div>We at Foundries.io a=
re also very interested in the uki and friends.<br></div><div>Thanks for al=
l the details and clarifications.</div><div><br>Jose<br><br></div><blockquo=
te class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px =
solid rgb(204,204,204);padding-left:1ex">
<br>
Cheers,<br>
<br>
-Mikko<br>
</blockquote></div><br clear=3D"all"><div><br></div><span class=3D"gmail_si=
gnature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmail_signature"><d=
iv dir=3D"ltr">Best regards,<div><br>Jos=C3=A9 Quaresma</div></div></div></=
div>

--00000000000017a0cf060ad041ca--

