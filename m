Return-Path: <jon.szymaniak@gmail.com>
Received: from mail-ia0-f172.google.com (mail-ia0-f172.google.com
	[209.85.210.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FCDFE006B4
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 19:43:17 -0800 (PST)
Received: by mail-ia0-f172.google.com with SMTP id z13so6505830iaz.31
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 19:43:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=ynlilR25+m4MTrv+tX3RtCg1bkTAMDv+k84ai+hDGHc=;
	b=sT5c4GOFQdBy7nEtEFUEvTkIa2l5f7hTovqutj1biq1sEvdV3hg3Ns7jimiGwjHd9F
	BuUObOAzq2wiC5ZqpIF1pSREQ/CE9ZWtAcUNtrz04Z0vs9cGjy+5zEoyyNaNmHsnzPLM
	7g+xhon7QatTwE3uWikSaGXHIO/P8VNnDNa4OZT/uJGGBnqc7EIy6C5PS1HoNbQ+z11v
	g/+XuxSzXTb752DWDwTiJBs3/i8jxTNqwxbiwL4jH2XnCBG04O/zokfquu1c78N+IWYL
	Ql6br7o5qfOLozpJfOnCR992GYgagAZV+sKSbqBvxeuGhlTVgcxNDK6z6A1LgN7DKK7G
	VCVg==
Received: by 10.50.151.165 with SMTP id ur5mr1042411igb.24.1355197396567; Mon,
	10 Dec 2012 19:43:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.167.165 with HTTP; Mon, 10 Dec 2012 19:42:56 -0800 (PST)
In-Reply-To: <2780619.ABelmWZmCk@helios>
References: <CANge7vXkVTnbwREHzXwP_f2ck-WP6BJQbUURGBHg=+eQsZjxQg@mail.gmail.com>
	<2780619.ABelmWZmCk@helios>
From: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Mon, 10 Dec 2012 22:42:56 -0500
Message-ID: <CANge7vX-d4BATTYhSSmv2G3q7x1KWMvdTHhb+2+akuh9ZKw3GA@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: packagegroup-core-boot failure for RTC-less system
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
X-List-Received-Date: Tue, 11 Dec 2012 03:43:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

>> I have a MACHINE_FEATURES which *does not* include "rtc", as the platform I
>> am working on doesn't have an RTC.
>>
>> The busybox bbappend I'm using (attached below) uses the provided
>> defconfig, but
>> disables the HWCLOCK features.
>>
>> However, my build is failing due to packagegroup-core-boot being unable to
>> meet the busybox-hwclock dependency. Looking at this line from
>> packagegroup-core-boot.bb, it seems to me that busybox-hwlock shouldn't be
>> getting placed in the core-boot's RDEPENDS, given that my MACHINE_FEATURES
>> does not include "rtc":
>>
>>     ${@base_contains("MACHINE_FEATURES", "rtc", "busybox-hwclock", "", d)} \
>>
>>
>> Any thoughts or tips on debugging this? Perhaps there's somewhere I can
>> stick a print of MACHINE_FEATURES to verify that it is what I thought I
>> set?
>
> The way to query the final value of MACHINE_FEATURES is:
>
> bitbake -e | grep ^MACHINE_FEATURES=
>
> FYI though, rtc is a "backfilled" feature - because it was introduced later on
> and we didn't want to break existing machines that do have an RTC and don't
> yet have "rtc" in MACHINE_FEATURES, we added it to MACHINE_FEATURES_BACKFILL.
> In order to prevent it from being backfilled, you can add the following to your
> machine config:
>
> MACHINE_FEATURES_BACKFILL_CONSIDERED = "rtc"
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre

Hi Paul,

That certainly does the trick!

I didn't realize this "backfill" concept had been added, but now see
it's very well-documented
in the 1.3 manual. Funny how easy it is to find things once you know
what you're looking for... :)

Many thanks!
Jon

