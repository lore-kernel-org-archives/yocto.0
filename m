Return-Path: <mattwood2000@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 270C6C4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 15:06:17 +0000 (UTC)
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
 by mx.groups.io with SMTP id smtpd.web10.7965.1714662373904472516
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 May 2024 08:06:14 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UTHhvcUa;
 spf=pass (domain: gmail.com, ip: 209.85.128.182, mailfrom: mattwood2000@gmail.com)
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-61b92a83216so91451187b3.2
        for <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 08:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1714662373; x=1715267173; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=XxVotchGko3HgMv8gqLF60qlNM3xjOWMmbxSQ59m3d8=;
        b=UTHhvcUapJiOfKBE1qdHOAQ+9Q2v56C/pVKJ5tRJtaY4ObB9dK5P0/WTRSP+8IoRwZ
         MuHz0rAM1fCdEy/o9XU7CFQWp9dhdXiXI00LQE5DB83J1Ro4pd+7cbrVhcvzysJstml0
         zM+tbpIzMGwPBNgaofqjJ1DCZYjxTP/SdcmWn1jSZOnBk01JnDY2jDSBg9lPEi1f4QX/
         Ao4ZKCMV0ajW7OmYQzB24l91MmBO9iWjp7uGGQHumrPXjswI3wfRVuwtDCvNb6dPNojQ
         rylzVuXvWryl5a8cL/g+M79rTCQlFfWqfX+KPEpQbus4QM4CyqXiaHEqGi5VYOu+rPTK
         TfDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714662373; x=1715267173;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XxVotchGko3HgMv8gqLF60qlNM3xjOWMmbxSQ59m3d8=;
        b=I5LvCkIkgaNSB4Di/cU429REOSvZ8KotAHp7bHWfTrliqJyV53sAZeghIoR3BGCBPh
         K9bJYIiMG/U/Bm+CTqUiTNoYcGtKuHLOdX1BHwz6YGa2cnwOKmtk65AKR4rjp5iHpWV+
         0gLCdTWQrWJo8Nm02ZMeLE28H3zNKsuayC3mD/5BgNgIb/3BHFBSoSH5vpYE6LYBOq1n
         jYNNW+AYKdyUU4yaFj+FZCAygxSODutl5eu8CPkTrbTXI2m3e0RhH+Z4CztzHZyxFq1R
         6fjxsajSGF+mrTg6rqBEvvG7cVXJxvooJPiwP7sNCb9MVz7k5kdcJxReqYCk9TrNuhzX
         9GYA==
X-Gm-Message-State: AOJu0YwV0wxSNYWBh8c4YTfhPQgDRr6NTleLKUeEd6CJDQd2YflliKBS
	b4PJXA4gq0Klnr4hNgr8x8smzCmMi7D+875ijupdhoz5WZEtmNwiW4Jtw7PW46mgJ6eG1WQQXim
	4elJUp9v0ZADFJHLbGsoSCc20c9c=
X-Google-Smtp-Source: AGHT+IGV6SZpbYkwTEfzRlDEiMQx8wK2Cr09yA8O0SfH37h9fD4r6ekgWEOAxL6bDlNjpih8lKsfOfiPZPxeOn6Eovc=
X-Received: by 2002:a25:13c1:0:b0:de5:cd02:8317 with SMTP id
 184-20020a2513c1000000b00de5cd028317mr82146ybt.40.1714662372614; Thu, 02 May
 2024 08:06:12 -0700 (PDT)
MIME-Version: 1.0
References: <CADjezmbyYDACsvsHYcgWNOvobjjx2as_yvmpbS5yr11Ozc_RYQ@mail.gmail.com>
 <CAEt6Nwpb-S4LmBxy_mDpj0uWz=wQ5-PrS4FZ0qWCi0SFCK_c4Q@mail.gmail.com>
