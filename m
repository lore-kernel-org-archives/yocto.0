Return-Path: <javier@osg.samsung.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99E60E0049B; Wed, 21 Oct 2015 08:02:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F7FDE00343
	for <yocto@yoctoproject.org>; Wed, 21 Oct 2015 08:02:24 -0700 (PDT)
Received: from [192.168.1.139] (211.178.21.95.dynamic.jazztel.es
	[95.21.178.211])
	by lists.s-osg.org (Postfix) with ESMTPSA id 85DC746269;
	Wed, 21 Oct 2015 08:02:20 -0700 (PDT)
To: =?UTF-8?Q?Andreas_M=c3=bcller?= <schnitzeltony@googlemail.com>
References: <1439485643-31467-1-git-send-email-javier@osg.samsung.com>
	<1439485643-31467-5-git-send-email-javier@osg.samsung.com>
	<2A2C0AE8-7998-4E9E-BCD1-C4526449F31D@gmail.com>
	<CAK18fxE30A1EYFBgk31aYWqwK9mid8j+hSSnwuiPsrqvVzqvtg@mail.gmail.com>
	<55D1B054.2050403@osg.samsung.com> <55DB7DBA.7030902@osg.samsung.com>
	<20151021123216.GF5610@resin> <562797C0.3000303@osg.samsung.com>
	<CALbNGRSZurTw0frxHnKTmXvj8H8Zw3qsL1RH4OP-yW+faFaLEg@mail.gmail.com>
From: Javier Martinez Canillas <javier@osg.samsung.com>
Message-ID: <5627A8FA.9060006@osg.samsung.com>
Date: Wed, 21 Oct 2015 17:02:18 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CALbNGRSZurTw0frxHnKTmXvj8H8Zw3qsL1RH4OP-yW+faFaLEg@mail.gmail.com>
Cc: Derek Foreman <derekf@osg.samsung.com>,
	Mauro Carvalho Chehab <mchehab@osg.samsung.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Wed, 21 Oct 2015 15:02:28 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

Hello Andreas,

On 10/21/2015 04:55 PM, Andreas Müller wrote:
> On Wed, Oct 21, 2015 at 3:48 PM, Javier Martinez Canillas
> <javier@osg.samsung.com> wrote:
>> Hello Andrei,
>>
>> On 10/21/2015 02:32 PM, Andrei Gherzan wrote:
>>> Hello Javier,
>>>
>>> On Mon, Aug 24, 2015 at 10:25:30PM +0200, Javier Martinez Canillas wrote:
>>>> Hello,
>>>>
>>>> On 08/17/2015 11:58 AM, Javier Martinez Canillas wrote:
>>>>> On 08/17/2015 09:57 AM, Andrei Gherzan wrote:
>>>>>> On Thursday, August 13, 2015, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>> [snip]
>>>>
>>>>>>>>
>>>>>>>> +2.O. Graphic stacks
>>>>>>>> +===================
>>>>>>>> +The Raspberry Pi boards can use one of two graphics stacks: The userland
>>>>>>>> +user-space driver or the vc4 DRM/KMS kernel driver. By default userland
>>>>>>>> +is used since the vc4 is still experimental. But this can be changed by
>>>>>>>> +modifying the defaults for the kernel, egl, gles2, libgl and mesa
>>>>>>> providers.
>>>>>>>> +This is explained in the conf/machine/include/rpi-default-providers.inc
>>>>>>> file.
>>>>>>>> +
>>>>>>>
>>>>>>> you may want to add pointer to the commented out code that you have added
>>>>>>> to select them
>>>>>>> in rpi-default-providers.inc
>>>>>>>
>>>>>>
>>>>>> It would be nice to have some detailed info on what and where to comment
>>>>>> out the configuration.
>>>>>>
>>>>>
>>>>> On patch 3/4 I added that documentation to rpi-default-providers but didn't
>>>>> add it to the README and instead pointed out to rpi-default-providers to
>>>>> have a level of indirection in case the providers change and to not have
>>>>> duplicated information but I will add it to the README as well.
>>>>>
>>>>> Do you have comments on the other patches in the series so I can address
>>>>> all of them before re-spinning?
>>>>>
>>>>
>>>
>>> Really sorry on this late reply. So my only recommendation is to move things
>>
>> No worries, I've also been very busy with other stuff.
>>
>>> you wrote in 3/4 in the 4/4 (README). Basically you would describe what a user
>>> needs to overwrite as providers in order to use VC4 as graphics stack.
>>>
>>
>> Ok, I'm traveling to Korea next week for KLF and KS so I'll probably resend
>> a v3 (addressing your suggestions) later next week when I'm back.
>>
>>> As well, how do you handle the devicetrees for 4.1? Aren't changed in 4+?
>>>
>>
>> For now, I'm defining a KERNEL_DEVICETREE in my conf/local.conf file since
>> that is what was agreed with Petter Mabäcker on v1 of this series [0 and
>> I also mentioned in the cover letter [1].
>>
>> But the new device tree overlay dir layout is not only for 4+ but also it
>> is used in the latest version of the older branches. So once all recipes'
>> SRCREV are bumped, overwriting the variable won't be necessary anymore.
>>
>>>> Gentle ping about this. Thanks!
>>>>
>>>> Best regards,
>>>> --
>>>> Javier Martinez Canillas
>>>> Open Source Group
>>>> Samsung Research America
>>>
>>> --
>>> Andrei Gherzan
>>>
>>
>> [0]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/025961.html
>> [1]: https://lists.yoctoproject.org/pipermail/yocto/2015-August/026151.html
>>
>> Best regards,
>> --
>> Javier Martinez Canillas
>> Open Source Group
>> Samsung Research America
> When reworking: If I am not mistaken there is a chance that
> modesetting will work when using latest kernel versions from Eric
> Anholt. So would you mind to rebase the patches to these changes? I
> would again play tester role.
>

Yes, I will. I know Derek was also playing with Eric's latest branch
so I'll coordinate with him and bump the sha-1 id if necessary.
 
> Andreas
> 

Best regards,
-- 
Javier Martinez Canillas
Open Source Group
Samsung Research America

