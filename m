Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web12.5026.1580816580844760359
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Feb 2020 03:43:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=u7FrB5ji;
 spf=softfail (domain: gmail.com, ip: 140.211.169.56, mailfrom: marek.belisko@gmail.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B29F0E016A9; Tue,  4 Feb 2020 03:43:00 -0800 (PST)
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
	*      [209.85.208.67 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com [209.85.208.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3528AE0152B
	for <yocto@yoctoproject.org>; Tue,  4 Feb 2020 03:42:59 -0800 (PST)
Received: by mail-ed1-f67.google.com with SMTP id dc19so19426977edb.10
        for <yocto@yoctoproject.org>; Tue, 04 Feb 2020 03:42:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=KbfL034VQkbHAWgjItwwq3ATA6aLFO+/v0sswBUpbMY=;
        b=u7FrB5ji4PewY/l9ItSZad96DtfXc6CFwLOFmLxEgIQFJ/59pvuRCA4om3HVbWvauZ
         0Z5VFiiyMHVrosXB9LX6NXtUTXUBPJtRCgxBgVaJhHA80Cz/NuvbbziXIVXIi9YcE1VX
         MKR4HAV9HEbbU8/Xsny/MRj7ykynhtLKB/D0+U2an/Wlp4mcvJ+3kXwKV4gCpQYvCXBv
         1TBjRs+Y1a7fFjXRI/nuhntg0yLJG/sMCW47FMsgvxOWlgHhII3j9rUKNICT9K5gcDgp
         QlK6wn4s87kwoL6oPrlja/t5B2qpzfSa/eXXP3c4MU81F/d+EBn5fg34KeRuLF3XzFgu
         ebnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=KbfL034VQkbHAWgjItwwq3ATA6aLFO+/v0sswBUpbMY=;
        b=iCL2LceHPn1oDdaoztXcp6uaoRpO34a42/wLqfp1ItS6ItP5DNCAE8Ezf7GxP7XPaW
         VBqv2G8Ooh7s0mlExDY33JnKq1s6XJy9k6m0A7QplVLRnrIV3Yyo5MjY5oiQqkAtsAjT
         XllV4DgDQd0KOvg2ZPqw8bajcb7gytGFXMNypeRi/94DtQXA3xzeSggd/w+QZ1KBH6a3
         g1f+pA4oZpV8weS51bB/BfxTdV/VcvLHDdjJHTvN9YOZXvs+oQJFZp3aedKusHIloryq
         0Yd+W+T68f+id6CFU0eOnAr0Kq9wNsih95xTuHiNspuKxcaBlaofZb3kDnjmAcUChuNT
         pU7A==
X-Gm-Message-State: APjAAAXNFOxGyH78gVMy192Me1TpeDGnDzFAxSYKpMJOvZjoWiloGLvB
	TErsYEAdEG7FI0mRGaLpF60sbM1Ep+YyFS9SnXZl75aU
X-Google-Smtp-Source: APXvYqye6FNP6+KzVlmIOQmY1RBRDH5SIE/umdWQvGjLL4GDc8O2Fo4fWkfrkCKFBqswuVDQqjv5Jl1aP29xJ35TAek=
X-Received: by 2002:aa7:d9c2:: with SMTP id v2mr16783012eds.88.1580816578225;
 Tue, 04 Feb 2020 03:42:58 -0800 (PST)
MIME-Version: 1.0
References: <CAA=hcWQVh1JoDSL7f2yXbpWBkGZkwDU=dqPxRF8Ojq_YnRoOfw@mail.gmail.com>
 <CAAfyv36q3v0jLJU7yi-9Jjnx_hfNkH-+z9X+B9ebN87rYcqEzA@mail.gmail.com> <CAA=hcWR6iDJ-fZrVtfiuQsM1U5q9VCW4b62qj-AJoRfp2Qo92Q@mail.gmail.com>
In-Reply-To: <CAA=hcWR6iDJ-fZrVtfiuQsM1U5q9VCW4b62qj-AJoRfp2Qo92Q@mail.gmail.com>
From: "Marek Belisko" <marek.belisko@gmail.com>
Date: Tue, 4 Feb 2020 12:42:47 +0100
Message-ID: <CAAfyv37D_x+vpAydvVRw3i7ZA5kUr6AE4SYRcgCP6Smhde9G7g@mail.gmail.com>
Subject: Re: [yocto] Which package for nandbiterrs?
To: JH <jupiter.hce@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>, 
	Patches and discussions about the oe-core layer <openembedded-core@lists.openembedded.org>
Content-Type: text/plain; charset="UTF-8"

On Tue, Feb 4, 2020 at 12:22 PM JH <jupiter.hce@gmail.com> wrote:
>
> On 2/4/20, Belisko Marek <marek.belisko@gmail.com> wrote:
> > On Tue, Feb 4, 2020 at 12:09 PM JH <jupiter.hce@gmail.com> wrote:
> >>
> >> Hi,
> >>
> >> I built the image in thud to include following MTD receipts:
> >>
> >> mtd-utils
> >> mtd-utils-ubifs
> >> mtd-utils-tests
> >>
> >> But the nandbiterrs is still missing, which package for nandbiterrs?
> > Are you referring to this one:
> > https://elixir.bootlin.com/linux/latest/source/drivers/mtd/tests/nandbiterrs.c
> > Then it's in kernel (not sure if tests are build though).
>
> I think so, I have enabled CONFIG_MTD_TESTS=y, it still does not have
> nandbiterrs. I built it with kernel 4.19.75, did you mean the that
> build could not include that test file?
Well did you check build directory if it was really build (check
.config)? Or better try to build as module and install kernel-modules
and then you can modprobe it.
>
> Thanks marek,
>
> - jh

BR,

marek
