Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.15163.1580035470139394699
 for <yocto@lists.yoctoproject.org>;
 Sun, 26 Jan 2020 02:44:30 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=hUt1PZBy;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 62A24E015C2; Sun, 26 Jan 2020 02:44:29 -0800 (PST)
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
	*      [209.85.166.41 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f41.google.com (mail-io1-f41.google.com [209.85.166.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3383FE01447
	for <yocto@yoctoproject.org>; Sun, 26 Jan 2020 02:44:28 -0800 (PST)
Received: by mail-io1-f41.google.com with SMTP id t26so6768158ioi.13
        for <yocto@yoctoproject.org>; Sun, 26 Jan 2020 02:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=OY+UF+K/G0R5+MEeNsQpq1Oys91QR03bP3RztM9n2OM=;
        b=hUt1PZByOPJBYOuEozLha/5NXRVPCHN2I7Uzt6vVATubBMlo/gAjPl0KzYAjfbB42K
         aN5L15azhP83G19ChE5mmOoM/BHWhsphZUbAnu+OG83NRZyKU1m8eOafEzhWrG9ZwPYc
         nGBQASUtNr8xkAHKnN0SIcsaoxrPnlnZZ6dCoBQHV4DlkC3cSorTaoCJLFGz6Y6dv8aI
         Q6XVvIGoy7sNLcPpFrneW691bEwgQV2nLdRxjP+OhquWA8rXciz7Ywyff8aRPsOhMNFk
         NPoomZ3Urqds9b8zngPh2Ot8+EGqWC64f/vbqOUFKE6/MVYkJN+S+oSA9bfd/YGHYHhc
         assw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=OY+UF+K/G0R5+MEeNsQpq1Oys91QR03bP3RztM9n2OM=;
        b=mPgsuWDvhmfHWelHJTz9to8mV/pFhQpk4easai2+exu/ddvW6tWWrMv3wdI95M6q1L
         ZT1mFjDmtrDYoOrGSMSfnb1k40jVJF41k5FDxl+2N/8sumG2GHaVbHNKRhENpRu5DHBW
         NyV6XmW+U7D41mjjF8o/4/VXzpWBpT8Y3SNup3HxnRvlVpxCFjGYv7KcaAY4iPDSk65F
         c0HHkUnBWszB2FM4wZO0dCQzkG+2y4armC59f0G/5MBZPVxelMz9wLPflFC4evkk0+bb
         r1c6hvOrRV5IvLcjreCS+lcptsZwFUn+WGm26gQPZjhsC2Mamu8Ok/OqWRbWirrzROTz
         LBEA==
X-Gm-Message-State: APjAAAWRFeCsOuCFJfGd1u/SlZSZ4dRtiUulxHOU698XvvOnXnQn+hT4
	qp1ZP+dEWw22+zKNvb/8ExJtvDcibt93bfrNtGfCYd/R
X-Google-Smtp-Source: APXvYqydyC+NTmNJe9ziOFKeXSZ7JTj7tnQmYQ84b+nQaFyFL+aqH0zZhGmK9sbTgdGYk4jNLBNiSU6sMoPfFDjam+M=
X-Received: by 2002:a6b:d912:: with SMTP id r18mr8456542ioc.306.1580035467420;
 Sun, 26 Jan 2020 02:44:27 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Sun, 26 Jan 2020 02:44:26
 -0800 (PST)
From: "JH" <jupiter.hce@gmail.com>
Date: Sun, 26 Jan 2020 21:44:26 +1100
Message-ID: <CAA=hcWRQmXa4_hh3KzKmqeaEkGsbdTEimsPjh=tZWribMkM0dA@mail.gmail.com>
Subject: lost busybox mysteriously
To: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

I have been building and running Yocto image on iMX6 with NAND flash
for a year, recently, I found that busybox was certainly missing
mysteriously, I could not check ls and other shell commands. I could
not figure out what caused that problem, it's like the flash is
leaking. Appreciate tips how to debug it?

Thank you.

- jh
