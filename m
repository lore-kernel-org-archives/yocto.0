Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C87DEE00C40; Wed,  6 Jul 2016 21:46:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.194 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f194.google.com (mail-qt0-f194.google.com
	[209.85.216.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 76056E00C1D
	for <yocto@yoctoproject.org>; Wed,  6 Jul 2016 21:46:04 -0700 (PDT)
Received: by mail-qt0-f194.google.com with SMTP id m2so469099qtd.1
	for <yocto@yoctoproject.org>; Wed, 06 Jul 2016 21:46:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=RR29W6H6VcxvoxOuVH9eFukXasvufkqoxqagBPwnEqU=;
	b=k94kPcIhrgT6S8/R7Zv85I3bFxzmHkpRmbHWaDWQ5Xk/Ub63rb6Zmutyis7KpejWmn
	/naURCWySgbUSPSo2ozPAWiQ1XXKjem+yUasEvZ2RpLWxszDZ/hrBEPLNOnR/+wHaBE6
	JSM9luYa5HmRLeyi0UTqonrRqxE59KCo932XWwDi6B3lbs40IcUbaaUJWvsc/riSACHz
	1cIV4ipF687Hfm4zjEya3qRZ2LXVrIoYOpcyP9url/mkSOAdIc0a3+R2DTJ2levrpEfg
	7drd2n6cVo7Z08fJdE9zz2Uq15Ex01VveOmtvi9XJ4wSRQvunxZFfqH3eJbAqLZ7jUOZ
	cTKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=RR29W6H6VcxvoxOuVH9eFukXasvufkqoxqagBPwnEqU=;
	b=VjPClwhhfy7npIXUocurohBdlW22pdNK1vRCJJzEKy1ZHdgmilmPgUR0V11dyObdXk
	U8F2vrQwDBUGWLbM0EWeCiJ1iiZC3sEIqRqTadpwrP9HFedEEumFz+IX8Fg8cpnGJ+dd
	Ygsi8MTseWb0Fs2hYoODvLIy9PjHVPWsFx8+kEWsiWk0OGdAi5s+y/+gXN3na/2mTNRi
	Vw7VbgzF3boGIQm99L4PnL+ld+TeFLA/3Kz46Dp+RjS3b1YN/RJ3lmuWoLoRPXLOEYkt
	JhXYS+D3X58fazTm9ppkaZVG2R3WNFtbZ1yMJeaTwJTXEhj7ot4//l5wh/MiICGA6aTP
	Rgiw==
X-Gm-Message-State: ALyK8tLQFC7nB1BvSwXENwzs+eZUDatsl8nHGri9lG2fPQReBcynEeGH6KC02HQueWuy2r2AjSKjKQ+vYRfUpA==
X-Received: by 10.200.50.77 with SMTP id y13mr40407387qta.5.1467866764158;
	Wed, 06 Jul 2016 21:46:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Wed, 6 Jul 2016 21:45:34 -0700 (PDT)
In-Reply-To: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>
References: <CY1PR0101MB15942895A402A660E25E1963D73B0@CY1PR0101MB1594.prod.exchangelabs.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 6 Jul 2016 21:45:34 -0700
Message-ID: <CAMKF1sqcBgTLN1GFEcRZZNZ91S+BuZCnsvpGmiM86B0b-JUR0g@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@uievolution.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: linux/limits.h: No such file or directory
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
X-List-Received-Date: Thu, 07 Jul 2016 04:46:10 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jul 6, 2016 at 7:05 PM, Takashi Matsuzawa
<tmatsuzawa@uievolution.com> wrote:
> Hello Yocto.
>
> I am seeing this error recently, and wonder if it is a known issue that has
> a workaround.
>
> It does not go even if I delete DL_DIR or SSTATE_CACHE, etc.  It started to
> happen, though previously the build ran well.
>

which version of release are you using ? secondly can you see if its
reproducible in a fresh setup

>>configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E
>> --sysroot=/mnt/ssd2/>yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux
>> " fails sanity check
>>| See `config.log' for more details.
>
> If I look into config.log
> (gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc/config.log)
> as suggested, I can see the following.
> It says linux/limits.h is not found.
>
> (in config.log)
>>usr/include/bits/local_lim.h:38:26: fatal error: linux/limits.h: No such
>> file or directory
>
> I googled some, and found a few similar reports (e.g. install kernel headers
> first, could be a race condition, etc.) but I am not sure practically how to
> avoid this build break.
>
> Error log (on bitable console):
>
> ====
> | checking for x86_64-pokysdk-linux-gcc
> --sysroot=/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux
> option to accept ISO C89... none needed
> | checking how to run the C preprocessor... x86_64-pokysdk-linux-gcc -E
> --sysroot=/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux
> | configure: error: in
> `/mnt/ssd2/yocto/dev/tmp/x86-wk3/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/4.9.2-r0/gcc-4.9.2/build.x86_64-pokysdk-linux.x86_64-pokysdk-linux/libgcc':
> | configure: error: C preprocessor "x86_64-pokysdk-linux-gcc -E
> --sysroot=/mnt/ssd2/yocto/dev/tmp/x86-wk3/sysroots/x86_64-nativesdk-pokysdk-linux
> " fails sanity check
> | See `config.log' for more details.
> | WARNING: exit code 1 from a shell command.
> | ERROR: Function failed: do_configure (log file is located at
> /mnt/ssd2/yocto/dev/tmp/x86-wk3/work/x86_64-nativesdk-pokysdk-linux/nativesdk-libgcc-initial/4.9.2-r0/temp/log.do_configure.888)
> ERROR: Task 3580
> (virtual:nativesdk:/mnt/ssd2/yocto/dev/wk/x86/wk3/build-root/sources/poky/meta/recipes-devtools/gcc/libgcc-initial_4.9.bb,
> do_configure) failed with exit code '1'
> NOTE: Tasks Summary: Attempted 4247 tasks of which 2301 didn't need to be
> rerun and 1 failed.
> Waiting for 0 running tasks to finish:
> ====
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

