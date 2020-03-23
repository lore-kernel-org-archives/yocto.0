Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.537.1584999081510176428
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 14:31:22 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@amarulasolutions.com header.s=google header.b=UJ3YVxBg;
 spf=softfail (domain: amarulasolutions.com, ip: 140.211.169.56, mailfrom: michael@amarulasolutions.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2EAA8E018C1; Mon, 23 Mar 2020 14:31:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/, no
	*      trust
	*      [209.85.221.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from author's
	*       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f68.google.com (mail-wr1-f68.google.com [209.85.221.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6233E018BF
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 14:31:18 -0700 (PDT)
Received: by mail-wr1-f68.google.com with SMTP id s1so19006514wrv.5
        for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 14:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9ZwjPzvIxx7jMjtws+ehUnKpLGQKdz5WdWl+R3E+Wc0=;
        b=UJ3YVxBgEOqoqzLMP5dlsxJcoiUQjKVyTTujCg9pDwNlDgLLIaBkDsfygToU4Yn4Vq
         gzKHM6G2NxbzMsDTzidUJveBSX8YFdRWW31XAdVJK/2KIiVU0vVf3cv1i6j+npl8irWl
         S7tj6wi6a58aw43NYNFiMt+Z2aMLqtDU9HeqQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9ZwjPzvIxx7jMjtws+ehUnKpLGQKdz5WdWl+R3E+Wc0=;
        b=Lt0TNCkLLshgTz7xpEZ3SWt4NuLMzbJDyy7RS3rxryYgH+Y19N8On8P5DOYo8tWuUh
         wunIvhYCOHwpZ2lA08kRAMZCfjDeew2SWQveuSKwLGVSHXQp/RL7VST68NeAHbbTfiC6
         QUyd4YTKPxxQsjud2KlTf2z571O2OmVb0+ELnvJCbdWznCiUgHqcp7QaBoP4MpxbBQTx
         jpAfYOLUox79ar8AACizdt1ewk8DG6eAmlWDcFwlDTvQ6p8CTwsXLiwlx6gPLrxOr6qW
         qSTtQpsfDEIg51mNDLhpIC4ySQq6KrOPRsN7qIurW+iL+J5DgTrJVrTse21HpxKHaW+t
         GfHw==
X-Gm-Message-State: ANhLgQ1l37laicnG+MAoaEOHnVjZ4f+vNy5PytF7grDmSEVvyMGKLMEj
	LwVYuwgZWO/8hXfiFoZjI3crhZf62GgGFtCjYikhVA==
X-Google-Smtp-Source: ADFU+vvm4/9mX6iNnUJuHsFn4lWpzy8zSn0VlbDuYz88tYFz1WXI5gSZu/4yGBWCZP5o6Y0UJi9klx8b5twPTgXpjbw=
X-Received: by 2002:a5d:640a:: with SMTP id z10mr34309663wru.301.1584999077390;
 Mon, 23 Mar 2020 14:31:17 -0700 (PDT)
MIME-Version: 1.0
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com> <20200323111421.GA20231@xn--80adja5bqm.su>
In-Reply-To: <20200323111421.GA20231@xn--80adja5bqm.su>
From: "Michael Nazzareno Trimarchi" <michael@amarulasolutions.com>
Date: Mon, 23 Mar 2020 22:31:05 +0100
Message-ID: <CAOf5uwmWFFZr5QvWp6kQazzU1YkmcmdxNEBZp_9WXwm0dOvJyg@mail.gmail.com>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
To: Sergey Bostandzhyan <jin@mediatomb.cc>
Cc: karthik poduval <karthik.poduval@gmail.com>, Trevor Woerner <twoerner@gmail.com>, 
	Yocto discussion list <yocto@yoctoproject.org>
Content-Type: text/plain; charset="UTF-8"

Hi all

On Mon, Mar 23, 2020 at 7:15 PM Sergey Bostandzhyan <jin@mediatomb.cc> wrote:
>
> Hi everyone,
>
> On Mon, Mar 23, 2020 at 01:59:11PM -0400, Trevor Woerner wrote:
> > Testing a different image was a good idea, and the fact it didn't work
> > either suggests it might possibly be hardware related. To me this
> > suggests, perhaps, a power supply issue (i.e. the fact it boots up
> > partway then stops). Can you try with other sources of power?
>
> this is indeed a good suggestion, I ran into such an issue myself, actually
> had it with Armbian and was pointed here by the Armbian devs:
>
> https://forum.armbian.com/topic/4767-powering-through-micro-usb
>
> Apparently even picking a different USB cable can make a difference.
>
> What I observed was that LEDs went off at some point during kernel
> startup and the board went dead. After being pointed to the above link I
> tried a much stronger USB power suppy (from an Acer netbook) and then
> it suddenly worked without any modifications to the software.
>
> > Also, although the Tinkerboard has the same pin layout as the
> > Raspberry Pi, unlike the Raspberry Pi the Rockchip people like to use
> > UART2 for the console rather than UART1. Is your console cable
> > connected to UART2 (pins 32 and 33)?
> >
> > https://tinkerboarding.co.uk/wiki/index.php/GPIO
>
> I have a tinker-board-s, I am using it with meta-rockhip and I can confirm that
> it works for me (also using UART2 on the pins described by Trevor), so the
> layer as such should work...
>

What about the status of qt layer using panfrost? and mainline

Michael

> Kind regards,
> Jin
> 



-- 
| Michael Nazzareno Trimarchi                     Amarula Solutions BV |
| COO  -  Founder                                      Cruquiuskade 47 |
| +31(0)851119172                                 Amsterdam 1018 AM NL |
|                  [`as] http://www.amarulasolutions.com               |
