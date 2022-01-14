Return-Path: <marc.ferland@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 4DBB9C433EF
	for <webhook@archiver.kernel.org>; Fri, 14 Jan 2022 20:40:52 +0000 (UTC)
Received: from mail-ed1-f44.google.com (mail-ed1-f44.google.com
 [209.85.208.44])
 by mx.groups.io with SMTP id smtpd.web10.12830.1642192851390009276
 for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 12:40:51 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=Grm4aAPa;
 spf=pass (domain: gmail.com, ip: 209.85.208.44,
 mailfrom: marc.ferland@gmail.com)
Received: by mail-ed1-f44.google.com with SMTP id c71so38230429edf.6
        for <yocto@lists.yoctoproject.org>;
 Fri, 14 Jan 2022 12:40:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sltn3V957XioS7PciiXd/qT80sW7m4PEbWtbBRzoi0o=;
        b=Grm4aAPauk/x53wactQGGd0Nog8KQWwanrvOr7BIiKXS9LsO1wHkNQXExNOnnJfMWy
         m07q8GN/0xIRJ27tG2TBcPh/fnENcmtNDpOhiwjiuE7tIbz8Qo0QBMjMVhj7Y3JeBgvL
         t7C1WYAB6K2GhzDyAlLeu+ZbC7wpq6JhgTHyVR35F8+TtxGJArj0kITH2nXNjycK3lwC
         QpXII2LbpZZSMnDhc0fQqhQr3FBveqFJXBCaVL6TY/TgLGNZ+nRMVPuVkuu6ye/Ix072
         ygLYrODsk3Okim4q1uIVgiJB9GUNWFe/BgjVk294HyzvquiRbzSVjzUTEubSCVQoxYYB
         QU4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sltn3V957XioS7PciiXd/qT80sW7m4PEbWtbBRzoi0o=;
        b=i40+YNhF40vwST54YwtD354SeL+pVBPS/SYT/mnZ1oa+581LfLh6XxQeflkGyEsIj9
         ZXfr3CggQp1541OxaXoovBaQ4jBpwIgHYT6p1ajMC4S5s/XlDETM4gPDzMPnlYQUAzGs
         PZrVkF9mBMbR4R9GtBQxCZWbpyqrWqgbhzJWF2PSn/f53Eobt3avC92veZe7K5p3zhqd
         RXvlkS5OJ3tdP3ZHehhTnriQgHh6GSV7W1l+rjfJ+s9eHiU+uYrOugPi/xMZyZdeo968
         c4SL5g/D2avaKL8V1xMKwm8e2sm/oeUPwd2piuOI8+Er4VSlo2KI2MaP08oHCwphO/6e
         ExUw==
X-Gm-Message-State: AOAM533uwftZmx805LP+LDA6ku8vGvtRzIMTx416kjFDJQmcEY7iClmE
	CKevtr6p3fu0nPkewydGHP8rrQTDsKzQBHsEoc4=
X-Google-Smtp-Source: 
 ABdhPJxNVioAf/QEWafow2pEjc281p0IVvokL7wEz/9L+wKiITZKPszjapkvgrRP0akWFPOad3jbysTXorxTODWtAus=
X-Received: by 2002:a17:906:2bc3:: with SMTP id
 n3mr8835633ejg.332.1642192849855;
 Fri, 14 Jan 2022 12:40:49 -0800 (PST)
MIME-Version: 1.0
References: <olEy.1641952629873571983.WQkq@lists.yoctoproject.org>
 <AM0PR10MB3107C5D3A7A14031A52258E099529@AM0PR10MB3107.EURPRD10.PROD.OUTLOOK.COM>
 <CAJiLS+Tgc7XNuqJi9eVGoSskP8UULuq_mV4GrdGr+aRidQSgAg@mail.gmail.com>
 <847433617.77075.1642023917723.JavaMail.zimbra@savoirfairelinux.com>
 <CAJiLS+TaSr=oL8ZryNngqvyjmDN=tBkOpqWOFmGhFAEh0s0oUQ@mail.gmail.com>
