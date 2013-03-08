Return-Path: <j.lelli@sssup.it>
Received: from sssup.it (ms01.sssup.it [193.205.80.99])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A324FE0147E
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 20:02:55 -0800 (PST)
Received: from [50.131.243.51] (account j.lelli@sssup.it HELO [192.168.1.33])
	by sssup.it (CommuniGate Pro SMTP 5.3.14)
	with ESMTPSA id 79547198; Fri, 08 Mar 2013 05:02:53 +0100
Message-ID: <513962E9.4000804@sssup.it>
Date: Thu, 07 Mar 2013 20:02:49 -0800
From: Juri Lelli <j.lelli@sssup.it>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130221 Thunderbird/17.0.3
MIME-Version: 1.0
To: Insop Song <insop.song@gmail.com>
References: <CACzyEJ_3BRjn4s7ADey9uuQpGhgWKeuuyxGVL09HuLAzJ3LqTQ@mail.gmail.com>
	<CACzyEJ_uHp7JQQG=Ufec5ipXdb5aEyWrp38jJFhF+qofsGkZ+Q@mail.gmail.com>
	<513810E4.2040506@windriver.com>
	<CACzyEJ-Nzq1YMH7pDmWhnoco8Xsrm1R9zHDYLO4eM4XKM1a-SA@mail.gmail.com>
	<51389F4E.8070204@windriver.com>
	<CACzyEJ9LrrX7iNP+WWUQOts8D31zWD+0NoHq12ROTB5_tQCWrw@mail.gmail.com>
In-Reply-To: <CACzyEJ9LrrX7iNP+WWUQOts8D31zWD+0NoHq12ROTB5_tQCWrw@mail.gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: A question on adding a new program to a new meta layer
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
X-List-Received-Date: Fri, 08 Mar 2013 04:02:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

On 03/07/2013 01:43 PM, Insop Song wrote:
> Hi Bruce,
>
>
>> What do you have in your "defconfig" ? I'm about to push patches that
>> will make enabling sched_dealine a KERNEL_FEATURE option, which makes
>> it even easier to use.
>>
>
> Here is my defconfg
> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-kernel/linux/linux/defconfig
>
> I've asked this to Juri, too. So this is for the config for sched_deadline
> "Every defconfig kernel should compile and work
> fine (given HZ=1000, NO_HZ not set and HRTIMERS=y)"
>
> And here are the CONFIG that should set  (Juri, please let us know if
> I miss anything)
> ------
> CONFIG_EXPERIMENTAL = y
> CONFIG_CGROUPS = y
> CONFIG_CGROUP_SCHED = n
> CONFIG_HIGH_RES_TIMERS = y
> CONFIG_PREEMPT = y
> CONFIG_PREEMPT_RT = y
> CONFIG_HZ_1000 = y
>
> # CONFIG_NO_HZ is not set
>

I actually have:

CONFIG_HIGH_RES_TIMERS = y
CONFIG_PREEMPT = y
CONFIG_HZ_1000 = y
# CONFIG_NO_HZ is not set

all the other options are not required (anymore, as the PREEMPT_RT,
since SCHED_DEADLINE is currently based on 3.8-rc7).

Thanks,

- Juri

