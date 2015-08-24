Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 24682E00BD2; Mon, 24 Aug 2015 13:25:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [54.187.51.154 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from lists.s-osg.org (lists.s-osg.org [54.187.51.154])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57A79E00AA5
	for <yocto@yoctoproject.org>; Mon, 24 Aug 2015 13:25:35 -0700 (PDT)
Received: from [192.168.1.131] (121.108.23.95.dynamic.jazztel.es
	[95.23.108.121])
	by lists.s-osg.org (Postfix) with ESMTPSA id A78054632B;
	Mon, 24 Aug 2015 13:25:33 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
	<55D1B054.2050403@osg.samsung.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <55DB7DBA.7030902@osg.samsung.com>
Date: Mon, 24 Aug 2015 22:25:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <55D1B054.2050403@osg.samsung.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>
Subject: Re: [meta-raspberrypi][PATCH v2 4/4] README: Add a section about graphic stacks
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
X-List-Received-Date: Mon, 24 Aug 2015 20:25:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

On 08/17/2015 11:58 AM, Javier Martinez Canillas wrote:
> On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
>> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:

[snip]

>>>>
>>>> +2.O. Graphic stacks
>>>> +===================
>>>> +The Raspberry Pi boards can use one of two graphics stacks: The userland
>>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default userland
>>>> +is used since the vc4 is still experimental. But this can be changed by
>>>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
>>> providers.
>>>> +This is explained in the conf/machine/include/rpi-default-providers.inc
>>> file.
>>>> +
>>>
>>> you may want to add pointer to the commented out code that you have added
>>> to select them
>>> in rpi-default-providers.inc
>>>
>>
>> It would be nice to have some detailed info on what and where to comment
>> out the configuration.
>>
> 
> On patch 3/4 I added that documentation to rpi-default-providers but didn't
> add it to the README and instead pointed out to rpi-default-providers to
> have a level of indirection in case the providers change and to not have
> duplicated information but I will add it to the README as well.
> 
> Do you have comments on the other patches in the series so I can address
> all of them before re-spinning?
> 

Gentle ping about this. Thanks!

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

