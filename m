Return-Path: <dallas.a.clement@gmail.com>
Received: from mail-we0-f176.google.com (mail-we0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 67019E0027D
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 14:05:13 -0700 (PDT)
Received: by weyu3 with SMTP id u3so2479746wey.35
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2012 14:05:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=PS+J00ALL+oSV2UKc7uIVPcmQ2EAJl83MADcf4/PluA=;
	b=mNtVWr/TeZnE6ZgucMzVJgIZlBCr0+o7Rkczf6mbn3lUwnS9llW13yYEkxR8Jsm9ZE
	8tvd56iBdFDo+f4708bvuIrglLld71uVvRpgrGTBaFlHNz+MYyE39SXw47apeGnrxfn8
	xc3PtN5eW36CU4G0BljHK3ZKLUxoVy9eHNTJWnCmI57AjN3HGHjf/VUDThpNVOFXdLxP
	/YTClN10TZAfkEe+05FNxLWJQys2F6QGK+s3Y44hmXo6wWeZFWf+yr8M3yDRE2c9KrRt
	S7LNBrSvx/qGKrthNxexew5X808IH4AM2ptuHEppy8Mg5uqXu+6EVN0/X83y23UUxsTl
	ymZQ==
MIME-Version: 1.0
Received: by 10.180.76.135 with SMTP id k7mr568345wiw.7.1342213512280; Fri, 13
	Jul 2012 14:05:12 -0700 (PDT)
Received: by 10.180.109.162 with HTTP; Fri, 13 Jul 2012 14:05:12 -0700 (PDT)
In-Reply-To: <CABcZAN=F6thT=-fy2U4B6r0cMs=S_0MvPM0AnY=SOborSmxwhA@mail.gmail.com>
References: <CAE9DZUR_W2vDPL+UjAqn_5A-2xig7x9GUx_JKQEd_R0HrrRyzQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A3BF09@ORSMSX101.amr.corp.intel.com>
	<CABcZAN=F6thT=-fy2U4B6r0cMs=S_0MvPM0AnY=SOborSmxwhA@mail.gmail.com>
Date: Fri, 13 Jul 2012 16:05:12 -0500
Message-ID: <CAE9DZUTmGR7SYTEGdjimvF4J_G=O07XC5Um+v2X-ncx5ypUu_A@mail.gmail.com>
From: Dallas Clement <dallas.a.clement@gmail.com>
To: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 13 Jul 2012 21:05:13 -0000
Content-Type: text/plain; charset=ISO-8859-1

Thanks Chris.  I was close, just missing the actual copying part from
the do_install() as observed.  ;^)

I got quite a bit further.  Am running into issues like this now:

ERROR: QA Issue: No GNU_HASH in the elf binary:
'/development/dallasc/yocto/poky/build/tmp/work/armv5te-poky-linux-gnueabi/external-marvell-armada-sdk-5.0-64k-toolchain-1.0-r0/packages-split/external-marvell-armada-sdk-5.0-64k-toolchain/usr/bin/gdbserver'
ERROR: QA Issue: non debug package contains .debug directory:
external-marvell-armada-sdk-5.0-64k-toolchain path
/work/armv5te-poky-linux-gnueabi/external-marvell-armada-sdk-5.0-64k-toolchain-1.0-r0/packages-split/external-marvell-armada-sdk-5.0-64k-toolchain/usr/libexec/getconf/.debug/POSIX_V6_ILP32_OFFBIG

Any guidance on how to fix these?

On Fri, Jul 13, 2012 at 3:36 PM, Chris Larson <clarson@kergoth.com> wrote:
>> I'm using an external toolchain for my project.  What is the proper
>> way to include my external toolchain libc files in the sysroot?
>
> Use an external toolchain recipe which actually installs the files
> from the external sysroot into ${D}, the way the known working
> external sourcery toolchain recipe does.
>
>> Currently I have
>>
>> TOOLCHAIN_OPTIONS = " --sysroot=${STAGING_DIR_HOST}"
>>
>> and
>>
>> EXTERNAL_TOOLCHAIN_SYSROOT_CMD = "${TARGET_PREFIX}gcc
>> ${TARGET_CC_ARCH} -print-sysroot"
>> EXTERNAL_TOOLCHAIN_SYSROOT ??= "${@exttc_run(d,
>> EXTERNAL_TOOLCHAIN_SYSROOT_CMD)}"
>
> The tcmode sets these already, there's no need to set them explicitly,
> just copy the external-sourcery tcmode to your own and set TCMODE
> appropriately.
>
>> which resolves to
>> /opt/armada-sdk-5.0-64k/armv7-marvell-linux-gnueabi-softfp/arm-marvell-linux-gnueabi/libc/
>>
>> I also have a recipe for my external toolchain which includes the following:
>>
>> do_install() {
>>         # Use optimized files if available
>>         sysroot="${EXTERNAL_TOOLCHAIN_SYSROOT}"
>> }
>
> If this is all you have in do_install, it's no wonder you have no
> files. do_install has to actually install the files from t he sysroot.
> Copy what's in external-sourcery-toolchain, as that actually works.
>
>> The EXTERNAL_TOOLCHAIN_SYSROOT doesn't seem to have any effect.  My
>> libc header files are not visible during compilation. It looks like I
>> may have to copy them to the staging dir or setup some symlinks.  Is
>> this the right approach?
>
> No.
> --
> Christopher Larson

