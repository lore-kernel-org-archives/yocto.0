Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.224.1580081711425695006
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2020 15:35:11 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=lREmXRwO;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D4E2E01621; Sun, 26 Jan 2020 15:35:11 -0800 (PST)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.166.173 listed in list.dnswl.org]
Received: from mail-il1-f173.google.com (mail-il1-f173.google.com [209.85.166.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3715E01275
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2020 15:35:10 -0800 (PST)
Received: by mail-il1-f173.google.com with SMTP id i7so2878712ilr.7
        for <yocto@yoctoproject.org>; Sun, 26 Jan 2020 15:35:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=3hJ6TrHpLIOKseZwmwnKsjogzYi8iSbuwfxeia21qc4=;
        b=lREmXRwOgKguZqLpLS6HXIjEoJbRdcmN6sdk7YEdjagrtARWGpwuHyGyFNMlB6Ot6f
         ujXaTTs/p4GbVnq6gOVi09ctCJD/mmJ0PUlM3NR/TqfAzdTovHHWPUtjHPhKDTwyUAyf
         xFUhN19IJwMuKWSJxZ4JTfquOaaave6xBPrHZHCFHeyrFZOcBcQpo/KZtQe4kmf9YEt6
         FxHbn9WrtJouyhnAnypEDmMbViTxjcKLm1LHXC3v550uulrOu6kBIcRCn/Vikidq5gB4
         WE7IqTJpItoQkGMU+L8EMxzoyrosVOt4bcOpIXAw6X719cxNIoMaM6sF9J9RZqdlKZnZ
         M5Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=3hJ6TrHpLIOKseZwmwnKsjogzYi8iSbuwfxeia21qc4=;
        b=FByj9dNhCKCcHK25fFd5+dBVgbzZTdvKwk9XBuAv218uFzEMkNCP76H7iR2wTTjAlw
         Augcqnb6+iTqB8oR+rO4h94GasbpUDhvY0smWW87MgdbYQ/nTzjGuVwtOKiWC4o2AgFn
         0MIEk/PhMzMQDG34ewFgvqkY0egOshASDjw57YZBKsx0gj7PgkCKENFejy5pcpI7s/L5
         8rovYcTRRzcKqKn95DDsYi+RESyt/mnffSXIsGDWTaTk2wISfvECVPmzvN7e1vVCqfjm
         glUMP8bDUjsx67hCg5gx4X8h1we+GDpBwowM5andE6w1go3VZ4Yn+lVCT8NV9PNh58zU
         hHRw==
X-Gm-Message-State: APjAAAUvQ/hflZUkw0XZBEZvrtRyL+hk3rRtV00eHGEu1iZP88WtdE2W
	1yk8A7vi8wrALBMwzZ8AYn/g5QOV/8jygpnA0aBPOOJQ
X-Google-Smtp-Source: APXvYqwiePF7E3gYADQ0sLopk+/3n9pcE/cNOx8LkYUCete81OruNre9eFQwVCAZ2hUThrT+MhbulqzvegeqGf69jK8=
X-Received: by 2002:a92:ce85:: with SMTP id r5mr13131180ilo.301.1580081710107;
 Sun, 26 Jan 2020 15:35:10 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 26 Jan 2020 15:35:09
 -0800 (PST)
In-Reply-To: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
References: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
From: "JH" <jupiter.hce@gmail.com>
Date: Mon, 27 Jan 2020 10:35:09 +1100
Message-ID: <CAA=hcWRwi_EsMD2OBzVWtyX_SPJf05vqc09zhQzFdguKi0k=FA@mail.gmail.com>
Subject: Re: lost busybox mysteriously
To: Yocto discussion list <yocto@yoctoproject.org>
Cc: linux-mtd <linux-mtd@lists.infradead.org>, connman <connman@lists.01.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I have further investigated the problem, here is more information:

That the same problem of missing busybox was not just occurred during
the device running in the middle of operation, it was also occurred
during booting image from NAND, I saw several times that the first and
second cycles of booting image from NAND were working well, then some
following booting process would be crashed by missing busybox, then
could not run whole shell commands. I have been pondering if it could
be caused by NAND issue or network virus / fishy? Appreciate any
clues.

Thank you.

Kind regards,

- jh

On 1/26/20, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> I have been building and running Yocto image on iMX6 with NAND flash
> for a year, recently, I found that busybox was certainly missing
> mysteriously, I could not check ls and other shell commands. I could
> not figure out what caused that problem, it's like the flash is
> leaking. Appreciate tips how to debug it?
>
> Thank you.
>
> - jh
>
