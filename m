Return-Path: <steve@sakoman.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 44954C433EF
	for <webhook@archiver.kernel.org>; Fri, 15 Jul 2022 14:31:26 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com
 [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.7081.1657895479142102962
 for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jul 2022 07:31:19 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sakoman-com.20210112.gappssmtp.com header.s=20210112
 header.b=TXxuUp5n;
 spf=softfail (domain: sakoman.com, ip: 209.85.208.47,
 mailfrom: steve@sakoman.com)
Received: by mail-ed1-f47.google.com with SMTP id eq6so6520051edb.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 15 Jul 2022 07:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sakoman-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=Azwn8DWaFuziH1Rn1m/aNg9YjFr5L/psA0Xw/aDfLv4=;
        b=TXxuUp5n0JvGIJVBQGA0AokGAGRc7kU84IhYsEsBcYy/F2sXz3SJjqhtPPPv4pDg7Q
         CMfZRTLa2bWRyD9DmtiibtDE+Ahb3g5ywQLJBYJ7G/09RCUbl5Qul7C43esyYWTLN0ES
         Wr/yakUUZUHTATsDf/Zut4GllFkj+cU8U+FTG7sUFmHLvI89yQB3yQoB6LnFrU8/G0Cw
         /wKxvGGHrOcCqtrpUCKrtonT2cdtZcOSLT7lI7Hu85lDy+5Z/FR7biBBibjyGzt65jS9
         G/WUMudcCrbSCU0cCSGqh76wVhOexU03Ng+1RzG/yU8asDJruqpTVXOpwsNV7cRYfx6E
         HVYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=Azwn8DWaFuziH1Rn1m/aNg9YjFr5L/psA0Xw/aDfLv4=;
        b=BouIWWzIG6SrnubwYfZXUwC2J0NsBjbXTB9QSJ0I5+jUlug6HktsRBjedkvyhxBWQh
         GVXwLXWMUkVWrX0cr9l1tIFTgMiYmwSE2aSGs701OnyEabaPRfw8UC3+/T4moB1Y1iuQ
         VyJK2WuPwNspjJEGzLRkNnZo+UMq7OBFRwlgIKdi5tsJHRue4jjjjDehIAE7GW+IkrVg
         Rx9rEXPjFApWTlUaFDj+wnp3doqGPk+bXSiKZeeyj4Un3NCiEK2XPzPnG5OKOvaVotNP
         nSnrutKvG0ji8ZlayKqPcTaf8TftU9JwVVnN9zdfHTxN8ptGGQiifxCbY6K8e4mN3t2/
         SdOQ==
X-Gm-Message-State: AJIora8nU3M/L4tKZQWWObtvyYaoA2LEZVZifuVRcUixJKrtrTIT/Ccx
	E24/YG9qY5pXurkuciGR3F+Dr3UEBfhzp1IeEc3Q2A==
X-Google-Smtp-Source: 
 AGRyM1s5ntHul4/s5wdsrl2d6XPJu2HvT0Z/Uxop5/ArsD60hK50X8nHMXneTOic/cL7rm+aCsJsI+TOb0j5NJvq/Pc=
X-Received: by 2002:a05:6402:448e:b0:43a:9d20:a4ec with SMTP id
 er14-20020a056402448e00b0043a9d20a4ecmr19531465edb.269.1657895477535; Fri, 15
 Jul 2022 07:31:17 -0700 (PDT)
MIME-Version: 1.0
References: <JP82.1657889917762781825.KEa5@lists.yoctoproject.org>
In-Reply-To: <JP82.1657889917762781825.KEa5@lists.yoctoproject.org>
From: Steve Sakoman <steve@sakoman.com>
Date: Fri, 15 Jul 2022 04:31:06 -1000
Message-ID: 
 <CAOSpxdbzpj7QOt60+0sD+SiFtqgvb26x5DFhEiAJfnjctf34NA@mail.gmail.com>
Subject: Re: [yocto] Demand to backport openssl upgrade to kirkstone
To: =?UTF-8?Q?Aur=C3=A9lien_Bertron?= <aurelienbertron@gmail.com>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 15 Jul 2022 14:31:26 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57553

On Fri, Jul 15, 2022 at 4:14 AM Aur=C3=A9lien Bertron
<aurelienbertron@gmail.com> wrote:

> The commit 147a012f8a5724df4512c877e991981b224333a3 was merged to master =
to upgrade openssl to version 3.0.5 (fixes a vulnerability). Could it be po=
ssible to backport this commit to the kirkstone branch?
> I am not sure how the decision to backport a commit is taken, but in that=
 case I think it is appropriate for a LTS branch.

This patch is in the proposed kirkstone changes I sent out to the
oe-core mailing list for review on Wednesday:

https://lists.openembedded.org/g/openembedded-core/message/168006

These changes should appear in kirkstone sometime in the next few days.

Steve

