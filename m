Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5E0D0E6FC
	for <webhook@archiver.kernel.org>; Tue, 22 Oct 2024 04:48:12 +0000 (UTC)
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
 by mx.groups.io with SMTP id smtpd.web10.11248.1729572483114024535
 for <yocto@lists.yoctoproject.org>;
 Mon, 21 Oct 2024 21:48:04 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@priyarajaelectronics-com.20230601.gappssmtp.com header.s=20230601 header.b=TiaGPAyC;
 spf=softfail (domain: priyarajaelectronics.com, ip: 209.85.167.45, mailfrom: dhanyalakshmi.k@priyarajaelectronics.com)
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-53a0c160b94so3527404e87.2
        for <yocto@lists.yoctoproject.org>; Mon, 21 Oct 2024 21:48:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=priyarajaelectronics-com.20230601.gappssmtp.com; s=20230601; t=1729572481; x=1730177281; darn=lists.yoctoproject.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=WbqoiR6FjNbVOXQtOQbqyjKqxmhKYK+ONGzgvVVdO0s=;
        b=TiaGPAyCy46LJS5v/Z4tRdodWBuogImddc2ONlNFUWzcQnwD+1V/fLLNuA6IYUiAZo
         FIcP7hIE4NbnQwRXCzX8nRE+zOi/u/XD2alqlsap45xzdVq2KIAyKWC1RYayl+d23nBL
         Yz1MOzr4Hxx98UW8+G5QuDNcEYZHjNLpU16WQwV3bdVsqX6y+r2OfJmDWar7InFQqODj
         3yep1KYBadaLYql8v+L3iqf4Ht7U76u3pwNtQWufODRv0672uB9QKOoPFhi0rAed8gUn
         4EmHxl77thwJTMVbwO3qGHG4vHRosKUrH73mOnqEyTpqvqtWrL1rph6jeCVki/UrKFWn
         EkJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729572481; x=1730177281;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=WbqoiR6FjNbVOXQtOQbqyjKqxmhKYK+ONGzgvVVdO0s=;
        b=lwBDWwuGJqPQAVNIlWzeMUkQ+Ul/zltV9tZnwktizfpcw5W5cDBeXFIr3gn2TwPLSW
         kkXaZfZISZSZJE08ltme8CU0PceJvw1gtwlcnvBBm5bkse31CQIvLZ0v4PSFItehOUxH
         E546V5M8OE9K6lvxNMx9qhbaR5V4h2bqUgUmITzljTcp/bPuyVVswrAwDBvK/eMQ/h34
         6UtJdLzDa9ecxXKhizNV6qlTmT0okkhE3BBmms29GQ5OR6yEiu3IOcyrt7jaeAQBPiDW
         ZWvCJuk7ktuyIJPJZ+flnL1kE7uoDeX2KpNJsc/NwqkEVfsjiCpk9NysQdq/Ya1JJn7z
         LKQQ==
X-Gm-Message-State: AOJu0Yxkcbwt/Fidn75o3u+DJ0QzRA5d4Tx2VwGY6jvplbxJUBk1Wcdg
	wl7VG0h2t9wBQAemAoxW7F1G/4xDxVl0brPQRQlw1w5s6Q5h0K2a/zuV1M8PLYnnbG4iN8GcMGb
	1iV3TXhfJI5WdgFoiu9UYoxIb3yO4T/xtfAolFw==
X-Google-Smtp-Source: AGHT+IG3ijlvVJ9tal+iIHm03fZ4PsSQmmbXwS2EHrsXXZWufdWPm/Jfi/1UAiC0ZaJDxbZd5aOLyi1ZaaW80TN59bs=
X-Received: by 2002:a05:6512:39cc:b0:539:e436:f1cc with SMTP id
 2adb3069b0e04-53a1546cc59mr7233146e87.52.1729572480783; Mon, 21 Oct 2024
 21:48:00 -0700 (PDT)
MIME-Version: 1.0
References: <jW0a.1729510575607728217.yf5O@lists.yoctoproject.org> <51960f52-d4d7-47c5-8555-4f63e23da372@cherry.de>
In-Reply-To: <51960f52-d4d7-47c5-8555-4f63e23da372@cherry.de>
From: Dhanyalakshmi K <dhanyalakshmi.k@priyarajaelectronics.com>
Date: Tue, 22 Oct 2024 04:47:50 +0530
Message-ID: <CAK5Z_D_PU3fKVvma4adwRYoddgPywfnOB4DDJy_upbtbaZ=4Kg@mail.gmail.com>
Subject: Re: [yocto] Information related to RCW file used in FRWY-LS1012A
 evaluation board.
To: Quentin Schulz <quentin.schulz@cherry.de>
Cc: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000054b72406250979c7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 22 Oct 2024 04:48:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64077

--00000000000054b72406250979c7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Quentin,
Thank You for your reply.

Sorry for the confusion,I have copied the bootpartition image and OS image
onto the micro-SDHC card not the U-Boot firmware. Custom board successfully
boots from QSPI NOR flash where I have already flashed U-Boot firmware.
As my next task is to load the OS onto the board from the micro-SDHC card,
I checked that our custom board isn't detecting the micro-SDHC card. So I
thought of going through the RCW file of the FRWY-LS1012A eval board.

