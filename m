Return-Path: <dvhart@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B517E004D2
	for <yocto@yoctoproject.org>; Wed,  1 Feb 2012 14:15:41 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 01 Feb 2012 14:15:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="113007132"
Received: from unknown (HELO envy.home) ([10.255.14.201])
	by fmsmga001.fm.intel.com with ESMTP; 01 Feb 2012 14:15:40 -0800
Message-ID: <4F29B96E.9090809@linux.intel.com>
Date: Wed, 01 Feb 2012 14:15:10 -0800
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <cover.1328121321.git.dvhart@linux.intel.com>
	<8b67c8fb5aadfcb82de8035972efed50c67c0382.1328121321.git.dvhart@linux.intel.com>
	<4F298BF9.5080807@windriver.com>
In-Reply-To: <4F298BF9.5080807@windriver.com>
X-Enigmail-Version: 1.3.5
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/2] meta: sys940x BSP meta data
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
X-List-Received-Date: Wed, 01 Feb 2012 22:15:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 02/01/2012 11:01 AM, Bruce Ashfield wrote:
> On 12-02-01 01:45 PM, Darren Hart wrote:
>> The Inforce SYS940x-ECX Developer-Ready Reference Platform features:
>> o Intel Atom E6xx (0.6-1.6 GHz)
>> o Up to 1GB on-board DDR2
>> o Intel Platform Controller Hub EG20T
>> o VGA,LVDS
>> o HD Audio
>> o SD Card
>> o Dual SATA
>> o Mini-PCIe
>>
>> http://www.inforcecomputing.com/SYS940X_ECX.html
>>
>> Signed-off-by: Darren Hart<dvhart@linux.intel.com>
>> ---
>>   .../bsp/sys940x/sys940x-preempt-rt.scc             |    7 +++
>>   .../kernel-cache/bsp/sys940x/sys940x-standard.scc  |    6 ++
>>   meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg      |   49 ++++++++++++++++++++
>>   meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc      |   17 +++++++
>>   4 files changed, 79 insertions(+), 0 deletions(-)
>>   create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-preempt-rt.scc
>>   create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
>>   create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.cfg
>>   create mode 100644 meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
>>

<snip>

>> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
>> new file mode 100644
>> index 0000000..1f0edec
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x-standard.scc
>> @@ -0,0 +1,6 @@
>> +define KMACHINE sys940x
>> +define KTYPE standard
>> +define KARCH i386
>> +
>> +include ktypes/standard
>> +include sys940x.scc
> 
> Looks like the branch re-use issue worked itself out!

Yes, it was not necessary. Thanks.

<snip>

>> +# Needed for booting (and using) CD images
>> +CONFIG_BLK_DEV_SR=y
>> diff --git a/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
>> new file mode 100644
>> index 0000000..1eaebf2
>> --- /dev/null
>> +++ b/meta/cfg/kernel-cache/bsp/sys940x/sys940x.scc
>> @@ -0,0 +1,17 @@
>> +kconf hardware sys940x.cfg
>> +
>> +git merge yocto/emgd
> 
> 
> Just want to confirm that emgd-1.10 is available, and this version
> was explicitly chosen ?
> 
> No issues with the series though. Staging it once you confirm.
> 

1.10 fixed and new patches pushed to the infradead URL. Please pull.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

