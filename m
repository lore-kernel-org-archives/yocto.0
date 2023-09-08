Return-Path: <yoann.congal@smile.fr>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 37F35EE57D4
	for <webhook@archiver.kernel.org>; Fri,  8 Sep 2023 06:42:13 +0000 (UTC)
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
 by mx.groups.io with SMTP id smtpd.web10.33705.1694155325572969767
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Sep 2023 23:42:06 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@smile-fr.20230601.gappssmtp.com header.s=20230601 header.b=If7iKtBA;
 spf=pass (domain: smile.fr, ip: 209.85.208.174, mailfrom: yoann.congal@smile.fr)
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2bcd7a207f7so27888041fa.3
        for <yocto@lists.yoctoproject.org>; Thu, 07 Sep 2023 23:42:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=smile-fr.20230601.gappssmtp.com; s=20230601; t=1694155323; x=1694760123; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5vXrut6CtKPTpVA7+H8dx1NxIiteo9+/XCroa/vTFhw=;
        b=If7iKtBAmEtJ9RN/U71zYH3TFmTmkSsHP35y9o9cSIg7WZmFPfydKWw10paE3ct2DU
         PHfsLBHlW8q65/VWdPZMEEcQlWBxw6fM+lsDx1xPv3cmVj9+qGNQ52oKcKs0eefW91Lz
         fQflodxk7HVhkacRzbQGmXLER49BmmZBzoix9vxSvTtdW/Iasx95EIhpd+UGeP9q7Phs
         H3HwaMILNSvtWu3ZZHhWvgneA7dy7+53LtDdnEYFXSGSQVGCyqhppk930M5/TY3eHBYw
         soTiKDbyM6Z3J9ni5Pw2LNQI+XuUuqSiiQYMsC/xVI4pCPJdqf6iINXv/bQaFj0oEISf
         qufA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694155323; x=1694760123;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5vXrut6CtKPTpVA7+H8dx1NxIiteo9+/XCroa/vTFhw=;
        b=Ijs3XnGAe6jOSOI98BNHE+gOa8z+6esMVB+NQHqj1bJ6rl9khV4/oOq2rfMpbYAfWZ
         SC1QDJFAjm/vrIeznVP2Bjw7l/p3lex9WswRN2nDN5w95lGyBZzVMulVmGHwLZyVhk0O
         phCdpbQTZWnOf6jlxi1sEeC5OtTTpT7dwXv0+f4FHTafnTvl3fvmr4B65RZiToCSh8Xp
         oXKrKJxVoEiwe+M5+t7ELBU98vO+m8UJ0v6OYheIi3xcPcpiqYqLyQBln9THcnxRraoM
         0O6oAkRuTSKDYQqbj8NMGbVTKd9QYXPzqSLWfsFKloWky+lcCRRfaGIPURQ/ccrUsFS3
         R56w==
X-Gm-Message-State: AOJu0YwiSHjtXSVTKZZAIxLZOZE/w4KuGmAeJpI5fRE7yqSA6ejnVPHM
	fHt20HPjYyCyLo6+qQ8cTxNQy1RboLS8s74VEDg2AA==
X-Google-Smtp-Source: AGHT+IH7y4MivLbqnax/0HJKyGGFId/IQ7P6Pkt5JCQ7yASNj13DbjgkOLwkKL3BkzHJQODLWam5e2fdkBYl+OxDhZM=
X-Received: by 2002:a2e:90c6:0:b0:2bc:db99:1306 with SMTP id
 o6-20020a2e90c6000000b002bcdb991306mr1026660ljg.38.1694155323371; Thu, 07 Sep
 2023 23:42:03 -0700 (PDT)
MIME-Version: 1.0
References: <c737f04f-7bf3-c0f6-4816-87ea4f5c81ac@bootlin.com> <3255.1694152878755997438@lists.yoctoproject.org>
In-Reply-To: <3255.1694152878755997438@lists.yoctoproject.org>
From: Yoann CONGAL <yoann.congal@smile.fr>
Date: Fri, 8 Sep 2023 08:41:37 +0200
Message-ID: <CAMSfU+579tns5UJg4=6ryXsstfPYar9YCvghbT3piuNzzCVbWg@mail.gmail.com>
Subject: Re: [yocto] Memory requirements for building images with different architectures
To: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003e8ac20604d34640"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 08 Sep 2023 06:42:13 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60944

--0000000000003e8ac20604d34640
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi!
Le ven. 8 sept. 2023 =C3=A0 08:01, MOHAMMED HASSAN <hassanchattarki@gmail.c=
om> a
=C3=A9crit :

> Right, you're not the only one!
> See
>
> https://docs.yoctoproject.org/ref-manual/system-requirements.html#minimum=
-free-disk-space
> and https://docs.yoctoproject.org/dev/dev-manual/disk-space.html
>
> I can use rm_work and remove all the build related files, however every
> subsequent build would take a lot more time to build. I want my builds to
> be as fast as possible. Do you have any suggestions to for faster builds
> while consuming less memory space.
>

rm_work does not impact build time.
Every important piece of built software is kept in the "sstate cache" and
this cache is not removed by rm_work.
I usually have rm_work activated globally and reasonable build time : most
things are not re-built but taken from the sstate cache.

Regards,

--=20
Yoann Congal
Smile ECS - Tech expert

--0000000000003e8ac20604d34640
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi!<br></div><div class=3D"gmail_quote"><div dir=3D"l=
tr" class=3D"gmail_attr">Le=C2=A0ven. 8 sept. 2023 =C3=A0=C2=A008:01, MOHAM=
MED HASSAN &lt;<a href=3D"mailto:hassanchattarki@gmail.com">hassanchattarki=
@gmail.com</a>&gt; a =C3=A9crit=C2=A0:<br></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,=
204);padding-left:1ex"><blockquote>Right, you&#39;re not the only one!<br>S=
ee <br><a href=3D"https://docs.yoctoproject.org/ref-manual/system-requireme=
nts.html#minimum-free-disk-space" rel=3D"noopener" target=3D"_blank">https:=
//docs.yoctoproject.org/ref-manual/system-requirements.html#minimum-free-di=
sk-space</a><br>and <a href=3D"https://docs.yoctoproject.org/dev/dev-manual=
/disk-space.html" rel=3D"noopener" target=3D"_blank">https://docs.yoctoproj=
ect.org/dev/dev-manual/disk-space.html</a></blockquote>
I can use rm_work and remove all the build related files, however every sub=
sequent build would take a lot more time to build. I want my builds to be a=
s fast as possible. Do you have any suggestions to for faster builds while =
consuming less memory space.<br clear=3D"all"></blockquote><div><br></div><=
div>rm_work does not impact build time.</div><div>Every important piece of =
built software is kept in the &quot;sstate cache&quot; and this cache is no=
t removed by rm_work.</div><div>I usually have rm_work activated globally a=
nd reasonable build time : most things are not re-built but taken from the =
sstate cache.<br></div><div><br></div><div>Regards,<br></div></div><br><spa=
n class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"=
gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"><font =
face=3D"Raleway, regular">Yoann Congal</font><div><font face=3D"Raleway, re=
gular">Smile ECS - Tech expert<br></font></div></div></div></div>

--0000000000003e8ac20604d34640--

