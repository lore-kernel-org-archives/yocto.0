Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99527E00A0A; Wed, 15 Feb 2017 18:14:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5164CE009DF
	for <yocto@yoctoproject.org>; Wed, 15 Feb 2017 18:14:43 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 239E068A01C; Thu, 16 Feb 2017 02:14:42 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 802A168A019;
	Thu, 16 Feb 2017 02:14:41 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id CA29E67401E9;
	Thu, 16 Feb 2017 03:14:39 +0100 (CET)
To: yocto@yoctoproject.org
References: <1486913148-23185-1-git-send-email-mickey.happygolucky@gmail.com>
	<20170216014544.GD31588@carbonA>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <196f4d87-086c-3ff0-2cd6-4595d87de9b8@mlbassoc.com>
Date: Thu, 16 Feb 2017 03:14:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <20170216014544.GD31588@carbonA>
Subject: Re: [meta-raspberrypi][PATCH] rpi-base.inc: Add xf86-input-evdev to XSERVER
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
X-List-Received-Date: Thu, 16 Feb 2017 02:14:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2017-02-16 02:45, Andrei Gherzan wrote:
> On Mon, Feb 13, 2017 at 12:25:48AM +0900, Yusuke Mitsuki wrote:
>> In order to fix problem that mouse does not work.
>>
>> This is removed c40558173ffd96c499d101155f6c4c2be85d9f0f.
>> However mouse does not worked from this.
>> ---
>>  conf/machine/include/rpi-base.inc | 1 +
>>  1 file changed, 1 insertion(+)
>>
>> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
>> index e069e70..051c717 100644
>> --- a/conf/machine/include/rpi-base.inc
>> +++ b/conf/machine/include/rpi-base.inc
>> @@ -11,6 +11,7 @@ XSERVER = " \
>>      xserver-xorg \
>>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xserver-xorg-extension-glx", "", d)} \
>>      ${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "xf86-video-modesetting", "xf86-video-fbdev", d)} \
>> +    xf86-input-evdev \
>>      "
>>
>>  KERNEL_DEVICETREE ?= " \
>> --
>> 2.7.4
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> CC-ing schnitzeltony@googlemail.com as he might have an opinion about
> this. I personally don't really hold on any of the options.

I think it's the right thing to do, in fact, I was preparing a
similar patch myself.  The change that removed this argued that
it was not the responsibility of the BSP layer, but if you look
around at other BSP layers, almost all of them do include this
driver as part of their X server setup.  It also lets X work
again on the RaspberryPi "out of the box" with the simplest
configuration - HDMI display + USB keyboard & mouse.

+1


-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

