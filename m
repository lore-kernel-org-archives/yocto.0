Received: from mail-qk1-f175.google.com (mail-qk1-f175.google.com [209.85.222.175])
 by mx.groups.io with SMTP id smtpd.web12.31457.1606115165502849361
 for <yocto@lists.yoctoproject.org>;
 Sun, 22 Nov 2020 23:06:05 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=DV0WDC/Q;
 spf=pass (domain: gmail.com, ip: 209.85.222.175, mailfrom: raj.khem@gmail.com)
Received: by mail-qk1-f175.google.com with SMTP id h11so4572022qkl.4
        for <yocto@lists.yoctoproject.org>; Sun, 22 Nov 2020 23:06:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9AQ1kObxQS1+AxJqNXYDTbHZUlRr/0orl16kQDq3lBA=;
        b=DV0WDC/Q+9WiGnu+XDuqlFt3DHBMa0linuqb5acMDnfreOFyF3BlR8QQHLq4QQbt1Y
         InT3P+3L21wMR5/bPB1Ll8SgGjNmMkGsaBsBOpIqu3VwYZhxr04hGiZYqg5yF+NrD3qU
         2fiUCnP6WEttdlBKQnEZ+XbbLyP+d9frGd4h6eDmHGl3SQ41L9AsXkAmb8XWFLUe3tXX
         Xhd/1Y6ntl7ZS6hc8s6i6vYmsC6Tg2R4B4K3rJ3YUefyBKpGcz+olBLV9Ooo+iDxuKRG
         zqDUmSc4enffele1Og9QECbIwcVqWhiyF2MwRNznU7LN+Zla65HmPQaocGVGVmsXiwlI
         2ZOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9AQ1kObxQS1+AxJqNXYDTbHZUlRr/0orl16kQDq3lBA=;
        b=kbxgx0YpwykqTlylMiX1TG4rxeKYGBiTM2ZMvfcGBFLZm9mLSFT/8IAUMoJpHI8tXW
         JD0NeP/Oqoh2ZqBJpbjD5R5ZvN15alhxdV4Q4HoArV+Pti+2MyfTKgmoA54GEKWrDCt+
         co0puMGVAaioHuZAW0JtG5mc+xh0ezpJ792AHD8rDHUDfRAU0nGbc1OhubryObbLM+yM
         LtDCnt4oEyWeuIcRF1C9tljBAWynwbrjN7Ldk16h8SHYk3vMO9+c34N86IJNus9M04c8
         jy0OdqUlFPnkjDZavk5vWGQyRoG6Ety78QB/b42GjQ5jHerhRoD3KKRtE73MoJds9uwX
         8XzQ==
X-Gm-Message-State: AOAM532ra+7ck6Nzhf8dym04jnuBC1wScOKb5jm77j0WKWNLBIAftiu1
	cUaUiYKWW1D6ALgw1PsLOMHoA6+CMyWRqJyCv4cp0k5nxmoZGg==
X-Google-Smtp-Source: ABdhPJwQlVX6VNHawemMOrB5j5TEKD1cGwqRu1oPHwMwT4bwmuTx4D5hmL6dqMU/w6t5b59XyERGoSk3Bj6excoYkhI=
X-Received: by 2002:a37:a70e:: with SMTP id q14mr28223819qke.337.1606115164490;
 Sun, 22 Nov 2020 23:06:04 -0800 (PST)
MIME-Version: 1.0
References: <080574f8-ae94-3283-0653-631dc7563b49@dajac.com> <5a531881d6504e5880577ce692b1d35b@Exchange.sewerin.de>
In-Reply-To: <5a531881d6504e5880577ce692b1d35b@Exchange.sewerin.de>
From: "Khem Raj" <raj.khem@gmail.com>
Date: Sun, 22 Nov 2020 23:05:37 -0800
Message-ID: <CAMKF1srJDjkhA=DqP_mv34E=tG7=JbTSQ6DgAodxhagujXxGxA@mail.gmail.com>
Subject: Re: [yocto] U-Boot sama5d3 xplained issue
To: David Novak <david.novak@dajac.com>
Cc: Yocto-mailing-list <yocto@lists.yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

perhaps asking it on https://github.com/linux4sam/u-boot-at91 via
github issues might be helpful too.

On Sat, Nov 21, 2020 at 4:26 AM David Novak <david.novak@dajac.com> wrote:
>
> I'm working on this project with Pratham. Let me provide a few more details.
>
> We've defined
>
> UBOOT_MACHINE ?= "sama5d3_xplained_nandflash_config"
>
> Inside
>
> u-boot-at91/sama5d3_xplained_nandflash_config
>
> we change CONFIG_BOOTDELAY, but it has no effect on the newly built image. The boot delay remains the same as it was before we changed it.
>
> Based on the UBOOT_MACHINE, can we be certain we are changing the correct file?
>
> How do we get the build process to include our changes?
>
> Thanks,
> David
>
>
>
> On 11/19/2020 5:37 PM, Prathamesh Ovalekar wrote:
>
> Hello everyone,
>
> System: sama5d3_xplained board
>
> I have a question regarding the configuration and build of u-boot.
> We have a build that was implemented earlier. I am trying to make some changes to it.
>
> Change 1: Change the auto boot delay to 1 second.
> Change 2: Add an auto boot command to set a gpio.
>
> I am aware of the environment variables:  CONFIG_BOOTDELAY and CONFIG_BOOTCOMMAND (needed for the changes above.)
> I tried modifying the  " configs/sama5d3_xplained_nandflash_defconfig "
>
> Question 1: Do I need to create an *.config file using the make menuconfig?
>
> Question 2: How do I create the u-boot.bin . Does this  depend on the Linux build?
>                     I know that there is an environment variable: CONFIG_BOOTARGS that needs to be populated.
>
> --
> Pratham Ovalekar
>
>
>
>
>
> 
>
