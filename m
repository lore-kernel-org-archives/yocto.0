Return-Path: <luiz.balloti@timpelmedical.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6915DC77B78
	for <webhook@archiver.kernel.org>; Thu,  4 May 2023 15:15:37 +0000 (UTC)
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170])
 by mx.groups.io with SMTP id smtpd.web10.53049.1683213331785163912
 for <yocto@lists.yoctoproject.org>;
 Thu, 04 May 2023 08:15:31 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@timpelmedical-com.20221208.gappssmtp.com header.s=20221208 header.b=JFXPayTE;
 spf=softfail (domain: timpelmedical.com, ip: 209.85.210.170, mailfrom: luiz.balloti@timpelmedical.com)
Received: by mail-pf1-f170.google.com with SMTP id d2e1a72fcca58-643990c5319so206708b3a.2
        for <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 08:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=timpelmedical-com.20221208.gappssmtp.com; s=20221208; t=1683213331; x=1685805331;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=S+JWq1U7AbfR9cbwXnyjrLstx87urbfLTEXS0sC88tU=;
        b=JFXPayTECrPfU1s53+1ot23f9J7T83KG7QyA3gMh19wJOk3OkSKUqXS1Iav1Fam+aj
         CggRvGPTxLLBnEOuDIKDZFngOCa6VkwjCgVjz+EvXGcB0EUU/hjKyPmu+MGCaAfm7NM4
         +ZPZ586swkd6eGy1csa/vcJ1K7I0IepAkGK2YQxwXzMMrz7RKq+McKFl9OMa8HXbMuI8
         KLCb+REcr1mjDw7cX8qsq8O+kwwaNpO/bl7rmp7DTupxOkYBYsqgDft87gHduCb6tWGz
         8MG5ivb6zU1AN06U00UfIO4e/qLvxQOgQuh0iWBMPkzAKGwS3UuC/99FuwRHcCL6bIR3
         XMZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683213331; x=1685805331;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=S+JWq1U7AbfR9cbwXnyjrLstx87urbfLTEXS0sC88tU=;
        b=I/KRYIevToDZnT8RukoSwrKdWZP3Ot+OSANPfx+8J6kk6+YIEwA+ieq+nIw/Rm2CY/
         //rC9J+A99IMy5zlCMByDxfgrObu9M+UOE3iTPAZ5wnSCa8Hv8EGSZ6Nx4Kvn+4OfBYh
         4GLy049GApsHUqSYMsIiZBBq7cpiMv8YnFyfao64KccHnrYygUCqOQuuvUPHPqtzQqE+
         frMPYb68jX3mYaSg6q2G5lGbuZmNUxvzwi/7NFPJraD6tOrWKQLPllZycYt7XNbm/t5j
         nBhYcuOQpzIRooep4SeDQ9CDyDSNBbCogDzgJgQnbIxw9AlLAi5AM8PDcGklntcq0buN
         fvmw==
X-Gm-Message-State: AC+VfDxg+emkcX9oIJetRQo0fjUCZQF+jy1CdmOP7W2SMYisyTQS4iq9
	Kmk2Jn5zopM3jVHIKKmYJ0kCsYCAJESiXPrRxIFUJk2csyFcBNU7
X-Google-Smtp-Source: ACHHUZ61EdmnTpgVPNXiC22YsxgC5eX70BFG9ngqS9kIGF3U/P49W2mob6BWxOR7peUFb5oCjWNlwISKnpeR+U9a3kY=
X-Received: by 2002:a05:6a00:990:b0:643:558d:9ce2 with SMTP id
 u16-20020a056a00099000b00643558d9ce2mr3069510pfg.21.1683213330752; Thu, 04
 May 2023 08:15:30 -0700 (PDT)
MIME-Version: 1.0
References: <VKUe.1682800714003679431.WCUu@lists.yoctoproject.org> <CAMKF1sptmfdbM89zgg0GSKiHU31CTj4YZHegXwEskgDmKbm+tg@mail.gmail.com>
In-Reply-To: <CAMKF1sptmfdbM89zgg0GSKiHU31CTj4YZHegXwEskgDmKbm+tg@mail.gmail.com>
From: Luiz Balloti <luiz.balloti@timpelmedical.com>
Date: Thu, 4 May 2023 12:15:21 -0300
Message-ID: <CAPtt3O9Dm9wYbEOZnv65xuHpTCnmiBv0EzKQ4-WffWR1T0Yqtg@mail.gmail.com>
Subject: Re: [yocto] General bbappend for virtual/kernel recipe? #bitbake #yocto
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000a93e9805fadfa450"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 04 May 2023 15:15:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59874

