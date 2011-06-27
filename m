Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 42C7C4C800B9
	for <yocto@yoctoproject.org>; Mon, 27 Jun 2011 16:49:00 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 27 Jun 2011 14:48:59 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,434,1304319600"; d="scan'208";a="20753476"
Received: from doubt.jf.intel.com (HELO [10.7.199.167]) ([10.7.199.167])
	by orsmga001.jf.intel.com with ESMTP; 27 Jun 2011 14:48:59 -0700
Message-ID: <4E08FACB.7060301@linux.intel.com>
Date: Mon, 27 Jun 2011 14:48:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1308896947.git.jingdong.lu@windriver.com>	<25bb8589b54c91ce817c904609e5d6326a483d8b.1308896947.git.jingdong.lu@windriver.com>
	<4E0497B0.4070102@windriver.com>
In-Reply-To: <4E0497B0.4070102@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/1] routerstationpro: IPC config
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
X-List-Received-Date: Mon, 27 Jun 2011 21:49:00 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/24/2011 06:57 AM, Bruce Ashfield wrote:
> On 06/24/11 02:34, Jingdong Lu wrote:
>> From: Jingdong Lu<jingdong.lu@windriver.com>
>>
>> Add IPC config for routestationpro
> 
> I replied to what looked to be v2 of this change,
> so am dropping this patch. If they were indeed
> different, you'll need to point me at what I missed.
> 
> Also: I got direct email for all these, and a copy
> separate to the list. If you are having trouble
> with git send-email, feel free to send your workflow
> and we can likely help!

scripts/send-pull-request will also work with the linux-yocto git
repository. Same workflow that way.

> 
> Cheers,
> 
> Bruce
> 
>>
>> Signed-off-by: Jingdong Lu<jingdong.lu@windriver.com>
>> ---
>>   .../bsp/routerstationpro/routerstationpro.cfg      |    8 ++++++--
>>   1 files changed, 6 insertions(+), 2 deletions(-)
>>
>> diff --git a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>> index f58dfe8..d0f8f58 100644
>> --- a/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>> +++ b/meta/cfg/kernel-cache/bsp/routerstationpro/routerstationpro.cfg
>> @@ -215,8 +215,12 @@ CONFIG_INIT_ENV_ARG_LIMIT=32
>>   CONFIG_LOCALVERSION=""
>>   CONFIG_LOCALVERSION_AUTO=y
>>   CONFIG_SWAP=y
>> -# CONFIG_SYSVIPC is not set
>> -# CONFIG_BSD_PROCESS_ACCT is not set
>> +CONFIG_SYSVIPC=y
>> +CONFIG_SYSVIPC_SYSCTL=y
>> +CONFIG_POSIX_MQUEUE=y
>> +CONFIG_POSIX_MQUEUE_SYSCTL=y
>> +CONFIG_BSD_PROCESS_ACCT=y
>> +CONFIG_BSD_PROCESS_ACCT_V3=y
>>   # CONFIG_TASKSTATS is not set
>>   # CONFIG_AUDIT is not set
>>
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

