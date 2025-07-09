Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 0540FC83F09
	for <webhook@archiver.kernel.org>; Wed,  9 Jul 2025 14:11:45 +0000 (UTC)
Received: from mail-yw1-f178.google.com (mail-yw1-f178.google.com [209.85.128.178])
 by mx.groups.io with SMTP id smtpd.web10.16799.1752070299254235278
 for <yocto@lists.yoctoproject.org>;
 Wed, 09 Jul 2025 07:11:39 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ADRs+1yO;
 spf=pass (domain: gmail.com, ip: 209.85.128.178, mailfrom: raj.khem@gmail.com)
Received: by mail-yw1-f178.google.com with SMTP id 00721157ae682-7176c66e99cso43491637b3.3
        for <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 07:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1752070298; x=1752675098; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ls7FKkFisJWU2Z/DxQDDCvEiW/wqaeaHOTL6+zeYJ4A=;
        b=ADRs+1yOoLswKvabhj6uBMSK6/qsIgCthjgX/IRb7/XBf29nMG8ajD5FfGCuFmXAb2
         n07DWh5wwuosVtAw3FsZ9VuahRaEIbhoFiDKCdQWJy4BwPAnj6ootZxTgLMyhd7sGJCZ
         qNIU7sUithaaeqUbfCYr6SWYsMMDgny6B4XPJ0UFSOoWQrPkkaKbsPRKe4IpML0JckgG
         zrzUm7ufZjCN7Fx0EHQyvq7/cUYm9Xm1z+NHRH8QHBu0actV/l/ny0tCYiwbe/V9KvW7
         9C+Hj6LVv5+Pm9h3fIvwv5bhPYdigmyECihIQLHz7ekZDVt95LrRxTHx/Kz5fCACRDIW
         Acvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752070298; x=1752675098;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ls7FKkFisJWU2Z/DxQDDCvEiW/wqaeaHOTL6+zeYJ4A=;
        b=sGvsEgAGDzMNeQJy2Le4v4ZcrrwMDueHion8Eys2nCCaAbQEaKzHU6GWx0MQlGSh9F
         Us/Ajp3oNfa9/2nHNYzTMCDaiBJq/D22Jk/I6zfux6gMuFoY5RdMXuSMdS+Yoy3sjLyo
         JxKLaZTWONIgabP8tXiW7TW2WLfM4OZVXKeFdQR5SA3QHrudFV0NA8QvgVF8Jd24FqyC
         pBwNOifh1Yr6UXcDh5vyKhxiSNI5Vnexiw9sJg6CGAa5zjXBrvsnSG+z6VMb6BNVpeSa
         E0TDr8+fc8Lkb6vs/Q/12q8FsbYWhOivbLXWNcHQFHdtKMJ9gn9o/rgKNsmdJHLd2oRn
         DCxw==
X-Gm-Message-State: AOJu0Yw8jStHQwKXG5Yu+jT4nthMGLQYltXZOgFxdjdo6/qXnv5TKCcU
	jEkwviSItbr+5CgfiAf0+LN4Twy/+jT09y9pAW/uuIJ1IuGMxm/raEC+JmD5dchcBm23yuZpkOa
	SF1Joe9pTZVsT+biNW51DnEPgLvJ4Ul0wkHBF
X-Gm-Gg: ASbGnctBaw4XnDGkI9wJgOTLSF6cnmEb/Smvo6od7S/+iJEKJyVf5It+uLIEoekjx+T
	6cRkXZaBqGDGJDkbZCU5DdkXFZpvjO3OGeEgJUsKnEY7SWk/7wpStvMN1rBRkjxi8ShCzH4eoMn
	MmyRvQ+E83x79kZ3vSkJAFjS901Lu/34tKY/FtntE1U+kA/X7QlNoAZzTDezI/4SFoW3xLFDTUU
	ZV6vnlmczXAVv4=
X-Google-Smtp-Source: AGHT+IEwawDxcm0J73amqap69cgTObkq+UjJATy2qKtsvxsOzUnvhEjE+2T9xSL4az1tXEB+IohP/rG0f153YbnjFPA=
X-Received: by 2002:a05:690c:601:b0:714:3e:f424 with SMTP id
 00721157ae682-717b19ee64amr40092677b3.35.1752070297891; Wed, 09 Jul 2025
 07:11:37 -0700 (PDT)
MIME-Version: 1.0
References: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca>
In-Reply-To: <7df607f8-189c-bf7d-c131-d2025e0293ad@crashcourse.ca>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 9 Jul 2025 07:11:26 -0700
X-Gm-Features: Ac12FXwfVXhx8QcPnxnAxwdztZl5x5uFQd7AdncCGOz0RQ1-m5nGDdEoRgdnK0Q
Message-ID: <CAMKF1sobdeYnURWOuHEqaEv_AtANnRb1K15rSkzZ-rrrP6nfOA@mail.gmail.com>
Subject: Re: [yocto] Is there a YP RISC-V specific mailing list?
To: yocto@lists.yoctoproject.org, rpjday@crashcourse.ca
Content-Type: multipart/alternative; boundary="000000000000ba3b1b06397fa70c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 09 Jul 2025 14:11:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65634

--000000000000ba3b1b06397fa70c
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 9, 2025 at 4:09=E2=80=AFAM Robert P. J. Day via lists.yoctoproj=
ect.org
<rpjday=3Dcrashcourse.ca@lists.yoctoproject.org> wrote:

>
>   I'm currently diving into RISC-V and have piles of questions but I
> see no YP mailing list devoted to RISC-V. Should there be one?
>

That=E2=80=99s right. I think we do not have trafffic to warrant a separate=
 mailing
list yet so maybe use oe-devel or oe-core ml

>
> rday
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#65633):
> https://lists.yoctoproject.org/g/yocto/message/65633
> Mute This Topic: https://lists.yoctoproject.org/mt/114062542/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000ba3b1b06397fa70c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote gmail_quote_container"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 9, 2025 at 4:09=E2=80=AFAM =
Robert P. J. Day via <a href=3D"http://lists.yoctoproject.org">lists.yoctop=
roject.org</a> &lt;rpjday=3D<a href=3D"mailto:crashcourse.ca@lists.yoctopro=
ject.org">crashcourse.ca@lists.yoctoproject.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #=
ccc solid;padding-left:1ex"><br>
=C2=A0 I&#39;m currently diving into RISC-V and have piles of questions but=
 I<br>
see no YP mailing list devoted to RISC-V. Should there be one?<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">That=E2=80=99s r=
ight. I think we do not have trafffic to warrant a separate mailing list ye=
t so maybe use oe-devel or oe-core ml=C2=A0</div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><br>
rday<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#65633): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/65633" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/65633</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/114062542/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/114062542/1997914</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000ba3b1b06397fa70c--

