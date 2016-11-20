Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D259DE00BF3; Sun, 20 Nov 2016 11:29:24 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.193 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.193 listed in dnsbl.sorbs.net]
Received: from mail-ua0-f193.google.com (mail-ua0-f193.google.com
	[209.85.217.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B0792E00B45
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 11:29:19 -0800 (PST)
Received: by mail-ua0-f193.google.com with SMTP id b35so23291875uaa.1
	for <yocto@yoctoproject.org>; Sun, 20 Nov 2016 11:29:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=acYuDw6zozols10zxm5ejrxVHf3B1n5rpbB35H1N1MI=;
	b=yLqviGr/YGF/KPhCG5vg73vTpZUgj7VIAiOS69wQgx5r4ojQLAPZ+8ReHAiPxOE6ti
	pFF4BwlkZltbvcPt+bIbEHZYM+1Jy51VNknntaUsw4+vJIuRyks8ZIM3K/8/FI4Ykbox
	0Gdnoa0oBqBkSsJB4KbCBdG3WohvegVznx3Z+j19BbZWYhdBhL07ywTqV0qBmQELlclN
	oxrIR0cD3YTDr4TSA+Cd8fglQ2dW8m8PKUzOHlkG5hqXiF6FW/FvD/DIX+T+IMU96Afi
	G81hT9DWWDxbBg/dSlcJDfxSYr9DbdSu+VQPfPNCBc0qSyqVJ4G9iKhSoIpTXL+A2bCk
	NGbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=acYuDw6zozols10zxm5ejrxVHf3B1n5rpbB35H1N1MI=;
	b=hFeZi2DtnYrexEMeDSgihXPkfwhogTCGrbLih74greSSRCdl+PnHKcUpcI6ncyI00J
	M45muRQmwEhCVh0gZPkzFB2RUmoITlz5UdBjM4o7p114COXNzULLTOM2dZORrXQyH68i
	W42u9KA1DktLfPuzLDWAfu2K3/c62mm7fZSCcgWuvSiz1yO4OBkrJd0fVlO6+rC6AZs9
	Z95UlVw4bkEkVL1BuTwyZ9y73wrWnf8xgLrW0jf02mV2bEUGvnFx0Z58lTgJ2Ze87XF4
	1RjMOlYWRWoN6+zQj9lomziT6QBs3HV7RWR7+s2Avf+mdMj1bCgHmcZlc6ERvMaQ7BX1
	C3iQ==
X-Gm-Message-State: AKaTC00z4dfiUqCPbbB/p3hQJIDGLF4i9jtUH5FKbcSQ7P+cDshsCQO1HScbRTMWwfR7vup/vf8jbvt+Y3qXgg==
X-Received: by 10.176.0.180 with SMTP id 49mr5449681uaj.32.1479670159199; Sun,
	20 Nov 2016 11:29:19 -0800 (PST)
MIME-Version: 1.0
Received: by 10.176.5.136 with HTTP; Sun, 20 Nov 2016 11:28:48 -0800 (PST)
In-Reply-To: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
References: <002d01d24304$32aa08a0$97fe19e0$@neuf.fr>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 20 Nov 2016 11:28:48 -0800
Message-ID: <CAMKF1sqt2cA5DbPDAwo2=SNUqPuPatavhtQYpOnecQ=i+wc45w@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [raspberrypi] raspi3 vs raspi2
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sun, 20 Nov 2016 19:29:24 -0000
Content-Type: text/plain; charset=UTF-8

Herve

On Sun, Nov 20, 2016 at 12:00 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> Hi Khem, Trevor,
>
> I've submitted part of it yesterday, the rest should come out today
> hopefully.
> The 2 machine types - raspberrypi3 and raspberrypi3-64 - have been submitted
> to yocto/meta-raspberrypi.
> They will need tune-cortexa53.inc - I've sent a version to oe-core, but I
> got it wrong again, so I will resend it hopefully again, along with a
> modified version of arch-armv8.inc.

I gave a whirl at building and looking closely at them. As it seems
the OE core patch is
not needed since for armv8 we want to keep it like x86 ( common )
I have therefore made changes to your patches and staged them here.

https://github.com/kraj/meta-raspberrypi/commits/kraj/master

Which should work without any change in OE-Core, secondly I have
further divided them
and also fixed 4.8 to compile arm64.

>
> I have some patches to support 64bits on Raspberrypi3 that should be pushed
> -hopefully - today. They're on 4.7.10, though.

I think it will be better to rebase them to 4.8 and eventually 4.9 if
they are not too intrusive.

>
> Herve
>
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Khem Raj
> Sent: samedi 19 novembre 2016 18:30
> To: Trevor Woerner <twoerner@gmail.com>
> Cc: yocto@yoctoproject.org
> Subject: ***SPAM*** Re: [yocto] [raspberrypi] raspi3 vs raspi2
>
> On Fri, Nov 18, 2016 at 1:20 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>> Hi,
>>
>> I was wondering if there were any plans to create a
>> MACHINE=raspberrypi3 that treats the raspi3 like the CortexA53 that it
>> is instead of generating images that are backwards compatible with the
> CortexA7 that is the raspi2?
>
> Thats a good question. I know few folks who have done 64bit port of OE on
> rpi3 so I would be interested in such patches where we add rpi3-64 machine
> type.
> do you have patches to submit ? Please do
>
>>
>> Best regards,
>>         Trevor
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

