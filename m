Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web10.1506.1584987333975101633
 for <yocto@lists.yoctoproject.org>;
 Mon, 23 Mar 2020 11:15:34 -0700
Authentication-Results: mx.groups.io;
 dkim=missing; spf=fail (domain: mail1.xn--80adja5bqm.su, ip: 140.211.169.56, mailfrom: jin@mail1.xn--80adja5bqm.su)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCBD6E018BF; Mon, 23 Mar 2020 11:15:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.0 required=5.0 tests=BAYES_00,DATE_IN_PAST_06_12,
	FORGED_SPF_HELO,KHOP_HELO_FCRDNS,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.5 DATE_IN_PAST_06_12 Date: is 6 to 12 hours before Received: date
	*  1.0 FORGED_SPF_HELO FORGED_SPF_HELO
	*  0.4 KHOP_HELO_FCRDNS Relay HELO differs from its IP's reverse DNS
X-Greylist: delayed 316 seconds by postgrey-1.32 at yocto-www; Mon, 23 Mar 2020 11:15:32 PDT
Received: from mail1.xn--80adja5bqm.su (xn--80adja5bqm.su [45.62.210.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DB292E018BF
	for <yocto@yoctoproject.org>; Mon, 23 Mar 2020 11:15:32 -0700 (PDT)
Received: by mail1.xn--80adja5bqm.su (Postfix, from userid 1000)
	id 94C35200A348; Mon, 23 Mar 2020 12:14:21 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.11.0 mail1.xn--80adja5bqm.su 94C35200A348
Date: Mon, 23 Mar 2020 12:14:21 +0100
From: "Sergey Bostandzhyan" <jin@mediatomb.cc>
To: karthik poduval <karthik.poduval@gmail.com>
Cc: Trevor Woerner <twoerner@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [yocto] yocto on tinkerbaord using meta-rockchip
Message-Id: <20200323111421.GA20231@xn--80adja5bqm.su>
References: <CAFP0Ok8cBje8vofUwqo2ac5moA7Yj3OiJNO9DDbJJXxCJUsEtA@mail.gmail.com>
 <CAHUNapQTnMDphOyxhZ08KzN=venDyXcwaAtsRHz+6sDTO6UhQg@mail.gmail.com>
 <CAFP0Ok9cSbcFzYELJ+D65aw4hMGXegfK=qr4Ay79wsJO2TPLHA@mail.gmail.com>
 <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapRTV8SgnDfhPGY5G8kaFyK9g=qK2GG7vOPkmmuj-Ugv7Q@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone,

On Mon, Mar 23, 2020 at 01:59:11PM -0400, Trevor Woerner wrote:
> Testing a different image was a good idea, and the fact it didn't work
> either suggests it might possibly be hardware related. To me this
> suggests, perhaps, a power supply issue (i.e. the fact it boots up
> partway then stops). Can you try with other sources of power?

this is indeed a good suggestion, I ran into such an issue myself, actually
had it with Armbian and was pointed here by the Armbian devs:

https://forum.armbian.com/topic/4767-powering-through-micro-usb

Apparently even picking a different USB cable can make a difference.

What I observed was that LEDs went off at some point during kernel
startup and the board went dead. After being pointed to the above link I
tried a much stronger USB power suppy (from an Acer netbook) and then
it suddenly worked without any modifications to the software.

> Also, although the Tinkerboard has the same pin layout as the
> Raspberry Pi, unlike the Raspberry Pi the Rockchip people like to use
> UART2 for the console rather than UART1. Is your console cable
> connected to UART2 (pins 32 and 33)?
> 
> https://tinkerboarding.co.uk/wiki/index.php/GPIO

I have a tinker-board-s, I am using it with meta-rockhip and I can confirm that
it works for me (also using UART2 on the pins described by Trevor), so the
layer as such should work...

Kind regards,
Jin
