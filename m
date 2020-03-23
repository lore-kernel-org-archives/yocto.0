Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1071.1584986366124046033
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 10:59:26 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=OTHx6Nxp;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: twoerner@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AB36DE018C1; Mon, 23 Mar 2020 10:59:25 -0700 (PDT)
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
	*      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com [209.85.208.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E489E018BF
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 10:59:23 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id z65so17354316ede.0
        for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 10:59:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=SantI59b8AmTt217QeqysU93XkvGdCkuZ7LaJVYDB50=;
        b=OTHx6Nxp7GcqaUG2nWCmzcy4Zih3qiTwrgW5qTIyvmW0z5Phl+3PxjKmPxYXAGSVr0
         UQ0vvXLXOzuqBgCfu9jTgKBZmimzGbeT/TrAUa+SMk2u2r5nRARbtSyVWHXVZMFmkcJN
         i0qJ7E5ewVciexcGJUXoqELSZRpZzp5euyhpxvRefvWXo0t85EebXcPuXYlvci55qzz2
         3abuNBO3ggiuG5MFdz6D6sqyKwayTNoSopax/i8Ko/ILZghiCD2epDZVRWYM4R4dHEx8
         v3iDEdBDt4WLoS+BL9q0xB60I9RVR/Cx6uNjndAJLQrb7KSSwzeXPEa9EiSO14BtmBEL
         XWrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=SantI59b8AmTt217QeqysU93XkvGdCkuZ7LaJVYDB50=;
        b=lwASPUUx/IJ83mGYo2PJABRj66bvQUH9YVZK+JxdkMB4wPjEqVQ82/gMGAH5lbS3cY
         eFUroAA6I9IlyRCzJxnj0IY8OkzfGXCsaBpaEXajpahuJhx5iMp4KJFv5SDxSdEeGuGP
         s/NnPyVYYYwhJCjyDrrDJQGe7FqxDR2s9THt4XOaOKB9UdxbgUJbRQrOmLg1g28eHEWY
         C3UiDoKfTcPIBW5AQVc+YdOn2cKgWnWbY7ABFCVCrrshK+oWTS90lbb3cpMjgHt0dil/
         BMFu5bmAbKC81ZeHTbcNjfm2kHwsG1QE+V8GjqTQYbK+y0O3SKMiGCBuyHPYEb9QwWdE
         nFRA==
X-Gm-Message-State: ANhLgQ1MLtt3q/nKVL1nFoQa8a7Ce791hGiAJf770eG7zhVctsvGd64W
	bK6RVD2JKD65yHY8mFwPCwNsu7Ovloxk7qp7KUqYUeSm
X-Google-Smtp-Source: ADFU+vv2LNiRaDA/TpHUVYc4j8VGEhf/etJExNcU24UkjBERxING7jOZpsFTGp5su2ni3idxoStwcSr7eW//d6FdBb4=
X-Received: by 2002:a17:906:2288:: with SMTP id p8mr20768432eja.57.1584986362479;
 Mon, 23 Mar 2020 10:59:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com> <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
In-Reply-To: <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
From: "Trevor Woerner" <twoerner@gmail.com>
Date: Mon, 23 Mar 2020 13:59:11 -0400
Message-ID: <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
Subject: Re: yocto on tinkerbaord using meta-rockchip
To: karthik poduval <karthik.poduval@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 21, 2020 at 3:09 AM karthik poduval
<karthik.poduval@gmail.com> wrote:
> Thanks for getting back, I tried with tinker-board-s machine type but sam=
e result. I also tried flashing Asus Debian image on sdcard but that too di=
dn't work (no console logs with this image). I am suspecting it's a hardwar=
e issue at this point. Any other suggestions or insights would be appreciat=
ed.

Testing a different image was a good idea, and the fact it didn't work
either suggests it might possibly be hardware related. To me this
suggests, perhaps, a power supply issue (i.e. the fact it boots up
partway then stops). Can you try with other sources of power?

Also, although the Tinkerboard has the same pin layout as the
Raspberry Pi, unlike the Raspberry Pi the Rockchip people like to use
UART2 for the console rather than UART1. Is your console cable
connected to UART2 (pins 32 and 33)?

https://tinkerboarding.co.uk/wiki/index.php/GPIO
