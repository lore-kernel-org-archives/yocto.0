Received: from mail-ej1-f65.google.com (mail-ej1-f65.google.com [209.85.218.65])
 by mx.groups.io with SMTP id smtpd.web12.8368.1607699782331030496
 for <yocto@lists.yoctoproject.org>;
 Fri, 11 Dec 2020 07:16:22 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=MQk+Cy4N;
 spf=pass (domain: gmail.com, ip: 209.85.218.65, mailfrom: bruce.ashfield@gmail.com)
Received: by mail-ej1-f65.google.com with SMTP id g20so12857038ejb.1
        for <yocto@lists.yoctoproject.org>; Fri, 11 Dec 2020 07:16:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jt1IeHKPKz25WO9qua6NCHB30jxLWFbqGbrZmkxRBo4=;
        b=MQk+Cy4NB8tlZ/fvn0T1YWBmN7HO5WlVdC5Hq4uJMXGFvXzclcVVM8MUl7lXnIjzFl
         UYPd3mfNB/6nTOnUeDif2Qr1VHqcNfHwvWua97aWPZ1V/RosHe/7l2kL98E4cr4jPFG+
         nWBfkx94e1MRSC/AW+Pieo635B66aCP6ZQ/lRyv+CV2VAiDOXsluW2fIEU3tocz2bwBX
         JES3+bREnHFIc/RGGFug3728yQSTutD+Av7dVW2l5l3C9EVXUWkrBY6jzagHvWFPsoFg
         Q78SV4nfRid4Gsa4Cgj4EvKR4mxyl3VosvaV2CsEG56q/0ChbawQwNw8UeZrukYDA0Om
         fuUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jt1IeHKPKz25WO9qua6NCHB30jxLWFbqGbrZmkxRBo4=;
        b=Z1FETN2dAKFzo4Z2kgF7/n8ru8RbA7HEwlVjeSRJeRchDOsvtAmO53wJmj5s7c9pMM
         fZfZ925osXPQS2sMJtPwRB8bBojqfevxDDVWOkS1G97dqzrk4A0i2owzejXs0lHR74BK
         m8wvqt1LL7oVFCsbJ7JGZQYQJjNF9/q8nn/d4KI8EoMXAjsLQO9AnsMoGDYlp3Ytyeyg
         6VDzWkuVYS8owu4BL9wronUwxqsXUJeb+/HdX/G0PvnV7+4ghHPRwaXBBKZn/5UpqLys
         VFY1gh7De9azbQ9+FLd5HnsuD85dzw/bk5NHtIroIBEErw2gioqw00Cf/+JImfFNUcfr
         WSnQ==
X-Gm-Message-State: AOAM5307yLKi7Y9biLs4j61g+YHPiP+psrl+0wtLeRH8Yp1DGFqrcbCz
	1EXl+ZgY4WtzoLUmq2JBAELi5OaXbcs9mNbAhfM=
X-Google-Smtp-Source: ABdhPJyRbHfWeyE5ijl1O6yMoCKiuUU6xbsrMVr242rriTl0pUClZkdmuNSM1H8xiW9Wa0C5sop3RdQjpZ+Whz4wrJA=
X-Received: by 2002:a17:907:d01:: with SMTP id gn1mr11721159ejc.357.1607699780707;
 Fri, 11 Dec 2020 07:16:20 -0800 (PST)
MIME-Version: 1.0
References: <20201211144752.13869-1-JPEWhacker@gmail.com>
In-Reply-To: <20201211144752.13869-1-JPEWhacker@gmail.com>
From: "Bruce Ashfield" <bruce.ashfield@gmail.com>
Date: Fri, 11 Dec 2020 10:16:09 -0500
Message-ID: <CADkTA4NtO3M+aX0aFNBFqu9-7sGZxRCo9GrJKojmve0Dry3Gpg@mail.gmail.com>
Subject: Re: [yocto] [meta-rockchip][PATCH] Fix Rock Pi 4 serial port
To: Joshua Watt <JPEWhacker@gmail.com>
Cc: yocto <yocto@lists.yoctoproject.org>, Trevor Woerner <twoerner@gmail.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Dec 11, 2020 at 9:48 AM Joshua Watt <JPEWhacker@gmail.com> wrote:
>
> Fixes the serial port output stopping mid way through the boot process
> by reverting the kernel commit that caused it.

