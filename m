Return-Path: <jester@theyoctojester.info>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DF6EC83F1A
	for <webhook@archiver.kernel.org>; Thu, 10 Jul 2025 08:15:22 +0000 (UTC)
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
 by mx.groups.io with SMTP id smtpd.web10.3553.1752135312892033428
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Jul 2025 01:15:13 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@theyoctojester-info.20230601.gappssmtp.com header.s=20230601 header.b=ZoOIirVS;
 spf=none, err=permanent DNS error (domain: theyoctojester.info, ip: 209.85.218.45, mailfrom: jester@theyoctojester.info)
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ae0e0271d82so125197766b.3
        for <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 01:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=theyoctojester-info.20230601.gappssmtp.com; s=20230601; t=1752135311; x=1752740111; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=KDpQ471ppntrnDeZT2jCRQZDamhKWYEuLWPR87HY77c=;
        b=ZoOIirVS+OoqdhmbPyNadh14Ac/ymZ9hH30BgVRw+gvmtA1nBrmJESu7ZlKbX8n5Vt
         AnM0QMz5oaTnwcRJSB0GgWMypqPvJNXHPJsm0hr+nLBaM2nU4FNKfFnA1fLS66pTvDBv
         UKEKu05yxE7e3wZMJpgDtDnj7ZaDGPgbigwCa/I7h816j3T51sGnDNV8MTKxY3G7Df5o
         MlXt+WAmP2CiH94VX4bGPVJWTlAroOcmuhQt4CZ5IODZ9O24YqDmjkXYTHk0rD96wa8h
         yCZzxavoz92Vz4tgFcc0XVf70lpQWlPRLmHtrl2v+BHpLQb8D2cCe5JmyA3wi292L6Rx
         LDjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752135311; x=1752740111;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KDpQ471ppntrnDeZT2jCRQZDamhKWYEuLWPR87HY77c=;
        b=pMQ/BJrGgjEGLiV7UROBOVdXzmTHItpCN2NzUpEBgt1S8A9M6IB1SzE1/wxhPc9IPx
         iPs1b+k+NuXH8WApouJYiV2Z+SIAohEVfZiPTC6g9s5CDRTnrOe5esZZ6Ylgm3gUksNq
         fR1KQ52ZqJ197C4bfLVrW+d7dzHSrkegNj2fuoYnhQGgmqHYbSQ2EREOi+kXxuOPods8
         5eq3mbpD0YsC9Ul1RjO5bW0huCaCi3FMKBvgyY3deSzN3SmUHTZHyd18n95ZtNXEg5vr
         uKK6js6qH2QDS2Hj6rdUxQjGqlhlacvKQHYfU5liu5bx6umInAtDYFLgrfWV8Xv1YH/B
         6JnQ==
X-Gm-Message-State: AOJu0YyXFXpyMRhCD23ivkVoT89Rk4X0iLQOGdwCMRXP7X1agxFVrSJT
	QwrIJVI+HxMRTPFVxAF184Sm/4zNR6scBrT+J5t61DGcLcUjs2rabtlDoFg+SMoe7/aycMrntbq
	//+ctUf0eh7KBlqioLOuXFOk6eu8sghTSR1I5g8BRWTdLPmvlAceG
X-Gm-Gg: ASbGncumCE5tHJBHMk8VkkQQ7LrO1VE5VLNrKuHEyrcV7Z+61QZIgfAhoCoyqdSIJT5
	GqQKPgreVPRb3SPU0Z9/Sv9Gn5DOCl8KCESjsp4DUxDifUbpYcJBpZ38pHiofCzlatIZx2rwxfh
	L8pQwLD4XkoJ3U5JTtivmMiYAWgE7nMfphDLSZoSUs8w==
X-Google-Smtp-Source: AGHT+IG4hNzbOMSeNPv0gBijQrqthHW6tVY4ATUNcLAXbWI+8NzZlaICTedcv8zZf47m5hhc23E/sQWabe118Ez9UDU=
X-Received: by 2002:a17:907:d28:b0:ad5:78ca:2126 with SMTP id
 a640c23a62f3a-ae6cfba40a1mr558220766b.59.1752135310881; Thu, 10 Jul 2025
 01:15:10 -0700 (PDT)
MIME-Version: 1.0
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca> <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com>
In-Reply-To: <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com>
From: Josef Holzmayr <jester@theyoctojester.info>
Date: Thu, 10 Jul 2025 10:14:43 +0200
X-Gm-Features: Ac12FXxVQMWjxDDjFayxC6AXRqFaaSzAMJsfdurAqsuVltT_fiPy4U4L-rnbe6w
Message-ID: <CAEt6NwpDEcFXJDHF7QhkV63k0D6sXOSErEuYNmiEt9TSPwOcJg@mail.gmail.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
To: yocto@lists.yoctoproject.org, raj.khem@gmail.com, 
	Jeffrey Osier-Mixon <jefro@redhat.com>
