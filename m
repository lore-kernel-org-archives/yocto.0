Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0451DE00346
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 21:13:25 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id q7L4DONI017240
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 20 Aug 2012 21:13:24 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.21.124) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.309.2; Mon, 20 Aug 2012 21:13:24 -0700
Message-ID: <50330AE3.5090600@windriver.com>
Date: Tue, 21 Aug 2012 00:13:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:9.0) Gecko/20111222 Thunderbird/9.0.1
MIME-Version: 1.0
To: Darren Hart <darren.hart@intel.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4851C9C9@ORSMSX101.amr.corp.intel.com>
	<50329F99.6010506@windriver.com> <5032A6EE.3010201@intel.com>
In-Reply-To: <5032A6EE.3010201@intel.com>
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
X-List-Received-Date: Tue, 21 Aug 2012 04:13:26 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 12-08-20 5:06 PM, Darren Hart wrote:
> On 08/20/2012 01:35 PM, Bruce Ashfield wrote:
>> On 12-08-20 04:31 PM, Liu, Song wrote:
>>> Hi Darren/Bruce,
>>>
>>> Is there anything else that needs to be done for this one? If not, would
>>> you please close it?
>>
>> It was waiting on a few comments, but it made M3, so I'll take
>> care of updating it once more and closing the item later today or
>> early tomorrow.
>
> So sorry... too many things cooking...

bah, no worries. Reviews aren't exactly fun :)

