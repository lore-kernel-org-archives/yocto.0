Return-Path: <darren.hart@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59DECE0030B
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2012 12:33:40 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 23 Apr 2012 12:33:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="132959560"
Received: from unknown (HELO envy.home) ([10.7.199.64])
	by orsmga001.jf.intel.com with ESMTP; 23 Apr 2012 12:33:39 -0700
Message-ID: <4F95AE76.1040001@intel.com>
Date: Mon, 23 Apr 2012 12:33:10 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <8cb0b0ca1821875b7c2c140aade540917c40fc93.1334083666.git.kishore.k.bodke@intel.com>
	<99d5459a7e3a7bd5ca105c5fac3c1f8f24bd8e33.1334083666.git.kishore.k.bodke@intel.com>
	<4F9595B2.3070101@intel.com>
	<D956029D25CF204F948EA0FB515E1EE20AC74BFA@ORSMSX106.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE20AC74BFA@ORSMSX106.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 2/9] [meta-intel] Cedartrail: Update SRCREVS and add EFI Support.
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
X-List-Received-Date: Mon, 23 Apr 2012 19:33:40 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/23/2012 11:31 AM, Bodke, Kishore K wrote:
> 
>>>  KERNEL_FEATURES_append_cedartrail += " cfg/smp.scc"
>>> +KERNEL_FEATURES_append_cedartrail += " cfg/drm-cdvpvr.scc"
>>> +KERNEL_FEATURES_append_cedartrail += " bsp/cedartrail/cedartrail-pvr-
>> merge.scc"
>>> +KERNEL_FEATURES_append_cedartrail += " cfg/efi-ext.scc"
>>
>>
>> I suggest moving all of this into the cedartrail.scc file in the
>> linux-yocto meta branch. These are all core bits required for the BSP,
>> they don't need to be easily changed from recipe-space.
>>
>> The exception would be the pvr bits. You can make a single
>> cedartrail.scc that supports both configs (with and without pvr) and
>> only modify the pvr one here in recipe space - the rest belongs in
>> linux-yocto/meta
> 
> Hi Darren,
> 
> All the above are specific to pvr only.  

You can't use EFI to boot the system with the pvr driver?

--
Darren

> (cfg/drm-cdvpvr.scc , bsp/cedartrail/cedartrail-pvr-merge.scc, and cfg/efi-ext.scc)
> These are not needed for without pvr versions of the BSP.
> I think if I move them to Cedartrail.scc, these will get pulled in for no-pvr version of the build and may cause the build to fail.
> 
> Thanks
> Kishore.
> 
> 
>>
>>
>>> +COMPATIBLE_MACHINE_cedartrail-nopvr = "cedartrail"
>>> +KMACHINE_cedartrail-nopvr  = "cedartrail"
>>> +KERNEL_FEATURES_append_cedartrail-nopvr += " cfg/smp.scc"
>>
>> Same here.
>>
>> --
>> Darren
>>
>> --
>> Darren Hart
>> Intel Open Source Technology Center
>> Yocto Project - Linux Kernel


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

