Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E8ECE0027E
	for <yocto@yoctoproject.org>; Mon, 20 Aug 2012 14:08:54 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 20 Aug 2012 14:08:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,799,1336374000"; d="scan'208";a="188932732"
Received: from unknown (HELO envy.home) ([10.7.199.146])
	by orsmga002.jf.intel.com with ESMTP; 20 Aug 2012 14:08:53 -0700
Message-ID: <5032A6EE.3010201@intel.com>
Date: Mon, 20 Aug 2012 14:06:54 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <7E680CB2A76BB8438D08CF13C09FC53A4851C9C9@ORSMSX101.amr.corp.intel.com>
	<50329F99.6010506@windriver.com>
In-Reply-To: <50329F99.6010506@windriver.com>
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
X-List-Received-Date: Mon, 20 Aug 2012 21:08:54 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/20/2012 01:35 PM, Bruce Ashfield wrote:
> On 12-08-20 04:31 PM, Liu, Song wrote:
>> Hi Darren/Bruce,
>>
>> Is there anything else that needs to be done for this one? If not, would
>> you please close it?
> 
> It was waiting on a few comments, but it made M3, so I'll take
> care of updating it once more and closing the item later today or
> early tomorrow.

So sorry... too many things cooking...

So a review...

> diff --git a/00-README b/00-README
> index 96a0f7d..ec933cc 100644
> --- a/00-README
> +++ b/00-README
> @@ -1,3 +1,197 @@
> +1.0 Overview
> +============
> +
> +The linux-yocto kernel is composed of additions/modifications to the
> +kernel.org source, plus configuration/control data to manage and use those
> +changes.
> +
> +Source code changes are seen as git commits to the kernel source tree, are
> +arranged into features (sometimes) separated by branches and marked by tags.
> +
> +The configuration and control data is contained within a separate branch from
> +source changes called the meta branch. The configuration data is contained
> +within the kernel-cache directory structure, and represents the instructions
> +to modify the source tree and the configuration policies required to configure
> +and build the kernel.
> +
> +While changes to the source code have already been applied to the tree, the
> +control and configuration data is used before and during the kernel build
> +process to generate a valid kernel config.
> +
> +This README explains the configuration data and policies around the
> +organization of this information, it is not a guide to tree construction, scc
> +file syntax or linux-yocto architecture.
> +
> +2.0 Configuration Policy
> +========================
> +
> +The configuration data contained within the meta branch has the following
> +purposes:
> +
> + - Documents and defines hardware, non-hardware, required and optional
> + configuration data that are used to keep software configuration policy
> + and board support configuration separate. It also tags configuration data
> + in a manner that an audit can be performed to ensure that polices make it
> + t[M#&/o the final .config and that required options are not overridden or

     ^ some junk snuck in here it seems

> + dropped from the final .config.
> +
> + - Creates a baseline configuration that can be inherited/included to result
> + in consistent configuration across all derived kernel builds
> +
> + - Groups patches and their configuration data into documented features. The
> + proper configuration and enablement of a kernel change is coupled with the
> + patches that make the change to the source.
> +
> + - Creates named feature fragments that when included enable the required
> + options to implement a specific behaviour (i.e. USB boot)
> +
> + - Define BSPs (Board Support Packages) (machines) that select a policy

Should be "Defines" to be consistent with previous paragraphs...

> + (features + config) and hardware options to form a buildable, bootable
> + configuration.
> +
> +The policy that is contained within the meta branch can be overridden by

s/policy/policies/ ?

> +external descriptions using the same description format as the meta branch
> +configuration. This allows for flexible modification and extension of the
> +base policy. Also, if a previously defined BSP configuration is modified, it
> +can be audited against the software policy to generate a compliance report.
> +
> +2.1 Kernel types (ktypes)

Types ("Title Caps" should be used in section headings for consistency -
applies throughout)
KTYPE should probably always be capitalized?

> +-------------------------
> +
> +Kernel types (ktypes) are the highest level policy containers and represent
> +a significant set of kernel functionality that has been grouped (and named)
> +or partitioned.

What are you trying to convey with "partitioned" vs. "grouped" ? The
"or" indicates a functional difference, but it isn't clear what that is
from this reading.

> +
> +There are often significant differences between kernel types in the following
> +ways:
> +
> + - source code. Large or invasive features that cannot be cleanly disabled,

source code: large ...

> + or that cannot co-exist with other features at a source code level are
> + separated by kernel type. The preempt-rt patches, alternate schedulers,
> + grsecurity, are some examples of patches that are important parts of
> + kernel type definition.
> +
> + - behaviour. A kernel type defines a default behaviour, which is often a

behaviour: a kernel type ...

> + trade off against other options.
> +
> + - performance versus determinism
> + - security vs flexibility

vs.

> + - size vs features

vs.

> + - ..

...

> +
> + are all common parts of behaviour differences between kernel types.

behavioural ?

> +
> + - feature support. Different kernel types support different sets of features;

feature support: different ...

Incorrect semicolon usage. Replace with a comma.

> + such as XIP or different block schedulers, tracers, network devices and
> + power management.

(this cannot stand alone as sentence)

> +
> + - board support. Due to the source, behaviour and feature differences between

board support: due ...

> + kernel types, they often dictate hardware/board support. A machine
> + definition declares which kernel types it supports by providing
> + descriptions that include a kernel type and add board support configuration
> + data.
> +
> +Kernel types can be inherited and extended. An example inheritance tree is
> +below:
> +
> + base: common/basic functionality, upstream features and bug fixes
> + |
> + +--- standard: selected functionality and performance profile.
> + | |
> + | +--- preempt-rt: real time extensions for the base + standard
> + |
> + +--- small: base functionality + few additional features with a small footprint

I think small should be tiny, right?

> +
> +
> +2.2 features

Features

> +------------
> +
> +Kernel features are containers for changes to the kernel via patches and
> +configuration that implement a specific behaviour. A feature can be small, or
> +large, simple or complex, but it always represents functionality that can be
> +included by other features or kernel types.
> +
> +If a feature contains patches, it must only be included once by a given
> +BSP or kernel type, since including it modifies the tree and would result in
> +the double application of the same patches, which will fail.


Fine for the doc - but shouldn't we be able to detect this rather easily?

> +
> +If functionality is added via patches, is frequently extended by patches, or
> +periodically contains patches, it is classified as a "feature". It should be
> +noted, that this is only a logical distinction from config groups, since the
> +underlying mechanism is the same.
> +
> +Features are often sub categorized into a directory structure that groups

sub-categorized

> +them by user defined attributes such as architecture, debug, boot, etc.

I thought we agreed to merge the concepts of config and feature and to
simplify things... (basically drop "config")

> +
> +2.2.1 patches
> +-------------
> +
> +patches are a feature subtype and are simply a grouping of changes into a

Patches

> +named category. These typically are included by kernel types, and are not
> +meant to implement a defined functionality or be included multiple times.
> +
> +These often contain bug fixes, backports or other small changes to the kernel
> +tree, and do not typically contain any kernel configuration fragments. patches

typically? How can a patch contain a config change?

s/\. patches/\. Patches/

> +are normally arranged into a directory structure that makes their maintenance
> +and carry forward easier.
> +
> +2.3 config groups
> +------------------
> +
> +Config groups are collections of configuration options that when included
> +enable a specific behaviour or functionality. Configuration groups do not
> +contain patches, and can be included multiple times by any other feature or
> +kernel type. The impact of configuration groups is additive, and order
> +matters, since the last included config group can override the behaviour of
> +previous includes.

Is this the same thing as "config fragment"? If so, we should pick one
and be consistent. If not, how do they differ?

> +
> +Note: Depending on the architecture of the meta data, configuration groups
> +can be complete, or partitioned. Complete config groups contain all the
> +options required to enable functionality, partitioned configurations rely on
> +multiple includes to build up a set of non overlapping options to enable

non-overlapping

> +functionality. Complete groups are simpler to include, but make it more
> +difficult to remove or disable an option (since it can appear multiple
> +times),

If a config fragment includes another one - isn't the end result the same?

> while partitioned configuration only has a single option in a single
> +config group, but make it more difficult to determine the right set of groups
> +to include for the desired functionality.
> +
> +
> +2.4 Machine / BSP
> +-----------------
> +
> +The machine is the top level description of a board, and the hardware that is

top-level
s/is$/it/

> +supports and is the typical entry point of a build system to the
> +configuration data of the meta branch.

For whatever reason, that reads as very abstract and is rather difficult
to parse. I understand it... but _I_ needed to read it several times,
and I know the system fairly well...

> +
> +Machines directly include kernel types (to inherit their functionality),
> +feature and config groups to define non-hardware configuration and

Machines directly include kernel types to inherit their functionality.
They include feature and config groups to define non-hardware
configuration and

> +functionality. New / local configuration values introduced by a BSP should

s@/@or@

> +not override non-hardware (or policy) values unless absolutely necessary, but
> +should define the hardware they support.

The "non-hardware == policy" point hasn't really been made clear at this
point (at least not in my first read through this).

> +
> +There is one machine description per kernel type, that is located by a build

s/,//

> +system when started the process of configuring and build a kernel for a

when it starts the process of configuring and building a kernel.

> +board.
> +
> +
> +2.5 staged features
> +-------------------
> +
> +It is often desirable to manage some features independently from other
> +features in the tree to allow clean upstream fix integration and to avoid
> +managing large numbers of patches and contributions. These branches are
> +called "staged" features, and are included by BSP definitions by merging the
> +topic branch in their board description.
> +
> + git merge emgd-1.14
> +
> +Is an example of merging a staged emgd feature into a BSP branch via a git
> +operation.

s/Is/is/

> +
> +
> +2.6 References
> +--------------
> +
> + git://git.yoctoproject.org/yocto-kernel-cache
> -This is the cache of the kernel patches for the "next" kernel layer.

Thanks. Sorry for the late reply.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

