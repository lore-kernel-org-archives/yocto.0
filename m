Received: from mail-il1-f180.google.com (mail-il1-f180.google.com [209.85.166.180])
 by mx.groups.io with SMTP id smtpd.web08.9444.1610031818003899969
 for <yocto@lists.yoctoproject.org>;
 Thu, 07 Jan 2021 07:03:38 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=TRsB2ViE;
 spf=pass (domain: gmail.com, ip: 209.85.166.180, mailfrom: zoran.stojsavljevic@gmail.com)
Received: by mail-il1-f180.google.com with SMTP id q1so6999637ilt.6
        for <yocto@lists.yoctoproject.org>; Thu, 07 Jan 2021 07:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=5a3FMQd8LQM8sX4Szr8CZvHQpghuWMDSxkpq93aYTxI=;
        b=TRsB2ViE63+l5CZ5mFqmPNex+ewWirP6PXWWJ4dFvQ264po1+DZS4jEa+HYVF2iWGh
         W6MBP8tlCgcr8tAGRYl8t+7FSYKW3SIvRri4b0cAZTWk0ekkftAhLT2h6Pk0cULcCoW4
         ES/BY+87NpXjJtqgZNlpXTvmv+JP5SLLzt+zuIBcqGQJmQlmLw5JjOdzV1Wyx3y4bGJs
         WUWl+YtrmNMcMzHmreFnsCzIkMe/foVfhOIs3KpUSjMzPuJR8xUk3nnzkouol7pbRs3p
         Rd47BqABhCo04cqeee7Q3i95DsVPeQlUhNjGphYdHc22o5jLtDE3jGvAt6MFaisoTYZc
         fQ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=5a3FMQd8LQM8sX4Szr8CZvHQpghuWMDSxkpq93aYTxI=;
        b=GsHl4ZtrU1NE4Y9q6irm7Zi9zLog7wymn0sXC4V5cjqL057MWjPCqWNVeW7Be8uZWb
         3X5GJCEVt3vk6XxCPlt2Yfd63Ryt9cWdX45ote5nMSNhJzmbbljwMzKoQ6JmZrMR7DOz
         YXAr83sxaMXzuL0QXVfuetrXVVAp1MsP6BPS8RODewK5n9fLGtlPbAORu2gmxcogGiNY
         ok+etN/fCnA8iMLSOdIwtyolMWsq07htTp/REQV7Q1SZzujsQ9GH9CN45j3GP7DEoANu
         PWj5IzOOEVByIVR6qYnDyfROsQ3b2VVwTCzSUm9HAu2DMSXt/B7bAJSQ1myrucXnmg09
         Du6g==
X-Gm-Message-State: AOAM532SXysXkQnY5SOwezT/GK1tC8we5MDVYmMk/u0tOK3xsDy+CHCH
	/gAZDpWCd3QjuE4nnAVTKWklwCgwf3aPbyFAgrA=
X-Google-Smtp-Source: ABdhPJyH2VlFJhsrITM+zzs6EQL1HS8kjBvahBHkYWzZd2bjScD9RkcuKseltNRJ+Oj1kuiFhp27T+BZc9XlFAIisg8=
X-Received: by 2002:a05:6e02:f93:: with SMTP id v19mr9123151ilo.154.1610031817231;
 Thu, 07 Jan 2021 07:03:37 -0800 (PST)
MIME-Version: 1.0
References: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
In-Reply-To: <CAHwRhWa6SsR=mTOX95uBTKVru4JZszHBEhc5LhYpe=jr6hYT6A@mail.gmail.com>
From: "Zoran" <zoran.stojsavljevic@gmail.com>
Date: Thu, 7 Jan 2021 16:03:26 +0100
Message-ID: <CAGAf8Lz+_aWxJSrEEVWKtzitD1kCy+BO0BrapWGhtpRVJJYHCA@mail.gmail.com>
Subject: Re: [yocto] insmod - huawei E3372h kernel module
To: Zoltan Kerenyi Nagy <kerenyi.nagy.zoltan@gmail.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hello Zoltan,

> root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter

Please, try to set Kconfig (obj-y := huawei_cdc_ncm.o) to y, I guess
99.9% that the kernel compilation (actually, driver compilation) will
pass.

I think YOCTO (recipe) behaves perfectly correctly.

Other approach: try to compile the same module with Makefile above on
the target.

(my two cent thoughts)

Zoran
_______

On Thu, Jan 7, 2021 at 2:46 PM Zoltan Kerenyi Nagy
<kerenyi.nagy.zoltan@gmail.com> wrote:
>
> Hi Folks,
>
> I bitbaked a Huawei E3372h driver into the distro with this recipe file:
>
> SUMMARY = "Huawei Stick kernel module"
> LICENSE = "CLOSED"
>
> inherit module
>
> SRC_URI = "file://Makefile \
>            file://huawei_cdc_ncm.c \
>           "
>
> S = "${WORKDIR}"
>
> The makefile looks like this:
>
> obj-m := huawei_cdc_ncm.o
>
> SRC := $(shell pwd)
>
> all:
> $(MAKE) -C $(KERNEL_SRC) M=$(SRC)
>
> modules_install:
> $(MAKE) -C $(KERNEL_SRC) M=$(SRC) modules_install
>
> clean:
> rm -f *.o *~ core .depend .*.cmd *.ko *.mod.c
> rm -f Module.markers Module.symvers modules.order
> rm -rf .tmp_versions Modules.symvers
>
> The source file is the one that matches the kernel:
>
> https://elixir.bootlin.com/linux/v4.0/source/drivers/net/usb/huawei_cdc_ncm.c
>
> I included this into the conf file:
> KERNEL_MODULE_AUTOLOAD += "lte"KERNEL_MODULE_PROBECONF += "lte"huawei_cdc_ncm = "options lte iProduct=E3372h iManufacturer=Huawei"
>
> Bitbake runs without error, however when I insert the SD card into the hardware ( barix ipam 400)
> and boot the hardware this is the error message:
>
> root@barix-ipam400:~# insmod /lib/modules/4.10.0/extra/huawei_cdc_ncm.ko
> insmod: can't insert '/lib/modules/4.10.0/extra/huawei_cdc_ncm.ko': unknown symbol in module, or unknown parameter
>
> To me it looks like that there was an error during the bitbake, or the header files included in the driver doesn't match the kernel.
>
> Do you have any idea how to procede?
>
> Thanks,
>
>
>
> --
> Zolee
> 
>
