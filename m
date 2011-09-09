Return-Path: <darren.hart@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 51DF5E012AA
	for <yocto@yoctoproject.org>; Fri,  9 Sep 2011 14:09:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 09 Sep 2011 14:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="46909377"
Received: from unknown (HELO envy.home) ([10.255.14.250])
	by orsmga001.jf.intel.com with ESMTP; 09 Sep 2011 14:09:21 -0700
Message-ID: <4E6A8081.90605@intel.com>
Date: Fri, 09 Sep 2011 14:09:21 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:6.0) Gecko/20110816 Thunderbird/6.0
MIME-Version: 1.0
To: "Kamble, Nitin A" <nitin.a.kamble@intel.com>
References: <cover.1315338837.git.nitin.a.kamble@intel.com>
	<b33495af418b4fe8b8a2c6ba1ff8a67e84dd0a29.1315338837.git.nitin.a.kamble@intel.com>
	<4E6682E5.5070907@windriver.com>
	<9DA5872FEF993D41B7173F58FCF6BE94DF053854@orsmsx504.amr.corp.intel.com>
In-Reply-To: <9DA5872FEF993D41B7173F58FCF6BE94DF053854@orsmsx504.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] btrfs: Add a new kernel feature to enable the btrfs support
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
X-List-Received-Date: Fri, 09 Sep 2011 21:09:22 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 09/09/2011 09:14 AM, Kamble, Nitin A wrote:
> Thanks Bruce, BTW we should enable this btrfs feature for
> linux-yocto-3 kernel. What is the right way to do it? Shall I send a
> patch for the Linux-yocot-3.0 recipe in the oe-core repository?

Hi Nitin,

Having a config fragment for btrfs available in linux-yocto is
appropriate and makes btrfs easily added to any BSP from recipe space or
from the linux-yocto meta repository.

However, we do not want to enable it by default for all linux-yocto
BSPs. Unless a device requires a specific FS to boot (fat, jffs2, etc) I
am happy to stick with ext3/4 for now. If you have a compelling reason
to enable btrfs for all embedded platforms, we can reconsider.

This does highlight a TODO for the kernel team. We need to define and
make readily available a Yocto Project Kernel Policy. This should
identify the non-hardware-specific CONFIG options that will be enabled
in any linux-yocto BSP config by default. We have discussed this some at
LPC already, and will continue to flesh it out.

Thanks,

Darren

> 
> Thanks, Nitin
> 
> 
>> -----Original Message----- From: Bruce Ashfield
>> [mailto:bruce.ashfield@windriver.com] Sent: Tuesday, September 06,
>> 2011 1:30 PM To: Kamble, Nitin A Cc: yocto@yoctoproject.org 
>> Subject: Re: [yocto] [PATCH 1/1] btrfs: Add a new kernel feature
>> to enable the btrfs support
>> 
>> On 11-09-06 03:56 PM, nitin.a.kamble@intel.com wrote:
>>> From: Nitin A Kamble<nitin.a.kamble@intel.com>
>> 
>> Looks good. If we are merging this as config only, I've been 
>> putting them in meta/cfg/kernel-cache/cfg/
>> 
>> So I relocated this configuration to that directory. I'll have it
>> pushed out in the next day or so (I'm getting on a plane shortly).
>> 
>> Bruce
>> 
>>> 
>>> Signed-off-by: Nitin A Kamble<nitin.a.kamble@intel.com> --- 
>>> meta/cfg/kernel-cache/features/btrfs/btrfs.cfg |    1 + 
>>> meta/cfg/kernel-cache/features/btrfs/btrfs.scc |    1 + 2 files
>>> changed, 2 insertions(+), 0 deletions(-) create mode 100644
>>> meta/cfg/kernel-cache/features/btrfs/btrfs.cfg create mode 100644
>>> meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>>> 
>>> diff --git a/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>> b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg
>>> new file mode 100644 index 0000000..605c183 --- /dev/null +++
>>> b/meta/cfg/kernel-cache/features/btrfs/btrfs.cfg @@ -0,0 +1 @@ 
>>> +CONFIG_BTRFS_FS=y diff --git
>>> a/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>> b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc
>>> new file mode 100644 index 0000000..cf18a2e --- /dev/null +++
>>> b/meta/cfg/kernel-cache/features/btrfs/btrfs.scc @@ -0,0 +1 @@ 
>>> +kconf non-hardware btrfs.cfg


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

