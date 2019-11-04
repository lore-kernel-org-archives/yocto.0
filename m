Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 31D00E00D98; Mon,  4 Nov 2019 08:11:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDCF7E00D7E
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2019 08:11:32 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 476Hq54Fftz72;
	Mon,  4 Nov 2019 17:11:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1572883889;
	bh=QePGHklhFIC3hV+x99KE+fbAF9QrrmFUjDMXXi8SjLA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=acF8ZnwR7Vx48Elv/Wlcdr+za3KgQXoBfpMD7CkT1rllcMjTtOp/IDRpWSRzZiVSm
	R8m+AiETfyKDfERQ7xkKz+Q+dzM/L6R6MtC27RgOiec/NLX5n08lNOOwGRUHdrzoYB
	iOmhrFOe+s1heWPhWdnJTDAdFQ2Bs6yO2BYzsXJ8khsr6VAjmIr00E6xa6rFDRM5fa
	QPhakPw/5QKLNda2U65h3BFLttpl6EF/4OuxTkTqs4YBrjQhGgZE+EvN3G87VZNZzu
	Rv+B4Ux1+C2BazK/o7xXGiVEa0wQyCROaE0rCSNBdN0Ubk8WMqaB1/1HNBeO/sh4P4
	24VXogWLnA7/2GgmXZSOpZX+EzHPJj1PDk+dicmh+g8IJk+jLALUSO5d9RBUq3Tad1
	lLBCbx+Is4zKvsMvhRVVJ0XztLm6i+eMDZC8KOv0ROWqOhrpzKU6WvV12e0VAzin5n
	m8lyWCJ3YU7lczjRRR+xB0wi8NhPbv9vTxxIoxutQwD4OifDncdY1UKUiaOLDmlDSS
	N42FSUugcsfuNbmeE8mxUyzqCCB8qh11Rc7byE0J9hq7GTjKHGKmcuGO5lhkQRcHya
	njpqYSu/irSKPtApAmIXDmTRPFCeOgWjLPtkEj4ZltfmRUyygsG4yVZR3Hd4L+zgZw
	MWTm7k5rf/DG86PkG5jfPs6c=
Date: Mon, 4 Nov 2019 18:11:27 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Steve Pavao <stevep@korgrd.com>
Message-ID: <20191104161127.GC5390@localhost>
References: <7D6FCC3C-A8B1-4EE7-875F-E544DCC3B44A@korgrd.com>
	<d6a7e59a-cc6a-aa34-21a5-47c73062f9e1@gherzan.ro>
	<CAMKF1srHdfY1=Qbb7vURbMauc5VcPiKzH6_AGht86ChoJKvDZQ@mail.gmail.com>
	<097a8fe9-979d-aa3f-68ad-2c9e0bea6853@gherzan.ro>
	<CAMKF1sq39xefZFVEVafJ6yuRuinUtZ8odrPSJ4POiq49zevwPw@mail.gmail.com>
	<352DF122-AE8C-4549-A04B-27EEF9A73AE5@gherzan.ro>
	<20191103182512.GA28946@localhost>
	<9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com>
MIME-Version: 1.0
In-Reply-To: <9F6E6EE0-4FF9-4251-9B7B-37A734DA4824@korgrd.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] poky linux build fails if ARM erratum mfix linker switch is specified
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
X-List-Received-Date: Mon, 04 Nov 2019 16:11:35 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Nov 04, 2019 at 10:48:57AM -0500, Steve Pavao wrote:
> 
> > On Nov 3, 2019, at 1:25 PM, Adrian Bunk <bunk@stusta.de> wrote:
> > 
> > On Sun, Nov 03, 2019 at 05:56:45PM +0000, Andrei Gherzan wrote:
> >> On 3 November 2019 13:18:53 GMT, Khem Raj <raj.khem@gmail.com> wrote:
> >>> On Sun, Nov 3, 2019 at 2:46 AM Andrei Gherzan <andrei@gherzan.ro>
> >>> wrote:
> >>>> I was thinking about this. The erratum seems to show that this
> >>> applies
> >>>> to all revisions of a53. So it sounds like we should add it in
> >>>> `tune-cortexa53.inc`.
> >>>> 
> >>> 
> >>> Up to r0b4 only so maybe not all a53 implementations are impacted
> >>> 
> >> 
> >> As far as I know that is the latest revision. Do you mean that newer revision might come up with this fixed? 
> > 
> > It is fixed in some r0p4 implementations, indicated in REVIDR[8].
> 
> I am closer to understanding why I experience an error when building with the ARM errata switches.
> 
> I believe it is related to 32-bit app support in my poky Linux 64-bit build (I add this to support vcgencmd and vcdbg 32-bit apps.)
> 
> When I remove the 32-bit support, the build completes OK.  As of now, adding the following seems to work fine to acheive this:
> 
> TARGET_CC_ARCH_append += " -mfix-cortex-a53-843419 -mfix-cortex-a53-835769”
> 
> Something in the following block seems to be the culprit.:
> 
> # for vcgencmd and vcdbg 32-bit executable support in the OS image (comment out for -c populate_sdk)
> require conf/multilib.conf
> MULTILIBS = "multilib:lib32"
> DEFAULTTUNE_virtclass-multilib-lib32 = "armv7a"
> IMAGE_INSTALL_append += " vcgencmd lib32-glibc lib32-libgcc lib32-libstdc++ vcdbg rpi-setup \
> “
> 
> I will post again when I have localized the build problem further.  Maybe there’s some 64-bit vs. 32-bit build confusion going on, and the armv7a default tune switch for 32-bits is colliding with the errata switches.

The errata switches are only valid for aarch64, not for armv7a.
There is likely some kind of "invalid option" earlier in your build.

> - Steve Pavao
> Korg R&D

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


