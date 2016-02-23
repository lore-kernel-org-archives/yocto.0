Return-Path: <schnitzeltony@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 04490E00D38; Tue, 23 Feb 2016 13:37:18 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CDED0E00B45
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:37:14 -0800 (PST)
Received: by mail-ig0-f172.google.com with SMTP id y8so1964507igp.1
	for <yocto@yoctoproject.org>; Tue, 23 Feb 2016 13:37:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to; 
	bh=F5YVOZGnfJeJDIRPSEWsI9Ls552/f1kEtRGL9bC+zUE=;
	b=mSZEPCs8NA8FwouyZV0neZPKcE7whukTRfwIgCKUAvMhYiW6ckSobvT+s+BsTXxNpM
	UOL0bt4rQqmzUznjVi0RmtR7OqrLMQ7yTNNV81L4MccIqQ3NLxdieKMsV1aNQDOlyWH5
	pNFWML5tgNG2fgRgae2/RNCgwIEiPvz/D+zHOU7IKaclM1VqQDTgfu0RJp2HxJrn2SUc
	2y1Wj4GpZWlvzPeT9MWTs90QHyJ0h3NeU+3PjNVvOse5iWhipAXRpA54taZrmVP3Lehc
	Z/fomNHUXavuSZhtLpNxddDSba48j5ptyICyUQ7Ck2Jqh2ygb38oN0FxstO7ChZ8Hh+E
	KwoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to;
	bh=F5YVOZGnfJeJDIRPSEWsI9Ls552/f1kEtRGL9bC+zUE=;
	b=f/HdJi0863oeIJ90hyYwCZgYqsXTwomVSbkJsQrVbdrbLSoccyYMz7PTdVsDyBdtU+
	+B2yy4hN3tJiKzClgMARy2shlvbP1FcfYSxRA00MXKZFNwj7AqAimnI+Op90PzBLVznw
	kOZiXGjT0/in5Y1oYJdHLN6Ut9xKfySCejfkuagyjK7lQ4KmlRKyEiTuoJzUTT9bKUCI
	9sBo1uZ9ahzNQiw6Z9pOWwr5HEKSQvTlOD2owQyYaOv91hL9WBhbgiEf7eStVA9Dj6aX
	NAOavnlBV52OdKlyMCjA4KlMbgUsXUXg+m252WS6bEFxgmHIJcCY4rK/sxz7yxgYxbAm
	Qolw==
X-Gm-Message-State: AG10YOQjOLnIqwMKWiFqqB9P3v7v9gGOi4aD9yDFoqwT1GzN+NmGrDwd4pHEk+YmB/i8mLg/DVtLVwUrfLKUZg==
MIME-Version: 1.0
X-Received: by 10.50.66.238 with SMTP id i14mr16872085igt.52.1456263434040;
	Tue, 23 Feb 2016 13:37:14 -0800 (PST)
Received: by 10.36.25.81 with HTTP; Tue, 23 Feb 2016 13:37:13 -0800 (PST)
In-Reply-To: <20160223210251.GC10598@ad.chargestorm.se>
References: <1454173548-5806-1-git-send-email-raj.khem@gmail.com>
	<20160223210251.GC10598@ad.chargestorm.se>
Date: Tue, 23 Feb 2016 22:37:13 +0100
Message-ID: <CALbNGRSLRGvmdTNg6hF8YwGXRPza5Xn8sLLjrcgOrT+B1--+yA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@googlemail.com>
To: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi: Adjust for libexecdir changes
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
X-List-Received-Date: Tue, 23 Feb 2016 21:37:18 -0000
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 10:02 PM, Anders Darander <anders@chargestorm.se> wrote:
> Ping?
>
> We can't build on master branch without this fix...
>
> Cheers,
> Anders
>
> * Khem Raj <raj.khem@gmail.com> [160130 18:07]:
>
>> libexecdir has changed its location in latest OE core, it used to be
>> pointing to /usr/lib which was essentially same as libdir and when
>> hardcoded in do_rpiboot_mkimage it worked.
>
>> Fixes kernel build failures e.g.
>
>> DEBUG: Executing shell function do_rpiboot_mkimage
>> /a/builder/mnt/build-oe/tmp-musl/work/raspberrypi2-oe-linux-musleabi/linux-raspberrypi/1_4.1.10+gitAUTOINC+b74df9228c-r0/temp/run.do_rpiboot_mkimage.5543:
>> line 111:
>> /a/builder/mnt/build-oe/tmp-musl/sysroots/x86_64-linux/usr/lib/rpi-mkimage/mkknlimg: No such file or directory
>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
>> ---
>>  recipes-kernel/linux/linux-raspberrypi.inc | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index 70e8bfe..0798788 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -60,7 +60,7 @@ do_rpiboot_mkimage() {
>>      if test "x${KERNEL_IMAGETYPE}" != "xuImage" ; then
>>          if test -n "${KERNEL_DEVICETREE}"; then
>>              # Add RPi bootloader trailer to kernel image to enable DeviceTree support
>> -            ${STAGING_DIR_NATIVE}/usr/lib/rpi-mkimage/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>> +            ${STAGING_DIR_NATIVE}${libexecdir}/mkknlimg --dtok ${KERNEL_OUTPUT} ${KERNEL_OUTPUT}
>>          fi
>>      fi
>>  }
> --
> Anders Darander, Senior System Architect
> ChargeStorm AB / eStorm AB
> --
This patch is mandatory but there was a serial with additional fixes
send by Maciej Borzecki on Feb 2nd. I think this is worth taken into
account.

Andreas

