Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62246C2BD09
	for <webhook@archiver.kernel.org>; Thu, 27 Jun 2024 09:50:02 +0000 (UTC)
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
 by mx.groups.io with SMTP id smtpd.web11.4282.1719481799476840342
 for <yocto@lists.yoctoproject.org>;
 Thu, 27 Jun 2024 02:49:59 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=LOPYq6EW;
 spf=pass (domain: gmail.com, ip: 209.85.208.169, mailfrom: marek.belisko@gmail.com)
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ebe785b234so84981761fa.1
        for <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 02:49:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719481797; x=1720086597; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=3sstehE9eF51itiuNGaR1YhH0zHrCr6qNR1F4NxRrOU=;
        b=LOPYq6EWynfHPZCEfeqA+O7dVeBcnuOvGnCxdq1dmrg3yPd97Tk9lIQWPBKT8EzUUI
         y4JR8zgaDd1V9QSC0e1T2OhjALFoaOjKzS79czJcnKWpFdyaeAyBCEr7PdVOkV0vjL+7
         Pyx3I+bG48AFT4aKAbJ/ZT6gy7OHPiDtUR+0Nu999ha82YipCORzkIhWK6ajGmUDYV8o
         yptlbJI+MeU8Ys8YZWLZwBzYqOevz6C6bXCJ5qQoIhL+j6neTQLXbfL6uMp3rWlcZopp
         +cZmkOwv+/XNDRSCVkd7l8hHm64RQkG6w60yf91k/IDraSxhQETD+4e2I87gdyzFQ3QZ
         MF8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719481797; x=1720086597;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3sstehE9eF51itiuNGaR1YhH0zHrCr6qNR1F4NxRrOU=;
        b=U3kAwHKrCAlBMhiEbBp1KKnmyYubULVpaXXc3vGDzJsHv31NDiDgzwxPn4oBEx1frA
         TIFZKNNe7nJi79L2x/qdc73EpmY6gAveO/bAJxfk0JpyQScyY4fX0AvpnTbP2qCyKQmJ
         fyu/aiTxQH6xYtzqNMJ+zfMjRxeLpBhoJr8TCBVuhMfU8duk9l76Q0aBPt0ucWy82GaT
         MXAfcoyjC3Fbyer1XQA/vyIiMY1y+lJDjMqVXa0Jgl385GRknQbawXufZtLJCZKiPApA
         3/aQqjlqDsa5tfxK6En+5JyEIQkXLrcsMGwUbI2ZELgtlAg9uDKzefVVRwDYWml61kqF
         OKRQ==
X-Gm-Message-State: AOJu0Yw8rEqQfJYZzLnVgcILmygFHJrFa3inxo74KewlKwd+kgTXM6eA
	gwRktlQc8lwu5XEHqNjYyGVekqYnUGwN31QJn9FHw3PvtbFmpQa57Jz+vLf2Nec3shCWnK0m3qh
	3vxR8zPMYl0hZJAfW3yO9Pigy2/fW+gXnScQ=
X-Google-Smtp-Source: AGHT+IEHlYCODMZBQRuIvzRufJOMJneVTsHMHlFZoPNva52JEcg8DtE3RJhprrgaYdnpg1sbOrUKzKDjJD6TLzrAJN8=
X-Received: by 2002:a2e:9001:0:b0:2ec:56ce:d51f with SMTP id
 38308e7fff4ca-2ec5931d31emr95265361fa.20.1719481796506; Thu, 27 Jun 2024
 02:49:56 -0700 (PDT)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Thu, 27 Jun 2024 11:49:45 +0200
Message-ID: <CAAfyv355-ZMkGobQnzpOBHgpaU+=heHVVv0M9mLh+P78XnwEpw@mail.gmail.com>
Subject: meta-rockchip: rk3568 GPU support
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="000000000000adbd5e061bdc0dfa"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 27 Jun 2024 09:50:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63396

--000000000000adbd5e061bdc0dfa
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm just checking how to enable GPU acceleration for e.g. gstreamer for
cm3-io board using rk3568 CPU. I saw that mesa have some options but not
for rk356x CPU's:
PACKAGECONFIG:append:rk3288 = " kmsro panfrost"
PACKAGECONFIG:append:rk3399 = " kmsro panfrost"
PACKAGECONFIG:append:rock64 = " kmsro lima"
PACKAGECONFIG:append:px30 = " kmsro panfrost"


I've added a cm3-io machine and will post a patch soon (snippet below)
require conf/machine/include/rk3568.inc

KERNEL_DEVICETREE = "rockchip/rk3566-radxa-cm3-io.dtb"
MACHINE_EXTRA_RRECOMMENDS += "kernel-modules"

UBOOT_MACHINE = "radxa-cm3-io-rk3566_defconfig"

Any ideas please?

Thanks and BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--000000000000adbd5e061bdc0dfa
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I&#39;m just checking how to enable=
 GPU acceleration for e.g. gstreamer for cm3-io board using rk3568 CPU. I s=
aw that mesa have some options but not for rk356x CPU&#39;s:</div><div>PACK=
AGECONFIG:append:rk3288 =3D &quot; kmsro panfrost&quot;<br>PACKAGECONFIG:ap=
pend:rk3399 =3D &quot; kmsro panfrost&quot;<br>PACKAGECONFIG:append:rock64 =
=3D &quot; kmsro lima&quot;<br>PACKAGECONFIG:append:px30 =3D &quot; kmsro p=
anfrost&quot;</div><div><br></div><div><br></div><div>I&#39;ve added a cm3-=
io machine and will post a patch soon (snippet below)</div><div>require con=
f/machine/include/rk3568.inc<br><br>KERNEL_DEVICETREE =3D &quot;rockchip/rk=
3566-radxa-cm3-io.dtb&quot;<br>MACHINE_EXTRA_RRECOMMENDS +=3D &quot;kernel-=
modules&quot;<br><br>UBOOT_MACHINE =3D &quot;radxa-cm3-io-rk3566_defconfig&=
quot;<br></div><div><br></div><div>Any ideas please?</div><div><br></div><d=
iv>Thanks and BR,</div><div><br></div><div>marek</div><div><div><br></div><=
span class=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=
=3D"gmail_signature" data-smartmail=3D"gmail_signature">as simple and primi=
tive as possible<br>-------------------------------------------------<br>Ma=
rek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 =
| Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhi=
te<br>twitter: #opennandra<br>web: <a href=3D"http://open-nandra.com" targe=
t=3D"_blank">http://open-nandra.com</a></div></div></div>

--000000000000adbd5e061bdc0dfa--

