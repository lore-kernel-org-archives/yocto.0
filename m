Return-Path: <alexandru.ionita@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E60BC433F5
	for <webhook@archiver.kernel.org>; Wed, 16 Feb 2022 09:36:48 +0000 (UTC)
Received: from mail-yb1-f180.google.com (mail-yb1-f180.google.com
 [209.85.219.180])
 by mx.groups.io with SMTP id smtpd.web10.9902.1645004197612292546
 for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 01:36:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=EqVUDqv1;
 spf=pass (domain: gmail.com, ip: 209.85.219.180,
 mailfrom: alexandru.ionita@gmail.com)
Received: by mail-yb1-f180.google.com with SMTP id bt13so4293059ybb.2
        for <yocto@lists.yoctoproject.org>;
 Wed, 16 Feb 2022 01:36:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=p03xIT15bo9X8ZdSXK3ccm/QaaHSLqzYjG489Y2njb4=;
        b=EqVUDqv1161gBCS3wHC13qG+xpDYRtvOvhtppDZ2f1B1vq8VcUIJ0uuDUCmH2sgZhd
         hIWaBQFxj0ZQOTrN3AoGeF6Eji6LDD/UeZjW02JdvFUqwvwGVZlJaUXQIrwrHsknri5j
         v4y3AQyOY4yHp1C8OdgjA7w5UGyNv5c9uxHBhf2udfrzikfd8Pz+ofys3M6mAgw+0FaG
         /xYlrA+jFxwXK+OvqXD8/ztkNMHNc3VN/t8goi5ersGy7DG3HGZ3Q//R4mg2nCdRQFMt
         LXGS+KiIPKrvAd+ujiMbT4Q8Bc/S5fuotZmv4/taRkwZyVfxZIueyzfqDbs/TAoWodrJ
         AK7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=p03xIT15bo9X8ZdSXK3ccm/QaaHSLqzYjG489Y2njb4=;
        b=rU/XmSdK8nMPn5r+goLaGGo/AYabacXyexUSSRO4v2Lc23GSR2UlQFvwBQocf5+UkZ
         aSzKuXqHkRFwthbM6tnyVqHKtep8qo54kHhNwz8UXkhSOWPt5dLIVjWztvQ646Dn2X0y
         PcOy8HOBusBRNh9dJLm4alIJAxMX9qCB1lzyJprxv5uL5N7/bL+JB4brb+8k3cWWu79U
         w/Nr+1YPeupCmO/nzgpGl5ajEMxpmfjM5FJVrzSpnDlpj6ENJNp1P3upRKQML5Einrdh
         JZBnNunC5HgYzprQot/x58eXuqRf8OnEQyyXuKceuWg0hzxZJT2a7ZlTIKrbeuIf2o/2
         6EAQ==
X-Gm-Message-State: AOAM531ehjv9paauBqapbV2b1VratUmladND1F3NY9Hi1nL51ECb5VEB
	mT6QThqhRvwatcL8KeC8ZJfEsFCVQ8sRziNLq/IoYx0VWwo=
X-Google-Smtp-Source: 
 ABdhPJyuU/+muo2LNw3dvfxIPPCIBtHM6H/ssPnOxOWO0AjZaGM0gTMRI5FprSWqB6Kk4nT6YLNpBzvW8zkbJOCxwi0=
X-Received: by 2002:a05:6902:91b:b0:61d:9406:48c0 with SMTP id
 bu27-20020a056902091b00b0061d940648c0mr1435916ybb.122.1645004196322; Wed, 16
 Feb 2022 01:36:36 -0800 (PST)
MIME-Version: 1.0
From: Alexandru Ionita <alexandru.ionita@gmail.com>
Date: Wed, 16 Feb 2022 10:36:10 +0100
Message-ID: 
 <CAOar+7QdRygTkRkyizGa8AwZvW4+0ruTGpSk0aj3Eg6qKVN1Aw@mail.gmail.com>
Subject: same build for multiple machine configurations
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000c6a0a205d81f62e9"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 16 Feb 2022 09:36:48 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/56206

--000000000000c6a0a205d81f62e9
Content-Type: text/plain; charset="UTF-8"

Hello all,

I'm not sure if this is even possible at all. I'm using the meta-raspberry
layer to build raspberry images. Whilst I'm able to build images by
strictly selecting a raspberry pi machine configuration
(MACHINE=raspberrypi3), I would like to know if it's possible to build an
image that is compatible with multiple raspberry pi machine configurations.
For instance an image that would work for both raspberrypi3 and
raspberrypi4.

Thanks.
Alex

--000000000000c6a0a205d81f62e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div>Hello all,</div><div><br></div><div>I&=
#39;m not sure if this is even possible at all. I&#39;m using the meta-rasp=
berry layer to build raspberry images. Whilst I&#39;m able to build images =
by strictly selecting a raspberry pi machine configuration (MACHINE=3Draspb=
errypi3), I would like to know if it&#39;s possible to build an image that =
is compatible with multiple raspberry pi machine configurations. For instan=
ce an image that would work for both raspberrypi3 and raspberrypi4.</div><d=
iv><br></div><div>Thanks.</div><div>Alex<br></div></div>

--000000000000c6a0a205d81f62e9--

