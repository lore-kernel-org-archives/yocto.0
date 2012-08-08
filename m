Return-Path: <raj.khem@gmail.com>
Received: from mail-ee0-f48.google.com (mail-ee0-f48.google.com [74.125.83.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A4CC7E013DB
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2012 19:41:05 -0700 (PDT)
Received: by eekd41 with SMTP id d41so72175eek.35
	for <yocto@yoctoproject.org>; Tue, 07 Aug 2012 19:41:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=xtNFFpCauwdCRZ01FaV0uwtMLX8dzEm23jRlaiQIOrM=;
	b=iNmjizPO1rrlYDwx13ttcWKiuZYh75SIzm4uu+SbqaRjsNS7KJkrF8RTUUv0KjIfIU
	v57AClfLQ/lFUYBiUl5VfEy/gAbrVm5TD7p/OPlzn8jdGFgrNDZT2SSkWmxiu8+95Awx
	EEFgHvbAjhHE8hsyT412RFwgZL9j6BY36kX23l3reWgTZLtya51LgSVbuHkpa2krlMrA
	ZgweR6fzESMSrdW2lP2EgwRjJ1cAhQKxxUbG6htJLb4zyX37LoJ/+4Zr1739kpkVeQDQ
	xurL6sdN9GchLfgZ6MhB2xU73pM22xZ+RGueCMjfw3g/J7bjLQ9SsEwBp4fAaIZzVxHk
	uFDA==
Received: by 10.14.175.7 with SMTP id y7mr20206632eel.29.1344393664582; Tue,
	07 Aug 2012 19:41:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.97.141 with HTTP; Tue, 7 Aug 2012 19:40:33 -0700 (PDT)
In-Reply-To: <E8DAEBDF-739C-4EEF-B0CA-D7A74A9C3ACB@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<654A270B-9C72-4BEA-B51D-79E4C6441594@gmail.com>
	<15982971-CA6D-4E45-833F-AC4E5AA95331@gmail.com>
	<8FA59113-59B4-4F16-B5D5-40CB3011BDE6@gmail.com>
	<73D923A6-DA97-45D8-88FD-8629055D72AD@gmail.com>
	<8E8CFCED-8C1A-48E8-B9E3-C6AB27CD9750@gmail.com>
	<299D147C-2889-4DE7-9972-A81315B5AC3B@gmail.com>
	<CAMKF1sq1AkaPnTqfijxH4MtN2_YKsHMLQ0rVdX_ObEBxVkS3tQ@mail.gmail.com>
	<5EE8E4F2-1FD4-47B7-A2A1-94BFBC4A46F8@gmail.com>
	<CAMKF1spzF44X-iKuz2UCaXfX8Dbf59BSJcG=0nodqvRUpQnmFw@mail.gmail.com>
	<C72B7149-B2B8-46D6-A270-23BB55DFC733@gmail.com>
	<CAMKF1sqiFrHqg6HNvRwX_1Wg=Nfq8_141-XaJ=E2qFQyUsSJEA@mail.gmail.com>
	<931ADA5B-6471-40DB-8943-D7D6CA564C35@gmail.com>
	<CAMKF1sr-=FLVGMZnW_X63YRnT=ms8eCLhhUkcoHujubM_1f5Ow@mail.gmail.com>
	<AB2E7680-C057-47B0-91FD-62BD6BAC8170@gmail.com>
	<E8DAEBDF-739C-4EEF-B0CA-D7A74A9C3ACB@gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 7 Aug 2012 19:40:33 -0700
Message-ID: <CAMKF1sovME6hMkVLfJs8bV7zZ5zYaXbkQT5A8_s+9Mz1QM32BQ@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
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
X-List-Received-Date: Wed, 08 Aug 2012 02:41:06 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Aug 7, 2012 at 7:36 PM, Elvis Dowson <elvis.dowson@gmail.com> wrote:
> Hi,
>       I was just going through the recipes-devtools/gcc/gcc-common.inc file,
> and noticed the following snippet:
>
> def get_gcc_multiarch_setting(bb, d):
>     target_arch = d.getVar('TRANSLATED_TARGET_ARCH', True)
>     multiarch_options = {
>         "i586":    "--enable-targets=all",
>         "powerpc": "--enable-targets=powerpc64",
>         "sparc":   "--enable-targets=all",
>     }
>
> My target is a 32-bit ppc440 cpu. What is the impact of an incorrectly set
> multiarch_options for powerpc to  powerpc64 on the final build?
>


thats not a issue.

> Elvis Dowson
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

