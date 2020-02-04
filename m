Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web09.4800.1580814798026675613
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 03:13:18 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=Zg1TOlzm;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DC5CCE016A8; Tue,  4 Feb 2020 03:13:17 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail provider
	*      (marek.belisko[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F09E9E0152B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 03:13:16 -0800 (PST)
Received: by mail-ed1-f49.google.com with SMTP id j17so19423706edp.3
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 03:13:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Ataw+ErBILSPd1VMqW1unUde9B9FmPfyIN3X7cnD46M=;
        b=Zg1TOlzmooovud2PyMR9wzmbKsfyMfnv+sNbD5cvVwABNKgULscYEhnrqF8HuVYkvN
         m7giXsirWJWHPgAsCdsI43C24TLu2weRoFR6RTcPExTZmnYnU2gRqv91+hluw1T6Du9q
         goV1nqO4ZnssUQdEF8dkuvS04MkBs142c5ffIK3B8xXGdrIe9//+qckLmKty8Qw0YqCC
         n2Nt1w/UfGEDH1SMXm3ywwwEeYCNKQfzUiFCkZCbrH+HOGsj9xd4u1wECr8Tu71G4eOr
         FbR+dwf8Rwf6z8EalM68Nn9ZOsyZpDJIUPGpR2cHKQs89bxGBNDO7vBlgxxhX7iq5KdV
         vZlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Ataw+ErBILSPd1VMqW1unUde9B9FmPfyIN3X7cnD46M=;
        b=aP2aIKqaPSgXQeVTtwWTw4+8C7S49dSl0AuO/3JOja1f0Vtw1wx9yLKt2mSN5BSW0j
         SzmE6Tddi2bbAlgi/dUjeHoT+JBqpX405pWjmZKM45EOjg6E9H9mN+gHhPI8CdkmFna3
         hl95GIx4Dao0yzNsJupojecLgE/xugwSaZXgbhuFii3CQV6vy5KXSUk4L7RzwjXl2eDw
         6HKFYkzLptgUwyOdN4kQEMZYTXmIP7Z4+8d2KHr6U3Ic4Hd/qQNsY9C5aIk0OsOls31g
         tC+UdVFIwoHU3syhdchgI7FBk0VNWcKPDOwBm0ZZPvgYmNJphicQHaFQhRpt0GKO2uWJ
         22jw==
X-Gm-Message-State: APjAAAXQDqNYUosm7UFOsriCAhoDf+K+Pv201F32dRKhcbmtQ9PHR/Q6
	piVMZAMie3A4YgRjbHwLi9UcXFGTARk2r8I6PGc=
X-Google-Smtp-Source: APXvYqx/qnsDqF1dg71yCyGbdl0PQGeaGOrUZVJILNh67siPY3E1+IiSqJa4z0RRsPpusdB2OFXoTYoUZfc2Dov2ee8=
X-Received: by 2002:a17:906:34d7:: with SMTP id h23mr25433431ejb.90.1580814795994;
 Tue, 04 Feb 2020 03:13:15 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
In-Reply-To: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 4 Feb 2020 12:13:05 +0100
Message-ID: <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com>
Subject: Re: [yocto] Which package for nandbiterrs?
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 4, 2020 at 12:09 PM JH <jupiter.hce@gmail.com> wrote:
>
> Hi,
>
> I built the image in thud to include following MTD receipts:
>
> mtd-utils
> mtd-utils-ubifs
> mtd-utils-tests
>
> But the nandbiterrs is still missing, which package for nandbiterrs?
Are you referring to this one:
https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c
Then it's in kernel (not sure if tests are build though).
>
> Thank you.
>
> Kind regards,
>
> - jh
> 

BR,

marek
