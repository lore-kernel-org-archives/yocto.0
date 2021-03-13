Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
 by mx.groups.io with SMTP id smtpd.web12.627.1615620541341783444
 for <yocto@lists.yoctoproject.org>;
 Fri, 12 Mar 2021 23:29:01 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=V0XB9kmh;
 spf=pass (domain: gmail.com, ip: 209.85.166.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f180.google.com with SMTP id d5so4727256iln.6
        for <yocto@lists.yoctoproject.org>; Fri, 12 Mar 2021 23:29:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4KGui1/L8QgLZ4Z37pDxxbGiER2+PJPcBCTEb53dHg4=;
        b=V0XB9kmh2GSWRY9B55whzH0FXbpcd0Rc/2gfrbnUYv9WaYM/Sio7jey77j8ee3/7QG
         MiaPYVq9hljAnpXSb4fP4xVt/Pj8Ivqdv7JauXS7BfKt/FBYmnxVOouwxWtUHKQSKMC8
         5j417hzEBTEqsyKYx/wvdVIQZ6Gyh7b9Rgd3gf7EzJyAAlw6m3rhfAOUR73uwI7JY0Ix
         DjBVvkYPol3lq39cQYlmxwOEb5BXkxwiQWavflNh068WpeZrnDXp3W1ETc+2ItVDNaCq
         +DMmCvzKPLoCIAKln9OGBsF69pQl4TYJh1vF9mnIXKKkdcl7Ny+3UGpDR2fk32QxJ6i9
         6r1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4KGui1/L8QgLZ4Z37pDxxbGiER2+PJPcBCTEb53dHg4=;
        b=r8xI/0OP7VTVDb4T9tDzTT5c3TWbmTcm+CFvf8/V6riFEEDyMzr+MeQe0iFjM4Xwyu
         A72+uXgQ4WMJL/7AtHibmLgTpp4uzpiKaiRFqr10fZtjtd3Om1CwFnwZMNMnDymgxWYd
         9vFQs/uNBRWqaoxwe3f4CiuRZfn+i4lCMSTORnNl2IWXi+TEEH+dLptthER5NoqMnwWy
         gtrW7cIgVfe4UNkaTR87wFNVkxDAGwMaRris5V9a0w2GR2a+rHXfZcs4bZfB1KJBL3vO
         +9sl5tPWkz3atvo6GXvPKj4kLlSo6OKh7CU36ls+2KEPKqxe2HggqqoiSHeyk9vYejpp
         4GSg==
X-Gm-Message-State: AOAM5329+8kvvXah1aZGEbOEJeGUkXAd7KEn3ehsFZiAuF3rQIYGc9E+
	zKmvE9RerI1AXpml5dVf7YhgejJA75ONcBbDsqE=
X-Google-Smtp-Source: ABdhPJwzEBCV991lt7N0KF1wVMFnMqUXupQcLti+QQfGmw8FFeQlZB8VlYFrbvQyOYcrFulxOKGCVy10xOOisX78ODA=
X-Received: by 2002:a05:6e02:1094:: with SMTP id r20mr5522767ilj.154.1615620540552;
 Fri, 12 Mar 2021 23:29:00 -0800 (PST)
MIME-Version: 1.0
References: <CAGAf8Lxw9Rs2YAyemcdzsHQAEGP9aLyRGovJawAaiA_LP6dydA@mail.gmail.com>
 <29498.1615585760727204439@lists.yoctoproject.org>
In-Reply-To: <29498.1615585760727204439@lists.yoctoproject.org>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Sat, 13 Mar 2021 08:28:49 +0100
Message-ID: <CAGAf8LyKF9dAcPc9VVBTNcurVzNp3wgmgfVgDhMdK35fHtn_hw@mail.gmail.com>
Subject: Re: [yocto] How can I create a truly minimal distribution that runs entirely from RAM?
To: p32@tuta.io
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

> 1. have Yocto generate an initramfs.cpio.xz.uboot file
> instead of just an initramfs.cpio.xz file and to

I assume this is not too hard to achieve. Somewhere in some bitbake
config file this should be added, but either me do not know that.

So, we'll both wait for this info, maybe some new variable should be
defined for such cases as initramfs, for YOCTO build system to
generate.

For example, adding INITRAMFS_CONF = "1" into local.conf (initially
this variable should be set to INITRAMFS_CONF ??= "0") in some YOCTO
defconfig file?!

> 2. modify the default environment that Yocto will
> compile into the U-Boot binary?

This, I believe, is achievable by the following steps:

      1. Taking/cloning last U-Boot from denx git;
      2. Modifying the ./include/configs/<board.h> file, introducing
the following:

          #ifdef CONFIG_SUPPORT_INITRAMFS_BOOT
          #define INITRAMFS_ENV \
                  <place here modified by you initramfs ash script>
          #else
          #define INITRAMFS_ENV ""
          #endif

        3. Compile U-boot, place it on SDcard and test, to see if you
are able to make it work after rebooting the system;
        4. tar again U-Boot source code with these changes, and upload
it on your server;
        5. Change the U-boot recipe to be downloaded from your server!

Another approach I do not know (maybe YOCTO people do know a better
approach from inside the YOCTO build system).

Hope this helps.

Zoran
_______


On Fri, Mar 12, 2021 at 10:49 PM p32 via lists.yoctoproject.org
<p32=tuta.io@lists.yoctoproject.org> wrote:
>
> Thank you very much for your help on the second issue! I was unaware of the fact that another mkimage call is necessary. After taking a look at the the references you provided, I was able to boot the system from an initramfs.
>
> However, my current approach requires two manual steps after running Yocto: I need to call mkimage on the cpio.xz file and to extend/configure the U-Boot environment in the running system. Is there a way to automate this?
>
> More specifically, is it possible to...
>
> have Yocto generate an initramfs.cpio.xz.uboot file instead of just an initramfs.cpio.xz file and to
> modify the default environment that Yocto will compile into the U-Boot binary?
>
>
> 
>
