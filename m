Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3D91E002A8
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 13:25:41 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 26 Jul 2012 13:25:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="171900682"
Received: from envy.jf.intel.com (HELO envy.home) ([10.24.1.97])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2012 13:25:41 -0700
Message-ID: <5011A75F.40101@linux.intel.com>
Date: Thu, 26 Jul 2012 13:23:59 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: nitin.a.kamble@intel.com
References: <cover.1343037893.git.nitin.a.kamble@intel.com>
	<50119FC4.5000005@linux.intel.com>
In-Reply-To: <50119FC4.5000005@linux.intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/6] commits to move crownbay BSP to v3.4 kernel I v1.14 EMGD driver.
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
X-List-Received-Date: Thu, 26 Jul 2012 20:25:42 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 07/26/2012 12:51 PM, Darren Hart wrote:
> On 07/23/2012 03:06 AM, nitin.a.kamble@intel.com wrote:
>> From: Nitin A Kamble <nitin.a.kamble@intel.com>
> 
> 
> Hi Nitin,
> 
> Please include [meta-intel] in the subject of the cover letter for patch
> series against the meta-intel repository.

There were several minor issues with the series, but a few warrant a
resend. Please fixup the series and resend as:

[PATCH 0/5 V2][meta-intel] commits to move crownbay BSP to v3.4 kernel
v1.14 EMGD driver

Thanks,


> 
> --
> Darren
> 
>> The following changes since commit 961f835e4f5dd2d02b34b7fce13316ec7b0bf1c4:
>>
>>   emgd-driver-bin: remove FILES_${PN}-dev addition (2012-07-20 11:29:23 -0500)
>>
>> are available in the git repository at:
>>   git://git.yoctoproject.org/meta-intel-contrib nitin/work
>>   http://git.yoctoproject.org/cgit.cgi/meta-intel-contrib/log/?h=nitin/work
>>
>> Nitin A Kamble (6):
>>   emgd-driver-bin: upgrade from 1.10 to 1.14
>>   crownbay: customize the xorg.conf for the flat panel on the corwnbay
>>     kit
>>   crownbay: update emgd driver version in the README
>>   crownbay: add recipe extension for linux-yocto-3.4
>>   crownbay: make v3.4 the default kernel
>>   gnu-efi: fix whitespace usage
>>
>>  common/recipes-bsp/gnu-efi/gnu-efi_3.0m.bb         |   10 +++++-----
>>  ...-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} |   17 +++++++++--------
>>  meta-crownbay/README                               |    8 ++++----
>>  meta-crownbay/conf/machine/crownbay-noemgd.conf    |    2 +-
>>  meta-crownbay/conf/machine/crownbay.conf           |    2 +-
>>  .../xserver-xf86-config/crownbay/xorg.conf         |   14 ++++++++++++++
>>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |   20 ++++++++++++++++++++
>>  7 files changed, 54 insertions(+), 19 deletions(-)
>>  rename common/recipes-graphics/xorg-xserver/{emgd-driver-bin_1.10.bb => emgd-driver-bin_1.14.bb} (88%)
>>  create mode 100644 meta-crownbay/recipes-kernel/linux/linux-yocto_3.4.bbappend
>>
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

