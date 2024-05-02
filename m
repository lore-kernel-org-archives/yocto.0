Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5C7DC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 14:25:26 +0000 (UTC)
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
 by mx.groups.io with SMTP id smtpd.web11.14957.1714659917632387230
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 May 2024 07:25:18 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=sl3SgJ6K;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.44, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-a5200202c1bso1079535666b.0
        for <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 07:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1714659916; x=1715264716; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XOEe575eflcBqirLiG1KFnJEsZntpK6vjG5Ldm4jcv8=;
        b=sl3SgJ6Ky+WVL0DmcMcyykDPXKlkmlGCY0mZzCKZkaRcRC3/ShU23kVAJem3sYfJY+
         kAo+fYWEKiZXVp8J++BAS82T5z37Xx2RTIWcAK9XL3S/FyxOFvzLtpiKPKhaza4BB/Mt
         tfU/FD31cckOookBH/PRS5wWLd3N88qIW2mp0nDm1j74YdW1a8Hp8gdLbG68qRTM8b/h
         j2RvtBLIvIWKqZmgJpjwS+I9SIhHHmPEAVZUjsX+cufHBuTjsKlmIn1EFL4J8HGaiRUU
         gUWZdYBJwzLwbg/IArr0R9/WmQuRq1IbzMWeNBMJgz21EZ/AMZblPoyoj0NAWiQmNCKf
         Gj4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714659916; x=1715264716;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XOEe575eflcBqirLiG1KFnJEsZntpK6vjG5Ldm4jcv8=;
        b=Opei7nvQ/90luxbDzkw06z5Y/xKU5zxNKabzFwvxPBPmkZUHK98K2gaarODEPl94B4
         hU27dFszNDq18BE7auTkTPBLbVn7z5qyBEhmnITP13ost7GcAsqCEvigIsjbTqkneGeV
         0/qqkgOL3QXkK0L8Mf/PXuA0i5BAI6VHt83GTVPv1/nKd3MUdgh+xHw+mLIVCNkcSGIw
         ZkaruOd3yDp+zP7YPPl7IqYOtrI5WTQ1aSKhgOlqzYE/SlS+hPVSM6O0gj0UsqNWyXhx
         B4DbYWyoKE3OIGcCoHFYef2O5wbtOO73lNd76/H4/HsBpt/8U9XRWYmkkRL/0U1ajFob
         KwtQ==
X-Gm-Message-State: AOJu0YwvfGqvwGeGC5inZwZbvVreNtk+T/e0mH1+hml9i4n5mfxdNcH2
	eytkEy6FYrtXT6Y7i2UvWEy0DJJKUZPWGOU7ng/fqxhEx8W/UH7yWqnYvsRLhbAMycxOfsQTCOe
	jXssy7jldQH9ZCaXMzwtx7iNh88V+xKv4r/znxvTbetxFCUEn
X-Google-Smtp-Source: AGHT+IHV4rmdtfHdZAYMXVC1qLFc/9fkXm9z6fPjVagaEPgcCKpQgJBuecjr0Ak5kRtv1PPFXb7bFPsaIwmiCLxsJsk=
X-Received: by 2002:a17:906:7159:b0:a52:28f:5e61 with SMTP id
 z25-20020a170906715900b00a52028f5e61mr2001902ejj.27.1714659915825; Thu, 02
 May 2024 07:25:15 -0700 (PDT)
MIME-Version: 1.0
References: <CADjezmbyYDACsvsHYcgWNOvobjjx2as_yvmpbS5yr11Ozc_RYQ@mail.gmail.com>
In-Reply-To: <CADjezmbyYDACsvsHYcgWNOvobjjx2as_yvmpbS5yr11Ozc_RYQ@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 2 May 2024 16:24:49 +0200
Message-ID: <CAEt6Nwpb-S4LmBxy_mDpj0uWz=wQ5-PrS4FZ0qWCi0SFCK_c4Q@mail.gmail.com>
Subject: Re: [yocto] Get bitbake build target in recipe
To: yocto@lists.yoctoproject.org, mattwood2000@gmail.com
Content-Type: multipart/alternative; boundary="00000000000031abb50617795f74"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 14:25:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63027

--00000000000031abb50617795f74
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Matt,

That's just not possible. A recipe can not know which image is being built.
Reason: the packaged outputs from recipes are used for all images that
depend on them, so they need to be image agnostic. If you need to trigger
something across various recipes, then use a DISTRO wide configuration
variable.

Greetz,
Josef

On Thu, May 2, 2024 at 3:56=E2=80=AFPM Matt Wood via lists.yoctoproject.org
<mattwood2000=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hi all,
>
> I'm trying to set the SRCREV of a recipe based on the image name from the
> bitbake command line.
>
> I have tried getting the IMAGE_BASENAME in various tasks but they all
> return None presumably because these tasks and anonymous python function
> are evaluated at parse time?
>
> Does anyone know if it is possible to get the name of the recipe or image
> being passed to bitbake within a recipe?
>
> Thanks, Matt.
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63025):
> https://lists.yoctoproject.org/g/yocto/message/63025
> Mute This Topic: https://lists.yoctoproject.org/mt/105862978/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--00000000000031abb50617795f74
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Matt,<div><br></div><div>That&#39;s just not possible. =
A recipe can not know which image is being built. Reason: the packaged outp=
uts from recipes are used for all images that depend on them, so they need =
to be image agnostic. If you need to trigger something across various recip=
es, then use a DISTRO wide configuration variable.</div><div><br></div><div=
>Greetz,</div><div>Josef</div></div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr" class=3D"gmail_attr">On Thu, May 2, 2024 at 3:56=E2=80=AFPM Matt W=
ood via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject.org</a=
> &lt;mattwood2000=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org">gm=
ail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=3D=
"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;borde=
r-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><di=
v dir=3D"ltr"><div>Hi all,</div><div><br></div><div>I&#39;m trying to set t=
he SRCREV of a recipe based on the image name from the bitbake command line=
.</div><div><br></div><div>I have tried getting the IMAGE_BASENAME in vario=
us tasks but they all return None presumably because these tasks and anonym=
ous python function are evaluated at parse time?</div><div><br></div><div>D=
oes anyone know if it is possible to get the name of the recipe or image be=
ing passed to bitbake within a recipe?</div><div><br></div><div>Thanks, Mat=
t.<br></div></div>
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

--00000000000031abb50617795f74--