If you want, I can also pick this up and merge it directly into
linux-yocto and do a SRCREV bump.

Have you tested against 5.10 ? I'm working through issues with it now,
and it would be nice to fix this before it pops up again on the next
reference kernel bump.

Cheers,

Bruce

>
> Signed-off-by: Joshua Watt <JPEWhacker@gmail.com>
> ---
>  ...-resolve-supply-after-creating-regul.patch | 53 +++++++++++++++++++
>  recipes-kernel/linux/linux-yocto_5.8.bbappend |  4 ++
>  2 files changed, 57 insertions(+)
>  create mode 100644 recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
>  create mode 100644 recipes-kernel/linux/linux-yocto_5.8.bbappend
>
> diff --git a/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
> new file mode 100644
> index 0000000..3dd336b
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto/0001-Revert-regulator-resolve-supply-after-creating-regul.patch
> @@ -0,0 +1,53 @@
> +From a414d39b848002e15531f2538d2b6427ce51d07d Mon Sep 17 00:00:00 2001
> +From: Joshua Watt <JPEWhacker@gmail.com>
> +Date: Thu, 10 Dec 2020 15:59:47 -0600
> +Subject: [PATCH] Revert "regulator: resolve supply after creating regulator"
> +
> +This commit prevents the serial console from working on the Rock Pi 4
> +for some reason. It *appears* to possibly be fixed by some other commit
> +upstream, but after a lot of head scratching and bisecting, I was unable
> +to find which one, so just revert it for now and we can deal with it
> +later.
> +
> +This reverts commit 96c6b5d5775637b3095ef934f871044811fd4db7.
> +
> +---
> + drivers/regulator/core.c | 21 ++++++++-------------
> + 1 file changed, 8 insertions(+), 13 deletions(-)
> +
> +diff --git a/drivers/regulator/core.c b/drivers/regulator/core.c
> +index 25e601bf9383..be8c709a7488 100644
> +--- a/drivers/regulator/core.c
> ++++ b/drivers/regulator/core.c
> +@@ -5187,20 +5187,15 @@ regulator_register(const struct regulator_desc *regulator_desc,
> +       else if (regulator_desc->supply_name)
> +               rdev->supply_name = regulator_desc->supply_name;
> +
> ++      /*
> ++       * Attempt to resolve the regulator supply, if specified,
> ++       * but don't return an error if we fail because we will try
> ++       * to resolve it again later as more regulators are added.
> ++       */
> ++      if (regulator_resolve_supply(rdev))
> ++              rdev_dbg(rdev, "unable to resolve supply\n");
> ++
> +       ret = set_machine_constraints(rdev, constraints);
> +-      if (ret == -EPROBE_DEFER) {
> +-              /* Regulator might be in bypass mode and so needs its supply
> +-               * to set the constraints */
> +-              /* FIXME: this currently triggers a chicken-and-egg problem
> +-               * when creating -SUPPLY symlink in sysfs to a regulator
> +-               * that is just being created */
> +-              ret = regulator_resolve_supply(rdev);
> +-              if (!ret)
> +-                      ret = set_machine_constraints(rdev, constraints);
> +-              else
> +-                      rdev_dbg(rdev, "unable to resolve supply early: %pe\n",
> +-                               ERR_PTR(ret));
> +-      }
> +       if (ret < 0)
> +               goto wash;
> +
> +--
> +2.29.2
> +
> diff --git a/recipes-kernel/linux/linux-yocto_5.8.bbappend b/recipes-kernel/linux/linux-yocto_5.8.bbappend
> new file mode 100644
> index 0000000..5a31842
> --- /dev/null
> +++ b/recipes-kernel/linux/linux-yocto_5.8.bbappend
> @@ -0,0 +1,4 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +SRC_URI_append_rock-pi-4 = " file://0001-Revert-regulator-resolve-supply-after-creating-regul.patch"
> +
> --
> 2.29.2
>
>
> 
>


--
- Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end
- "Use the force Harry" - Gandalf, Star Trek II
