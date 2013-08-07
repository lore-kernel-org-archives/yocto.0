Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8B1CE0052E
	for <yocto@yoctoproject.org>; Wed,  7 Aug 2013 10:23:33 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r77HNUuR012768
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 7 Aug 2013 10:23:30 -0700 (PDT)
Received: from [128.224.130.143] (128.224.130.143) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.2.342.3;
	Wed, 7 Aug 2013 10:23:30 -0700
Message-ID: <52028282.8020207@windriver.com>
Date: Wed, 7 Aug 2013 13:23:14 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: <martiert@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
	<8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
	<51FF1602.8040805@windriver.com>
	<BD3A762D-ACE6-4DB3-971F-B5CC975C0D69@gmail.com>
In-Reply-To: <BD3A762D-ACE6-4DB3-971F-B5CC975C0D69@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Wed, 07 Aug 2013 17:23:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-07 12:31 PM, martiert@gmail.com wrote:
> Bruce, have you had the opportunity to look at this yet?
>

I was about to email on this. I was out of the office last week, but
was just starting on this last night.

Cheers,

Bruce

> - Martin
>
> On 5. aug. 2013, at 05:03, Bruce Ashfield <bruce.ashfield@windriver.com> wrote:
>
>> On 13-08-04 5:23 PM, martiert@gmail.com wrote:
>>>
>>>
>>> On 31. juli 2013, at 14:42, Bruce Ashfield <bruce.ashfield@gmail.com> wrote:
>>>
>>>> On Wed, Jul 31, 2013 at 6:57 AM, Martin Ertsaas <martiert@gmail.com> wrote:
>>>>> On 07/31/13 10:57, Andrea Adami wrote:
>>>>>> On Wed, Jul 31, 2013 at 9:21 AM, Martin Ertsaas <martiert@gmail.com> wrote:
>>>>>>> Hi.
>>>>>>>
>>>>>>> I'm creating my own bsp layer for omap4 chips (Yes, I know of meta-ti,
>>>>>>> but I want to learn how to do this myself :)). I'm trying to use the
>>>>>>> linux-yocto 3.4 kernel,
>>>>>>> and have gotten it to work locally. I then made a
>>>>>>> linux-yocto_3.4.bbappend which contains the following:
>>>>>>>
>>>>>>> COMPATIBLE_MACHINE_pandaboard = "pandaboard"
>>>>>>>
>>>>>>> SRCREV_machine_pandaboard ?= "7eb5fbf903d9db90c3cf371b65e1f2a68d5676d7"
>>>>>>>
>>>>>>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>>>>>>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}-3.4"
>>>>>
>>>>> The defconfig is found. I can see a defconfig in ${WORKDIR} with zero
>>>>> diff to my defconfig. It is, however, not copied from there into
>>>>> ${WORKDIR}/linux.
>>>>
>>>> If you are looking in ${WORKDIR}/linux, you'll never see the defconfig. Even
>>>> in the base kernel class it is copied to the build directory, which is
>>>> linux-$MACHINE-build.
>>>>
>>>> Even after the copy, it is pulled into a secondary set of
>>>> configuration steps that
>>>> allow configuration fragments to be processed and layered on top of
>>>> that baseline
>>>> configuration.
>>>>
>>>> Are you determining that it isn't being used by the existence or non
>>>> existence of a
>>>> file, or are you seeing other issues with the resulting .config ?
>>>
>>> What I see is that I have a ${WORKDIR}/defconfig. The .config in linux-${MACHINE}-build is for a different architecture (x86) than my defconfig, the same holds for the .config.old in the same place. Tried adding B=${WORKDIR}/linux-${MACHINE}-build to my append, but no difference.
>>
>> Can you make your BSP layer available to me ? I need to see this
>> happening on my machines, since all my tests worked here :(
>>
>> B=${WORKDIR}/linux-${MACHINE}-build would already be set by the
>> base classes, so I wouldn't have expected it to make much of a
>> difference.
>>
>> Bruce
>>
>>>>
>>>> Technically you don't even need a defconfig, you can just use a .cfg
>>>> with h/w options
>>>> for the board, but that's a different topic.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> I changed it so it uses the colon though, and removed THISDIR as
>>>>> suggested by Paul, but didn't help. I still don't get the config copied
>>>>> in, and if I add the do_configure_prepend myself to do this, I get a
>>>>> message from the kernel building saying my folder is unclean.
>>>>>
>>>>> - Martin
>>>>>
>>>>>> Martin,
>>>>>>
>>>>>> the code in kernel.bbclass does already copy defonfig to .config, see
>>>>>> http://cgit.openembedded.org/openembedded-core/tree/meta/classes/kernel.bbclass#n216
>>>>>>
>>>>>> I think your problem is the deconfig is not found,  you miss a colon at the end.
>>>>>> Use something like
>>>>>>
>>>>>> FILESEXTRAPATHS_prepend :=
>>>>>> "${THISDIR}/${PN}-3.4:${THISDIR}/${PN}:${THISDIR}/files:"
>>>>>>
>>>>>> Cheers
>>>>>>
>>>>>> Andrea
>>>>>>
>>>>>>
>>>>>>> SRC_URI += "file://defconfig"
>>>>>>>
>>>>>>> do_configure_prepend() {
>>>>>>>         cp ${WORKDIR}/defconfig ${S}/.config
>>>>>>> }
>>>>>>>
>>>>>>> Problem I get is, without this configure_prepend, my defconfig is not
>>>>>>> copied into .config the kernel folder. With this however, I get a
>>>>>>> complaint from the kernel that the kernel directory is not clean and I
>>>>>>> have to run make mrproper.
>>>>>>>
>>>>>>> I would greatly appreciate any pointer/help/explanations as to what I
>>>>>>> have done wrong here, and how to fix it. Have been struggling for this
>>>>>>> for a while now, and have no idea what I have done wrong.
>>>>>>>
>>>>>>> Best regards
>>>>>>> Martin Ertsaas
>>>>>>> _______________________________________________
>>>>>>> yocto mailing list
>>>>>>> yocto@yoctoproject.org
>>>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>>
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>>
>>>> --
>>>> "Thou shalt not follow the NULL pointer, for chaos and madness await
>>>> thee at its end"
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>


