Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DFEDCE00AAF; Mon, 17 Aug 2015 02:58:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91699E00A9C
	for <yocto@yoctoproject.org>; Mon, 17 Aug 2015 02:58:49 -0700 (PDT)
Received: from [192.168.1.132] (95.111.23.95.dynamic.jazztel.es [95.23.111.95])
	by lists.s-osg.org (Postfix) with ESMTPSA id A3DA2462CB;
	Mon, 17 Aug 2015 02:58:47 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
X-Enigmail-Draft-Status: N1110
Message-ID: <55D1B054.2050403@osg.samsung.com>
Date: Mon, 17 Aug 2015 11:58:44 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.0.1
MIME-Version: 1.0
In-Reply-To: <CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
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
X-List-Received-Date: Mon, 17 Aug 2015 09:58:52 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello Andrei and Khem,

Thanks a lot for your feedback.

On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
> Hello,
> 
> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
> 
>>
>>> On Aug 13, 2015, at 10:07 AM, Javier Martinez Canillas <
>> javier@osg.samsung.com <javascript:;>> wrote:
>>>
>>> This patch adds to the README a section that explains the RPi can
>> different
>>> graphics stacks and that the user can choose by manually changing
>> providers.
>>>
>>> Signed-off-by: Javier Martinez Canillas <javier@osg.samsung.com
>> <javascript:;>>
>>>
>>> ---
>>>
>>> Changes in v2: None
>>>
>>> README | 9 +++++++++
>>> 1 file changed, 9 insertions(+)
>>>
>>> diff --git a/README b/README
>>> index 678c0eb4a4e3..0569b353870c 100644
>>> --- a/README
>>> +++ b/README
>>> @@ -25,6 +25,7 @@ Contents:
>>>     2.K. Boot to U-Boot
>>>     2.L. Image with Initramfs
>>>     2.M. Device tree support
>>> +    2.O. Graphic stacks
>>> 3. Extra apps
>>>     3.A. omxplayer
>>> 4. Source code and mirrors
>>> @@ -195,6 +196,14 @@ kernels.
>>> NOTE: KERNEL_DEVICETREE is default enabled for kernel >= 3.18 and always
>> disabled for
>>>       older kernel versions.
>>>
>>> +2.O. Graphic stacks
>>> +===================
>>> +The Raspberry Pi boards can use one of two graphics stacks: The userland
>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default userland
>>> +is used since the vc4 is still experimental. But this can be changed by
>>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
>> providers.
>>> +This is explained in the conf/machine/include/rpi-default-providers.inc
>> file.
>>> +
>>
>> you may want to add pointer to the commented out code that you have added
>> to select them
>> in rpi-default-providers.inc
>>
> 
> It would be nice to have some detailed info on what and where to comment
> out the configuration.
>

On patch 3/4 I added that documentation to rpi-default-providers but didn't
add it to the README and instead pointed out to rpi-default-providers to
have a level of indirection in case the providers change and to not have
duplicated information but I will add it to the README as well.

Do you have comments on the other patches in the series so I can address
all of them before re-spinning?

> --
> Andrei Gherzan
> 
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

