Return-Path: <nagarkarajay@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64A6FC76196
	for <webhook@archiver.kernel.org>; Tue, 28 Mar 2023 17:44:30 +0000 (UTC)
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
 by mx.groups.io with SMTP id smtpd.web11.3096.1680025469086836407
 for <yocto@lists.yoctoproject.org>;
 Tue, 28 Mar 2023 10:44:29 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=DMYIhliv;
 spf=pass (domain: gmail.com, ip: 209.85.208.45, mailfrom: nagarkarajay@gmail.com)
Received: by mail-ed1-f45.google.com with SMTP id r11so52980969edd.5
        for <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 10:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680025467;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=mztkt4SRZa6x1GdX3qSVUJbF2ZNfgTaQgNLrVrJlHqc=;
        b=DMYIhliv9p7PeKe1rUd4jvt7xWG6LKSOm0YHEoO6OZc5o8gWbAB52z2u+lLyE1S8zI
         6GRLTB+sGpdK68SWmxYIbxUFh+L3xoKhzmrl3upynfWJ20oLKu//dGjPastAA2Qu4LCi
         WIuFCCGs6YZgh02gA+kYncqrl4mdT9XFNPRM/sNzF20bwnve0nK5LOn7FqAPl8VF54JN
         rE1bgtdncvr2Uu4R4Zpbb4T83mf1ljn8TNTEE3ZyB2z15va2aAQYT+l9wJj5fhG6bnZ4
         EhI7IY4uyyKOCxVpvwX7FFtGHnm5+ElNude4hfgVjXjrtMbESIY7OLmFP4OjHNPj6SRc
         Ln5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680025467;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mztkt4SRZa6x1GdX3qSVUJbF2ZNfgTaQgNLrVrJlHqc=;
        b=tQqBMpgRqkOr5eaIoG1Tg/nxYIPrhff0kqiuilCISQDfKaf2mTBu64A9sJQ0spLtdD
         y6GrHpbtUYSpgl8EjsAOL0vW5OB2sK/uIe+b1wJbIY+2e0RDXg+Fd30Ur2tnoSgN4Z+k
         3oTW2J+VWrfqReZgUHrq3cJhNntghRi103cVbkCX8Jg9qLntk+tTRls8pRztp73hk61J
         YL9mBw5843qqNvJ58bLL3Saml/eg0ksIm+P/SonsOH6zplB/i2XVKNBzBMhQOBUtou8+
         aXjY9K1XaReeRfmTBZQTAXIV2sHetwJCwe6QTzuucVMftQ+RmtJ8CaDAZKAB8ZpNidkQ
         MIIg==
X-Gm-Message-State: AAQBX9dMkAW9++4x6XwK+KpDPxk4iGp2OqPe1oZvKUKyGYb1DhAdc/ED
	6TnGqnfaby7urtgSzb/8irahWAEAGhvpXRFrY5M=
X-Google-Smtp-Source: AKy350YEFpVLaitTcHfLdg2GoaR4EFWilkHbSC2DuTh2hMFyRPuk1z4PrJJxArffrAEvvaQs6a0EmLLl32+QR7bbftw=
X-Received: by 2002:a17:906:7846:b0:933:1967:a984 with SMTP id
 p6-20020a170906784600b009331967a984mr7951946ejm.15.1680025466911; Tue, 28 Mar
 2023 10:44:26 -0700 (PDT)
MIME-Version: 1.0
References: <6Fay.1680023020146984361.rxcA@lists.yoctoproject.org> <0f565e97-9f6e-8bed-a6f5-a7033eeea702@bootlin.com>
In-Reply-To: <0f565e97-9f6e-8bed-a6f5-a7033eeea702@bootlin.com>
From: Ajay Nagarkar <nagarkarajay@gmail.com>
Date: Tue, 28 Mar 2023 23:14:16 +0530
Message-ID: <CAHOCai3Ds=+fCTf+MaUXMUif1Qs85f1o=toAPU03zYkaV32aTg@mail.gmail.com>
Subject: Re: [yocto] Missing timezones in tzdata
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002b3d2705f7f96915"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 28 Mar 2023 17:44:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59544

--0000000000002b3d2705f7f96915
Content-Type: text/plain; charset="UTF-8"

