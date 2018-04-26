Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A2E55E00823; Thu, 26 Apr 2018 10:33:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 11E5EE005A9
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 10:33:26 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id m5-v6so3195725qti.1
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 10:33:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=etry60figVYPpat0ueGeYs1hd7oDb6YyOql6JJ6vbrg=;
	b=YEEK/4EHH+UHyMOH10AyIrKkLO+ZM2Asc8jPlDjBk46Nei4UVHZqZNxAj9CeMr//l3
	Ek4hz6oPsUSD5Tai65Sfxo+bPXyGc/orsG/yjRCRmHDrQL/rOefQkkXmNxg3WM49TWwf
	ZjrTgAbmJupBByDhWtTU2NfjbD/Kci8+LQa96veM5htTDBt27QrEXylpaXvVvIhW4wlJ
	NmJGqRX/qZTgWB+xVeq4GZaGi+UJy66H/nVnGGzfjvpNkQqub9iRjeJcn22NDjBgFuKI
	FKh3HCVPgDb/hHcid0wrX3XYZ5JTyoWw67hgTgvbFNrnllBtEpSMXOf1lSmqjtlMzyk5
	PUWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=etry60figVYPpat0ueGeYs1hd7oDb6YyOql6JJ6vbrg=;
	b=qDv4WqBIcfQxCkgLMcUWPfLoHXIWgcxk+vtpaYPPq91D5u7D16RZSWm0upYQbt9nNf
	pJANjAX+/qps2YzYVWxZs6N9cZ4apScv7NbJOMkO16hGOAJvdBzxFtrv7o1NkClepxdC
	+ig+TEHXqOM85lAcIdoh51dHEXCx7ZGuUiNapmy/Qpu6HA3pnXjjhaes8M1cPCAbxwBZ
	BkjDR8DXxsNyRqLX1hjEwgkLFrW5jR0UAdT0YfExWsK/KgO7sttAXuXaL52ElcG6Ntd+
	dhP+A9F+I/rZdU9ST7q0LPSyV0JqUQJK6JzAusY2dErBKuTt/2ilOibWbAmXAQVDEtJG
	wVYQ==
X-Gm-Message-State: ALQs6tBdmUPTvrlquv4dqSL1SVf3z7pwfKMsbOATsGlzwgE8jl+JdSLh
	Md1D/mQ10HkyqlJCLqje7kdZZFcC+R4YC4wd7IhvJQ==
X-Google-Smtp-Source: AB8JxZrGOAIUJWWvYe94+se3Ltc5JUw/aFecM1b1ADCg62W2+R7shFOCjG8+J8VUOxz67pN1risS6EnRsZlrkWbevrg=
X-Received: by 2002:ac8:3294:: with SMTP id
	z20-v6mr3423286qta.366.1524764005802; 
	Thu, 26 Apr 2018 10:33:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.12.173.106 with HTTP; Thu, 26 Apr 2018 10:33:25 -0700 (PDT)
In-Reply-To: <5ae1f5fc.0790500a.2fb14.0681@mx.google.com>
References: <20180425150333.GA9349@graute-opti>
	<CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
	<5ae1f5fc.0790500a.2fb14.0681@mx.google.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 26 Apr 2018 19:33:25 +0200
Message-ID: <CAGAf8LwkCDyzkej_c31EjtxXBDP+dqx5ihMCwuBH5CDP5X5T4w@mail.gmail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Thu, 26 Apr 2018 17:33:28 -0000
Content-Type: text/plain; charset="UTF-8"

> I deleted all the build-imx6ulevk folder and build everything from
> scratch with only one thread, waited a few hours for compilation and now
> its working ;)

Still, I am struggling to understand why??? What is the requirement
behind this ask?

As we see, it is much longer (one thread only) than on 14.04!?

Could you, please, do it on Ubuntu 17.04, or 17.10 (i bet, you
can't)??? And why, after all???

Zoran
_______

On Thu, Apr 26, 2018 at 5:53 PM, Oliver Graute <oliver.graute@gmail.com> wrote:
> On 25/04/18, Andre McCurdy wrote:
>> On Wed, Apr 25, 2018 at 8:03 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
>> > Hello list,
>> >
>> > I try to compile yocto jethro environment which is working
>> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.
>> >
>> > The compilations stops on gettext-native.
>> >
>> > bitbake -k fsl-image-mfgtool-initramfs
>> >
>> > | x86_64-linux-libtool:   error: 'libgettextsrc_la-message.lo' is not a valid libtool object
>>
>> libgettextsrc_la-message.lo should be a short text file. Could you
>> find it in your build tree and post a copy?
>>
>
> the file was a zero byte file. All other *.lo files in that directory
> was zero byte too. I assume because of a system crash I had before.
>
> Just a bitbake -c cleansstate and rebuild of gettext-native didn't fixed that.
>
> I deleted all the build-imx6ulevk folder and build everything from
> scratch with only one thread, waited a few hours for compilation and now
> its working ;)
>
>> > Some ideas whats the cause for this error?
>>
>> At a guess, something a little unusual with the setup of your Kubuntu
>> system. Combining Ubuntu 16.04 with OE 2.0 isn't so out of the
>> ordinary and others would certainly have hit the problem before now if
>> it was always seen.
>>
>> Did you install all the standard host dependencies?
>>
>>   https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.html#packages
>>
>
> yes but thanks for the link as reference.
>
> Best regards,
>
> Oliver
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

