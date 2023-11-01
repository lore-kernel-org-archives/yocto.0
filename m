Return-Path: <rybczynska@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 02C0BC4167B
	for <webhook@archiver.kernel.org>; Wed,  1 Nov 2023 06:08:28 +0000 (UTC)
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
 by mx.groups.io with SMTP id smtpd.web10.1124.1698818904277238836
 for <yocto@lists.yoctoproject.org>;
 Tue, 31 Oct 2023 23:08:24 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=iOorQwnf;
 spf=pass (domain: gmail.com, ip: 209.85.208.171, mailfrom: rybczynska@gmail.com)
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2c4fdf94666so82962721fa.2;
        Tue, 31 Oct 2023 23:08:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698818902; x=1699423702; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=z30Q2xdfqzmf9pkU5pQ/Z35Pa/AKm6EaX1Ubxylxc4w=;
        b=iOorQwnfce8P6Gu4zz8OeuzWBa0OxalcnsgYE+Yk7Fa39v7z/zpxTeZYgMX6pNqSKv
         uKhTPNWc+7MnaIrJdyfi/lmfOqQ64OoriR8STfTnQloQ9ClDiZqbS6DmPGpTkcLeGc8t
         aNRpFkbX99niucAHhd86zbll3Jfz/wSNi0ddD/qGgwprCQ0L6vdRGl40YmKZkM33EXkF
         trl14jb7/kpJxaflhoGpY7r1jP7ZjZ57QyGsQbpUSDPKwqNsyMt7SJWBxofdjIDN8kPR
         5cKNJH3J0LohIDYjntVq/vdSAhri0ABzXsGskEeYU6cv1ZhqFubKsMsf72qPRvR1Qj/G
         0fuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698818902; x=1699423702;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=z30Q2xdfqzmf9pkU5pQ/Z35Pa/AKm6EaX1Ubxylxc4w=;
        b=ZLopoA2mbHml96Qh2cpKxUJJBlMiYjXASquoVjXIT6BvWkMDzfKhRgl0s5gq7tOvKN
         ZRu8YgHDL/GeeAMmqcE4rWrDCYT+7a16gW1Gmsm5xgcp4+JIUmaH2LtMVG+BFhS4XdSI
         +cgUMwN4vQGq2KASG+9+UBhwaDMYgyCzxqY52VUGrrCl0WK0TGWmerTKT41Yz8/EB0lq
         PVyiSTuH6208Yv26QpxKzu2IXzYzIy+J5apFS68/IYNyQX53VSquCPDrGVXpPHaTLhtu
         cpohzXssfc93ifWQT7wyYLHYdC3hjiapfMAwB/gsMFyq5Lu+Pp1PFWSDqcrg0K6k7wg9
         /72g==
X-Gm-Message-State: AOJu0YwEtnOk2Yz6n+pouh9v2wcXRcCPXIs3usRly8puNeLFCWBVWVEx
	Ydbc1lLJkFR1Qg7NtYRhJpBSTiCMVu6gPzmEgXI=
X-Google-Smtp-Source: AGHT+IENrNdexOXN8UABKpSIyg7BZPRDqfsy2EgGYDuVxRGLxAo3A0LAZqJfp2cA0hYxkPZyPKxe/cRL3kqYaJkYD1w=
X-Received: by 2002:a05:651c:333:b0:2c5:1542:57e4 with SMTP id
 b19-20020a05651c033300b002c5154257e4mr10985048ljp.31.1698818902237; Tue, 31
 Oct 2023 23:08:22 -0700 (PDT)
MIME-Version: 1.0
References: <CACikiw2U8cC86wbK-axSP0nW3BZH4zC-TkfNeD4ePfzf+PiMvA@mail.gmail.com>
In-Reply-To: <CACikiw2U8cC86wbK-axSP0nW3BZH4zC-TkfNeD4ePfzf+PiMvA@mail.gmail.com>
From: Marta Rybczynska <rybczynska@gmail.com>
Date: Wed, 1 Nov 2023 07:08:10 +0100
Message-ID: <CAApg2=QsOsJCehkY7jopkkgvsEE954Sj-SjauvT0vERCJzGqzg@mail.gmail.com>
Subject: Re: [yocto] Need comments or plan on User- group guidelines which is
 making us away from commercial products
To: Ravi Kumar <nxp.ravi@gmail.com>, yocto-security@lists.yoctoproject.org
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 01 Nov 2023 06:08:28 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61547

On Wed, Nov 1, 2023 at 6:43=E2=80=AFAM Ravi Kumar <nxp.ravi@gmail.com> wrot=
e:
>
> Hi team ,
> Most of the IOT lines have  been deployed on  Yocto   now the new
> trend/requirement  is security .
> On yocto we see that we moved away making every  one as root and every
> resource on the device tree accessible .
> Where it creates  new challenges of creating isolation of  services
> and resources .
> Making a service to run in low privilege  mode (which is a base
> requirement of security ) .
> I understand we had always  encouraged  using extrausers and useradd
> for creating custom user groups.
> [1] https://docs.yoctoproject.org/ref-manual/classes.html#extrausers
> [2] https://docs.yoctoproject.org/ref-manual/classes.html#useradd
>
>
> Following are the problems .
>   we add a new UID and  GID and associate the new code , But  open
> source service  might still need to be part of this group to access
> this.
> where adding /covering all the use cases is really not possible .
> Re-using of the code  which is already associated with some user group
> has to be reworked to make sure the UID and GID is unique .
>
> We see that we are moving aways from commercial product lines in terms
> of security. How do we address this or the proposal?
>
> 1. Standardization of user /group :
> Just like android echo system  uid /gid classification based on
> .  <range > to be defined . driver related  / app related / services
>
> 2.  Default group to be included by Yocto frameworks .
>  like
> Radio  -- moden board are by default enable with wifi , BT , GPS
> 3.  users who are part of special capabilities  groups  like net_admin
> /net_raw, reading of /proc
> or writing to /sys entries which could do  elevated roles.
>
>  Selinux sort of layer is ontop of DAC (legacy user/groups )  and  we
> should be having a robust DAC model to meet the current security
> requirements.
> Please  let us know if there are any guidelines / plans on this .
> Or can we submit a patch for adding  default /user  like raido /
> net_admin sort of users.
>

Hello Ravi,
Thank you for the message. I'm not aware of a recent discussion
on the subjet, and the question is relavant. I'm adding the yocto-security@
mailing list in copy.

Kind regards,
Marta