--000000000000a93e9805fadfa450
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Common functionality can be kept in a bbclass, so that the appends must
simply make your recipe inherit the class.

Em qua., 3 de mai. de 2023 =C3=A0s 21:04, Khem Raj <raj.khem@gmail.com> esc=
reveu:

> On Wed, May 3, 2023 at 1:00=E2=80=AFAM Livius <egyszeregy@freemail.hu> wr=
ote:
> >
> > Hi,
> >
> > Is it possible to make a .bbappend file/method for virtual/kernel of
> general linux-kernel recipe? My goal is to make some same append script f=
or
> several BSP linux kernel recipe. For example i like to make an append for
> linux-xlnx.bb and linux-fslc.bb and so on for all linux-*.bb recipes with
> some further bash scripts/taskses in a general single bbappend. Is it
> possible somehow in BitBake/Yocto?
>
> This would require bappends for all kernel recipes you are wanting to
> append.
>
> >
> >
> >
> >
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#59861):
> https://lists.yoctoproject.org/g/yocto/message/59861
> Mute This Topic: https://lists.yoctoproject.org/mt/98657112/6464681
> Mute #bitbake:https://lists.yoctoproject.org/g/yocto/mutehashtag/bitbake
> Mute #yocto:https://lists.yoctoproject.org/g/yocto/mutehashtag/yocto
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [
> luiz.balloti@timpelmedical.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>

--000000000000a93e9805fadfa450
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Common functionality can be kept in a bbclass, so that the=
 appends must simply make your recipe inherit the class.</div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">Em qua., 3 de mai. =
de 2023 =C3=A0s 21:04, Khem Raj &lt;<a href=3D"mailto:raj.khem@gmail.com">r=
aj.khem@gmail.com</a>&gt; escreveu:<br></div><blockquote class=3D"gmail_quo=
te" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204=
);padding-left:1ex">On Wed, May 3, 2023 at 1:00=E2=80=AFAM Livius &lt;<a hr=
ef=3D"mailto:egyszeregy@freemail.hu" target=3D"_blank">egyszeregy@freemail.=
hu</a>&gt; wrote:<br>
&gt;<br>
&gt; Hi,<br>
&gt;<br>
&gt; Is it possible to make a .bbappend file/method for virtual/kernel of g=
eneral linux-kernel recipe? My goal is to make some same append script for =
several BSP linux kernel recipe. For example i like to make an append for <=
a href=3D"http://linux-xlnx.bb" rel=3D"noreferrer" target=3D"_blank">linux-=
xlnx.bb</a> and <a href=3D"http://linux-fslc.bb" rel=3D"noreferrer" target=
=3D"_blank">linux-fslc.bb</a> and so on for all linux-*.bb recipes with som=
e further bash scripts/taskses in a general single bbappend. Is it possible=
 somehow in BitBake/Yocto?<br>
<br>
This would require bappends for all kernel recipes you are wanting to appen=
d.<br>
<br>
&gt;<br>
&gt;<br>
&gt; <br>
&gt;<br>
<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
Links: You receive all messages sent to this group.<br>
View/Reply Online (#59861): <a href=3D"https://lists.yoctoproject.org/g/yoc=
to/message/59861" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctop=
roject.org/g/yocto/message/59861</a><br>
Mute This Topic: <a href=3D"https://lists.yoctoproject.org/mt/98657112/6464=
681" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/mt=
/98657112/6464681</a><br>
Mute #bitbake:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag=
/bitbake" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.o=
rg/g/yocto/mutehashtag/bitbake</a><br>
Mute #yocto:<a href=3D"https://lists.yoctoproject.org/g/yocto/mutehashtag/y=
octo" rel=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g=
/yocto/mutehashtag/yocto</a><br>
Group Owner: <a href=3D"mailto:yocto%2Bowner@lists.yoctoproject.org" target=
=3D"_blank">yocto+owner@lists.yoctoproject.org</a><br>
Unsubscribe: <a href=3D"https://lists.yoctoproject.org/g/yocto/unsub" rel=
=3D"noreferrer" target=3D"_blank">https://lists.yoctoproject.org/g/yocto/un=
sub</a> [<a href=3D"mailto:luiz.balloti@timpelmedical.com" target=3D"_blank=
">luiz.balloti@timpelmedical.com</a>]<br>
-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-<br>
<br>
</blockquote></div>

--000000000000a93e9805fadfa450--