So my query is how to find the RCW file of FRWY-LS1012A eval board which
gives info related to micro-SDHC card pins functionality and about the SD
card.

I hope this clears my issue. Looking forward to hearing from you soon

Thank You.

On Mon, Oct 21, 2024 at 7:14=E2=80=AFPM Quentin Schulz <quentin.schulz@cher=
ry.de>
wrote:

> Hi,
>
> On 10/21/24 1:36 PM, dhanyalakshmi.k via lists.yoctoproject.org wrote:
> > Hello team,
> > I'm Dhanyalakshmi,
> > We have designed a custom board based on the FRWY-LS1012A evaluation
> board, with minimal changes. The main differences are the removal of the
> audio jack, Micro-Click connectors, and Ethernet ports, while all other
> components remain the same.
> > I successfully flashed the U-Boot firmware (
> firmware_ls1012afrwy_uboot_qspiboot.img ) onto the custom board=E2=80=99s=
 QSPI NOR
> flash, and the board is booting correctly with console output as expected=
.
> >
> > The next step was to load the OS from a micro-SDHC card. I formatted th=
e
> card and copied both the OS image (
> ls-image-main-ls1012afrwy-20240806042644.rootfs.tar.gz ) and the bootload=
er
> firmware ( firmware_ls1012afrwy_uboot_qspiboot.img ) onto it.
> >
>
> Very wild guess, but it's possible the qspiboot image isn't supposed to
> be able to be booted from SD card but only QSPI? I can tell you for sure
> that the U-Boot SPI image for Rockchip cannot be booted from SD card (at
> least on RK33xx SoCs) for example as it's a different format expected by
> the BootROM.
>
> I would highly recommend to get Yocto out of the way and make sure that
> manually compiled U-Boot images actually do work. Once that's known
> working, then you can check what's going in with Yocto, if there really
> is an issue there.
>
> Cheers,
> Quentin
>

--00000000000054b72406250979c7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi=C2=A0Quentin,<div>Thank You for your reply.</div><div><=
br></div><div>Sorry for the confusion,I have copied the bootpartition=C2=A0=
image and OS image onto the micro-SDHC card not the U-Boot firmware. Custom=
 board successfully boots from QSPI NOR flash where I have already flashed =
U-Boot firmware.=C2=A0</div><div>As my next task is to load the OS onto the=
 board from the micro-SDHC card, I checked that our custom board isn&#39;t =
detecting the micro-SDHC card. So I thought of going through the RCW file o=
f the FRWY-LS1012A eval board.=C2=A0</div><div><br></div><div>So my query i=
s how to find the RCW file of FRWY-LS1012A eval board which gives info rela=
ted to micro-SDHC card pins functionality and about the SD card.</div><div>=
<br></div><div>I hope this clears my issue. Looking forward to hearing from=
=C2=A0you soon</div><div><br></div><div>Thank You.</div></div><br><div clas=
s=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Mon, Oct 21, 202=
4 at 7:14=E2=80=AFPM Quentin Schulz &lt;<a href=3D"mailto:quentin.schulz@ch=
erry.de">quentin.schulz@cherry.de</a>&gt; wrote:<br></div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">Hi,<br>
<br>
On 10/21/24 1:36 PM, dhanyalakshmi.k via <a href=3D"http://lists.yoctoproje=
ct.org" rel=3D"noreferrer" target=3D"_blank">lists.yoctoproject.org</a> wro=
te:<br>
&gt; Hello team,<br>
&gt; I&#39;m Dhanyalakshmi,<br>
&gt; We have designed a custom board based on the FRWY-LS1012A evaluation b=
oard, with minimal changes. The main differences are the removal of the aud=
io jack, Micro-Click connectors, and Ethernet ports, while all other compon=
ents remain the same.<br>
&gt; I successfully flashed the U-Boot firmware ( firmware_ls1012afrwy_uboo=
t_qspiboot.img ) onto the custom board=E2=80=99s QSPI NOR flash, and the bo=
ard is booting correctly with console output as expected.<br>
&gt; <br>
&gt; The next step was to load the OS from a micro-SDHC card. I formatted t=
he card and copied both the OS image ( ls-image-main-ls1012afrwy-2024080604=
2644.rootfs.tar.gz ) and the bootloader firmware ( firmware_ls1012afrwy_ubo=
ot_qspiboot.img ) onto it.<br>
&gt; <br>
<br>
Very wild guess, but it&#39;s possible the qspiboot image isn&#39;t suppose=
d to <br>
be able to be booted from SD card but only QSPI? I can tell you for sure <b=
r>
that the U-Boot SPI image for Rockchip cannot be booted from SD card (at <b=
r>
least on RK33xx SoCs) for example as it&#39;s a different format expected b=
y <br>
the BootROM.<br>
<br>
I would highly recommend to get Yocto out of the way and make sure that <br=
>
manually compiled U-Boot images actually do work. Once that&#39;s known <br=
>
working, then you can check what&#39;s going in with Yocto, if there really=
 <br>
is an issue there.<br>
<br>
Cheers,<br>
Quentin<br>
</blockquote></div>

--00000000000054b72406250979c7--

