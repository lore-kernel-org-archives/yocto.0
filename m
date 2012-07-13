Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-wg0-f47.google.com (mail-wg0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484D7E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 16:05:59 -0700 (PDT)
Received: by wgbfa7 with SMTP id fa7so2811565wgb.28
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 16:05:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Oqv9N8F+LST/ZJO59/oxaNxhH/RXquw3YjBTWYfYBoE=;
	b=AT3ntzA3cYGmocfQWNcgHlizAOWCVGsjGnkDb/bNPXA3z8f1hrkkedWFgrmT5sR0gK
	v5x2DDhG7Qke0w5CmtCCXHesIXpf/iWvuw73bMFsdBsa9fUG30oEzV6i2o/nBVSf35uY
	8xBi84zIC/QFH4xrxsloFstV+tLhc0MKd2bVa8KyHgcs/VHdJWhYdOr3r+oxnej/fkio
	VPEwMAecu1Kgod41vQFgxgZWwoNzvrEEkLNxOHu6M7ltOodFeMi8/7ix3HwsAw501ilT
	S+5j1JrZWN7Xi3yzBmuU9HsKI/AAtCt1+vdHE8YgsoZn8HUUOcw9ISlD9LgbygPTcvNn
	SxsA==
MIME-Version: 1.0
Received: by 10.180.80.134 with SMTP id r6mr1221654wix.1.1342220757941; Fri,
	13 Jul 2012 16:05:57 -0700 (PDT)
Received: by 10.180.109.162 with HTTP; Fri, 13 Jul 2012 16:05:57 -0700 (PDT)
In-Reply-To: <CABcZANnOZ-yW0wBgqOJka7H8mr2aiSk+ooZEKEQg6UPmS8Sx-g@mail.gmail.com>
References: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A3BF09@ORSMSX101.amr.corp.intel.com>
	<CABcZAN=F6thT=-fy2U4B6r0cMs=S_0MvPM0AnY=SOborSmxwhA@mail.gmail.com>
	<CAE9DZUTmGR7SYTEGdjimvF4J_G=O07XC5Um+v2X-ncx5ypUu_A@mail.gmail.com>
	<CABcZANnOZ-yW0wBgqOJka7H8mr2aiSk+ooZEKEQg6UPmS8Sx-g@mail.gmail.com>
Date: Fri, 13 Jul 2012 18:05:57 -0500
Message-ID: <CAE9DZURruc7AXBS9EgT38N-ym+c-XiqicVEOPYr1E+fp3GLq7A@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org
Subject: Re: sysroot / external toolchain
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Jul 2012 23:05:59 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Jul 13, 2012 at 4:18 PM, Chris Larson <clarson@kergoth.com> wrote:
> On Fri, Jul 13, 2012 at 2:05 PM, Dallas Clement
> <dallas.a.clement@gmail.com> wrote:
>> Thanks Chris.  I was close, just missing the actual copying part from
>> the do_install() as observed.  ;^)
>>
>> I got quite a bit further.  Am running into issues like this now:
>>
>> ERROR: QA Issue: No GNU_HASH in the elf binary:
>> '/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-marvell-armada-sdk-5.0-64k-toolchain-1.0-r0/packages-split/external-marvell-armada-sdk-5.0-64k-toolchain/usr/bin/gdbserver'
>> ERROR: QA Issue: non debug package contains .debug directory:
>> external-marvell-armada-sdk-5.0-64k-toolchain path
>> /work/armv5te-poky-linux-gnueabi/external-marvell-armada-sdk-5.0-64k-toolchain-1.0-r0/packages-split/external-marvell-armada-sdk-5.0-64k-toolchain/usr/libexec/getconf/.debug/POSIX_V6_ILP32_OFFBIG
>
>
> INSANE_SKIP_${PN} += "ldflags"
> --
> Christopher Larson

Hmm, not having a whole lot of luck with INSANE_SKIP.  Will this help
for files which have been prebuilt as part of my external toolchain?
Also, where is the best place to put the INSANE_SKIP line?

