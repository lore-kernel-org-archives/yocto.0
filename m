Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 28153C27C53
	for <webhook@archiver.kernel.org>; Wed, 19 Jun 2024 14:17:14 +0000 (UTC)
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
 by mx.groups.io with SMTP id smtpd.web10.22315.1718806630337552462
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Jun 2024 07:17:10 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=eu98cIUm;
 spf=pass (domain: gmail.com, ip: 209.85.167.50, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-52cccd44570so703217e87.2
        for <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 07:17:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1718806628; x=1719411428; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DbTu6iUnmCEmpTiSEpzVbVI0KxgbsF5xRhs5SjZVRJw=;
        b=eu98cIUmi1leyFpUJpIXA8WLvvpnBxxk5uZdd5x8JQi7AIrewbWlJ7eS6d+RGlQh84
         TENbvVOxu+EgG3hfVgL0r30KTdgW13pj5fyefnck0dZYvGW4Y/vfvYTjXfuU0nCPD8aQ
         4laznFRNLzazk8zdXWvLjGwC5g28iH+31AYOhuGK/MPj2MLWdK9jgRKplop97SzfSqcz
         O8qN2e+U+2OF5ZOWaYKpy8WTFwKsNiFdahJ/JYxlfnRPBY0GkaMPtY+eonhBOXEdql7q
         ErQnFzjDCLCiXBfUf/0b/LBwLKanI8cPencop3sXXadH9cJ+148ZECXcz3qxsxcTkxlS
         yUXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718806628; x=1719411428;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DbTu6iUnmCEmpTiSEpzVbVI0KxgbsF5xRhs5SjZVRJw=;
        b=cC5KYVecRaQ9RqQ6y3ez27jISs+ZLrUHzXI0IA+PMUNoVbuwVAp34IEkHokQ5VtoWz
         HuIGx4kBk+SJJQ6tYDZ8SJz6Ca1Ej0KbD2LDR2OyJ3Fa8VFWIz130DsEDxU1x8lsb8uO
         B1aeay/dbZ07TzRNJAID/91/eUggepRvbBcab9QJ+P6JDZxTWdYCEsR13eKCsnBmF115
         8Ky7A2MdDbjJ/xr1dSdQTg4cuLoOXBoQq651oPjCSMWkBPm8h3jyxifpk2qez0Uudqa0
         2j1oodw0UcQNa4bX3SttmLS9o/bmQg0eW9dvjqkOYgpEm51jastLipnhzE0+Mjc1BStv
         ngkg==
X-Gm-Message-State: AOJu0YxXAdpcToHPBd7EflGp/o5v4Km9g2d/FZ0iN8APaAPYYzAK5/WZ
	dS/rGAkEuyt6YBCm/vgzwDhnSJqBaO5RAh/+ZEn5DLNtbJCXfQFkcvYVBLZ9E4Skew+Gs/DwxvE
	0A1glLHasIuwsfbHj0vQlrF6zYjIT/Q==
X-Google-Smtp-Source: AGHT+IF5+/h6Tf0Psh7l2J3JiLDdu1YSr5hpa9ZUOUVTlIcrZ2hkEjd7EDNtN3HXFwIo8lS1h+QqoiPaC5BxtykebOA=
X-Received: by 2002:a05:6512:1050:b0:52c:ae34:26e0 with SMTP id
 2adb3069b0e04-52ccaa97170mr1780291e87.45.1718806628184; Wed, 19 Jun 2024
 07:17:08 -0700 (PDT)
MIME-Version: 1.0
References: <93uJ.1718806002438603654.UEJt@lists.yoctoproject.org>
In-Reply-To: <93uJ.1718806002438603654.UEJt@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 19 Jun 2024 16:17:04 +0200
Message-ID: <CANNYZj9AHu5_LYZ+rreTR-VEBs=dXkCKRVKCE+aeBLEDpsZfww@mail.gmail.com>
Subject: Re: [yocto] OpenLDAP License Update?
To: yocto@lists.yoctoproject.org, fabian.hanke@bosch.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 19 Jun 2024 14:17:14 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63365

This sounds like you are ready to write a patch with the fix :) please
do and send to openenmbedded-devel list.

Alex

On Wed, 19 Jun 2024 at 16:09, Hanke Fabian (DC/PAR) via
lists.yoctoproject.org <fabian.hanke=3Dbosch.com@lists.yoctoproject.org>
wrote:
>
> Hello,
> we noticed that the OpenLDAP recipe provided in meta-oe/recipes-support/o=
penldap does not use an SPDX identifier for the license but rather just "Op=
enLDAP" [1]. Based on the comment above the custom license was introduced, =
because an official license did not exist on OpenSource.org. But in the mea=
ntime, the license was added to OpenSource.org and provides a correct SPDX =
identifier [2]. So, I was wondering if the license can be changed to "OLDAP=
-2.8" or if there are any other reasons for keeping the old "OpenLDAP" lice=
nse for the recipe?
>
> Kindest regards,
> Fabian Hanke
>
>
> [1] https://git.openembedded.org/meta-openembedded/tree/meta-oe/recipes-s=
upport/openldap/openldap_2.6.7.bb#n9
> [2] https://opensource.org/license/oldap-2-8
> --------------------------------
>
> Bosch Rexroth AG
>
> Registered Office: Stuttgart, Registration Court: Amtsgericht Stuttgart H=
RB 23192 Executive Board: Dr. Steffen Haack (President), Roland Bittenauer,=
 Thomas Fechner, Holger von Hebel, Reinhard Sch=C3=A4fer Chairman of the Su=
pervisory Board: Dr. Markus Forschner
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#63364): https://lists.yoctoproject.org/g/yocto/messag=
e/63364
> Mute This Topic: https://lists.yoctoproject.org/mt/106761034/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

