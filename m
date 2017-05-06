Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD422E00874; Sat,  6 May 2017 09:13:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.65 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.65 listed in list.dnswl.org]
Received: from mail-wm0-f65.google.com (mail-wm0-f65.google.com [74.125.82.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9948AE0050E
	for <yocto@yoctoproject.org>; Sat,  6 May 2017 09:13:06 -0700 (PDT)
Received: by mail-wm0-f65.google.com with SMTP id u65so6777200wmu.3
	for <yocto@yoctoproject.org>; Sat, 06 May 2017 09:13:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=+uOuXmXae60qgkTx/KRXGgyuO8SjGIX/JTBWJP9p+1E=;
	b=jKW9KxgTiXpjHPUQfVfkoPNMZZmkQwFWtVxszAXmq1ZbJTW4A40GQBSNgmmxwNKrpr
	XxjomIS0mcljBZJp4PyVdd57hOD+FTUEPcoaiVTnjr++GP1f2yfzW+AN5SDUfu7GJC0i
	VB+q+q0p3CKy8evSN6upEkgMtlyHx4pF6GQnTW6zR+A81XPZUNqArGliSmAiU6eK3V5e
	75ZMuW/xozpnpsYPh7njtbaBCSMzlpweA5OwdFSklaxhj1t6erBz2EGVwT9bNPpTtmno
	pA3ZtEUztey6RqG3rn5PNimGhNqvRle7qijLcpxapH56+GISovQvAbAvP/mQ2S3mqxKP
	kkAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=+uOuXmXae60qgkTx/KRXGgyuO8SjGIX/JTBWJP9p+1E=;
	b=fQElOlMIt0LU95/XKuyy2kwYXTUaIty1YM0A7PN/Zp7vpVRHpHx6G4+PlJ4d1sA2tM
	+bpd0F1wIf4be2Z4ASGzx+Gk/YXMVGYvfzyKUGTmtw9AEinlicUANqzuxpKBsdnFMyRQ
	Yezi9+FMNZaYqzqeNG2d/8iwsMIFL5Weh5KdJMslFoJYPnLt9vUj6CNcgny7n14l0l54
	t2o5T/VhohAiVK0dyGZeK2E8LpQBAwiCy4ph0cwr6a/7H69ja28z+LCiNTHK52XNom1W
	zWX0m8khLpYKjOe0OOk2fqAemIo+RrN7YISci+nGPYt9sPmen+JQjyXo6h+apicBTZhV
	xpTQ==
X-Gm-Message-State: AN3rC/5VqD4fWrwKuD98eguthlC0B34FaNzQt8BWTQV6Zn89fscT7aVb
	73MU3CdZvBiJmZMsjR88xS1GJLtegw==
X-Received: by 10.80.153.194 with SMTP id n2mr37836886edb.42.1494087186193;
	Sat, 06 May 2017 09:13:06 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.80.180.139 with HTTP; Sat, 6 May 2017 09:12:35 -0700 (PDT)
In-Reply-To: <CABgxDoKxp6RVb0oXpMr6Lui671ZT1qio1bkvCZLU4PhGuUeF6A@mail.gmail.com>
References: <20170430022345.23508-1-twoerner@gmail.com>
	<CABgxDoKxp6RVb0oXpMr6Lui671ZT1qio1bkvCZLU4PhGuUeF6A@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Sat, 6 May 2017 12:12:35 -0400
Message-ID: <CAMKF1spAOBPpy6SD13tiHMvpX0-jqXwA_MjtfrZyy886uFqEsg@mail.gmail.com>
To: Romain Perier <romain.perier@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-rockchip][PATCH] README: remove irrelevant information
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
X-List-Received-Date: Sat, 06 May 2017 16:13:10 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, May 6, 2017 at 7:41 AM, Romain Perier <romain.perier@gmail.com> wrote:
> Hello,
>
> Even if I agree with the reason of why you want to remove this section. I
> think , it might be a good point to keep a note about this in the README.
> Just explain that this is not up to the bsp layer to do this, but to the
> distro (a short sentence).
>
> What do you think ?

You can put something like distro guidelines. Although I would refrain

> Romain
>
>
> 2017-04-30 4:23 GMT+02:00 Trevor Woerner <twoerner@gmail.com>:
>>
>> As of openembedded-core commit 2b3ae58f5eaecc8474761c543ff5347aa0e3c4c8
>> hardfp
>> is enabled by default.
>>
>> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
>> ---
>>  README | 16 ----------------
>>  1 file changed, 16 deletions(-)
>>
>> diff --git a/README b/README
>> index b2e89f3..7f4a499 100644
>> --- a/README
>> +++ b/README
>> @@ -49,7 +49,6 @@ Table of Contents
>>    I. Configure yocto/oe environment
>>   II. Building a second level bootloader based on kexec
>>  III. Booting your device
>> - IV. Performance
>>
>>  I. Configure yocto/oe environment
>>  ========================================
>> @@ -127,18 +126,3 @@ linux-next from tftp='tftp://192.168.0.5/zImage
>> dtb=tftp://192.168.0.5/<MACHINE>
>>  Then, plug your SDCARD into your Rockchip device and power on the board.
>> If
>>  everything worked fine, Petitboot should be started automatically and
>> list all
>>  entries found in the configuration file.
>> -
>> -IV. Performance
>> -===============
>> -
>> -By default a BSP layer should not be tuning a build, this is a
>> DISTRO-level
>> -decision. As such the default machine settings are meant to be the lowest
>> -common denominator in order to maximize generality. If you are interested
>> in
>> -tweaking your build to maximize performance you can either use a DISTRO
>> that
>> -has these same goals, or you can add settings in your configuration files
>> -(e.g. local.conf) as follows:
>> -
>> -       for rk3288:
>> -               DEFAULTTUNE = "cortexa17hf-neon-vfpv4"
>> -       for rk3066:
>> -               DEFAULTTUNE = "cortexa9-neon"
>> --
>> 2.12.0.rc1.48.g076c053
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

