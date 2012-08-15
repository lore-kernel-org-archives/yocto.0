Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 37981E00769
	for <yocto@yoctoproject.org>; Wed, 15 Aug 2012 14:24:24 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 15 Aug 2012 14:24:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,774,1336374000"; d="scan'208";a="181506160"
Received: from unknown (HELO envy.home) ([10.255.13.30])
	by azsmga001.ch.intel.com with ESMTP; 15 Aug 2012 14:24:23 -0700
Message-ID: <502C1313.2060300@linux.intel.com>
Date: Wed, 15 Aug 2012 14:22:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Paul Gortmaker <paul.gortmaker@windriver.com>
References: <1343409056-6235-1-git-send-email-paul.gortmaker@windriver.com>
	<50131526.1030708@linux.intel.com> <502C040D.8000402@windriver.com>
In-Reply-To: <502C040D.8000402@windriver.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] routerstationpro: move board off 3.0 and onto the 3.4 kernel
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
X-List-Received-Date: Wed, 15 Aug 2012 21:24:24 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 08/15/2012 01:18 PM, Paul Gortmaker wrote:
> On 12-07-27 06:24 PM, Darren Hart wrote:
>>
>>
>> On 07/27/2012 10:10 AM, Paul Gortmaker wrote:
>>> The updated patch series to support this target is in place
>>> on the BSP specific branch in the 3.4 kernel tree now[1], so
>>> we can move it ahead off of the old 3.0 kernel.
>>>
>>> [1] https://lists.yoctoproject.org/pipermail/linux-yocto/2012-July/000023.html
>>>
>>> Signed-off-by: Paul Gortmaker <paul.gortmaker@windriver.com>
>>
>> Acked-by: Darren Hart <dvhart@linux.intel.com>
> 
> Hi All,
> 
> Just checking this didn't fall through the cracks since it has
> been two weeks.

Saul, RP, can one of you pull this in?

Thanks,

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

