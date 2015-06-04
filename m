Return-Path: <bruce.ashfield@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 13A01E009C8; Thu,  4 Jun 2015 05:19:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruce.ashfield[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f176.google.com (mail-yk0-f176.google.com
	[209.85.160.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92662E007B6
	for <yocto@yoctoproject.org>; Thu,  4 Jun 2015 05:19:25 -0700 (PDT)
Received: by yken206 with SMTP id n206so13470621yke.2
	for <yocto@yoctoproject.org>; Thu, 04 Jun 2015 05:19:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=JAzEsu5xZWPjBpzPriwNtJYFjazgSIbGTwR1wSDWjAg=;
	b=DpeWXRtdYtUHsqNzAsI9roz8aw+8/Lds+UTj2UEMo8aPNQljbnE8tIpNCvZq2ciyex
	qPr/lJ8SXNZk2xPtPgFUqM5MIQOHkV/F3q0STicMkZJfXdCGtGzk5/I870v8O/OVOVy7
	+M1wAGJ2DAiLr8CzrAZNqwIYgEa0imoev17Fi9uAw+rUwD1nZ8PvZt5tfN7/MXnopc4o
	EFPB1psl9Cyt1Q0BImttwQ1sdkHzqw7Rm5Nqlqa8tY78wsQ9AJkVWMorduYjnrRI756j
	hIQCsuYMbVG7O+awwxLU0e+uqbiYur/dOLPJS1DdBMekBc6sgErXh5YfGCA0QU9U5YeQ
	o+Ug==
MIME-Version: 1.0
X-Received: by 10.170.55.143 with SMTP id 137mr44932967ykx.16.1433420364544;
	Thu, 04 Jun 2015 05:19:24 -0700 (PDT)
Received: by 10.129.128.2 with HTTP; Thu, 4 Jun 2015 05:19:24 -0700 (PDT)
In-Reply-To: <55702CD0.5030909@gmx.de>
References: <55702CD0.5030909@gmx.de>
Date: Thu, 4 Jun 2015 08:19:24 -0400
Message-ID: <CADkTA4PwjMeY+4risNoFNxctEkdkbJsXDJDSfs2w-f3kvO_3kQ@mail.gmail.com>
From: Bruce Ashfield <bruce.ashfield@gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: Kernel config fragments are no longer applied after update to Fido
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
X-List-Received-Date: Thu, 04 Jun 2015 12:19:28 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 4, 2015 at 6:47 AM, Neuer User <auslands-kv@gmx.de> wrote:
> Hello
>
> I have the following kernel recipe, which is based on some help from
> Bruce Ashfield last year:
>
> -------------------------------------------------------------
> inherit kernel
> require recipes-kernel/linux/linux-yocto.inc
>
> SUMMARY = "Linaro Kernel 3.14 with additional machine specific patches"
>
> SRCREV = "91d5e90284ee69d219872e3ae42ae0eac417f7e9"
> LOCALVERSION = "-cubox-i+linux4kix+${SRCPV}"
>
> DEPENDS += "lzop-native bc-native"
>
> FILESEXTRAPATHS_prepend := "${THISDIR}/linux-cubox-i:"
>
> SRC_URI = "file://defconfig \
>            file://videoin.cfg \
>            file://dvb.cfg \
>            file://networking.cfg \
>            file://wlan.cfg \
>            file://dm-crypt.cfg \
>            file://no-caam.cfg \
>            file://leds.cfg \
>            file://mod-to-builtin.cfg \
>            file://watchdog-nowayout.cfg \
>            file://brcmfmac4330-sdio.bin \
>            file://brcmfmac4330-sdio.txt \
> "
>
> SRC_URI +=
> "git://github.com/linux4kix/linux-linaro-stable-mx6.git;branch=${SRCBRANCH}"
> SRCBRANCH ?= "linux-linaro-lsk-v3.14-mx6"
>
> COMPATIBLE_MACHINE = "(cubox-i)"
>
> KERNEL_IMAGETYPE_cubox-i = "zImage"
>
> SRCREV_machine = "${SRCREV}"
> --------------------------------------------------------------
>
>
> This worked nicely under yocto daisy. Now, after I migrated my recipes
> to yocto fido, the recipe no longer seems to include the kernel
> fragments, i.e. everything runs without errors, but the fragments are
> not applied. (They are, however, copied to the build directory.)
>
> Any idea, what the problem is or how to debug/solve it?

The transition should have been seamless .. this is something that
works here and
something that was obviously tested as part of the release.

Is there somewhere that I can get a copy of the layer you are using
for your BSP ?
Otherwise, let me hack something up and try my own build.

Bruce

>
> Thanks in advance
>
> Michael
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Thou shalt not follow the NULL pointer, for chaos and madness await
thee at its end"