>
> So a review...
>
>> diff --git a/00-README b/00-README
>> index 96a0f7d..ec933cc 100644
>> --- a/00-README
>> +++ b/00-README
>> @@ -1,3 +1,197 @@
>> +1.0 Overview
>> +============
>> +
>> +The linux-yocto kernel is composed of additions/modifications to the
>> +kernel.org source, plus configuration/control data to manage and use those
>> +changes.
>> +
>> +Source code changes are seen as git commits to the kernel source tree, are
>> +arranged into features (sometimes) separated by branches and marked by tags.
>> +
>> +The configuration and control data is contained within a separate branch from
>> +source changes called the meta branch. The configuration data is contained
>> +within the kernel-cache directory structure, and represents the instructions
>> +to modify the source tree and the configuration policies required to configure
>> +and build the kernel.
>> +
>> +While changes to the source code have already been applied to the tree, the
>> +control and configuration data is used before and during the kernel build
>> +process to generate a valid kernel config.
>> +
>> +This README explains the configuration data and policies around the
>> +organization of this information, it is not a guide to tree construction, scc
>> +file syntax or linux-yocto architecture.
>> +
>> +2.0 Configuration Policy
>> +========================
>> +
>> +The configuration data contained within the meta branch has the following
>> +purposes:
>> +
>> + - Documents and defines hardware, non-hardware, required and optional
>> + configuration data that are used to keep software configuration policy
>> + and board support configuration separate. It also tags configuration data
>> + in a manner that an audit can be performed to ensure that polices make it
>> + t[M#&/o the final .config and that required options are not overridden or
>
>       ^ some junk snuck in here it seems

indeed. We call that "edited in emacs in screen .. equals some random
control characters with lag and arrow keys!". I'll yank that out.

>
>> + dropped from the final .config.
>> +
>> + - Creates a baseline configuration that can be inherited/included to result
>> + in consistent configuration across all derived kernel builds
>> +
>> + - Groups patches and their configuration data into documented features. The
>> + proper configuration and enablement of a kernel change is coupled with the
>> + patches that make the change to the source.
>> +
>> + - Creates named feature fragments that when included enable the required
>> + options to implement a specific behaviour (i.e. USB boot)
>> +
>> + - Define BSPs (Board Support Packages) (machines) that select a policy
>
> Should be "Defines" to be consistent with previous paragraphs...

Agreed.

>
>> + (features + config) and hardware options to form a buildable, bootable
>> + configuration.
>> +
>> +The policy that is contained within the meta branch can be overridden by
>
> s/policy/policies/ ?

Deer, Deers, Moose, Meese .. but yah, this can be policies. Changed.

>
>> +external descriptions using the same description format as the meta branch
>> +configuration. This allows for flexible modification and extension of the
>> +base policy. Also, if a previously defined BSP configuration is modified, it
>> +can be audited against the software policy to generate a compliance report.
>> +
>> +2.1 Kernel types (ktypes)
>
> Types ("Title Caps" should be used in section headings for consistency -
> applies throughout)

/me hates capital letters, but I agree. Changed.

> KTYPE should probably always be capitalized?

Assuming that I want to map it directly to the recipe variable and the
define <foo> in the .scc files, it would be capitalized. But I'm not
sure about this one, I'll add a mention that these are "define KTYPE <foo>"
in the .scc files at a minimum.

>
>> +-------------------------
>> +
>> +Kernel types (ktypes) are the highest level policy containers and represent
>> +a significant set of kernel functionality that has been grouped (and named)
>> +or partitioned.
>
> What are you trying to convey with "partitioned" vs. "grouped" ? The
> "or" indicates a functional difference, but it isn't clear what that is
> from this reading.

partitioned means that they are really being kept apart since they won't
work together (think BFS vs CFS, or grsec vs another security patch). 
Grouped
just means that you have 15 or 20 things that you want to collectively
call a "kernel type" and validate that they work together in a particular
configuration. But there's no fundamental incompatibility between these
features and others in the system.

It's a hard vs soft partitioning.

Would the expansion that I have above help ?

>
>> +
>> +There are often significant differences between kernel types in the following
>> +ways:
>> +
>> + - source code. Large or invasive features that cannot be cleanly disabled,
>
> source code: large ...

fixed

>
>> + or that cannot co-exist with other features at a source code level are
>> + separated by kernel type. The preempt-rt patches, alternate schedulers,
>> + grsecurity, are some examples of patches that are important parts of
>> + kernel type definition.
>> +
>> + - behaviour. A kernel type defines a default behaviour, which is often a
>
> behaviour: a kernel type ...

You left my Canadian behaviour .. my spell checker thanks you! Fixed.

>
>> + trade off against other options.
>> +
>> + - performance versus determinism
>> + - security vs flexibility
>
> vs.
>
>> + - size vs features
>
> vs.
>
>> + - ..
>
> ...
>
>> +
>> + are all common parts of behaviour differences between kernel types.
>
> behavioural ?

All fixed.

>
>> +
>> + - feature support. Different kernel types support different sets of features;
>
> feature support: different ...
>
> Incorrect semicolon usage. Replace with a comma.

(fat fingers)

>
>> + such as XIP or different block schedulers, tracers, network devices and
>> + power management.
>
> (this cannot stand alone as sentence)
>
>> +
>> + - board support. Due to the source, behaviour and feature differences between
>
> board support: due ...
>
>> + kernel types, they often dictate hardware/board support. A machine
>> + definition declares which kernel types it supports by providing
>> + descriptions that include a kernel type and add board support configuration
>> + data.
>> +
>> +Kernel types can be inherited and extended. An example inheritance tree is
>> +below:
>> +
>> + base: common/basic functionality, upstream features and bug fixes
>> + |
>> + +--- standard: selected functionality and performance profile.
>> + | |
>> + | +--- preempt-rt: real time extensions for the base + standard
>> + |
>> + +--- small: base functionality + few additional features with a small footprint
>
> I think small should be tiny, right?

Yep. small is an old name for something similar. Switched.

>
>> +
>> +
>> +2.2 features
>
> Features
>
>> +------------
>> +
>> +Kernel features are containers for changes to the kernel via patches and
>> +configuration that implement a specific behaviour. A feature can be small, or
>> +large, simple or complex, but it always represents functionality that can be
>> +included by other features or kernel types.
>> +
>> +If a feature contains patches, it must only be included once by a given
>> +BSP or kernel type, since including it modifies the tree and would result in
>> +the double application of the same patches, which will fail.
>
>
> Fine for the doc - but shouldn't we be able to detect this rather easily?

It is detected, but is currently only a warning. Scanning the contents
of the file to see if it patches, or merges (although a second merge is
fine) would be a way to upgrade the warning to an error. I made a note of
this .. and will put it in.

>
>> +
>> +If functionality is added via patches, is frequently extended by patches, or
>> +periodically contains patches, it is classified as a "feature". It should be
>> +noted, that this is only a logical distinction from config groups, since the
>> +underlying mechanism is the same.
>> +
>> +Features are often sub categorized into a directory structure that groups
>
> sub-categorized
>
>> +them by user defined attributes such as architecture, debug, boot, etc.
>
> I thought we agreed to merge the concepts of config and feature and to
> simplify things... (basically drop "config")
>
>> +
>> +2.2.1 patches
>> +-------------
>> +
>> +patches are a feature subtype and are simply a grouping of changes into a
>
> Patches
>
>> +named category. These typically are included by kernel types, and are not
>> +meant to implement a defined functionality or be included multiple times.
>> +
>> +These often contain bug fixes, backports or other small changes to the kernel
>> +tree, and do not typically contain any kernel configuration fragments. patches
>
> typically? How can a patch contain a config change?

That just means that a directory called 'patches' vs 'features' wouldn't
contain associated config fragments to enable that functionality. But since
the system is flexible, there's no reason they can't, so I went with
"typically" :) I can clarify.

