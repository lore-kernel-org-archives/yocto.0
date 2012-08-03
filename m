Return-Path: <dvhart@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40D7CE00347
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 08:57:37 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 03 Aug 2012 08:57:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="192934152"
Received: from unknown (HELO envy.home) ([10.255.12.171])
	by fmsmga001.fm.intel.com with ESMTP; 03 Aug 2012 08:57:36 -0700
Message-ID: <501BF484.2010904@linux.intel.com>
Date: Fri, 03 Aug 2012 08:55:48 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
	<501BEDBA.9070900@windriver.com>
In-Reply-To: <501BEDBA.9070900@windriver.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Fri, 03 Aug 2012 15:57:37 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 08/03/2012 08:26 AM, Bruce Ashfield wrote:
> On 12-08-02 02:35 PM, kishore.k.bodke@intel.com wrote:
>> From: Kishore Bodke<kishore.k.bodke@intel.com>
>>
>> Hi,
>>
>> This is a revised patch set is for creating the new Crystal Forest Machine.
>> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
>>
>> This machine is based on standard/default/common-pc-64.
>>
>> Please create a new branch called standard/default/common-pc-64/crystalforest
>> for linux-yocto-3.4 kernel and push this new meta branch.
> 
> I'd rather not push this out right on the M3 pull request deadline,
> but there is very little risk to it .. so I'm not really opinionated
> on it.
> 
> Can this wait a few days, or do we want/need it in M3 ?


Kishore still needs to address the i915 question.

--
Darren

> 
> Cheers,
> 
> Bruce
> 
>>
>> Thanks
>> Kishore.
>>
>> The following changes since commit 459165c1dd61c4e843c36e6a1abeb30949a20ba7:
>>
>>    kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:26 -0400)
>>
>> are available in the git repository at:
>>
>>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-crystalforest
>>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-crystalforest
>>
>> Kishore Bodke (1):
>>    meta: Crystal Forest Machine Created.
>>
>>   .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
>>   .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
>>   .../bsp/crystalforest/crystalforest.cfg            |   32 ++++++++++++++++++++
>>   .../bsp/crystalforest/crystalforest.scc            |   23 ++++++++++++++
>>   4 files changed, 72 insertions(+)
>>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
>>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>>   create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

