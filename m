Return-Path: <tnatanan@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 526AFEB64DC
	for <webhook@archiver.kernel.org>; Fri, 23 Jun 2023 03:03:52 +0000 (UTC)
Received: from mail-vs1-f41.google.com (mail-vs1-f41.google.com [209.85.217.41])
 by mx.groups.io with SMTP id smtpd.web11.33207.1687489423394807999
 for <yocto@lists.yoctoproject.org>;
 Thu, 22 Jun 2023 20:03:43 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=L85Zixnk;
 spf=pass (domain: gmail.com, ip: 209.85.217.41, mailfrom: tnatanan@gmail.com)
Received: by mail-vs1-f41.google.com with SMTP id ada2fe7eead31-44096f01658so43015137.0
        for <yocto@lists.yoctoproject.org>; Thu, 22 Jun 2023 20:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1687489422; x=1690081422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=vfJE9TyehCEWCxmirxw+86ybhx/0Wf/m5/2TQ/VNUfM=;
        b=L85Zixnk0ctLYBYSLmgu8DSH+1j+IZDSYU5pjGAOp5uce0YYlUi3AJNrfrKevBURNS
         PFcFu7r/N5RoffhOJYny41EQFuvPjcWKmiZNsYRQqzQSDy5pI1g2SMI+AguQZnDk7Spg
         xiUUBdwsVHT6H4EMhDk2kTwPNwK+6NscfVLkYY3U++WAH6bB9M5XZxOU2GItB4l5cuZj
         eH+2HJs9gnCDeQtr5ocinwxS6l3ubmwIQyDOyIGiV2EN+bov5/RfE4spAQeT4xKT/dA5
         RyF0fE2lEIucYCAtO92W11HjdHCJl/cfnZM+NRXczBpTXyVG8xBZHvbWVpvUPFnAPQgq
         40pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687489422; x=1690081422;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vfJE9TyehCEWCxmirxw+86ybhx/0Wf/m5/2TQ/VNUfM=;
        b=OVhvBeEHaFr4WsJ2UJKonYPI/XtTzDSeFFpTk1LbXOpyAxdHzjL+O6uRI2nalyTUsa
         S9/+tOxs30Gat2pUC+SXHTsibQLPbNIuN5tyjFZ9Q7zNfr9hqGq2+Rx+LmmDNRWTavYa
         3oWX2BMY3OwhHzjRFQrKFyBPKIvpqgPqnqhaKFj+fn5MJeySDpRRNmcPoiNOsmvwFVw8
         VSlTQPD6HlajqCq/M0gEBc0YE2ZitN7nHZXJ0DOQ1JxwRi2ZTYjDAlUTu5AWiVzL+9AI
         r5ZxglJVsEnzqMZPucYM68zGOPD7yF594H5KrboMNpmYd5rmeSD7fYoLzRpVU5sgpn+4
         PAmw==
X-Gm-Message-State: AC+VfDwSbTu/PIt4ogciHdTftU5ODxbRVIr75frCdxIS0Ud1ZzawvouY
	6xtlKiiOZC/6QBMnuGksMPgjGDMT5xWaObG2uwQ=
X-Google-Smtp-Source: ACHHUZ4sgPybAvHxO9/Sbq6NwHjG2K2MjgOHwyAmlthEWF3wPiZtxe2XkLCS1YeqCjJGUTeGb9SQTgCOTs52dgNYEzU=
X-Received: by 2002:a05:6102:3679:b0:440:d665:a9b8 with SMTP id
 bg25-20020a056102367900b00440d665a9b8mr4642086vsb.2.1687489422369; Thu, 22
 Jun 2023 20:03:42 -0700 (PDT)
MIME-Version: 1.0
References: <CAPoeDCY0r1L93=Ygfq7f+TCUiW9x5iib9TqV27jY9jLLtMptsA@mail.gmail.com>
 <d0204d5b-b500-0ef4-e967-fedb7e0f1d73@bootlin.com>
In-Reply-To: <d0204d5b-b500-0ef4-e967-fedb7e0f1d73@bootlin.com>
From: Natanan Tirasukvongsa <tnatanan@gmail.com>
Date: Fri, 23 Jun 2023 10:03:32 +0700
Message-ID: <CAPoeDCYLZ742id1O3XcMPzVMwxBUq9iipNw=sVWUikKWq8BmOw@mail.gmail.com>
Subject: Re: [yocto] Ask for help
To: Michael Opdenacker <michael.opdenacker@bootlin.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000095292b05fec33f17"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 23 Jun 2023 03:03:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60416

--00000000000095292b05fec33f17
Content-Type: text/plain; charset="UTF-8"

Thank you for your answer.

On Fri, Jun 23, 2023, 02:12 Michael Opdenacker <
michael.opdenacker@bootlin.com> wrote:

> Hi Natanan,
>
> On 22.06.23 at 18:42, Natanan Tirasukvongsa wrote:
> > Dear YOCTO Project Team,
> >
> > I would like to ask about the YOCTO version. I am a beginner
> > developer. Now, I use Ubuntu 22.04 LTS and Raspberry Pi 4. Which YOCTO
> > version is compatible (if it has long term support, it's good!!) ?
>
>
> Yes, you can use the "Kirkstone" version, which has indeed Long Term
> Support:
>
> https://docs.yoctoproject.org/ref-manual/release-process.html#long-term-support-releases
>
> And indeed it supports Ubuntu 22.04:
> https://docs.yoctoproject.org/4.0.10/ref-manual/system-requirements.html
>
> There are many other pieces of information in the manual!
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

--00000000000095292b05fec33f17
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Thank you for your answer.=C2=A0</div><br><div class=3D"g=
mail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Jun 23, 2023, 02:=
12 Michael Opdenacker &lt;<a href=3D"mailto:michael.opdenacker@bootlin.com"=
>michael.opdenacker@bootlin.com</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">Hi Natanan,<br>
<br>
On 22.06.23 at 18:42, Natanan Tirasukvongsa wrote:<br>
&gt; Dear YOCTO=C2=A0Project Team,<br>
&gt;<br>
&gt; I would like to ask about the YOCTO version. I am a beginner <br>
&gt; developer. Now, I use Ubuntu 22.04 LTS and Raspberry Pi 4. Which YOCTO=
 <br>
&gt; version is compatible=C2=A0(if it has long term support, it&#39;s good=
!!) ?<br>
<br>
<br>
Yes, you can use the &quot;Kirkstone&quot; version, which has indeed Long T=
erm <br>
Support:<br>
<a href=3D"https://docs.yoctoproject.org/ref-manual/release-process.html#lo=
ng-term-support-releases" rel=3D"noreferrer noreferrer" target=3D"_blank">h=
ttps://docs.yoctoproject.org/ref-manual/release-process.html#long-term-supp=
ort-releases</a><br>
<br>
And indeed it supports Ubuntu 22.04: <br>
<a href=3D"https://docs.yoctoproject.org/4.0.10/ref-manual/system-requireme=
nts.html" rel=3D"noreferrer noreferrer" target=3D"_blank">https://docs.yoct=
oproject.org/4.0.10/ref-manual/system-requirements.html</a><br>
<br>
There are many other pieces of information in the manual!<br>
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

--00000000000095292b05fec33f17--