Cc: rpjday@crashcourse.ca
Content-Type: multipart/alternative; boundary="000000000000cdd1ea06398ecaf3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 10 Jul 2025 08:15:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65635

--000000000000cdd1ea06398ecaf3
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Robert,

It depends a bit (classic engineering answer).
The obvious choices are
- oe-core
- oe-devel
- yocto
- oe-architecture.

So far my understanding is that meta-riscv is hosted on GitHub under the
reign of Khem, but maybe this could/should be reconsidered moving to yp.org
too? In that case the yocto-patches list would be a good place to discuss.
Looping in @Jeffrey Osier-Mixon <jefro@redhat.com>, I think this is a good
opportunity to move visibility forwards.

Greetz,
Josef

On Wed, Jul 9, 2025 at 4:11=E2=80=AFPM Khem Raj via lists.yoctoproject.org
<raj.khem=3Dgmail.com@lists.yoctoproject.org> wrote:

>
>
> On Wed, Jul 9, 2025 at 4:09=E2=80=AFAM Robert P. J. Day via lists.yoctopr=
oject.org
> <rpjday=3Dcrashcourse.ca@lists.yoctoproject.org> wrote:
>
>>
>>   I'm currently diving into RISC-V and have piles of questions but I
>> see no YP mailing list devoted to RISC-V. Should there be one?
>>
>
> That=E2=80=99s right. I think we do not have trafffic to warrant a separa=
te
> mailing list yet so maybe use oe-devel or oe-core ml
>
>>
>> rday
>>
>>
>>
>>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65634):
> https://lists.yoctoproject.org/g/yocto/message/65634
> Mute This Topic: https://lists.yoctoproject.org/mt/114062542/4689568
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> jester@theyoctojester.info]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000cdd1ea06398ecaf3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Robert,<div><br></div><div>It depends a bit (classic en=
gineering answer).</div><div>The obvious choices are</div><div>- oe-core</d=
iv><div>- oe-devel</div><div>- yocto</div><div>- oe-architecture.</div><div=
><br></div><div>So far my understanding is that meta-riscv is hosted on Git=
Hub under the reign of Khem, but maybe this could/should be reconsidered mo=
ving to <a href=3D"http://yp.org">yp.org</a> too? In that case the yocto-pa=
tches list would be a good place to discuss.</div><div>Looping in=C2=A0<a c=
lass=3D"gmail_plusreply" id=3D"plusReplyChip-0" href=3D"mailto:jefro@redhat=
.com" tabindex=3D"-1">@Jeffrey Osier-Mixon</a>, I think this is a good oppo=
rtunity to move visibility forwards.</div><div><br></div><div>Greetz,</div>=
<div>Josef</div></div><br><div class=3D"gmail_quote gmail_quote_container">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 9, 2025 at 4:11=E2=80=AFP=
M Khem Raj via <a href=3D"http://lists.yoctoproject.org">lists.yoctoproject=
.org</a> &lt;raj.khem=3D<a href=3D"mailto:gmail.com@lists.yoctoproject.org"=
>gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;bo=
rder-left-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex">=
<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Wed, Jul 9, 2025 at 4:09=E2=80=AFAM Robert P. J. Day via=
 <a href=3D"http://lists.yoctoproject.org" target=3D"_blank">lists.yoctopro=
ject.org</a> &lt;rpjday=3D<a href=3D"mailto:crashcourse.ca@lists.yoctoproje=
ct.org" target=3D"_blank">crashcourse.ca@lists.yoctoproject.org</a>&gt; wro=
te:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-style:solid;border-left-color:rgb(2=
04,204,204);padding-left:1ex"><br>
=C2=A0 I&#39;m currently diving into RISC-V and have piles of questions but=
 I<br>
see no YP mailing list devoted to RISC-V. Should there be one?<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">That=E2=80=99s r=
ight. I think we do not have trafffic to warrant a separate mailing list ye=
t so maybe use oe-devel or oe-core ml=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left=
-style:solid;border-left-color:rgb(204,204,204);padding-left:1ex"><br>
rday<br>
<br>
<br>
<br>
</blockquote></div></div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#65634): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65634" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65634</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114062542/468=
9568" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/114062542/4689568</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:jester@theyoctojester.info" target=3D"_blank">je=
ster@theyoctojester.info</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000cdd1ea06398ecaf3--

