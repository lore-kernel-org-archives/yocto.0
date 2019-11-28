Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5328.1574939527047175042
 for <yocto@lists.yoctoproject.org>;
 Thu, 28 Nov 2019 03:12:07 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@sidebranch-com.20150623.gappssmtp.com header.s=20150623 header.b=ieCXITGe;
 spf=softfail (domain: sidebranch.com, ip: 140.211.169.56, mailfrom: leon@sidebranch.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 93E62E0108D; Thu, 28 Nov 2019 03:12:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.217.49 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f49.google.com (mail-vs1-f49.google.com [209.85.217.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04D78E0108B
	for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 03:12:05 -0800 (PST)
Received: by mail-vs1-f49.google.com with SMTP id x123so5630904vsc.2
        for <yocto@yoctoproject.org>; Thu, 28 Nov 2019 03:12:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=pq0OdJ+7M4EZhgQDcc9fl8UaNuplqOtODjZS7/+gZ9M=;
        b=ieCXITGefhV/ovhm/ksmeiS/ugt9QlL4LNU2+6tOousvk0fOyH6NSIsMrz0lWvLoyG
         4nsbZ4L8kfmD+Q1GfpJy8PMv1DVydOk+RyWJBxKU5ybOFmbsExhol5D17F3crTPmoehn
         HFktHLAm18UevAQ3mnj6gWEcCFVjYTsr6psaEHqM5tzTrqXuvG4ND27vdGg2uYQZ5AHw
         TcO+/2kg6GvwE1rc0hED7yp45+eeVvHuhO3foK9zMClJ44eXTldldlA8Czv9F6Tfmbg+
         02NA162BpHm957MHkHWtVKaX7ZBl5F0FEp4BAdpgylnuz9Zvwe8JzAtV5xkuqY1RoAzj
         O+Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=pq0OdJ+7M4EZhgQDcc9fl8UaNuplqOtODjZS7/+gZ9M=;
        b=nJguOJkgJ2Z5n05ko1SmDuhgzPahgVTJFHl+bELYYU3VZdz/uRft4+VPypsQek8UHm
         oluiSy5ZVJ3caquCx6djcSCUliFTy8MVJyJ7P1nhLW+mvM8dQFQr+txlcQtvyNpEjRo2
         oY4FAB6a2Wol9HF+WMxFiUwlLqHgyMl0QgU/BCOfn3+c4Wnyp6nuLFRgl0ZQ2S4PH7er
         4F5EgIs91tXTI8XkIpcXrQrn6KyQuWy3W9qJrVKojFZ7kdAW6/vfjvC042x+4vVYDTvr
         LSq2iEpyzODVEJ+TuIkt0FO5DOdp0by3ypY1upk6O9yEiTlHTpAPnj3C5cSWDDGmHK7a
         FnvQ==
X-Gm-Message-State: APjAAAVDbM1XjyIHjdpdtCdFzPMJNz1cWEhu7quJrvYXoA6TkGMwZMcj
	OKeEDI7n0whdg84sct/HI+JTvrKyDbkbVjV42tbUMJmU9XjPew==
X-Google-Smtp-Source: APXvYqxS2ApGq5i3nohephA+MrmSG3vH551sfVcx+WnsM4YLEAuOqWiztNRuCVNAmhQsh89+0HyazrUeepqkAbSh+gg=
X-Received: by 2002:a67:bb18:: with SMTP id m24mr3604284vsn.92.1574939524908;
 Thu, 28 Nov 2019 03:12:04 -0800 (PST)
MIME-Version: 1.0
References: <CAMjhiJi45vpJ-vCuqdbFKv8gmR=XLgDLz9z=ViFvoV7SDOUMqA@mail.gmail.com>
 <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
In-Reply-To: <20191128090141.5pxiunxtz5uscnpb@jholzmayr.localdomain>
From: "Leon Woestenberg" <leon@sidebranch.com>
Date: Thu, 28 Nov 2019 12:11:52 +0100
Message-ID: <CAMjhiJg4YMUjn6WhTHYjAX07mF6s33EtjPiD-w95ucYCEmQPsg@mail.gmail.com>
Subject: Re: [yocto] Architecture of .wic approach; image of images
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
Cc: Yocto List <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Let me then first describe the issue I am having, which I think
results from my misunderstanding then.

I would like to package a UEFI bootloader (GRUB), bzImage and
initramfs.cpio.gz into an FAT partition using WIC.

1) Should I adapt my existing my-initramfs recipe as follows:

IMAGE_FSTYPES += "wic"
WKS_FILE = "my-disk-image.wks"

my-disk-image.wks:
part /boot --source bootimg-efi-initramfs
--sourceparams="loader=grub-efi,initrd=my-initramfs.cpio.gz" --ondisk
sda --label msdos --active --align 1024 --use-uuid
bootloader --ptable gpt --timeout=1

2) Or should I create a new recipe that builds the WIC and depends on
the initramfs?

Remember, I have no rootfs other than the (non-bundled) initramfs.
Depending on the answers, I will come up with the issues I see.
