Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6559DE01447
	for <yocto@yoctoproject.org>; Fri,  3 Aug 2012 09:52:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 03 Aug 2012 09:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="175305181"
Received: from unknown (HELO envy.home) ([10.255.12.171])
	by orsmga001.jf.intel.com with ESMTP; 03 Aug 2012 09:52:41 -0700
Message-ID: <501C016D.7030904@linux.intel.com>
Date: Fri, 03 Aug 2012 09:50:53 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <cover.1343932163.git.kishore.k.bodke@intel.com>
	<501BEDBA.9070900@windriver.com> <501BF484.2010904@linux.intel.com>
	<D956029D25CF204F948EA0FB515E1EE20AD448EE@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AD448EE@ORSMSX105.amr.corp.intel.com>
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
X-List-Received-Date: Fri, 03 Aug 2012 16:52:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit


On 08/03/2012 09:31 AM, Bodke, Kishore K wrote:
> 
> 
>> -----Original Message-----
>> From: Darren Hart [mailto:dvhart@linux.intel.com]
>> Sent: Friday, August 03, 2012 8:56 AM
>> To: Bruce Ashfield
>> Cc: Bodke, Kishore K; yocto@yoctoproject.org
>> Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
>>
>>
>>
>> On 08/03/2012 08:26 AM, Bruce Ashfield wrote:
>>> On 12-08-02 02:35 PM, kishore.k.bodke@intel.com wrote:
>>>> From: Kishore Bodke<kishore.k.bodke@intel.com>
>>>>
>>>> Hi,
>>>>
>>>> This is a revised patch set is for creating the new Crystal Forest Machine.
>>>> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
>>>>
>>>> This machine is based on standard/default/common-pc-64.
>>>>
>>>> Please create a new branch called standard/default/common-pc-
>> 64/crystalforest
>>>> for linux-yocto-3.4 kernel and push this new meta branch.
>>>
>>> I'd rather not push this out right on the M3 pull request deadline,
>>> but there is very little risk to it .. so I'm not really opinionated
>>> on it.
>>>
>>> Can this wait a few days, or do we want/need it in M3 ?
>>
>>
>> Kishore still needs to address the i915 question.
> 
> 
> Hi Bruce,
> 
> This could wait until after M3, if it has to.  
> 
> Hi Darren,
> 
> I have no idea if i915 is needed, I just derived from Romley since this is
> close to it.  I can try without this feature, but I would still keep it until
> I test with all the 4 different versions of Crystal Forest Boards and remove
> it if it is not needed.

You should be able to determine if the i915 hardware is present in your
hardware without relying on empirical testing. If you aren't sure,
you'll have to dig up the hardware documentation. But we shouldn't get
in the habit of enabling a feature because we don't know if it's needed.

--
Darren

> 
> Thanks
> Kishore.
> 
>>
>> --
>> Darren
>>
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>>>>
>>>> Thanks
>>>> Kishore.
>>>>
>>>> The following changes since commit
>> 459165c1dd61c4e843c36e6a1abeb30949a20ba7:
>>>>
>>>>    kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:26 -
>> 0400)
>>>>
>>>> are available in the git repository at:
>>>>
>>>>    git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-
>> crystalforest
>>>>    http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-
>> contrib/log/?h=kishore/meta-crystalforest
>>>>
>>>> Kishore Bodke (1):
>>>>    meta: Crystal Forest Machine Created.
>>>>
>>>>   .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
>>>>   .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
>>>>   .../bsp/crystalforest/crystalforest.cfg            |   32
>> ++++++++++++++++++++
>>>>   .../bsp/crystalforest/crystalforest.scc            |   23 ++++++++++++++
>>>>   4 files changed, 72 insertions(+)
>>>>   create mode 100644 meta/cfg/kernel-
>> cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>>>>   create mode 100644 meta/cfg/kernel-
>> cache/bsp/crystalforest/crystalforest-standard.scc
>>>>   create mode 100644 meta/cfg/kernel-
>> cache/bsp/crystalforest/crystalforest.cfg
>>>>   create mode 100644 meta/cfg/kernel-
>> cache/bsp/crystalforest/crystalforest.scc
>>>>
>>>
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Technical Lead - Linux Kernel

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

