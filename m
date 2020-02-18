Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.22.1582148694965133077
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=QOUEdj2a;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02A8BE015FF; Mon, 17 Feb 2020 20:35:28 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.46 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f46.google.com (mail-io1-f46.google.com [209.85.166.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BD426E00BD0
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 20:35:26 -0800 (PST)
Received: by mail-io1-f46.google.com with SMTP id x1so9386730iop.7
        for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 20:35:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=TUcXvtRx45Y+TZ52Ol/EkqkzI32zvHfIfp9ABJYLpog=;
        b=QOUEdj2awMSDsHUYaWS7FIU3Rjs7FxXUK8MOc5tBpgUhgFFASAdR1ZBGXmWl96iF3y
         FupXapPp5hnVBEto8/yhXCeHdcBZ/GX+5G0yew17AB/7cpwB1FGQpDFjwWoewl0Gc3DR
         7Xbiz0EU9j8OUju4MFTLJJLx1FT/HKvsmGXyHcFgeRnpKJVovqi44E6MZs3uRilp1BJ/
         xGhqiGnAQcV2Ma9xovHOABu4QvNWY2PBkd9dZKJ4gkhNMTewJCvDPvmimzC6DWUDn2fQ
         58fZNrQCw694of/x73HTAzsPBJrVGoe1A4fYe+LPP4Lid/Xo0uA/UfrHCt9IB90SxCdd
         Beew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=TUcXvtRx45Y+TZ52Ol/EkqkzI32zvHfIfp9ABJYLpog=;
        b=RdVnfwEwMW9iV+grDfrwI+gpm7KymniH3ZV8Mv/J5LYuxwGJpZobFjlB47C7FmCwwu
         sRw3AUx/uWrvyNf6Y9V0JPc24UEXIABeWiDwo42xQOm4xdxLPr/Li8Y2sjYf/UHeOy4a
         fjO0U/amGQ9izfJPCRNYxe7+YD65ZFw7HTkxEByoaHUkY1N8403RTwV5XCxw8EwvB+KM
         Ycj0tu12NXbS6rM4T6HyRBwrp9XhUqoOL2cFo+fmGg8jzaVzXs1sNtS3+K4OpMV74PAK
         A3A1taJ0+CIpiDH51fkK8dAGBX3NF7NNLOrDGBh57Q72Ws70RiAXjIhV+lP5w6rsv57j
         QNLg==
X-Gm-Message-State: APjAAAVtnk0oNoCS+CvQHn6UBzrj8t28jIZeL92jECs8WexgACSDhcXx
	1kiXT/ycFWtiQxlPJpt3a9bIZnsLLuip9ps4qGU=
X-Google-Smtp-Source: APXvYqzuJ8+MKyZupZqpupr12gG9m3qPLdz9X2HRBPDd3EEoZTOsqe4KhfFrVPWtcy0wBoThKgP/0zBkQrXCV05Y0/U=
X-Received: by 2002:a6b:d912:: with SMTP id r18mr13828656ioc.306.1582000526158;
 Mon, 17 Feb 2020 20:35:26 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Mon, 17 Feb 2020 20:35:25
 -0800 (PST)
In-Reply-To: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 15:35:25 +1100
Message-ID: <CAA=hcWQ_6n4Sy66GoYxLgFJu-CwtaS1m-vAT_wVMTgDZ2qkarg@mail.gmail.com>
Subject: Re: Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
To: linux-wireless <linux-wireless@vger.kernel.org>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"

It also seems mwifiex_sdio tried to write to RO rootfs and failed and
triggled RF Killm, does mwifiex_sdio needs some system directories for
RW?

[   26.636845] mwifiex_sdio mmc0:0001:1: mwifiex_process_cmdresp: cmd 0x242 fain
         Starting Load/Save RF Kill Switch Status...
[   26.852990] mwifiex_sdio mmc0:0001:1: info: MWIFIEX VERSION: mwifiex 1.0 (14
[   26.861518] mwifiex_sdio mmc0:0001:1: driver_version = mwifiex 1.0 (14.68.36
[FAILED] Failed to start Load/Save RF Kill Switch Status.
See 'systemctl status systemd-rfkill.service' for details.
         Starting Load/Save RF Kill Switch Status...
[FAILED] Failed to start Load/Save RF Kill Switch Status.
See 'systemctl status systemd-rfkill.service' for details.
         Starting Load/Save RF Kill Switch Status...
[FAILED] Failed to start Load/Save RF Kill Switch Status.
See 'systemctl status systemd-rfkill.service' for details.
         Starting Load/Save RF Kill Switch Status...




On 2/18/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> Apologize for the cross posting.
>
> I am running kernel 4.19.75 on iMX6 customized device with WiFi and 4G
> LTE, it was running well in an RW rootfs. After I have just changed
> rootfs to RO UBIFS partition, it failed RF Kill and postinsts I
> suspect both try write to the RO and failed, any advice how to fix it?
> Despite it failed RF Kill and postinsts, it was still working.
>
> [    6.097762] UBIFS (ubi0:2): UBIFS: mounted UBI device 0, volume 2,
> name "rootfs-volume", R/O mode
> ..............
> [    6.151932] VFS: Mounted root (ubifs filesystem) readonly on device
> 0:13.
> .................
> [  OK  ] Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
>          Starting Load/Save RF Kill Switch Status...
> [FAILED] Failed to start Load/Save RF Kill Switch Status.
> See 'systemctl status systemd-rfkill.service' for details.
>
> [FAILED] Failed to start Run pending postinsts.
> See 'systemctl status run-postinsts.service' for details.
> ...............
> root#
>
> Thank you.
>
> Kind regards,
>
> - jh
>
