Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A66E4E00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:34:06 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 08 Aug 2012 11:34:06 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="178439199"
Received: from unknown (HELO envy.home) ([10.255.12.217])
	by azsmga001.ch.intel.com with ESMTP; 08 Aug 2012 11:34:05 -0700
Message-ID: <5022B0B1.1050008@linux.intel.com>
Date: Wed, 08 Aug 2012 11:32:17 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <cover.1344448245.git.kishore.k.bodke@intel.com>
	<5022AC56.7080109@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE20AD45DC1@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD45DC1@ORSMSX105.amr.corp.intel.com>
X-Enigmail-Version: 1.4.3
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
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
X-List-Received-Date: Wed, 08 Aug 2012 18:34:06 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/08/2012 11:28 AM, Bodke, Kishore K wrote:
> 
> 
>> -----Original Message-----
>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>> Sent: Wednesday, August 08, 2012 11:14 AM
>> To: Bodke, Kishore K
>> Cc: yocto@yoctoproject.org; bruce.ashfield@windriver.com
>> Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
>>
>> n 08/08/2012 10:56 AM, kishore.k.bodke@intel.com wrote:
>>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>>
>>> Hi,
>>>
>>> This is a revised patch set is for creating the new Crystal Forest Machine.
>>> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
>>>
>>> This machine is based on standard/default/common-pc-64.
>>>
>>> Please create a new branch called standard/default/common-pc-
>> 64/crystalforest
>>> for linux-yocto-3.4 kernel and pull this new meta branch.
>>>
>>> Thanks
>>> Kishore.
>>
>> Hi Kishore, please note that as these patches are for the linux-yocto
>> sources, they should be sent to the linux-yocto mailing list:
>>
>> https://lists.yoctoproject.org/listinfo/linux-yocto
>>
>> This is a relatively new list, please keep it in mind for the future.
> 
> Hi Darren,
> 
> Thanks for letting me know this.
> A quick question.
> Do we need to send all the kernel related patches only to Linux-yocto mailing list or to both Linux-yocto and Yocto mailing list too?

If the patches are against a linux-yocto*.git repository, they go to
linux-yocto. If they are against the oe-core meta-data, they should go
to the openembedded-core mailing list. If they are to meta-yocto, they
should go to the poky mailing list (this one is rather confusing
unfortunately). The only patches that should go to the "yocto" mailing
list are for related projects, such as meta-intel, that are not part of
oe-core, poky, linux-yocto, and do not have their own lists (such as
bitbake-devel).

For the work you are doing:

Patches to meta-intel go here, to the yocto mailing list.
Patches to linux-yocto*git go to the linux-yocto mailing list.
Patches to poky/meta/recipes-kernel/linux/* should go to the
openembedded-core mailing list.

Clear as mud? :-)


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

