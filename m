Return-Path: <mikko.rapeli@linaro.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DE08DC4345F
	for <webhook@archiver.kernel.org>; Thu,  2 May 2024 10:34:45 +0000 (UTC)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com [209.85.208.173])
 by mx.groups.io with SMTP id smtpd.web11.10341.1714646077075815926
 for <yocto@lists.yoctoproject.org>;
 Thu, 02 May 2024 03:34:37 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@linaro.org header.s=google header.b=JawRgaOd;
 spf=pass (domain: linaro.org, ip: 209.85.208.173, mailfrom: mikko.rapeli@linaro.org)
Received: by mail-lj1-f173.google.com with SMTP id 38308e7fff4ca-2d8a2cbe1baso101838241fa.0
        for <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 03:34:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714646075; x=1715250875; darn=lists.yoctoproject.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=rj/4FBH7oG+dUZ9ANBCAm4xv9OZSTlYTOUxAAnTs9wM=;
        b=JawRgaOdC52vPJWdNmpwgMdi90NVrV+XjOuoKpneKSecwxTE8VN7tsAMxPLax7e67B
         EbL5H+u7877YVgYOvGXnvtZXsZ2htj1sTxUd0nz+ULlelFYiV0KoS/wZxnrVNz0+nNqH
         ywmIZm8HEUQmTSmPVttJMlo1CInPLFipkDZ81RfVBupMyf/bD7qNzGeH+IyQF56zw9+K
         ENseC39+IiUpWBUHfi/on+SW6/qOSwohj0SRxjpPjWnh9hpCdnDERVZClHxWYe/xSgHI
         fGoTawwxUHKUdUYjcS6XJ1ZNdKjQkedaejf83ENSa8uRzsofwTftdA9zM47jrpsL6H7R
         cY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714646075; x=1715250875;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rj/4FBH7oG+dUZ9ANBCAm4xv9OZSTlYTOUxAAnTs9wM=;
        b=bX3kaAharP+fbp3Fv/j6E7rlqWZYqQHa9cLEgk6O0CguxFnBw+VpPDZVED4GE8w+cC
         4LX1hXKO2bP/7G71qBMAkYPUk0/T5C50Yme0Iu3NAGo2LJvLLdbrSg/6c09/afjC71DL
         ABq9JoUHqAhwv+XFjnpOCv6tPmcbo9QZQSoYLnDNhhj0dpzFcfu+99gfTK9E2ZUqpzmu
         6BJWum/ONr/aoD/N/ILghSJjfRIzq9/WyRJRkyUnYQvvmg7a6KmJdmki67u5QfCIEtZY
         Bu8oPcklZ5k39aOsOPcHbuYlN15rDDTzP5H/meYO5nRQjJeARPi3tQniXseMc73GhwL8
         ZAXg==
X-Gm-Message-State: AOJu0Yxi8883/yD13k5bXH08i9xHdhsGh4CZJYKOq8/lAC/rg/uveHd/
	Zfi34JTPwzkDhoXDVOyi5uMbYCfI0gd70vceMLvg+SQY2PulpRpXgdsDiHwK44iH9J2DkUlzjQO
	x/tY=
X-Google-Smtp-Source: AGHT+IEQfZ2zcQHfCNoG9lzu/JiW3AZ1oQRtPxACVOXnH4Ar+jqv7FtUPPIt7h40QuzFyRpqrcmZ2A==
X-Received: by 2002:a2e:99d6:0:b0:2e1:61de:9d03 with SMTP id l22-20020a2e99d6000000b002e161de9d03mr1468667ljj.18.1714646075089;
        Thu, 02 May 2024 03:34:35 -0700 (PDT)
Received: from nuoska (drt4d6yywjht56pm8q3st-3.rev.dnainternet.fi. [2001:14ba:7430:3d00:1239:a19d:315c:6ddf])
        by smtp.gmail.com with ESMTPSA id d4-20020a2e3604000000b002d2697570fcsm138417lja.93.2024.05.02.03.34.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 02 May 2024 03:34:34 -0700 (PDT)
Date: Thu, 2 May 2024 13:34:30 +0300
From: Mikko Rapeli <mikko.rapeli@linaro.org>
To: yocto@lists.yoctoproject.org, f.louveau@lacroix.group
Subject: Re: [yocto] Verity hash in kernel bootscript
Message-ID: <ZjNsNn2VVy366tjU@nuoska>
References: <pS1t.1714642083190660050.4DTn@lists.yoctoproject.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <pS1t.1714642083190660050.4DTn@lists.yoctoproject.org>
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 02 May 2024 10:34:45 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63018

Hi,

On Thu, May 02, 2024 at 02:28:03AM -0700, f.louveau via lists.yoctoproject.org wrote:
> Hello,
> 
> I have a project where I want to implement dm-verity on my rootfs (no initramfs here).
> 
> I modify image recipe to split rootfs in multiple partition (weird this is not supported upstream).
> I generate rootfs as a squashfs with verity has table at the end.
> I also obtain a verity.env file as output in ${TMPDIR}/work-shared/${MACHINE}/dm-verity/
> 
> My idea is to convert verity.env into a bootscript and inject it inside fitimage using UBOOT_ENV variable.
> 
> My issue is the overall dependency. I need my rootfs before creating my bootfs (/boot) containing my fitimage.
> 
> Ideally I want to
> 
> * generate a first rootfs without uboot and fitimage (not possible as it is defined using KERNEL_IMAGETYPES).
> * convert verity.env into bootscript.txt and configure UBOOT_ENV
> * generate fitimage and create my bootfs
> 
> I explore several ideas like multiconfig without success, multiple images (works but recompile several elements twice, not perfect), define new fstype or image (no success for now)
> 
> Any advice or suggestion are welcomed.
> 
> Additional question: why UBOOT_ENV is linked to UBOOT as it is only generated in u-boot recipe and then injected in do_assemble_fitimage. Maybe an independent recipe could be simpler.

I don't have direct answers to your problem but I had a somewhat similar problem.

In my case, I wanted to convert an existing .wic image recipe and initramfs to
create a .wic image with a dm-verity partition. In the end I had to split the
dm-verity rootfs (or actually just /usr) partition creation to a separate recipe
from the .wic image recipe. I was not able to order the image processing steps
correctly without this when using meta-security and dm-verity-img.bbclass.

Then in the initramfs recipe I switched to using uki binaries and uki.bbclass
which is based on changes posted to poky but needed a bunch of modifications to
work. For example to pick the kernel cmdline arguments from dm-verity-img.bbclass
output. Trying to upstream these bits together with some testing setup using qemu
(but missing an efi compatible machine currently).

So multiple image recipes for the different stages may be an option for your
case as well. I don't see why the different images would need to recompile
binaries differently. They should all use the same machine and distro
configuration.

Cheers,

-Mikko

