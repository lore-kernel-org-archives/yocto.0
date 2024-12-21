Return-Path: <adrian.freihofer@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A42E77184
	for <webhook@archiver.kernel.org>; Sat, 21 Dec 2024 10:56:19 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web11.5239.1734778574314187869
 for <yocto@lists.yoctoproject.org>;
 Sat, 21 Dec 2024 02:56:14 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=MeInVxqI;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: adrian.freihofer@gmail.com)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5f4ce54feb8so1280398eaf.3
        for <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2024 02:56:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1734778573; x=1735383373; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=McuN5QEr/u4FPSJ8JEttdtYzWVwIvTPfv0WS7xXAfyc=;
        b=MeInVxqIhzmT6cYPzDShxR7ry20Xjimym5l2EQnJVvQ+kki83IiV1l1bhqoPlvfgRK
         MoA0qRaZdveno3cRYiiy57NGyxe37a5ut6mjRBc/J2gxr05/hdS3y5crsK+eo0WyDEHq
         bVLG7Krj1p0JJ21cE1fxTfgV7DCR94K26IjDemNeJAeIMVJHOg+VRfr7J9+xQTrKGVch
         zAIWBMmGtnPu4VEYKC/bOUlACAzczag63Z85OQw1OT6Cw9/ZfgDXaN00IwAqZBEksTbF
         gefXNvc2k/uZwAyc35+23/T2EgPgT8yS8PbxjwV9gIThkgN21tp7OJB2deRfBm8PtpJE
         awzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734778573; x=1735383373;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=McuN5QEr/u4FPSJ8JEttdtYzWVwIvTPfv0WS7xXAfyc=;
        b=AN9jFIE1aOpr9JXQr80tteCOGsLRRWnpqamxpLBv9Lr5CYyZwrroP7z92+WuTVJ1EN
         6pBVKsqtk/kyIPeAFDkf729nHVbKuBd3dC37dMVpO2rBlStDHrtqz47KZOeJyRy6u4Bk
         ASACtDWYN6RHOTy7voA9eou8mhgUq6fH80F9ZrVOp4jsh6FIMgNKWxJVq1zBzjzwwMHq
         w/Oqs2qzwo/qSqxW92JzQdfshvpzzuF5HDhXl1j65+Sz/eoktCyTjyNm0OfkXrnRpX/2
         6xHBAFxlCO5rQZU1jmOcWfrwUbvTFnPUJLPYRCXDwiuwwNIAN/L7cNTQhBKLmZXzNDPA
         OHCg==
X-Gm-Message-State: AOJu0Yyhdxaz9XNbnVHcUdA5Sj2fElaju4+pNb0x2k5FtpRv0b7mGoWR
	XAB+H9KnQTbVyNdXaTtTDap9G7ISSvdgkv7/xmRuH/MAreJLUZKBgwp8YLtb6GzK6mjQsRkjwgU
	7JsE3mOJK0ZC9m2rjXpWVY83qv4nK6A==
X-Gm-Gg: ASbGnctg5ZHk3MvhssRlu1ApjH/DhJ1GmyV4014fO/zCZ3/ncfL8fAHLJMDn4/1rUhi
	xn8CAIXdORF19TMfCvlmkY0RJA8Li2BifcZcGVUs=
X-Google-Smtp-Source: AGHT+IHPbJKT/M9dHF93wRCvZ0f/B7oj29pah8VRUxMIVByTvofIvJK9phy0FRsuR/SxiL8G0znG+/UxIgiFy5qv3Xg=
X-Received: by 2002:a05:6808:2447:b0:3eb:6631:ec31 with SMTP id
 5614622812f47-3ed890bcf0emr3141458b6e.42.1734778573050; Sat, 21 Dec 2024
 02:56:13 -0800 (PST)
MIME-Version: 1.0
References: <5tDB.1734774803796643346.wDaB@lists.yoctoproject.org>
In-Reply-To: <5tDB.1734774803796643346.wDaB@lists.yoctoproject.org>
From: Adrian Freihofer <adrian.freihofer@gmail.com>
Date: Sat, 21 Dec 2024 11:56:02 +0100
Message-ID: <CAB3asfh0xAG9YCfbp2ZpSXYG7Bp=1tNiFR+jbGLC-MpYS_2T_A@mail.gmail.com>
Subject: Re: [yocto] compare images builds settings
To: Yocto-mailing-list <yocto@lists.yoctoproject.org>, olivierperrier@yahoo.fr
Content-Type: multipart/alternative; boundary="0000000000009c59bb0629c59cb8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sat, 21 Dec 2024 10:56:19 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64474

--0000000000009c59bb0629c59cb8
Content-Type: text/plain; charset="UTF-8"

olivierperrier via lists.yoctoproject.org <olivierperrier=
yahoo.fr@lists.yoctoproject.org> schrieb am Sa., 21. Dez. 2024, 10:53:

> Hello, I am new to yocto/openembedded and after following some tutorials I
> try to achieve my first custom build. The goal is to generate a
> poky(kirkstone) distro featuring mono on raspberry pi 3B+
> I succeed using the meta-mono layer and generated the core-image-mono
> without any problem.
> For learning purpose and avoid depending on an example image, I wanted to
> generate the core-sato image and amend it with core-image-mono in my
> local.conf.
> So I checked inside the meta-mono/recipes-mono/images/core-image-mono.bb
> and view it was referencing the core-image-sato and the core-image-mono.inc.
> In the core-image-mono.inc, I view these two lines:
> IMAGE_INSTALL += "mono mono-helloworld tzdata"
>
> So my approach was to retrieve these lines, paste it in my local.conf and
> change the image from core-image-mono to core-image-sato .
> By doing this my output image fails to boot and does not have the same
> size of the core-image-mono
> What would be the way to debug this ? I assumed by running a
> bitbake -e|grep IMAGE_INSTALL after the two builds and compare them I
> would see some diffferences, but no difference
> I succeed by changing the line
> IMAGE_INSTALL += "mono mono-helloworld tzdata"
> by
> IMAGE_INSTALL :append = "mono mono-helloworld tzdata"
>
That's the correct solution.

