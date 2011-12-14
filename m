Return-Path: <darren.hart@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3781FE00305
	for <yocto@yoctoproject.org>; Tue, 13 Dec 2011 21:47:33 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 13 Dec 2011 21:47:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="46998974"
Received: from unknown (HELO envy.home) ([10.255.12.211])
	by AZSMGA002.ch.intel.com with ESMTP; 13 Dec 2011 21:47:32 -0800
Message-ID: <4EE83861.4060607@intel.com>
Date: Tue, 13 Dec 2011 21:47:13 -0800
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:7.0) Gecko/20110927 Thunderbird/7.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <4BD43A85686FC34D819098DB1C3999D901900BC33C@orsmsx502.amr.corp.intel.com>
	<4EE7DA4D.4080500@windriver.com> <4EE7DC81.6030609@intel.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC38A@orsmsx502.amr.corp.intel.com>
	<4EE7DEC2.5050803@windriver.com>
	<4BD43A85686FC34D819098DB1C3999D901900BC3A3@orsmsx502.amr.corp.intel.com>
	<4EE83092.5000500@windriver.com>
In-Reply-To: <4EE83092.5000500@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
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
X-List-Received-Date: Wed, 14 Dec 2011 05:47:33 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 12/13/2011 09:13 PM, Bruce Ashfield wrote:
> On 11-12-13 6:26 PM, Bodke, Kishore K wrote:
>> Yes.
>> Its with poky Edison with poky-extras/meta-kernel-dev master branch I am using for my build.
> 
> This is likely the problem. I use and test meta-kernel-dev everyday,
> but that's always against master. I keep them in lockstep, since
> meta-kernel-dev never really 'releases'.
> 
> That being said, we can figure out a combination that works. The
> best thing to do, would be to remove the kern-tools-native bbappend
> from your meta-kernel-dev layer (for now). You don't want the new
> tools.

That won't work.  He is using the latest kernel which has needs
merge_config.sh - as I ran into myself last week. I had Kishore
cherry-pick the last two patches to kern-tools-native from master and
that got things going for him. So again, the question is: Why didn't the
kern-tools-native bbappend do that for him?

--
Darren

