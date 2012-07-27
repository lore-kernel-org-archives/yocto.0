Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8B66DE00280
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 11:45:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 Jul 2012 11:45:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="174050682"
Received: from unknown (HELO envy.home) ([10.255.12.238])
	by azsmga001.ch.intel.com with ESMTP; 27 Jul 2012 11:45:02 -0700
Message-ID: <5012E148.8060600@linux.intel.com>
Date: Fri, 27 Jul 2012 11:43:20 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Khem Raj <raj.khem@gmail.com>
References: <1343201478-14259-1-git-send-email-raj.khem@gmail.com>
	<5011A7DE.4010007@linux.intel.com>
In-Reply-To: <5011A7DE.4010007@linux.intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [meta-intel][PATCH] gnu-efi_3.0m.bb: Fix tabs with spaces in python snippet
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
X-List-Received-Date: Fri, 27 Jul 2012 18:45:03 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/26/2012 01:26 PM, Darren Hart wrote:
> On 07/25/2012 12:31 AM, Khem Raj wrote:
>> This shuts up new bitbake otherwise it warns about this
>> always
>>
>> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> 
> Agreed, there is another series pending with this same change. Will get
> this merged soon.

The other series didn't get V2 out today, so I've pulled this version in
to get things working again.

Thanks Khem.

--
Darren

> 
> Thanks,
> 
> Darren
> 
>> ---
>>  common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb |   10 +++++-----
>>  1 files changed, 5 insertions(+), 5 deletions(-)
>>
>> diff --git a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
>> index 252d49a..a0d5823 100644
>> --- a/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
>> +++ b/common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb
>> @@ -17,11 +17,11 @@ SRC_URI[md5sum] = "d0a21125aee56c0c7291ad260e916cb3"
>>  S = "${WORKDIR}/gnu-efi-3.0"
>>  
>>  def gnu_efi_arch(d):
>> -	import re
>> -	tarch = d.getVar("TARGET_ARCH", True)
>> -	if re.match("i[3456789]86", tarch):
>> -		return "ia32"
>> -	return tarch
>> +    import re
>> +    tarch = d.getVar("TARGET_ARCH", True)
>> +    if re.match("i[3456789]86", tarch):
>> +        return "ia32"
>> +    return tarch
>>  
>>  EXTRA_OEMAKE = "'ARCH=${@gnu_efi_arch(d)}' 'CC=${CC}' 'AS=${AS}' 'LD=${LD}' 'AR=${AR}' \
>>                  'RANLIB=${RANLIB}' 'OBJCOPY=${OBJCOPY}' \
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

