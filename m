Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CCAA1C3DA42
	for <webhook@archiver.kernel.org>; Wed, 10 Jul 2024 15:19:11 +0000 (UTC)
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
 by mx.groups.io with SMTP id smtpd.web11.17226.1720624742576343058
 for <yocto@lists.yoctoproject.org>;
 Wed, 10 Jul 2024 08:19:02 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=FB0FgiMT;
 spf=pass (domain: gmail.com, ip: 209.85.208.172, mailfrom: alex.kanavin@gmail.com)
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-2ee9505cd37so54642401fa.2
        for <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 08:19:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1720624741; x=1721229541; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/IK7tMnBd8jVmeeVsxHQGQm8LIT88gzs4IssbDo9u00=;
        b=FB0FgiMTHwlDx2g/N4pgOlAbcbgtzcl5N9p3yp9F9DS3nYXke0G2/JC9dYKVmkUcoY
         wH0UHo7UUPqmMWW6mcgclzbcju5rW/57m0hrsSZF2sp9+JqUoUu2We/9UOsyTTXb4TSZ
         QxsLTGuXsJ38T+muERWxP5Bp5HXDzuFO8MzgFiTXmMXT45l7lqFDLXQVFXBBg3yGxHuU
         HTLof0tpT3w5uzIi8WZZ8xRywJJDNRV2G/td8jFhg40CdMr0ADvYYzBs9uWQokEE1UGV
         IkrSEk65W7xcpWt8LBANPWy3wY0DLDw/zCkHHi8icKDEdxvbS+8XUOmQsCU52c1jljeZ
         Lg/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720624741; x=1721229541;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/IK7tMnBd8jVmeeVsxHQGQm8LIT88gzs4IssbDo9u00=;
        b=cri3+Sh7skTt7GYd7k4eaWNCIWtxOYGDqOS0gyzst1SJyuBX87PcXQPasKtuvx71YV
         Db+9b697Gk04z980m4ul4ztMDgBgmsg2e5WGwd5QAbkkQ2i4Fffqijn7d8QdXcD8KHJh
         yfrWjPyMN3Y0n07KBMuwme3LPIVT0SlOLdFBJ7f93UT382sZc10hrXPSmxNakiGis/HR
         1vu0pj4lsOJIl8vvN6ZbSGKFb7G0DvsBdbtutad57F9aQSHQIkK6Hd2JOs1ymvgwl02x
         L9WPR56coXIHR2ZkNVebubxUw7euNhstFGj7ue4IZYlAjrvUBwImWCdcxY1IHb+zkM4Y
         iT3A==
X-Gm-Message-State: AOJu0YxUsiDzMKXyXIL0onXq3XoxPfWoR1c83x2Kh1V7wawJUr2PUKL7
	88ickuW2o3hzOfOzeBuvzyAc/ViLsZWHV4C7OlynDMB+pzYh0wFx6OorVBInyWxob/4knCpqI+U
	AGAOGwZY19bU9t9xuJRqaTEXw37Y=
X-Google-Smtp-Source: AGHT+IF6zJzn8g3pRddFV1j0cwc2gCNemSXmDc23mG9+p5Uc0eBH4oE2mVRXrDVOwtjzd4K2ofeShxJHJ5MCOcBsqfQ=
X-Received: by 2002:a2e:954e:0:b0:2ec:54f3:7b65 with SMTP id
 38308e7fff4ca-2eeb3189e3amr38892181fa.36.1720624739690; Wed, 10 Jul 2024
 08:18:59 -0700 (PDT)
MIME-Version: 1.0
References: <CANNYZj_pGxrBGoVPnBpS-0ZG6Fa=JboV6QVph3DMAgsfqykR5w@mail.gmail.com>
 <12578.1720618108139349239@lists.yoctoproject.org>
In-Reply-To: <12578.1720618108139349239@lists.yoctoproject.org>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 10 Jul 2024 17:18:48 +0200
Message-ID: <CANNYZj9epBMR2JDQgP0HyhAi8pNPHHE7sXe1r=zHazzKiqzTgA@mail.gmail.com>
Subject: Re: [yocto] Common Kernel and Rootfs builds for multiple devices with
 different device trees
To: philip.dawson@datapath.co.uk
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 10 Jul 2024 15:19:11 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63461

I suspect with plain Yocto, you're simply going to have one build for
everything and an image that boots everywhere, with MACHINE set to
zynqmp_generic. You need to try and see.

Alex

On Wed, 10 Jul 2024 at 15:28, philip.dawson via Lists.Yoctoproject.Org
<philip.dawson=3Ddatapath.co.uk@lists.yoctoproject.org> wrote:
>
> OK, thank you for your help. I'll ask on the Xilinx forums.
>
> Out of interest if I was to work to extract ourselves from Petalinux, do =
you have any brief idea how you might go about supporting 4 device trees ->=
 1 kernel if this was a pure Yocto build? Or if that's not sensible how to =
break the kernel driver header -> user-space dependency that's causing us t=
o have to recompile our software?
>
> Best Regards,
> Phil
>
> On Wed, Jul 10, 2024 at 02:19 PM, Alexander Kanavin wrote:
>
> If you're using petalinux, then you should ask for support from the
> petalinux provider.
>
> On the other hand it's probably possible to transition to a direct
> yocto build using only standard yocto upstream mechanisms, without all
> the extra custom BSP generation, and then you'd be better able to
> control how the build gets constructed, and to get help with that in
> this forum.
>
> Alex