> 
> If that doesn't fix the problem, look for merge_log.txt in your
> linux/meta/cfg/ directory structure and that will tell us exactly
> what is going wrong.
> 
> Bruce
> 
>>
>> Thanks
>> Kishore.
>>
>> -----Original Message-----
>> From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
>> Sent: Tuesday, December 13, 2011 3:25 PM
>> To: Bodke, Kishore K
>> Cc: Hart, Darren; yocto@yoctoproject.org
>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
>>
>> On 11-12-13 6:17 PM, Bodke, Kishore K wrote:
>>> Yeah.  I am using local bare clone for the linux-yocto-3.0 and using poky-extras/meta-kernel-dev in my bblayers.conf for my build.
>>> Sorry for not mentioning this before.
>>
>> Aha. This is completely different then. As Darren mentioned, the bbappend
>> should be getting the latest tools, I can look into that.
>>
>> But to be clear, is this an edison branch + meta-kernel-dev ? That
>> will cause problems at some point (and I'm not sure if that is what
>> is happening here yet), since recipe updates to use the new tools
>> wouldn't be reflected in that branch while you are fed the new tools.
>>
>> Cheers,
>>
>> Bruce
>>
>>>
>>> Thanks
>>> Kishore.
>>>
>>> -----Original Message-----
>>> From: Hart, Darren
>>> Sent: Tuesday, December 13, 2011 3:15 PM
>>> To: Bruce Ashfield
>>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
>>> Subject: Re: kernel-tools failure for linux-yoctort_3.0.bb for poky/edison branch.
>>>
>>> On 12/13/2011 03:05 PM, Bruce Ashfield wrote:
>>>> On 11-12-13 5:50 PM, Bodke, Kishore K wrote:
>>>>> Hi,
>>>>>
>>>>> I get failure for the linux-yoctort_3.0.bb file for the poky Edison branch.
>>>>>
>>>>> Darren told that it was fixed and merged to master.
>>>>
>>>> This shouldn't be happening on edison at all. The changes to the
>>>> kernel recipes/tools to use the merge_config.sh should never have
>>>> showed up in edison. That's yocto 1.2 development work.
>>>>
>>>> So the fix for this is to find out what leaked into edison and
>>>> revert it. I'll have a look at that later tonight.
>>>
>>> No no. Kishore is using meta-kernel-dev. As such he is getting the
>>> latest linux-yocto repository and SRC_REVs. The question, I think, is
>>> really why isn't the kern-tools-native bbappend from meta-kernel-dev
>>> doing this for him.
>>>
>>> --
>>> Darren
>>>
>>>>
>>>> Bruce
>>>>
>>>>>
>>>>> I wanted to bring to the list about this error message.
>>>>>
>>>>> ERROR: Function 'do_kernel_configme' failed (see
>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502
>>>>> for further information)
>>>>>
>>>>> ERROR: Logfile of failure stored in:
>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502
>>>>>
>>>>> Log data follows:
>>>>>
>>>>> | [INFO] doing kernel configme
>>>>>
>>>>> | [INFO] Branch yocto/standard/preempt-rt/base used by
>>>>> common-pc-preempt-rt.scc
>>>>>
>>>>> | [INFO] collecting configs in ./meta/meta-series
>>>>>
>>>>> | mv: cannot stat
>>>>> `/usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/linux-crystalforest-preempt-rt-build/.tmp.config*':
>>>>> No such file or directory
>>>>>
>>>>> | creation of pre-processed config data failed
>>>>>
>>>>> | config of yocto/standard/preempt-rt/base (common-pc-preempt-rt.scc) failed
>>>>>
>>>>> | ERROR: Function 'do_kernel_configme' failed (see
>>>>> /usr/local/src/yocto_1_1_release/poky/build1/tmp/work/crystalforest-poky-linux/linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1/temp/log.do_kernel_configme.18502
>>>>> for further information)
>>>>>
>>>>> NOTE: package
>>>>> linux-yocto-rt-3.0.4+git1+d05450e4aef02c1b7137398ab3a9f8f96da74f52_1+0936e13cc65d816f1759e2322c5e3fc82a5037f3-r1:
>>>>> task do_kernel_configme: Failed
>>>>>
>>>>> ERROR: Task 716
>>>>> (/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb,
>>>>> do_kernel_configme) failed with exit code '1'
>>>>>
>>>>> Waiting for 7 active tasks to finish:
>>>>>
>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>
>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>
>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>
>>>>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
>>>>>
>>>>> 4: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>>>>
>>>>> 6: opensp-native-1.5-r2 do_configure (pid 20213)
>>>>>
>>>>> Waiting for 6 active tasks to finish:
>>>>>
>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>
>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>
>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>
>>>>> 3: font-util-native-1.2.0-r2.1 do_configure (pid 14632)
>>>>>
>>>>> 4: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> 5: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>>>>
>>>>> NOTE: package opensp-native-1.5-r2: task do_configure: Succeeded
>>>>>
>>>>> Waiting for 5 active tasks to finish:
>>>>>
>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>
>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>
>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>
>>>>> 3: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> 4: dbus-native-1.4.12-r0 do_configure (pid 20209)
>>>>>
>>>>> NOTE: package font-util-native-1.2.0-r2.1: task do_configure: Succeeded
>>>>>
>>>>> Waiting for 4 active tasks to finish:
>>>>>
>>>>> 0: acl-native-2.2.51-r2 do_configure (pid 12164)
>>>>>
>>>>> 1: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>
>>>>> 2: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>
>>>>> 3: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> NOTE: package dbus-native-1.4.12-r0: task do_configure: Succeeded
>>>>>
>>>>> Waiting for 3 active tasks to finish:
>>>>>
>>>>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>
>>>>> 1: kbproto-native-1_1.0.5-r0 do_configure (pid 20113)
>>>>>
>>>>> 2: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> NOTE: package acl-native-2.2.51-r2: task do_configure: Succeeded
>>>>>
>>>>> Waiting for 2 active tasks to finish:
>>>>>
>>>>> 0: elfutils-native-0.148-r3 do_install (pid 19851)
>>>>>
>>>>> 1: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> NOTE: package kbproto-native-1_1.0.5-r0: task do_configure: Succeeded
>>>>>
>>>>> Waiting for 1 active tasks to finish:
>>>>>
>>>>> 0: bison-native-2.5-r1 do_configure (pid 20206)
>>>>>
>>>>> NOTE: package elfutils-native-0.148-r3: task do_install: Succeeded
>>>>>
>>>>> NOTE: package bison-native-2.5-r1: task do_configure: Succeeded
>>>>>
>>>>> ERROR:
>>>>> '/usr/local/src/yocto_1_1_release/poky/meta/recipes-kernel/linux/linux-yocto-rt_3.0.bb'
>>>>> failed
>>>>>
>>>>> Thanks
>>>>>
>>>>> Kishore.
>>>>>
>>>>
>>>
>>>
>>
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

