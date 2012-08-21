Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6547EE00346
	for <yocto@yoctoproject.org>; Tue, 21 Aug 2012 10:17:23 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by orsmga102.jf.intel.com with ESMTP; 21 Aug 2012 10:16:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,803,1336374000"; d="scan'208";a="183538777"
Received: from unknown (HELO envy.home) ([10.255.13.36])
	by azsmga001.ch.intel.com with ESMTP; 21 Aug 2012 10:16:33 -0700
Message-ID: <5033C1F9.1050008@intel.com>
Date: Tue, 21 Aug 2012 10:14:33 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4851C9C9@ORSMSX101.amr.corp.intel.com>
	<50329F99.6010506@windriver.com> <5032A6EE.3010201@intel.com>
	<50330AE3.5090600@windriver.com>
In-Reply-To: <50330AE3.5090600@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: https://bugzilla.yoctoproject.org/show_bug.cgi?id=1649
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
X-List-Received-Date: Tue, 21 Aug 2012 17:17:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/20/2012 09:13 PM, Bruce Ashfield wrote:

>>> +Kernel types (ktypes) are the highest level policy containers and represent
>>> +a significant set of kernel functionality that has been grouped (and named)
>>> +or partitioned.
>>
>> What are you trying to convey with "partitioned" vs. "grouped" ? The
>> "or" indicates a functional difference, but it isn't clear what that is
>> from this reading.
> 
> partitioned means that they are really being kept apart since they won't
> work together (think BFS vs CFS, or grsec vs another security patch). 
> Grouped
> just means that you have 15 or 20 things that you want to collectively
> call a "kernel type" and validate that they work together in a particular
> configuration. But there's no fundamental incompatibility between these
> features and others in the system.
> 
> It's a hard vs soft partitioning.
> 
> Would the expansion that I have above help ?

Hrm, nah. Let's leave it and address it if someone else raises a
concern. I might be alone here.

>>> + - behaviour. A kernel type defines a default behaviour, which is often a
>>
>> behaviour: a kernel type ...
> 
> You left my Canadian behaviour .. my spell checker thanks you! Fixed.

With a UK architect it seemed presumptuous to do otherwise ;-)

>>> +named category. These typically are included by kernel types, and are not
>>> +meant to implement a defined functionality or be included multiple times.
>>> +
>>> +These often contain bug fixes, backports or other small changes to the kernel
>>> +tree, and do not typically contain any kernel configuration fragments. patches
>>
>> typically? How can a patch contain a config change?
> 
> That just means that a directory called 'patches' vs 'features' wouldn't
> contain associated config fragments to enable that functionality. But since
> the system is flexible, there's no reason they can't, so I went with
> "typically" :) I can clarify.

Yeah... I think we need to kill config vs feature vs patches and merge
them together into a single term. Having the three seems to add more
confusion than information.

What do you see as the value for maintaining the 3 concepts separately?

>>> +Config groups are collections of configuration options that when included
>>> +enable a specific behaviour or functionality. Configuration groups do not
>>> +contain patches, and can be included multiple times by any other feature or
>>> +kernel type. The impact of configuration groups is additive, and order
>>> +matters, since the last included config group can override the behaviour of
>>> +previous includes.
>>
>> Is this the same thing as "config fragment"? If so, we should pick one
>> and be consistent. If not, how do they differ?
> 
> I was more thinking about the "cfg" subdir and the .scc file that includes
> a .cfg when I wrote this. The foo.cfg is the config fragment, the named
> group is the .scc file + the .cfg.
> 
> I'm not sure it is worth splitting the hair here. I can just go with
> configuration fragment. How does that sound ?

You're right, the config .scc file is not a config fragment, the .cfg
files are. So a config group includes one or more config fragments. Got it.


>>> +Note: Depending on the architecture of the meta data, configuration groups
>>> +can be complete, or partitioned. Complete config groups contain all the

                    ^ comma should be removed

>>> +options required to enable functionality, partitioned configurations rely on
>>> +multiple includes to build up a set of non overlapping options to enable
>>
>> non-overlapping
>>
>>> +functionality. Complete groups are simpler to include, but make it more
>>> +difficult to remove or disable an option (since it can appear multiple
>>> +times),
>>
>> If a config fragment includes another one - isn't the end result the same?
> 
> which part ? The appear multiple times ? Yes, you can end up with thing
> via fragments that include others, but not if you've partitioned them
> all.


complete.scc
  include complete.cfg

complete.cfg
  CONFIG_A=y
  CONFIG_B=y

partitioned.scc
  include partitioned_a.cfg
  include partitioned_b.cfg

partitioned_a.cfg
  CONFIG_A=y

partitioned_b.cfg
  CONFIG_B=y

This is how I understood your description. Assuming I have this right,
there is no difference between including compelte.scc or
partitioned.scc. Each will pull in all the same CONFIG* options and
modify/overwrite/etc any existing settings in exactly the same way. This
is what I meant by "same end result".

I guess what you're saying is the partitioned approach is more modular
and allows for changing a specific option in one place (CONFIG_A in
partitioned_a.cfg which will roll up into partitioned.scc) rather than
having several scc's similar to complete.scc which all need to be
modidfied to change CONFIG_A.

That could probably be made clearer.

>>> +supports and is the typical entry point of a build system to the
>>> +configuration data of the meta branch.
>>
>> For whatever reason, that reads as very abstract and is rather difficult
>> to parse. I understand it... but _I_ needed to read it several times,
>> and I know the system fairly well...
> 
> .. I'll try something easier on the head, I was trying to stay out
> of .scc file syntax, which is probably why it reads hard. Maybe this ?
> 
>   The machine is the top-level description of a board, and the hardware
>   that it supports. A machine/BSP .scc file is found by a build system

I would stick with machine or BSP, but not confuse the issue by using
both. In the case of the linux-yocto meta data, the term BSP is more
discoverable as it maps to the directory name.

>   to start the processing of a particular machine and kernel type
>   combination. From the machine description, all the source code changes
>   (patches, features) and configuration changes that are used to
>   configure and build the kernel are located.

It's still a bit round about. How about:

The BSP .scc files combine the policy from the kernel type with the
hardware requirements of the machine into a single place. This file
describes all the source code changes from patches and features and the
configuration changes that are used to configure and build the kernel.


> Changes made and pushed to the yocto-kernel-cache, we can continue to 
> iterate,
> but this review was very helpful!

Great. Thanks for doing the write-up Bruce.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

