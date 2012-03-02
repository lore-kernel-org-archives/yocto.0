Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB575E003E1
	for <yocto@yoctoproject.org>; Fri,  2 Mar 2012 13:40:52 -0800 (PST)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 02 Mar 2012 13:40:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="72960831"
Received: from unknown (HELO envy.home) ([10.255.15.86])
	by AZSMGA002.ch.intel.com with ESMTP; 02 Mar 2012 13:40:52 -0800
Message-ID: <4F513E38.2050102@linux.intel.com>
Date: Fri, 02 Mar 2012 13:40:08 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120131 Thunderbird/10.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1330644090.git.darren@dvhart.com>
	<52339f4d415098f5903b6bce50206d404b12bb8d.1330644090.git.darren@dvhart.com>
	<4F513892.6020106@windriver.com>
In-Reply-To: <4F513892.6020106@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: Darren Hart <darren@dvhart.com>, Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 4/6] eg20t: Enable serial console for the pch_uart
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
X-List-Received-Date: Fri, 02 Mar 2012 21:40:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 03/02/2012 01:16 PM, Bruce Ashfield wrote:
> On 12-03-01 06:59 PM, Darren Hart wrote:
>> From: Darren Hart<dvhart@linux.intel.com>
>>
>> The FRI2 uses the pch_uart driver for the serial console. Enable the console
>> driver.
> 
> It this safe for all eg20t users ? I see the crownbay also
> uses this.

It is safe. The new code that this enables is machine specific. The
console code would only kick in if the console is set to ttyPCH1, which
it obviously isn't as that didn't work before. Shouldn't be a problem.

--
Darren


> Bruce
> 
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   meta/cfg/kernel-cache/features/eg20t/eg20t.cfg |    1 +
>>   1 files changed, 1 insertions(+), 0 deletions(-)
>>
>> diff --git a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>> index ff2f6fd..3d4969c 100644
>> --- a/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>> +++ b/meta/cfg/kernel-cache/features/eg20t/eg20t.cfg
>> @@ -3,6 +3,7 @@
>>   CONFIG_PCH_DMA=y
>>
>>   CONFIG_SERIAL_PCH_UART=y
>> +CONFIG_SERIAL_PCH_UART_CONSOLE=y
>>   CONFIG_SERIAL_CORE=y
>>
>>   CONFIG_SPI=y
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

