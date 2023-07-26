Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F14EDC001DC
	for <webhook@archiver.kernel.org>; Wed, 26 Jul 2023 07:56:38 +0000 (UTC)
Received: from mail-oa1-f41.google.com (mail-oa1-f41.google.com [209.85.160.41])
 by mx.groups.io with SMTP id smtpd.web10.6305.1690358188812649679
 for <yocto@lists.yoctoproject.org>;
 Wed, 26 Jul 2023 00:56:28 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20221208 header.b=Y2n0WYqc;
 spf=pass (domain: gmail.com, ip: 209.85.160.41, mailfrom: raj.khem@gmail.com)
Received: by mail-oa1-f41.google.com with SMTP id 586e51a60fabf-1bb73eb80e4so1949017fac.3
        for <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 00:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1690358188; x=1690962988;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eSanTv3YplOric8wCFmtjhblN/2vm73X+UZ1YV0AzWs=;
        b=Y2n0WYqckKeKl/8pSZ5i95T/5hhp1T7v8c3px3r9pQwxHAY3o0pCXNEgMpXAV/HvTZ
         ydDb3MLkxc97FvEIdbT6nCyTY0xI/g7ppBeIQW2z6VzBhoPIDo8ZBTpbFCkfLsB1sfEH
         B71QcdIzpv5KEJf3g/2IMMk4nAEy20RoJsm+U5Q+mAomnLDE8h+c++qym4+Uh9vqGU+P
         tvcMrZJmZgp7Szf+HSuS4f3eTxNQ3vmpnutnFsvNX5hc4AamTLGynofpVbZVkxWlQmYk
         t7NdfzSt/5UFG8g156ZnjTP+e1kMalKqXo0sTX2ChhiIwX5gGMH1u0hc5ueZUZoKEFsH
         tZ9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690358188; x=1690962988;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eSanTv3YplOric8wCFmtjhblN/2vm73X+UZ1YV0AzWs=;
        b=YB3/nCWf2740YYlZ0xSMuwQv8wXVmNA9g1OEWYDiXZUNc7QlSGmFAR65NcTElG5JPA
         XWzTHodHS1kyuot6TlM/BQynHjcc6whU6Nj1IM1xTy6UehhoWztcAUOxgKyzw8Yh46IE
         2KaWw1uSOeG1mNsjoN+eEz2jQQxFhxvoexFWbnN8Acm2WeyLcMqu4AeqEhl0eVqP1Hmn
         JKbjn5sZ1yFufnxedjs4uYrCIqlHxxrW256j6tuS+vJSKPm+BwpbDR4NyR4317KxAm4X
         QA3WAUORnswTwl0y4vmiAyrKrcHR+Ivt4OyDw4dNQjfRAO/a2gGJFBKidwd8wx2d4Frq
         p9Lg==
X-Gm-Message-State: ABy/qLarHROS5Qr31G4p7WaKprQ9ob3x4jkVtnGR0tR+QBqOthiCTrvA
	RPTJY3AxpSacautBrWx/9AiKY0wpE5XMvyu9tCE=
X-Google-Smtp-Source: APBJJlErLhB3DUoQseiOha43w+M/ymJ4XvU0uSqLiGzPr/TxdpTXcGUMO/lX7jyGL3238ysr2+qVmXRdh45Ni8nNYC0=
X-Received: by 2002:a05:6870:1fd6:b0:1bb:2522:a07f with SMTP id
 gp22-20020a0568701fd600b001bb2522a07fmr1867669oac.0.1690358187764; Wed, 26
 Jul 2023 00:56:27 -0700 (PDT)
MIME-Version: 1.0
References: <5NtY.1690358038009111944.Elav@lists.yoctoproject.org>
In-Reply-To: <5NtY.1690358038009111944.Elav@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 26 Jul 2023 00:56:01 -0700
Message-ID: <CAMKF1srip0xMkO1qyxNnCtdgYqdp_2oeDLYqm6egsx2kBrM+Nw@mail.gmail.com>
Subject: Re: [yocto] Add different PREFERRED_VERSION of recipe to different images
To: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 26 Jul 2023 07:56:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60653

On Wed, Jul 26, 2023 at 12:54=E2=80=AFAM Priyanshu Sharma
<ms.priyanshu.sharma@gmail.com> wrote:
>
> I have two images in same custom layer : A-image.bb & B-image.bb
>
> I want to add readline_5.2.bb in A-image.bb & readline_8.2.bb in B-image.=
bb. How can I achieve this?

It can not be done at image scope but at config metadata e.g. distro
or machine config.

>
> Adding PREFERRED_VERSION in local.conf applies to both the image recipes.
>
> Thanks,
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#60652): https://lists.yoctoproject.org/g/yocto/messag=
e/60652
> Mute This Topic: https://lists.yoctoproject.org/mt/100366603/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

