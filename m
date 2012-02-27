Return-Path: <dvhart@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63572E0074A
	for <yocto@yoctoproject.org>; Sun, 26 Feb 2012 21:14:12 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 26 Feb 2012 21:14:12 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="115136360"
Received: from unknown (HELO envy.home) ([10.255.15.44])
	by orsmga002.jf.intel.com with ESMTP; 26 Feb 2012 21:14:11 -0800
Message-ID: <4F4B1101.5080907@linux.intel.com>
Date: Sun, 26 Feb 2012 21:13:37 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1330319008.git.dvhart@linux.intel.com>
	<e43a5b93817dc1a4ed2c526e3e9ea825347bf212.1330319008.git.dvhart@linux.intel.com>
	<4F4B0FC8.7030807@windriver.com>
In-Reply-To: <4F4B0FC8.7030807@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] linux-yocto-tiny: Bump SRCREV and PV to 3.0.18
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
X-List-Received-Date: Mon, 27 Feb 2012 05:14:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/26/2012 09:08 PM, Bruce Ashfield wrote:
> On 12-02-27 12:04 AM, Darren Hart wrote:
>> Bring linux-yocto-tiny inline with the other 3.0 linux-yocto-* recipes.
>> Built and booted for qemux86.
> 
> I'm just about to pull the trigger (i.e. a matter of hours) on 3.0.22. If
> you want to wait for that, or let this stand, either is fine with me, but
> I thought I'd warn :)
> 

If you do 3.0.22, would you just bump this recipe too along with the
other linux-yocto*3.0 recipes?

Thanks,

Darren

> Cheers,
> 
> Bruce
> 
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb |    6 +++---
>>   1 files changed, 3 insertions(+), 3 deletions(-)
>>
>> diff --git a/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb b/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
>> index 061476c..fe4033b 100644
>> --- a/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
>> +++ b/meta/recipes-kernel/linux/linux-yocto-tiny_3.0.bb
>> @@ -5,10 +5,10 @@ require recipes-kernel/linux/linux-yocto.inc
>>   KMACHINE = "yocto/standard/base"
>>   KBRANCH = "${KMACHINE}"
>>
>> -LINUX_VERSION ?= "3.0.12"
>> +LINUX_VERSION ?= "3.0.18"
>>
>> -SRCREV_machine ?= "f389d310965a56091f688b28ea8be6d9cbb7fbbe"
>> -SRCREV_meta ?= "04a52a32cbdf0972033b97b83eaa83eb275dfdc9"
>> +SRCREV_machine ?= "5df0b4c2538399aed543133b3855f809adf08ab8"
>> +SRCREV_meta ?= "b78a519841bd8b477cad599af8d38df6760445c1"
>>
>>   PR = "r1"
>>   PV = "${LINUX_VERSION}+git${SRCPV}"
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

