Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.17.1582148693248722198
 for <yocto@lists.yoctoproject.org>;
 Wed, 19 Feb 2020 13:44:53 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=kIbe1DJQ;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: jupiter.hce@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 94FFEE0173A; Tue, 18 Feb 2020 01:43:03 -0800 (PST)
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
	*      [209.85.166.66 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f66.google.com (mail-io1-f66.google.com [209.85.166.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48F2CE00782
	for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 01:43:02 -0800 (PST)
Received: by mail-io1-f66.google.com with SMTP id d15so21586267iog.3
        for <yocto@yoctoproject.org>; Tue, 18 Feb 2020 01:43:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=DUNtuYhE1lyh5LrdUMC7rcDlYnBTRBnL0Fw6GKYhMUU=;
        b=kIbe1DJQSJsk/xWzX6P5ZzNDnscvKVmFwivlm418TaEw9+i97LpEauOn1kMhdm/J5B
         8d/qBQvcd44d64xATTJ94hEAlNWV7pMI6t0x3c1oRXmgrLJ2wQ8StKDcNaQRTP+FA1d7
         Bt10B1RQjs3C84g5+5C6Dqj+u/avoBKcQtLK239ash2NEY0Xz1Khj59oO+zOJewjUeal
         BpeFTVqmStbCrdz9r769MJVi6SGTr6B/hNWh5UK7CID3qOf9FkELL1lDGrlrQE4oYOM3
         9gEK7GlZTibAH7+VTuYXC9Wpdey+bHuXb+rFMLMw1IgmbRIV/IuhWDPsOFZq/jLy60Tm
         A/rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=DUNtuYhE1lyh5LrdUMC7rcDlYnBTRBnL0Fw6GKYhMUU=;
        b=WSEFBVmyprBP79+ztmdfH166i0fDqkCvgOqt+SsKQMgwZ0JdIS3kwypw8OeOweqped
         qq3QGcv4GYpCRvb1ezC8O9exJT2WMsYX3o0TfWVZGhk0As4B4wi4YTgGIL+zQ3t7E2Fj
         VfbNfLze9oRtmL6Rpkz0VyLqLm1exsgCthUZ3dh5TtC2VvF6rKgV2oSZ9DlUkmeoIFib
         wchcHMikjkh/JvI7GZ/dW6850uRqdQCCspWV3jz2VVgfVy8Fjn+YmKZT3AE9abgVPX5I
         ANVWL20PPIYkPpk3RINqGx9RnvKaCXolTPfTB8O7OmTdXi1CPss3yuLFyAuv5SBQqu5y
         eSFQ==
X-Gm-Message-State: APjAAAW7h4fBL9mj0Gr9vEOGQc3GEdLs7xW2YIt8hLIX52mT23+Os+Dv
	HwE58QiXxf8Z+lFJ5p8+hwAqOBF0HTfSxYWhIKk=
X-Google-Smtp-Source: APXvYqyzNe87lfIvVYg9LjM/VQB76lAGQHpsCz3nCwlj3JTKSplcu0HFiX4SgbDbfPO0+5OBJWpXK/gPv/8i5ye1JsU=
X-Received: by 2002:a6b:d912:: with SMTP id r18mr14485661ioc.306.1582018981687;
 Tue, 18 Feb 2020 01:43:01 -0800 (PST)
MIME-Version: 1.0
Received: by 2002:ad5:5d0d:0:0:0:0:0 with HTTP; Tue, 18 Feb 2020 01:43:01
 -0800 (PST)
In-Reply-To: <20200218085848.GA104502@korppu>
References: <CAA=hcWTDqhJEE7MXFY9rvN93nf8=nWvshLoXKF3EMXYGLmZGbA@mail.gmail.com>
 <CAAfyv34yO7bSR9GBod1bXpD0sFnsSETsJQAzcmSgyY0orGtfcg@mail.gmail.com>
 <CAA=hcWQFcdUJKGTOitOAx1URD7r=9PPxsdd=hQO-Yb77=QHTDg@mail.gmail.com> <20200218085848.GA104502@korppu>
From: "JH" <jupiter.hce@gmail.com>
Date: Tue, 18 Feb 2020 20:43:01 +1100
Message-ID: <CAA=hcWREdVeYqnOs-3aSFOhobaQWvLoaEU8Rdku_RM=Q5q2Ruw@mail.gmail.com>
Subject: Re: [OE-core] [yocto] Change RO rootfs failed RF Kill Switch Status and Failed to start Run pending postinsts
To: Mikko.Rapeli@bmw.de
Cc: marek.belisko@gmail.com, yocto@yoctoproject.org, 
	openembedded-core@lists.openembedded.org
Content-Type: text/plain; charset="UTF-8"

Hi Mikko,

On 2/18/20, Mikko.Rapeli@bmw.de <Mikko.Rapeli@bmw.de> wrote:
> I think you may be missing volatile-binds package and service from your
> image.
> See poky/meta/recipes-core/volatile-binds/volatile-binds.bb

I got the source in my build system, it is zeus:

oe-core/meta/recipes-core/volatile-binds/volatile-binds.bb

./all-oe-linux/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/packages-split/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/sysroot-destdir/sysroot-providers/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/pkgdata-pdata-input/runtime/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/pkgdata-pdata-input/runtime-reverse/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/pkgdata-pdata-input/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/pkgdata/runtime/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/pkgdata/runtime-reverse/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/pkgdata/volatile-binds
./all-oe-linux/volatile-binds/1.0-r0/license-destdir/volatile-binds

Are there correct?

> It may be missing /var/log but with systemd there should not be needs to
> write
> to that location after image builds...

The volatile did not have the log, so /var/log -> volatile/log was an
invalid link, should I manually create it?

Thanks Mikko,

- jh
