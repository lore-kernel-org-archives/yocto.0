Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7F53E00769
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2012 10:42:18 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 29 Aug 2012 10:42:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,335,1344236400"; d="scan'208";a="215398344"
Received: from unknown (HELO envy.home) ([10.255.13.96])
	by fmsmga002.fm.intel.com with ESMTP; 29 Aug 2012 10:42:18 -0700
Message-ID: <503D1D55.1010205@intel.com>
Date: Tue, 28 Aug 2012 12:34:45 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: Bruce Ashfield <bruce.ashfield@windriver.com>
References: <63ECFF2A2302B44093D7CE9E9962C4900332062C@ORSMSX103.amr.corp.intel.com>
	<503C3896.5080509@windriver.com>
In-Reply-To: <503C3896.5080509@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Poky 1.3_M3 branch does not work with linux-yocto 3.0 kernel ?
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
X-List-Received-Date: Wed, 29 Aug 2012 17:42:19 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 8bit

On 08/27/2012 08:18 PM, Bruce Ashfield wrote:
> On 12-08-27 8:14 PM, Saxena, Rahul wrote:
>> Hi,
>>
>> I am building a BSP (meta-cedartrail) using 1.3 M3 branch of Poky.
>>
>> When I try to boot a image such as core-image-sato, I get kernel panic
>> and errors such as:
>>
>> VFS: Cannot open root device “ram0” or unkown-block(0,0)
>>
>> Please append a correct “root=” boot option; here are the available
>>
>> partitions:
>>
>> VFS: unable to mount root fs on unknown block(0,0)
>>
>> User configuration error – no valid rootfilesystem found
>>
>> I do see that the root file system exists in
>> cedartrail-poky-linux/core-image-sato-1.0-r0/rootfs dir..
>>
>> I did not see this problem when I uses a earlier commit of the Poky
>> master branch.
>>
>> It seems like something broke with 1.3 M3 branch that prevents a proper
>> build with 3.0 kernel. I do need to build my BSP with 3.0 kernel.
>>
>> (I was also told by Laurentiu Serban that 1.3 M3 Full Pass testing does
>> not include testing with the 3.0 kernel)
>>
>> Any suggestions would be most welcome. I do need to build my BSP with
>> the 3.0 kernel.
> 
> Hmm. It should work, I booted one not that long ago. Can you force
> qemux86 to prefer the 3.0 kernel and see if that boots ? That would
> at least start to isolate the potential problem areas.

However, won't 3.0 be removed for the 1.3 release? Keeping with 3.4 and 3.2?

--
Darren

> 
> Bruce
> 
>>
>> Thanks
>>
>> Rahul
>>
> 


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

