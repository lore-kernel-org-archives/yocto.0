Return-Path: <shyam.saini@amarulasolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7984AE009E7; Thu, 13 Sep 2018 07:48:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf1-f68.google.com (mail-lf1-f68.google.com
	[209.85.167.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03176E005B1
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 07:48:13 -0700 (PDT)
Received: by mail-lf1-f68.google.com with SMTP id h64-v6so5029636lfi.10
	for <yocto@yoctoproject.org>; Thu, 13 Sep 2018 07:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=amarulasolutions.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=P9EWaZXDEFqG3p4iM+vUbvHc1lwPgG/G0i9U/o3Y5z4=;
	b=C5yn810a2BRk0b4RLye2BJhMenEiZSYmYhM9QwmlkgmOUGiJXwpRnvYdA6IxbCGDLJ
	NMwUDScqKGRcNGXEADc/Hd1yk4UuzgUm8e4RS9qpUERnad9JlCcZNvXGIyxrWrn2Tckf
	Y7Tq77RH8Wm2dYAX6lFIy3J3aVo7ZEpWveF9A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=P9EWaZXDEFqG3p4iM+vUbvHc1lwPgG/G0i9U/o3Y5z4=;
	b=cWC+gOqqjm2RzVPvwkohmjd6LKUp3jRIKlQ7YMIwwBxnSmo8Pb2eoHOTXAWysE3STS
	WMJ91H0qVe/V1lXq4p6pMaSiREAs1x8bmo1SS/N6ca5eRQUf3xIOqxfKVul3KRTJ8ol9
	yY6p32qaqFE3G/vom7tqATax4xojG1J3lQ9nitrrpjnu4RI+F/OI5uDQSgDTe5klM14c
	kRvqdu75DuakFQ3MTTOHF097ik+eNNzS6q/Wsklu3xka5IIiiPJibcoo5BitWANSfX1L
	5wDz2g0N6ULo69bEygANSAQDisOfwXa/F4OjneetdiqP3BYqLEcFC6SAjuZAcLamvTxH
	VyQg==
X-Gm-Message-State: APzg51DmQGN2kdiBu+1v81sBzXg/D1Gh0Mnb08+13nAwJgBxQsjAi/jf
	zgDesSEC98Dm5i5CQxoGxxGLBmq3tP8bqoK2I+Dbhw==
X-Google-Smtp-Source: ANB0VdaE/UVKBsi8BWzPIaWDHydWYa7lfacVmTEZmErHeDPYCbEfAXmdvZoWxCePjvXpc6deNnZTLYDXY/E21IZTDSE=
X-Received: by 2002:a19:c38b:: with SMTP id
	t133-v6mr5454748lff.7.1536850092063; 
	Thu, 13 Sep 2018 07:48:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ab3:6397:0:0:0:0:0 with HTTP; Thu, 13 Sep 2018 07:48:11
	-0700 (PDT)
In-Reply-To: <20180912161210.GA21553@linux-uys3>
References: <20180912141004.7929-1-shyam.saini@amarulasolutions.com>
	<20180912161210.GA21553@linux-uys3>
From: Shyam Saini <shyam.saini@amarulasolutions.com>
Date: Thu, 13 Sep 2018 20:18:11 +0530
Message-ID: <CA+drQ_NT0mi+69GwhUctxfLfkMXbeSCf7jr-qOx54q9w1B-D2Q@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto@yoctoproject.org,
	Michael Nazzareno Trimarchi <michael@amarulasolutions.com>,
	Jagan Teki <jagan@amarulasolutions.com>
Subject: Re: [meta-rockchip] conf: machine: Add support for vyasa-rk3288
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
X-List-Received-Date: Thu, 13 Sep 2018 14:48:15 -0000
Content-Type: text/plain; charset="UTF-8"

> Hello Shyam,

Hi Trevor

> Thank you for your contribution!
>
> I just have 3 small nits with your patch, which I am happy to fix myself
> without you needing to send a v2 (if that's okay with you):

I'm perfectly fine with it. You can merge them it with your fixes.

> 1. I see that there's a mistake in meta-rockchip's README file which I will
>    fix, the email subject should be prefixed with "[meta-rockchip][PATCH]".
>    Sorry! I will fix this in the README.
>
> On Wed 2018-09-12 @ 07:40:04 PM, Shyam Saini wrote:
>> This patch adds initial support for the Amarula Vyasa Board.
>
> 2. I'm going to remove the following second sentence from the commit message.
>    In 2 years, reading the commit logs regarding future promises/TODOs will
>    seem funny. The sentence above fully explains this patch.
>
>> With this patch, we would have working images for vyasa,
>> single gpt and wic image support would be added later on.
>
>
>>
>> Signed-off-by: Shyam Saini <shyam.saini@amarulasolutions.com>
>> ---
>>  conf/machine/vyasa-rk3288.conf | 14 ++++++++++++++
>>  1 file changed, 14 insertions(+)
>>  create mode 100644 conf/machine/vyasa-rk3288.conf
>>
>> diff --git a/conf/machine/vyasa-rk3288.conf b/conf/machine/vyasa-rk3288.conf
>> new file mode 100644
>> index 000000000000..9c634325451e
>> --- /dev/null
>> +++ b/conf/machine/vyasa-rk3288.conf
>> @@ -0,0 +1,14 @@
>> +# Copyright (C) 2018 Amarula Solutions
>> +# Released under the MIT license (see COPYING.MIT for the terms)
>> +
>> +#@TYPE: Machine
>> +#@NAME: Amarula Vyasa RK3288
>> +#@DESCRIPTION: Amarula Vyasa is Rockchip RK3288 SOC based Single board computer with fully supported opensource software.
>> +
>> +require conf/machine/include/rk3288.inc
>> +
>> +KERNEL_IMAGETYPE = "uImage"
>> +KERNEL_DEVICETREE = "rk3288-vyasa.dtb"
>
> 3. I'm going to add a space after += for consistency.
>
>> +KERNEL_EXTRA_ARGS +="LOADADDR=0x02000000"
>> +
>> +UBOOT_MACHINE = "vyasa-rk3288_defconfig"
>> --
>> 2.11.0
>>
>
> Once again, thank you for your contribution!

Will take care of above mentioned points in future.
Thanks a lot for explaining.

Cheers,
Shyam