In-Reply-To: 
 <CAJiLS+TaSr=oL8ZryNngqvyjmDN=tBkOpqWOFmGhFAEh0s0oUQ@mail.gmail.com>
From: Marc Ferland <marc.ferland@gmail.com>
Date: Fri, 14 Jan 2022 15:40:38 -0500
Message-ID: 
 <CAMRMzCBR3fsaLR84qPxh=7rQ0kgMaEqbm43=9x-ATnH=Ns0NEQ@mail.gmail.com>
Subject: Re: [yocto] [meta-raspberrypi] Problem with RPI_USE_U_BOOT with
 RaspberryPi4
To: Jean-Philippe Lebel <jp@lebel.pro>
Cc: yocto@lists.yoctoproject.org
Content-Type: text/plain; charset="UTF-8"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 14 Jan 2022 20:40:52 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55883

On Fri, Jan 14, 2022 at 10:39 AM Jean-Philippe Lebel <jp@lebel.pro> wrote:
>
> I finally received my UART cable, giving me more details about where the boot sequence fails.
>
> Just a quick summary of my tests
> - Enabling UART does indeed "fix" the issue when working from the meta-raspberrypi AND yocto master.
> - Enabling UART has no impact when working from the meta-raspberrypi and yocto hardknott branch (which I need to support) - image doesn't boot
> - Backporting the meta-raspberrypi master branch to hardknott does NOT fix the problem.
>
> Here is the uboot log (failing).
>
> U-Boot 2021.01 (Jan 11 2021 - 18:11:43 +0000)
>
> DRAM:  1.9 GiB
> RPI 4 Model B (0xb03114)
> MMC:   mmcnr@7e300000: 1, emmc2@7e340000: 0
> Loading Environment from FAT... ** No partition table - mmc 0 **
> In:    serial
> Out:   serial
> Err:   serial
> Net:   eth0: ethernet@7d580000
> PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
> starting USB...
> Bus xhci_pci: Register 5000420 NbrPorts 5
> Starting the controller
> USB XHCI 1.00
> scanning bus xhci_pci for devices... 2 USB Device(s) found
>        scanning usb for storage devices... 0 Storage Device(s) found
> Hit any key to stop autoboot:  0
> switch to partitions #0, OK
> mmc0 is current device
> ** No partition table - mmc 0 **
> Card did not respond to voltage select! : -110
>
> Here is a normal uboot sequence
>
> U-Boot 2021.10 (Oct 04 2021 - 15:09:26 +0000)
>
> DRAM:  1.9 GiB
> RPI 4 Model B (0xb03114)
> MMC:   mmcnr@7e300000: 1, mmc@7e340000: 0
> Loading Environment from FAT... Unable to read "uboot.env" from mmc0:1... In:    serial
> Out:   vidconsole
> Err:   vidconsole
> Net:   eth0: ethernet@7d580000
> PCIe BRCM: link up, 5.0 Gbps x1 (SSC)
> starting USB...
> Bus xhci_pci: Register 5000420 NbrPorts 5
> Starting the controller
> USB XHCI 1.00
> scanning bus xhci_pci for devices... 2 USB Device(s) found
>        scanning usb for storage devices... 0 Storage Device(s) found
> Hit any key to stop autoboot:  0
> switch to partitions #0, OK
> mmc0 is current device
> Scanning mmc 0:1...
> Found U-Boot script /boot.scr
> 262 bytes read in 6 ms (42 KiB/s)
> ## Executing script at 02400000
> 23202304 bytes read in 997 ms (22.2 MiB/s)
> Saving Environment to FAT... OK
> Moving Image from 0x80000 to 0x200000, end=1960000
> ## Flattened Device Tree blob at 2eff3600
>    Booting using the fdt blob at 0x2eff3600
>    Using Device Tree in place at 000000002eff3600, end 000000002f002f13
>
> Starting kernel ...
>
> Basically, the failing Uboot can't find the partition table.
>

Well is there a partition table? Can you share what you are doing to
flash your uSD? Maybe it's just some manipulation error.

Marc