> ------
>
>> But in the meantime, if you want to enable the support on a yocto BSP,
>> you can change your "defconfig" to be "sched-deadline.cfg" and only
>> put the kernel options required to enable the feature.
>
> I will pick up yocto-3.8 bb file from "master" branch and will try
> this way shortly.
>
> Regards,
>
> Insop
>
>>
>> Cheers,
>>
>> Bruce
>>
>>
>>>
>>>    PV = "3.8"
>>> -PR = "dl7"
>>> +PR = "dl"
>>>
>>>    KSRC ?= ""
>>>    S = '${@base_conditional("KSRC", "", "${WORKDIR}/git", "${KSRC}", d)}'
>>>
>>> Thank you.
>>>
>>> Insop
>>>
>>> On Wed, Mar 6, 2013 at 8:00 PM, Bruce Ashfield
>>> <bruce.ashfield@windriver.com> wrote:
>>>>
>>>> On 13-03-05 1:54 AM, Insop Song wrote:
>>>>>
>>>>>
>>>>> Hi,
>>>>>
>>>>> I am preparing a new meta layer for testing and promoting a
>>>>> sched_deadline scheduler, called "meta-dl". I am planning to add
>>>>> scheduler testing tools and different kernel versions as well.
>>>>> - http://insop.github.com/meta-dl/
>>>>
>>>>
>>>>
>>>> FYI: I've already merged and staged sched_dl in linux-yocto_3.8:
>>>>
>>>>
>>>> http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-3.8/log/?h=standard/edf
>>>>
>>>> I'll be supporting it there as well, so it makes sense to coordinate
>>>> our efforts around kernels, configurations and benchmarks.
>>>>
>>>> Juri and I talked about this @ ELC a few weeks ago (I've added
>>>> him to the cc as well), and rather than hiding sched_deadline
>>>> kernel support in a custom kernel layer, I'd like to try and get
>>>> more eyes on it via linux-yocto .. so if we can all coordinate our
>>>> efforts here, that would be much better.
>>>>
>>>> Cheers,
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> With the help of hands-on kernel lab (thank you Tom and Darren), I am
>>>>> able to make kernel with sched_deadline enabled.
>>>>>
>>>>>
>>>>> Now, I am having some trouble of adding testing tools to this meta-dl,
>>>>> and hope I can get some help from you.
>>>>>
>>>>> - problem: adding a new software into my meta-dl layer
>>>>>
>>>>> - symtom and questions?
>>>>> 1. bitbake core-image-minimal (normal image build) won't include the
>>>>> additional program that I listed in .bb file below
>>>>> 2. If I do "bitbake schedtool-dl -c install" it builds and install,
>>>>> but at "i586" location instead of my machine staging rootfs
>>>>> (dl-qemux86)
>>>>>
>>>>>
>>>>>
>>>>> - Here is my .bb file that pulls an additional program.
>>>>>
>>>>>
>>>>> https://github.com/insop/meta-dl/blob/sched-dl-V7/recipes-tools/schedtool-dl/schedtool-dl.bb
>>>>> ===
>>>>> DESCRIPTION = "schedtool-dl (scheduler test tool) for deadline
>>>>> scheduler"
>>>>> HOMEPAGE = "https://github.com/insop/schedtool-dl"
>>>>> SECTION = "base"
>>>>> LICENSE = "GPLv2"
>>>>> LIC_FILES_CHKSUM =
>>>>> "file://Makefile;endline=55;md5=e4b4e8ed9c2132e1d727a1bb5e3bd984"
>>>>> PR = "r1"
>>>>>
>>>>> SRC_URI = "git://github.com/insop/schedtool-dl.git;protocol=git"
>>>>> SRCREV = "${AUTOREV}"
>>>>>
>>>>> S = "${WORKDIR}/git"
>>>>>
>>>>> do_compile() {
>>>>>            oe_runmake
>>>>> }
>>>>>
>>>>> do_install() {
>>>>>            oe_runmake install DESTDIR=${D}
>>>>> }
>>>>>
>>>>> PARALLEL_MAKE = ""
>>>>>
>>>>> BBCLASSEXTEND = "native"
>>>>>
>>>>> COMPATIBLE_MACHINE_dl-qemux86 = "dl-qemux86"
>>>>> ====
>>>>>
>>>>>
>>>>> - I've updated my conf/layer.conf file to include above file
>>>>> https://github.com/insop/meta-dl/blob/sched-dl-V7/conf/layer.conf
>>>>> ====
>>>>> # We have a conf and classes directory, add to BBPATH
>>>>> BBPATH := "${BBPATH}:${LAYERDIR}"
>>>>>
>>>>> # We have a recipes directory, add to BBFILES
>>>>> BBFILES := "${BBFILES} ${LAYERDIR}/recipes-*/*/*.bb \
>>>>>            ${LAYERDIR}/recipes-*/*/*.bbappend"
>>>>>
>>>>> BBFILE_COLLECTIONS += "dl-qemux86"
>>>>> BBFILE_PATTERN_dl-qemux86 := "^${LAYERDIR}/"
>>>>> BBFILE_PRIORITY_dl-qemux86 = "6"
>>>>> =====
>>>>>
>>>>>
>>>>>
>>>>> Thank you.
>>>>>
>>>>> Regards,
>>>>>
>>>>> Insop
>>>>>
>>>>>
>>>>> - ref:
>>>>> 1. sched_deadline:
>>>>> https://events.linuxfoundation.org/events/linuxcon-europe/song
>>>>> 2. sched_deadline:
>>>>>
>>>>>
>>>>> http://events.linuxfoundation.org/images/stories/slides/elc2013_kobayashi.pdf?a
>>>>> _______________________________________________
>>>>> yocto mailing list
>>>>> yocto@yoctoproject.org
>>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>>
>>>>
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>

