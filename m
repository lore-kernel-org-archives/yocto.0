Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1103FE0137C
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 16:36:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 05 Apr 2012 16:36:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="150173900"
Received: from unknown (HELO envy.home) ([10.255.12.143])
	by fmsmga002.fm.intel.com with ESMTP; 05 Apr 2012 16:36:37 -0700
Message-ID: <4F7E2C5E.8080609@intel.com>
Date: Thu, 05 Apr 2012 16:35:58 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: "Bodke, Kishore K" <kishore.k.bodke@intel.com>
References: <cover.1333578511.git.kishore.k.bodke@intel.com>
	<c5801db1ea89ecbfaa883023a5e37c37c6f4f976.1333578511.git.kishore.k.bodke@intel.com>
	<4F7E28CF.8000604@intel.com>
	<D956029D25CF204F948EA0FB515E1EE203608700@ORSMSX105.amr.corp.intel.com>
In-Reply-To: <D956029D25CF204F948EA0FB515E1EE203608700@ORSMSX105.amr.corp.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] [meta-intel] Romley: Add new bbappend file for 3.2 kernel
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
X-List-Received-Date: Thu, 05 Apr 2012 23:36:38 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 04/05/2012 04:28 PM, Bodke, Kishore K wrote:
> Hi Darren,
> 
> Answers embedded.

Great, merged.

Thanks Kishore.

> 
> -----Original Message-----
> From: Hart, Darren 
> Sent: Thursday, April 05, 2012 4:21 PM
> To: Bodke, Kishore K
> Cc: yocto@yoctoproject.org; Zanussi, Tom
> Subject: Re: [yocto] [PATCH 1/1] [meta-intel] Romley: Add new bbappend file for 3.2 kernel
> 
> On 04/04/2012 03:33 PM, kishore.k.bodke@intel.com wrote:
>> From: Kishore Bodke <kishore.k.bodke@intel.com>
>>
>> Switching Romley to 3.2 kernel.
>>
> 
> Hi Kishore,
> 
> A couple questions for you.
> 
> 1) This is boot tested I presume?
> 	[KISHORE]:  Yes. Booted, and ran basic test cases as well.
> 2) Do you intend to leave the 3.0 recipes in place?
>    It's fine if you do, I just wanted to know.
> 	[KISHORE]: I would like to follow with other meta-intel BSPs.
> 
> 3) Do you have any patches in the common-pc-64/romley branch?
>    If so, these are not being used when building -rt.
> [KISHORE]: No patches.
> 
> Thanks
> Kishore.
> --
> Darren
> 
>> Signed-off-by: Kishore Bodke <kishore.k.bodke@intel.com>
>> ---
>>  meta-romley/conf/machine/romley.conf               |    3 +++
>>  .../linux/linux-yocto-rt_3.2.bbappend              |    8 ++++++++
>>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    9 +++++++++
>>  3 files changed, 20 insertions(+), 0 deletions(-)
>>  create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>>  create mode 100644 meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>>
>> diff --git a/meta-romley/conf/machine/romley.conf b/meta-romley/conf/machine/romley.conf
>> index aa334c0..e6a755b 100644
>> --- a/meta-romley/conf/machine/romley.conf
>> +++ b/meta-romley/conf/machine/romley.conf
>> @@ -4,6 +4,9 @@
>>  #@DESCRIPTION: Machine configuration for Romley systems
>>  # i.e. Sandy Bridge + Patsburg Chipset
>>  
>> +
>> +PREFERRED_VERSION_linux-yocto ?= "3.2%"
>> +
>>  require conf/machine/include/tune-x86_64.inc
>>  require conf/machine/include/ia32-base.inc
>>  
>> diff --git a/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>> new file mode 100644
>> index 0000000..7a61749
>> --- /dev/null
>> +++ b/meta-romley/recipes-kernel/linux/linux-yocto-rt_3.2.bbappend
>> @@ -0,0 +1,8 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +COMPATIBLE_MACHINE_romley = "romley"
>> +KMACHINE_romley  = "romley"
>> +
>> +# Update the following to use a different BSP branch or meta SRCREV
>> +#KBRANCH_romley  = "standard/preempt-rt/base"
>> +#SRCREV_machine_pn-linux-yocto-rt_romley ?= XXXX
>> +#SRCREV_meta_pn-linux-yocto-rt_romley ?= XXXX
>> diff --git a/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> new file mode 100644
>> index 0000000..803e772
>> --- /dev/null
>> +++ b/meta-romley/recipes-kernel/linux/linux-yocto_3.2.bbappend
>> @@ -0,0 +1,9 @@
>> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>> +
>> +COMPATIBLE_MACHINE_romley = "romley"
>> +
>> +KMACHINE_romley  = "romley"
>> +KBRANCH_romley  = "standard/default/common-pc-64/romley"
>> +
>> +SRCREV_machine_pn-linux-yocto_romley ?= "5c7f1c53b5b367858ae6a86c1d4de36d8c71bedb"
>> +SRCREV_meta_pn-linux-yocto_romley ?= "59f350ec3794e19fa806c1b73749d851f8ebf364"
> 
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

