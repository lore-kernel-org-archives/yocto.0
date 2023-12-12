Return-Path: <raj.khem@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 87EBBC4332F
	for <webhook@archiver.kernel.org>; Tue, 12 Dec 2023 18:29:15 +0000 (UTC)
Received: from mail-oo1-f48.google.com (mail-oo1-f48.google.com [209.85.161.48])
 by mx.groups.io with SMTP id smtpd.web10.4039.1702405748025325333
 for <yocto@lists.yoctoproject.org>;
 Tue, 12 Dec 2023 10:29:08 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=EKKsliXu;
 spf=pass (domain: gmail.com, ip: 209.85.161.48, mailfrom: raj.khem@gmail.com)
Received: by mail-oo1-f48.google.com with SMTP id 006d021491bc7-5913e3a9e05so428064eaf.1
        for <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 10:29:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1702405747; x=1703010547; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LWahN8f3Xits05yw4KqRyKL5RFDgfYK0mtdwtlganCM=;
        b=EKKsliXuumPFHXFqEFjLwNZQzV1XtnkFIDD+Z8JM+gN9qvzv2R9UD3GjtiU15HT4tg
         Dx//TLY4w0eIFX/DQebEWzqOkVuv05gNwJ9J6WtFEG4lBqc7iFHLjUaZKn0tDQHWoR1C
         8dUD9onnLjL4OY28jcv43U8bW6BeD1VZhDctTs/aZVg4at4Xtux6A/cKs/1qoQ7t3phK
         Vwozf5pdbYkQUlWiOOzDmbzfqgjjpVy10qQffH9vg7JVjC6dP0JGmN44TyPnssoEnncA
         aa4fOqPB4pSHJ5CEvRgYxDvgs5XYO0YYFjffYvnnYP4QrtAJ0yqwcmAGj5VKG5LJY+7Q
         8UgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702405747; x=1703010547;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LWahN8f3Xits05yw4KqRyKL5RFDgfYK0mtdwtlganCM=;
        b=AJtsHKyquJA32S/y0ZLcgtCPoGKOQRgqU8t83O7pCyIIlnRveC1iWYqsUUJiO/J8Cq
         UayRsfBe31eG3L4RvUlXQZc7MPdn7acDtUo1rKrxquUsudfpWHioGjJVo7qiSg+LFFG9
         pv1UhT5bBQW2VpL2l2vO1/W+eHpKp9M1eCMW3KZR3hoIzZFWI83NluPgAA2CINddCoGl
         +gQD7ALeNlksGYQ30ihuBygysXfaGnw565wpU/9xMTcs+XR0EgG6iiF5iLS3zdiXKQ9c
         HeTAIYfD/Mx67LoVON03+3mfe6UOHNdrnj5rcbv0u8OckUlqXfkxo4PARFsxcXrupyDA
         xM5A==
X-Gm-Message-State: AOJu0YwlVwpGXsusQM898dxN7K/rPChaqcrS3s2U9F+hxCBHXSduatoJ
	Oc+7SoW7AZtONAqoZ8AGdZ0VnOq9KCUzLCzKUnYkfbAa
X-Google-Smtp-Source: AGHT+IFvyli01zHmb07YXVRuUGgFgVXBz1stQUbi4zy5G86u6oimTS9sy6EC1CDfQaRlBKb8dzsMzL7ruuMKh9P5uO8=
X-Received: by 2002:a05:6871:7a02:b0:1fb:75a:6d41 with SMTP id
 pc2-20020a0568717a0200b001fb075a6d41mr8900413oac.104.1702405746995; Tue, 12
 Dec 2023 10:29:06 -0800 (PST)
MIME-Version: 1.0
References: <j7bZ.1702405237675386624.Ih46@lists.yoctoproject.org>
In-Reply-To: <j7bZ.1702405237675386624.Ih46@lists.yoctoproject.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 12 Dec 2023 10:28:40 -0800
Message-ID: <CAMKF1soGMfurWU73f7SVRQ_owbNBepor_z+WbMSJ7ThXhC-3UA@mail.gmail.com>
Subject: Re: [yocto] do_rootfs failed
To: yocto@lists.yoctoproject.org, daniele.lugli@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 12 Dec 2023 18:29:15 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61864

which release of yocto are you on. Its always good to include Build
Configuration that bitbake prints at the beginning. Secondly make sure
you are using tested distro on build host for that  release of yocto
for best results

On Tue, Dec 12, 2023 at 10:20=E2=80=AFAM <daniele.lugli@gmail.com> wrote:
>
> Hello all,
> I am new to Yocto, so please be patient.
>
> I added layers meta-intel and meta-realtime to poky.
> Now
> bitbake core-image-rt-extended
> tells me:
>
> Summary: 1 task failed:
> /home/vboxuser/Documents/poky/meta-realtime/recipes-extended/images/core-=
image-rt-extended.bb:do_rootfs
>
> and at the end of log.do_rootfs I see:
>
> NOTE: Running intercept scripts:
> NOTE: > Executing update_gio_module_cache intercept ...
> NOTE: Exit code 127. Output:
> /home/vboxuser/Documents/poky/build/tmp/work/genericx86_64-poky-linux/cor=
e-image-rt-extended/1.0/intercept_scripts-4d6b1b8857aea9ead0c0757d1be3a10e4=
64187681f98f3ad9c7448104f320d6e/update_gio_module_cache: 13: qemuwrapper: n=
ot found
> ERROR: The postinstall intercept hook 'update_gio_module_cache' failed, d=
etails in /home/vboxuser/Documents/poky/build/tmp/work/genericx86_64-poky-l=
inux/core-image-rt-extended/1.0/temp/log.do_rootfs
>
> On the internet I can find some discussions about problems with qemuwrapp=
er. All very old, and none seem suitable.
>
> Do you have any suggestion?
>
> Thank you in advance,
>
> Daniele Lugli
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> You automatically follow any topics you start or reply to.
> View/Reply Online (#61863): https://lists.yoctoproject.org/g/yocto/messag=
e/61863
> Mute This Topic: https://lists.yoctoproject.org/mt/103135158/1997914
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [raj.khem@gmail=
.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