Thanks Michael for your response
I know we are using an old version. It is what the SOM manufacturer
supports so we are going with it to start with and we will change once we
get a grip on the SOM. Till then we have to work with what we have. We
tried updating the recipe and got it to compile and found that ln -sf .....
did not work (did not change the timezone).
So back to square one. So from your message I understand we are on the
right track , just need to keep debugging
And yes we will change to the latest Yocto build soon.
Thanks once again




On Tue, 28 Mar 2023 at 22:43, Michael Opdenacker <
michael.opdenacker@bootlin.com> wrote:

> Hi Ajay,
>
> On 28.03.23 at 19:03, nagarkarajay@gmail.com wrote:
> > Hi,
> > I have a imx6ul board that I am working on (SOM has been purchased
> > from a company).
> > We are using Krogoth (2.1) and we need to have ntpd as a part of the
> > build. ntpd is working ok, however the tzdata that we have in
> > /usr/share/zoneinfo is missing a lot of zones (looking at it in detail
> > we realized that 30 min timezones are missing .. i.e. GMT+4:30 , +5:30
> > etc.). One hour timezones are available. i,e, GMT-3 ... etc Any
> > suggestion on where to look for or what should be the approach to fix
> > this ?
> > - Ajay
>
>
> Wow, Krogoth is 7 years old! Are you sure you want to develop a product
> with such an obsolete version? Your root filesystem will be full of
> unpatched vulnerabilities.
> If you are sure you want to continue this way, you should try to update
> the tzdata recipe to a more recent version (see the updates to the
> recipe in the Poky git repository).
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

--0000000000002b3d2705f7f96915
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thanks=C2=A0Michael for your response<div>I know we are us=
ing an old version. It is what the SOM manufacturer supports so we are goin=
g with it to start with and we will change once we get a grip on the SOM. T=
ill then we have to work with what we have. We tried updating the recipe an=
d got it to compile and found that ln -sf ..... did=C2=A0not work (did not =
change the timezone).=C2=A0</div><div>So back to square one. So from your m=
essage I understand we are on the right=C2=A0track , just need to keep debu=
gging</div><div>And yes we will change to the latest Yocto build soon.</div=
><div>Thanks once again</div><div><br></div><div><br></div><div><br></div><=
/div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">O=
n Tue, 28 Mar 2023 at 22:43, Michael Opdenacker &lt;<a href=3D"mailto:micha=
el.opdenacker@bootlin.com">michael.opdenacker@bootlin.com</a>&gt; wrote:<br=
></div><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;=
border-left:1px solid rgb(204,204,204);padding-left:1ex">Hi Ajay,<br>
<br>
On 28.03.23 at 19:03, <a href=3D"mailto:nagarkarajay@gmail.com" target=3D"_=
blank">nagarkarajay@gmail.com</a> wrote:<br>
&gt; Hi,<br>
&gt; I have a imx6ul board that I am working on (SOM has been purchased <br=
>
&gt; from a company).<br>
&gt; We are using=C2=A0Krogoth (2.1) and we need to have ntpd as a part of =
the <br>
&gt; build. ntpd is working ok, however the tzdata that we have in <br>
&gt; /usr/share/zoneinfo is missing a lot of zones (looking at it in detail=
 <br>
&gt; we realized that 30 min timezones are missing .. i.e. GMT+4:30 , +5:30=
 <br>
&gt; etc.). One hour timezones are available. i,e, GMT-3 ... etc Any <br>
&gt; suggestion on where to look for or what should be the approach to fix =
<br>
&gt; this ?<br>
&gt; - Ajay<br>
<br>
<br>
Wow, Krogoth is 7 years old! Are you sure you want to develop a product <br=
>
with such an obsolete version? Your root filesystem will be full of <br>
unpatched vulnerabilities.<br>
If you are sure you want to continue this way, you should try to update <br=
>
the tzdata recipe to a more recent version (see the updates to the <br>
recipe in the Poky git repository).<br>
<br>
Cheers<br>
Michael.<br>
<br>
-- <br>
Michael Opdenacker, Bootlin<br>
Embedded Linux and Kernel engineering<br>
<a href=3D"https://bootlin.com" rel=3D"noreferrer" target=3D"_blank">https:=
//bootlin.com</a><br>
<br>
</blockquote></div>

--0000000000002b3d2705f7f96915--

