Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 79777C74A5B
	for <webhook@archiver.kernel.org>; Fri, 17 Mar 2023 09:05:37 +0000 (UTC)
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
 by mx.groups.io with SMTP id smtpd.web10.12538.1679028438904937660
 for <yocto@lists.yoctoproject.org>;
 Thu, 16 Mar 2023 21:47:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@calixto-co-in.20210112.gappssmtp.com header.s=20210112 header.b=7jnxofZ0;
 spf=softfail (domain: calixto.co.in, ip: 209.85.208.48, mailfrom: sethu.m@calixto.co.in)
Received: by mail-ed1-f48.google.com with SMTP id fd5so15810809edb.7
        for <yocto@lists.yoctoproject.org>; Thu, 16 Mar 2023 21:47:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=calixto-co-in.20210112.gappssmtp.com; s=20210112; t=1679028437;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=qkvEGW0l9rriu+r4Qry3NBN9lqqGW4/hCmM0v7i/XKU=;
        b=7jnxofZ03tubxluxtfTPvlq5MuSzx5XANY4avniaDBOL6gJjOyNHz/OOc2+6gbraQx
         fTNamba74Zk2dVQa8HgxkhpfuzM4tVAGr0pM+0XR5fbe7iUsGpCaipBkWRDWa6naAoat
         U481dN0AQSnH2PbPl15/7iLLQ2zS1qpZbZoVyIpFPLCUiU+prxVcHNFqTEVI3kGEtnmn
         C6wRgisWkpOO+NFu5mdzNnKDg9iiJI6Ty01Te+XDHIxa8yQMu9aRWrOjx7frF66M53QB
         QXG1Rc+oNc/rqXwL8z1Tp0CIEDbsD7zQ5GNEr22Xph4aFiWHbTs8crjNe26xmalhg3be
         HrLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679028437;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=qkvEGW0l9rriu+r4Qry3NBN9lqqGW4/hCmM0v7i/XKU=;
        b=xKrjnxOC21JiSRIA6/7145CdM/vUM3eyKu3y/7nxnMBEMUEoLMjYWtwnimYNIrBskt
         2VibNxwNWLCpxWxDwIpU5U12TtTlYwlQPT/BJKQO6BZ9daw/RzLcrwgdO5TIba1MXHX7
         94WriQKSofOAuMF6wWHSRZmTXs/UKi/r0y9UtS/XrHKvbtZH6NI7PojSD+IUT7cjfHQ4
         VYFs746mrohSt+dlP6m+qf4WVLH9bUBGR46B9xvKglwULAniCJd9pRH0Kz1x5wB3kxKS
         Wnc6pkNT7UVgerP2dFSMFRyMon51Pbga5nCqTOmn9l1yu9UepCVE0oxVfNRterNMBfjL
         EaDQ==
X-Gm-Message-State: AO0yUKUWt10zEoQRoyU19nbEWTO7rs9W6jtZ3hEsvGWzR50S+XXu6MKD
	s0nJraP1E7LjovFLGKwJ6GkOzxlWo7O7ssttHPSWXg==
X-Google-Smtp-Source: AK7set+lP8bdzOLIK8eCNZOwWW485BcK8TP3Hdq0PIY5UxWX9nRAhczUBXYvL/J+ECbMMZKdLX4tye3Uo+8D0E3XM8k=
X-Received: by 2002:a50:9e6a:0:b0:4fb:3dd5:e822 with SMTP id
 z97-20020a509e6a000000b004fb3dd5e822mr984908ede.8.1679028437052; Thu, 16 Mar
 2023 21:47:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFjAHzHOXoKD1Wr3Wogmz5=9gkoTPw53_q_9VxD1ntZ=Fo42uw@mail.gmail.com>
 <2663d424-7a09-8346-d2eb-31e96a096cce@bootlin.com>
In-Reply-To: <2663d424-7a09-8346-d2eb-31e96a096cce@bootlin.com>
From: "Sethu Madhav" <sethu.m@calixto.co.in>
Date: Fri, 17 Mar 2023 10:17:03 +0530
Message-ID: <CAFjAHzHibGhqwnnBXa5A885-46j1BO6-CaniQO-BOjiO7HW-2g@mail.gmail.com>
Subject: Re: [yocto] libpcre error on compilation time
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org, Vipin Vijayan <vipin.v@calixto.co.in>
Content-Type: multipart/alternative; boundary="0000000000008f045705f71145a1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Mar 2023 09:05:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59443

--0000000000008f045705f71145a1
Content-Type: text/plain; charset="UTF-8"

Hi,
 it is not building with the 8.45 version which is included in the
kirkstone version.
Some error is coming at the do compile stage .
We just added libpcre package from the openembedded core git kirkstone
branch. Is there any dependancy or anything that's is needed to do apart
from that?.

Thankyou

On Thu, 16 Mar, 2023, 19:58 Michael Opdenacker, <
michael.opdenacker@bootlin.com> wrote:

> Hi Sethu
>
>
> Thanks for using Kirkstone. Good choice :)
>
> On 16.03.23 at 14:13, Sethu Madhav wrote:
> > Hi,
> > Iam unable to resolve this error on libpcre, during the bitbake. Iam
> > working on the kirkstone YOCTO version and i tried changing the
> > libpcre package but no luck. Can anyone please help with the issue,
> > Iam attaching the error log along with this email.
>
>
> Could you show us your changes?
>  From your logs, we still see the standard libpcre_8.45.bb getting
> build. At least, you didn't change the version number in the recipe file
> name.
>
> Cheers
> Michael.
>
> --
> Michael Opdenacker, Bootlin
> Embedded Linux and Kernel engineering
> https://bootlin.com
>
>

--0000000000008f045705f71145a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto">=C2=A0it is not building with the 8.=
45 version which is included in the kirkstone version.=C2=A0<div dir=3D"aut=
o">Some error is coming at the do compile stage .=C2=A0</div><div dir=3D"au=
to">We just added libpcre package from the openembedded core git kirkstone =
branch. Is there any dependancy or anything that&#39;s is needed to do apar=
t from that?.=C2=A0</div><div dir=3D"auto"><br></div><div dir=3D"auto">Than=
kyou</div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Thu, 16 Mar, 2023, 19:58 Michael Opdenacker, &lt;<a href=
=3D"mailto:michael.opdenacker@bootlin.com">michael.opdenacker@bootlin.com</=
a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 =
0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">Hi Sethu<br>
<br>
<br>
Thanks for using Kirkstone. Good choice :)<br>
<br>
On 16.03.23 at 14:13, Sethu Madhav wrote:<br>
&gt; Hi,<br>
&gt; Iam unable to resolve this error on libpcre, during the bitbake. Iam <=
br>
&gt; working on the kirkstone YOCTO version and i tried changing the <br>
&gt; libpcre package but no luck. Can anyone please help with the issue, <b=
r>
&gt; Iam attaching the error log along with this email.<br>
<br>
<br>
Could you show us your changes?<br>
=C2=A0From your logs, we still see the standard <a href=3D"http://libpcre_8=
.45.bb" rel=3D"noreferrer noreferrer" target=3D"_blank">libpcre_8.45.bb</a>=
 getting <br>
build. At least, you didn&#39;t change the version number in the recipe fil=
e <br>
name.<br>
<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer noreferrer" target=3D"_bl=
ank">https://bootlin.com</a><br>
<br>
</blockquote></div>

--0000000000008f045705f71145a1--

