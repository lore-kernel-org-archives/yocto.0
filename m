Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 242C1E00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 17:33:53 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 03 May 2012 17:33:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="149140820"
Received: from unknown (HELO envy.home) ([10.255.12.74])
	by fmsmga001.fm.intel.com with ESMTP; 03 May 2012 17:33:52 -0700
Message-ID: <4FA31E73.501@linux.intel.com>
Date: Thu, 03 May 2012 17:10:27 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1335908646.git.dvhart@linux.intel.com>
	<4FA306CC.3060308@windriver.com>
In-Reply-To: <4FA306CC.3060308@windriver.com>
X-Enigmail-Version: 1.4.1
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1][linux-yocto-3.2] pch_gbe: Do not abort probe on bad MAC
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
X-List-Received-Date: Fri, 04 May 2012 00:33:53 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 05/03/2012 03:29 PM, Bruce Ashfield wrote:
> On 12-05-01 06:14 PM, Darren Hart wrote:
>> This somehow missed the 3.0 to 3.2 update. It is required for networking
>> on the sys940x BSP. Please apply to standard/base and derived branches.
> 
> The somehow .. is that I thought this made 3.2, and it didn't. This is 
> merged
> here, and when I get back to a decent internet connection. It'll appear
> on the servers.
> 

It's been proposed to stable since, so it will make it eventually.


> Bruce
> 
>>
>> The following changes since commit 900717638fab9d2b25be35f3612ccfd95ceb31d1:
>>
>>    Merge branch 'yocto/standard/base' into standard/base (2012-03-16 10:43:42 -0400)
>>
>> are available in the git repository at:
>>
>>    git://git.infradead.org/users/dvhart/linux-yocto-3.2.git dvhart/standard/pch_gbe
>>    http://git.infradead.org/users/dvhart/linux-yocto-3.2.git/shortlog/refs/heads/dvhart/standard/pch_gbe
>>
>> Darren Hart (1):
>>    pch_gbe: Do not abort probe on bad MAC
>>
>>   .../net/ethernet/oki-semi/pch_gbe/pch_gbe_main.c   |   17 ++++++++++++++---
>>   1 files changed, 14 insertions(+), 3 deletions(-)
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