>
> s/\. patches/\. Patches/

Fixed.

>
>> +are normally arranged into a directory structure that makes their maintenance
>> +and carry forward easier.
>> +
>> +2.3 config groups
>> +------------------
>> +
>> +Config groups are collections of configuration options that when included
>> +enable a specific behaviour or functionality. Configuration groups do not
>> +contain patches, and can be included multiple times by any other feature or
>> +kernel type. The impact of configuration groups is additive, and order
>> +matters, since the last included config group can override the behaviour of
>> +previous includes.
>
> Is this the same thing as "config fragment"? If so, we should pick one
> and be consistent. If not, how do they differ?

I was more thinking about the "cfg" subdir and the .scc file that includes
a .cfg when I wrote this. The foo.cfg is the config fragment, the named
group is the .scc file + the .cfg.

I'm not sure it is worth splitting the hair here. I can just go with
configuration fragment. How does that sound ?

>
>> +
>> +Note: Depending on the architecture of the meta data, configuration groups
>> +can be complete, or partitioned. Complete config groups contain all the
>> +options required to enable functionality, partitioned configurations rely on
>> +multiple includes to build up a set of non overlapping options to enable
>
> non-overlapping
>
>> +functionality. Complete groups are simpler to include, but make it more
>> +difficult to remove or disable an option (since it can appear multiple
>> +times),
>
> If a config fragment includes another one - isn't the end result the same?

which part ? The appear multiple times ? Yes, you can end up with thing
via fragments that include others, but not if you've partitioned them
all.

>
>> while partitioned configuration only has a single option in a single
>> +config group, but make it more difficult to determine the right set of groups
>> +to include for the desired functionality.
>> +
>> +
>> +2.4 Machine / BSP
>> +-----------------
>> +
>> +The machine is the top level description of a board, and the hardware that is
>
> top-level
> s/is$/it/

fixed.

>
>> +supports and is the typical entry point of a build system to the
>> +configuration data of the meta branch.
>
> For whatever reason, that reads as very abstract and is rather difficult
> to parse. I understand it... but _I_ needed to read it several times,
> and I know the system fairly well...

.. I'll try something easier on the head, I was trying to stay out
of .scc file syntax, which is probably why it reads hard. Maybe this ?

  The machine is the top-level description of a board, and the hardware
  that it supports. A machine/BSP .scc file is found by a build system
  to start the processing of a particular machine and kernel type
  combination. From the machine description, all the source code changes
  (patches, features) and configuration changes that are used to
  configure and build the kernel are located.

?

>
>> +
>> +Machines directly include kernel types (to inherit their functionality),
>> +feature and config groups to define non-hardware configuration and
>
> Machines directly include kernel types to inherit their functionality.
> They include feature and config groups to define non-hardware
> configuration and

must have been late when I wrote that. Changed.

>
>> +functionality. New / local configuration values introduced by a BSP should
>
> s@/@or@
>
>> +not override non-hardware (or policy) values unless absolutely necessary, but
>> +should define the hardware they support.
>
> The "non-hardware == policy" point hasn't really been made clear at this
> point (at least not in my first read through this).

Hmm. yes. I'll clarify here. At the very top I had this:

   - Documents and defines hardware, non-hardware, required and optional
     configuration data that are used to keep software configuration policy
     and board support configuration separate. It also tags 
configuration data
     in a manner that an audit can be performed to ensure that polices 
make it
     to the final .config and that required options are not overridden or
     dropped from the final .config.

I'll reference and emphasize that here.

>
>> +
>> +There is one machine description per kernel type, that is located by a build
>
> s/,//
>
>> +system when started the process of configuring and build a kernel for a
>
> when it starts the process of configuring and building a kernel.
>
>> +board.
>> +
>> +
>> +2.5 staged features
>> +-------------------
>> +
>> +It is often desirable to manage some features independently from other
>> +features in the tree to allow clean upstream fix integration and to avoid
>> +managing large numbers of patches and contributions. These branches are
>> +called "staged" features, and are included by BSP definitions by merging the
>> +topic branch in their board description.
>> +
>> + git merge emgd-1.14
>> +
>> +Is an example of merging a staged emgd feature into a BSP branch via a git
>> +operation.
>
> s/Is/is/
>
>> +
>> +
>> +2.6 References
>> +--------------
>> +
>> + git://git.yoctoproject.org/yocto-kernel-cache
>> -This is the cache of the kernel patches for the "next" kernel layer.
>
> Thanks. Sorry for the late reply.

Changes made and pushed to the yocto-kernel-cache, we can continue to 
iterate,
but this review was very helpful!

Bruce

>


