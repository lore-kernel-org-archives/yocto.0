Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E5B0EC3DA7F
	for <webhook@archiver.kernel.org>; Wed, 31 Jul 2024 08:57:06 +0000 (UTC)
Received: from mail-pg1-f169.google.com (mail-pg1-f169.google.com [209.85.215.169])
 by mx.groups.io with SMTP id smtpd.web11.38743.1722416220676162901
 for <yocto@lists.yoctoproject.org>;
 Wed, 31 Jul 2024 01:57:00 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FU62uPjW;
 spf=pass (domain: gmail.com, ip: 209.85.215.169, mailfrom: rybczynska@gmail.com)
Received: by mail-pg1-f169.google.com with SMTP id 41be03b00d2f7-7a130ae7126so3899249a12.0
        for <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 01:57:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1722416219; x=1723021019; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7prHyWjm5dYEbgivyFSrD9lHQ8L/+y+ZmnD83Yn4guc=;
        b=FU62uPjW/WWsgVeVhJZvnPoYmuXr6/pwENreV67aPEMMLe2B5K22G5D7d5bFcEJIo5
         d/6tjXCwB/Qr/EyjbJ4Ioyi9Tl9+AhGczaHcGeJznD+LFJlPfhOnKoP42/M+gAnlsSRM
         FIwAefUlCg2HURNfZuOtjP3QRV2uq7FFC1izyRJNCmwf4Fu5Zh0blocZKvDZm7jUPmXy
         B5Whjco+F/HW1udRC5yJXDTMxjHXlEeUCnqjzxcr2KYn1IWMrrqplkscn7YrW2zn4aPH
         Otf577iQ5U+JwNG7FBjlFz65TYQZD31XMUYCg56JWxIeSXb2UtEKBfxQeSDGMi7PX/mB
         3kQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1722416219; x=1723021019;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7prHyWjm5dYEbgivyFSrD9lHQ8L/+y+ZmnD83Yn4guc=;
        b=F1JoI+SmWb6lV91gm+Sed8B+yDbm3rYPGnig+IXTVqoOfmH7k8lDYzmCo/yApoW4SV
         GA+jBnK5TStjNCtJxtz+MeK5milwwWvwf7l4f4azFNfV6qSGvV5oMjzsa51BA50PumCM
         q3a/v58vH67nKWpWrPvNnsikE7jgpbFLKfJRnBMoBG6swyc/awOLB8XDGtNq84eNIPGT
         lx5WW1FOUIK5TXsVfQ6SLBNGSCefFNKgVLX1tjT2rYFQI49i4r924ypVjbx4MBFOMLfu
         rsJ5lphvaNhozY7A35qK4eZiDiNh+MEOflXzIetHos4YR9y5cCZtjGusEbIPPn+/KO4Z
         NQHA==
X-Gm-Message-State: AOJu0YzZBTvcQounAJ+vmgu4zoObfQQD6rmsZ9r1/JaUeOG3XhLYbqzU
	d7tJuvscTdiROngkiSa+wEc3B4WzUnwg5mUYB7Xhi5wZQemE0XlG2XMRMbftl6r8+yKiVx4MnCl
	PgH/sPMZC9UMXRH2Vx0PdHMyKmCgzrw==
X-Google-Smtp-Source: AGHT+IGC0mWIdoXcTxrESNIPXf9uVOpV4OhIDuyBeZc5ZLwB25TkylRpzg1l57t/awmOR3w/FE7o0HhdAKxlTDcZnXA=
X-Received: by 2002:a17:90a:1c82:b0:2c7:c6c4:1693 with SMTP id
 98e67ed59e1d1-2cf7e209fa1mr14680477a91.21.1722416219400; Wed, 31 Jul 2024
 01:56:59 -0700 (PDT)
MIME-Version: 1.0
References: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
In-Reply-To: <72C4369E-8A25-4CFD-B07E-D8D436665B38@gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 31 Jul 2024 10:56:47 +0200
Message-ID: <CAApg2=Q5a_ZKgVkhbMUfGZwe3rx_TN2A-Pu4upoDCokfUBsxcw@mail.gmail.com>
Subject: Re: [yocto] CVEs and OSS info for nested dependencies
To: yocto@lists.yoctoproject.org, sdorigotti@gmail.com
Content-Type: multipart/alternative; boundary="000000000000e9b730061e87462f"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 31 Jul 2024 08:57:06 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63626

--000000000000e9b730061e87462f
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 31, 2024 at 10:03=E2=80=AFAM Steven Dorigotti via lists.yoctopr=
oject.org
<sdorigotti=3Dgmail.com@lists.yoctoproject.org> wrote:

