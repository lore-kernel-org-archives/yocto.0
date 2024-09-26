Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBC85CCFA14
	for <webhook@archiver.kernel.org>; Thu, 26 Sep 2024 03:16:43 +0000 (UTC)
Received: from mail-oo1-f45.google.com (mail-oo1-f45.google.com [209.85.161.45])
 by mx.groups.io with SMTP id smtpd.web10.34411.1727320593365223963
 for <yocto@lists.yoctoproject.org>;
 Wed, 25 Sep 2024 20:16:33 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jL0sFbsw;
 spf=pass (domain: gmail.com, ip: 209.85.161.45, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f45.google.com with SMTP id 006d021491bc7-5e1bf327af8so264700eaf.2
        for <yocto@lists.yoctoproject.org>; Wed, 25 Sep 2024 20:16:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1727320592; x=1727925392; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=SHO6vF/r7c86dyOKAivPYrQoStqrhpyb6ajYVEIw6d8=;
        b=jL0sFbswMu9O1j5T7AF6zPnOd72+PMho69EDORkmpYk/aqL+7eEQg6esxGS61JQNSE
         YE9fKPskfbUzHz0AGViDim/Hw+LT1ue1KUqfkzRiBnpuqSzYuRIgS6zRRlw7X6FGxPtb
         5MpdxgpVb1UzVsJ8iWF/Lmi1mqydAA8H+Z1OlVmaAKnrRD0kEy2/Zd1uEyu9KMFieKfU
         95KBGC2lqYBjWzYtYVOLAFp4b7C9aLsLIG1L1mYAzJpdHgy7xXu72iKdLiBmH9Lfm4dM
         o426vWa+MgXL7EodBEX11zuTuGppkE2PVH5YEsZsemyppIFM73qtwNuMW6W/cN9YgR9m
         KAeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727320592; x=1727925392;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=SHO6vF/r7c86dyOKAivPYrQoStqrhpyb6ajYVEIw6d8=;
        b=LGBPV7qfvmbm7GiZdObpeW0xcLkCx0j7nmVN3Irr4x6JUQ2pxbAr9W92TX3VoeKPr1
         80gu8/0DXFYcx7a+gMscfcFbbCOmTyxRc9eKekFYCR8M9tXO0CVTd0Gu07SKo/GeiQpw
         Jy4UlwhfnEcWPjc/RrgZWy0LPMTQ1vcaZrqP2yMZehQvFEv4booX5jezJIMc3aVbxRwH
         5/CLiOYW+3ZeT2nWnF1V9rKch6HHwf9+Lot46aNr9hYpAskiXlF80xDcDutK6s8l6wad
         LPPeEIewBEDgSGpq/KgFNhlLixph09PnbHXHbhH425bRmXfnGNCt04L40piHk6FA/Mvt
         w+aw==
X-Gm-Message-State: AOJu0YySkZfgVMUHGwtWN77d0R4ktAy8gDCf1PKcyTAnnFzp3/Y8rgMi
	lS3Mf1NGLbku2ASxuqN3Xu1GFbM7M6O0RhubT3L+FeA/bnDLa5SgpPdcE0KbTuSE5uq48vIX77c
	y5sI2PEpRkVtg487eXE71o6NuhIV+FNQX
X-Google-Smtp-Source: AGHT+IFqAJtR81oJl+fvGrhp1GdWxmTpn+2WAnG7AbH0JKJcE7O8r9wHAwaoZG5Wh/bOag7p7lqDXJ/w+zYA7q7DGrE=
X-Received: by 2002:a05:6820:602:b0:5e1:de92:6b66 with SMTP id
 006d021491bc7-5e5c699bebcmr3619902eaf.2.1727320592356; Wed, 25 Sep 2024
 20:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
In-Reply-To: <jSFp.1727320167454925028.4fOt@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 25 Sep 2024 20:16:21 -0700
Message-ID: <CAMKF1sr2n+f74ZJdc5-CK1M=-rubvXaqjBST=tacn8kOQLeaSA@mail.gmail.com>
Subject: Re: [yocto] Question on the sequence conf file parsing. #yocto
To: yocto@lists.yoctoproject.org, yanmei.guo@boeing.com
Content-Type: multipart/alternative; boundary="000000000000521e330622fd2a2d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 26 Sep 2024 03:16:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63888

--000000000000521e330622fd2a2d
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Do

Bitbake -e busybox >& log

And look into log file it will show you the order

On Wed, Sep 25, 2024 at 8:09=E2=80=AFPM Guo, Yanmei via lists.yoctoproject.=
org
<yanmei.guo=3Dboeing.com@lists.yoctoproject.org> wrote:

> Hi Yoctoers,
>
> Trying to understand the sequence of conf file parsing when bitbake is
> running a build.
> As a typical yocto project, we generally have local.conf, bblayers.conf,
> multiconfig/xxx.conf and distro.conf etc,
> serving for different purposes. Is there a defined sequence in terms of
> which conf file is parsed first, which is last?
> Especally, I am interested to know if `BBLAYERS` can be appended
> conditionally depending on a variable defined in a multiconfig file.
>
> Thanks very much!
>
> -May
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#63887):
> https://lists.yoctoproject.org/g/yocto/message/63887
> Mute This Topic: https://lists.yoctoproject.org/mt/108661552/1997914
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> raj.khem@gmail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000521e330622fd2a2d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Do</div><div dir=3D"auto"><br></div><div dir=3D"auto">Bit=
bake -e busybox &gt;&amp; log=C2=A0</div><div dir=3D"auto"><br></div><div d=
ir=3D"auto">And look into log file it will show you the order=C2=A0</div><d=
iv><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On =
Wed, Sep 25, 2024 at 8:09=E2=80=AFPM Guo, Yanmei via <a href=3D"http://list=
s.yoctoproject.org">lists.yoctoproject.org</a> &lt;yanmei.guo=3D<a href=3D"=
mailto:boeing.com@lists.yoctoproject.org">boeing.com@lists.yoctoproject.org=
</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:=
0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;padding-lef=
t:1ex;border-left-color:rgb(204,204,204)"><div>Hi Yoctoers,</div>
<div>=C2=A0</div>
<div>Trying to understand the sequence of conf file parsing when bitbake is=
 running a build.=C2=A0</div>
<div>As a typical yocto project, we generally have local.conf, bblayers.con=
f, multiconfig/xxx.conf and distro.conf etc,</div>
<div>serving for different purposes. Is there a defined sequence in terms o=
f which conf file is parsed first, which is last?=C2=A0</div>
<div>Especally, I am interested to know if `BBLAYERS` can be appended condi=
tionally depending on a variable defined in a multiconfig file.</div>
<div>=C2=A0</div>
<div>Thanks very much!</div>
<div>=C2=A0</div>
<div>-May</div>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
You automatically follow any topics you start or reply to.<br>
View/Reply Online (#63887): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/63887" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/63887</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/108661552/199=
7914" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/m=
t/108661552/1997914</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj.khem@g=
mail.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div></div>

--000000000000521e330622fd2a2d--

