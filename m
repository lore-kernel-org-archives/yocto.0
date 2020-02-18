Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [])
 by mx.groups.io with SMTP id smtpd.web09.20.1582148694602825669
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:55 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=milyCRde;
 spf=softfail (domain: gmail.com, ip: <nil>, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DB41BE01564; Mon, 17 Feb 2020 22:37:54 -0800 (PST)
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
	*      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.42 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6C0FDE00782
	for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 22:37:53 -0800 (PST)
Received: by mail-ed1-f42.google.com with SMTP id p3so23529267edx.7
        for <yocto@yoctoproject.org>; Mon, 17 Feb 2020 22:37:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WefOljf8fdhmjWPE5xhjjCetqPi5nsbB6AvHzk0HJ3g=;
        b=milyCRdePcZEV76StfhQxZv1SbR0Ww9badKvRcFCd0+FJEm9oZCLy97bqi/fVapN7q
         C5N8iatUtbzCVRDNk/0bGzngNS1eWXOugNnzwqSpwJ2bFAhnBW2oiwzmZDFWUmlltZSO
         T6UZpx5bmPWJr0hbyQTq1F8P/3qjwL2uQMDwNLeznwmfwPaVa/WZZGrokxCrz1t5NqpV
         zbfIU0Lsn4VDV0LH/JH5MV+TEWWHMcKk4HWFFun33IDvx6iUeBq0RBfxQ2ySPeeXXjtr
         lxXjD5kdu4IJOb/cY6p5IvDBZOtl+Fr/fEVaSGUWtWh68RT7Vdr2yCEVWL9dLr7MiZvb
         qlRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WefOljf8fdhmjWPE5xhjjCetqPi5nsbB6AvHzk0HJ3g=;
        b=luv5yFkmKBldls/qS/AjgTN2Q3rP9QPj6TsQNoQu8ICd/ZKvQxjSVxbD7Fp56zX92d
         0UB75uyl7iK2psvKlp3kr5iHsjJpYLpc++9YYOpzDwgMZLCrzWe28vamIC78DkQYEHm2
         DP9QMYzZ4tinNMInzA/0lRTvwXInYIwKYi4Si8ahI00F3FpJQIEJLrd0zAx9yNHaV75q
         JSFtmI+kI/fESLjKP/gz6FO7B/b7d44Digw/KCk4ZQW5wSaEoHvymCbYPQs/rsvx7k/k
         y6c7daAT/ZDsPE7aGwd15FjgK7vcQn0b32QyUc85VlsRN4X6AZ13B2NC6mqxyPeJTpaM
         zIrA==
X-Gm-Message-State: APjAAAW8+L5ZwrUACFz4Goh1tOK4bs8yFkeBZU/s2mIS2RkdXUMSn5JV
	FdLKaddRC6KQ8WqkRzowSoMVszgN5AXE5/Sh9og=
X-Google-Smtp-Source: APXvYqzoTQoAxeXWAJlgpBBzqpoJGTz4kgwTP7iOZv+FJnkh+V75pB+m7sIHaMLuXtf5bQt1b9HzU4KEmfCFtK8sDxo=
X-Received: by 2002:a50:ab5b:: with SMTP id t27mr17383922edc.229.1582007872419;
 Mon, 17 Feb 2020 22:37:52 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
In-Reply-To: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 18 Feb 2020 07:37:41 +0100
Message-ID: <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
Subject: Re: [yocto] Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
To: JH <jupiter.hce@gmail.com>
Cc: linux-wireless <linux-wireless@vger.kernel.org>, 
	Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>, 
	linux-mtd <linux-mtd@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"

Hi,

On Tue, Feb 18, 2020 at 2:00 AM JH <jupiter.hce@gmail.com> wrote:
>
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
> [    6.151932] VFS: Mounted root (ubifs filesystem) readonly on device 0:13.
> .................
> [  OK  ] Listening on Load/Save RF Kill Switch Status /dev/rfkill Watch.
>          Starting Load/Save RF Kill Switch Status...
> [FAILED] Failed to start Load/Save RF Kill Switch Status.
> See 'systemctl status systemd-rfkill.service' for details.
Can you pls provide output of systemctl status systemd-rfkill
There should be some more info what issue is.
>
> [FAILED] Failed to start Run pending postinsts.
> See 'systemctl status run-postinsts.service' for details.
Pls this one also: systemctl status run-postinsts
> ...............
> root#
>
> Thank you.
>
> Kind regards,
>
> - jh
> 

BR,

marek