>
> I succeed but I do not understand the right way to debug this ?
>
What you write in this e-mail is correct. You do not need to debug it.

What is confusing you are the different operators bitbake supports. The
bitbake documentation covers this. But there are also some presentations
like this https://m.youtube.com/watch?v=46gTjz1sju4 that explain the
details.
Adrian

>
> Thanks a lot for your support
>
>
> -=-=-=-=-=-=-=-=-=-=-=-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64473):
> https://lists.yoctoproject.org/g/yocto/message/64473
> Mute This Topic: https://lists.yoctoproject.org/mt/110227875/4454582
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> adrian.freihofer@gmail.com]
> -=-=-=-=-=-=-=-=-=-=-=-
>
>

--0000000000009c59bb0629c59cb8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><br><br><div class=3D"gmail_quote" dir=3D"auto"><div dir=
=3D"ltr" class=3D"gmail_attr">olivierperrier via <a href=3D"http://lists.yo=
ctoproject.org" rel=3D"noreferrer noreferrer" target=3D"_blank">lists.yocto=
project.org</a> &lt;olivierperrier=3D<a href=3D"mailto:yahoo.fr@lists.yocto=
project.org" rel=3D"noreferrer noreferrer" target=3D"_blank">yahoo.fr@lists=
.yoctoproject.org</a>&gt; schrieb am Sa., 21. Dez. 2024, 10:53:<br></div><b=
lockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px =
#ccc solid;padding-left:1ex"><div>Hello, I am new to yocto/openembedded and=
 after following some tutorials I try to achieve my first custom build. The=
 goal is to generate a poky(kirkstone) distro featuring mono on raspberry p=
i 3B+</div>
<div>I succeed using the meta-mono layer and generated the core-image-mono =
without any problem.</div>
<div>For learning purpose and avoid depending on an example image, I wanted=
 to generate the core-sato image and amend it with core-image-mono in my lo=
cal.conf.</div>
<div>So I checked inside the meta-mono/recipes-mono/images/<a href=3D"http:=
//core-image-mono.bb" rel=3D"noreferrer noreferrer noreferrer" target=3D"_b=
lank">core-image-mono.bb</a> and view it was referencing the core-image-sat=
o and the core-image-mono.inc.</div>
<div>In the core-image-mono.inc, I view these two lines:=C2=A0</div>
<div>
<div>IMAGE_INSTALL +=3D &quot;mono mono-helloworld tzdata&quot;</div>
<br>
<div>So my approach was to retrieve these lines, paste it in my local.conf =
and change the image from core-image-mono to core-image-sato .</div>
<div>By doing this my output image fails to boot and does not have the same=
 size of the core-image-mono</div>
<div>What would be the way to debug this ? I assumed by running a</div>
<div>bitbake -e|grep IMAGE_INSTALL after the two builds and compare them I =
would see some diffferences, but no difference</div>
<div>I succeed by changing the line=C2=A0</div>
<div>IMAGE_INSTALL +=3D &quot;mono mono-helloworld tzdata&quot;</div>
<div>by=C2=A0</div>
<div>IMAGE_INSTALL :append =3D &quot;mono mono-helloworld tzdata&quot;</div=
>
<div></div></div></blockquote></div><div dir=3D"auto">That&#39;s the correc=
t solution.</div><div class=3D"gmail_quote" dir=3D"auto"><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex"><div><div><br></div>
<div>I succeed but I do not understand the right way to debug this ?</div><=
/div></blockquote></div><div dir=3D"auto"><div dir=3D"auto"><p>What you wri=
te in this e-mail is correct. You do not need to debug it.</p><p>What is co=
nfusing you are the different operators bitbake supports. The bitbake docum=
entation covers this. But there are also some presentations like this <a hr=
ef=3D"https://m.youtube.com/watch?v=3D46gTjz1sju4">https://m.youtube.com/wa=
tch?v=3D46gTjz1sju4</a> that explain the details.</p></div></div><div dir=
=3D"auto">Adrian</div><div class=3D"gmail_quote" dir=3D"auto"><blockquote c=
lass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;=
padding-left:1ex"><br></blockquote></div><div class=3D"gmail_quote" dir=3D"=
auto"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div>
<div>Thanks a lot for your support</div>
<div>=C2=A0</div>
</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#64473): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/64473" rel=3D"noreferrer noreferrer noreferrer noreferrer" targe=
t=3D"_blank">https://lists.yoctoproject.org/g/yocto/message/64473</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/110227875/445=
4582" rel=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank"=
>https://lists.yoctoproject.org/mt/110227875/4454582</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" rel=3D=
"noreferrer noreferrer noreferrer" target=3D"_blank">yocto+owner@lists.yoct=
oproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer noreferrer noreferrer noreferrer" target=3D"_blank">https://=
lists.yoctoproject.org/g/yocto/unsub</a> [<a href=3D"mailto:adrian.freihofe=
r@gmail.com" rel=3D"noreferrer noreferrer noreferrer" target=3D"_blank">adr=
ian.freihofer@gmail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--0000000000009c59bb0629c59cb8--