In-Reply-To: <CAEt6Nwpb-S4LmBxy_mDpj0uWz=wQ5-PrS4FZ0qWCi0SFCK_c4Q@mail.gmail.com>
From: mattwood2000@gmail.com
Date: Thu, 2 May 2024 11:06:01 -0400
Message-ID: <CADjezmb5tkMf=6fFhxc86ZTfm0mtwMvXBHoS5d=TaqGQrVYM+Q@mail.gmail.com>
Subject: Re: [yocto] Get bitbake build target in recipe
To: Josef Holzmayr <jester@theyoctojester.info>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a12bde061779f190"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 15:06:17 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63028

--000000000000a12bde061779f190
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Josef,

Ok thanks for the reply.  No problem I can manage it in another way.

Thanks, Matt

On Thu, May 2, 2024 at 10:25=E2=80=AFAM Josef Holzmayr <jester@theyoctojest=
er.info>
wrote:

> Hi Matt,
>
> That's just not possible. A recipe can not know which image is being
> built. Reason: the packaged outputs from recipes are used for all images
> that depend on them, so they need to be image agnostic. If you need to
> trigger something across various recipes, then use a DISTRO wide
> configuration variable.
>
> Greetz,
> Josef
>
> On Thu, May 2, 2024 at 3:56=E2=80=AFPM Matt Wood via lists.yoctoproject.o=
rg
> <mattwood2000=3Dgmail.com@lists.yoctoproject.org> wrote:
>
>> Hi all,
>>
>> I'm trying to set the SRCREV of a recipe based on the image name from th=
e
>> bitbake command line.
>>
>> I have tried getting the IMAGE_BASENAME in various tasks but they all
>> return None presumably because these tasks and anonymous python function
>> are evaluated at parse time?
>>
>> Does anyone know if it is possible to get the name of the recipe or imag=
e
>> being passed to bitbake within a recipe?
>>
>> Thanks, Matt.
>>
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>> Links: You receive all messages sent to this group.
>> You automatically follow any topics you start or reply to.
>> View/Reply Online (#63025):
>> https://lists.yoctoproject.org/g/yocto/message/63025
>> Mute This Topic: https://lists.yoctoproject.org/mt/105862978/4689568
>> Group Owner: yocto+owner@lists.yoctoproject.org
>> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
>> jester@theyoctojester.info]
>> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>>
>>

--000000000000a12bde061779f190
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Josef,</div><div><br></div><div>Ok thanks for the =
reply.=C2=A0 No problem I can manage it in another way.</div><div><br></div=
><div>Thanks, Matt<br></div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2024 at 10:25=E2=80=AFAM Josef=
 Holzmayr &lt;<a href=3D"mailto:jester@theyoctojester.info">jester@theyocto=
jester.info</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div dir=3D"ltr">Hi Matt,<div><br></div><div>That&#39;s just not=
 possible. A recipe can not know which image is being built. Reason: the pa=
ckaged outputs from recipes are used for all images that depend on them, so=
 they need to be image agnostic. If you need to trigger something across va=
rious recipes, then use a DISTRO wide configuration variable.</div><div><br=
></div><div>Greetz,</div><div>Josef</div></div><br><div class=3D"gmail_quot=
e"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2024 at 3:56=E2=80=
=AFPM Matt Wood via <a href=3D"http://lists.yoctoproject.org" target=3D"_bl=
ank">lists.yoctoproject.org</a> &lt;mattwood2000=3D<a href=3D"mailto:gmail.=
com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoctoproject.=
org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"marg=
in:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1e=
x"><div dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m trying to=
 set the SRCREV of a recipe based on the image name from the bitbake comman=
d line.</div><div><br></div><div>I have tried getting the IMAGE_BASENAME in=
 various tasks but they all return None presumably because these tasks and =
anonymous python function are evaluated at parse time?</div><div><br></div>=
<div>Does anyone know if it is possible to get the name of the recipe or im=
age being passed to bitbake within a recipe?</div><div><br></div><div>Thank=
s, Matt.<br></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63025): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63025" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63025</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/105862978/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/105862978/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>
</blockquote></div>

--000000000000a12bde061779f190--