> Hello,
>
> I think I have come across some limitations in CVE and OSS handling for
> internal dependencies.
>
> As a practical example to make this clear, let=E2=80=99s take this CVE:
> https://nvd.nist.gov/vuln/detail/CVE-2023-35945
>
> which doesn=E2=80=99t show up in the cve-check report, and the nghttp2 de=
pendency
> is not listed in the license manifest file.
>
> The CVE is applicable to all versions of nghttp2 =E2=80=9CUp to (excludin=
g)
> 1.55.1=E2=80=9D which affects an internal dependency of nodejs. The lates=
t
> openembedded recipes are unaffected but Kirkstone uses node 16.20.2 and
> nghttp2 1.47.0 which does seem affected.
>
> Can you confirm that there is currently no way to define CVE_PRODUCT /
> CVE_VERSION pairs for nested package dependencies? Is this planned at all
> for the future or do you have any suggestions here?
>
> Otherwise I=E2=80=99ll need to consider some kind of workaround, perhaps =
defining
> N dummy/empty packages such as =E2=80=9Cnodejs-ngttp2=E2=80=9D so that CV=
Es are detected
> and complete manifest license info is generated.
>
> The same issue applies to many large projects such as Qt, which have many
> nested/static (and at this stage hidden) dependencies.
>
> Thanks a lot in advance,
>
>
Hello Steven,
I can't find an envoy recipe in the database, so the response needs to be
generic.

If nghttp2 is a normal dependency (dependency to a different recipe), this
will work just fine. The CVE entry for this vuln has nghttp2 well marked.

However, if the nghttp2 code is just copied in, without a trace in the OE
build system, then it's another story.

Kind regards,
Marta

--000000000000e9b730061e87462f
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><br></div><br><div class=3D"gmail_quote">=
<div dir=3D"ltr" class=3D"gmail_attr">On Wed, Jul 31, 2024 at 10:03=E2=80=
=AFAM Steven Dorigotti via <a href=3D"http://lists.yoctoproject.org">lists.=
yoctoproject.org</a> &lt;sdorigotti=3D<a href=3D"mailto:gmail.com@lists.yoc=
toproject.org">gmail.com@lists.yoctoproject.org</a>&gt; wrote:<br></div><bl=
ockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-lef=
t:1px solid rgb(204,204,204);padding-left:1ex">Hello,<br>
<br>
I think I have come across some limitations in CVE and OSS handling for int=
ernal dependencies.<br>
<br>
As a practical example to make this clear, let=E2=80=99s take this CVE:<br>
<a href=3D"https://nvd.nist.gov/vuln/detail/CVE-2023-35945" rel=3D"noreferr=
er" target=3D"_blank">https://nvd.nist.gov/vuln/detail/CVE-2023-35945</a><b=
r>
<br>
which doesn=E2=80=99t show up in the cve-check report, and the nghttp2 depe=
ndency is not listed in the license manifest file.<br>
<br>
The CVE is applicable to all versions of nghttp2 =E2=80=9CUp to (excluding)=
 1.55.1=E2=80=9D which affects an internal dependency of nodejs. The latest=
 openembedded recipes are unaffected but Kirkstone uses node 16.20.2 and ng=
http2 1.47.0 which does seem affected.<br>
<br>
Can you confirm that there is currently no way to define CVE_PRODUCT / CVE_=
VERSION pairs for nested package dependencies? Is this planned at all for t=
he future or do you have any suggestions here?<br>
<br>
Otherwise I=E2=80=99ll need to consider some kind of workaround, perhaps de=
fining N dummy/empty packages such as =E2=80=9Cnodejs-ngttp2=E2=80=9D so th=
at CVEs are detected and complete manifest license info is generated.<br>
<br>
The same issue applies to many large projects such as Qt, which have many n=
ested/static (and at this stage hidden) dependencies.<br>
<br>
Thanks a lot in advance,<br>
<br></blockquote><div><br></div><div>Hello Steven,</div><div>I can&#39;t fi=
nd an envoy recipe in the database, so the response needs to be generic.</d=
iv><div><br></div><div>If nghttp2 is a normal dependency (dependency to a d=
ifferent recipe), this will work just fine. The CVE entry for this vuln has=
 nghttp2 well marked.</div><div><br></div><div>However, if the nghttp2 code=
 is just copied in, without a trace in the OE build system, then it&#39;s a=
nother story.</div><div><br></div><div>Kind regards,</div><div>Marta<br></d=
iv></div></div>

--000000000000e9b730061e87462f--

