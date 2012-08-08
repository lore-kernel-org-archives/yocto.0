Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D07CBE00346
	for <yocto@yoctoproject.org>; Wed,  8 Aug 2012 11:15:31 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 08 Aug 2012 11:15:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.77,734,1336374000"; d="scan'208";a="131661017"
Received: from unknown (HELO envy.home) ([10.255.12.217])
	by AZSMGA002.ch.intel.com with ESMTP; 08 Aug 2012 11:15:30 -0700
Message-ID: <5022AC56.7080109@linux.intel.com>
Date: Wed, 08 Aug 2012 11:13:42 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120717 Thunderbird/14.0
MIME-Version: 1.0
To: kishore.k.bodke@intel.com
References: <cover.1344448245.git.kishore.k.bodke@intel.com>
In-Reply-To: <cover.1344448245.git.kishore.k.bodke@intel.com>
X-Enigmail-Version: 1.4.3
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] [KERNEL] meta: New Crystal Forest Machine Branch
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
X-List-Received-Date: Wed, 08 Aug 2012 18:15:32 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

n 08/08/2012 10:56 AM, kishore.k.bodke@intel.com wrote:
> From: Kishore Bodke <kishore.k.bodke@intel.com>
> 
> Hi,
> 
> This is a revised patch set is for creating the new Crystal Forest Machine.
> Crystal Forest Machine is Sandybridge CPU with Cave Creek Chipset.
> 
> This machine is based on standard/default/common-pc-64.
> 
> Please create a new branch called standard/default/common-pc-64/crystalforest
> for linux-yocto-3.4 kernel and pull this new meta branch.
> 
> Thanks
> Kishore.

Hi Kishore, please note that as these patches are for the linux-yocto
sources, they should be sent to the linux-yocto mailing list:

https://lists.yoctoproject.org/listinfo/linux-yocto

This is a relatively new list, please keep it in mind for the future.

Thanks,

Darren

> 
> The following changes since commit 459165c1dd61c4e843c36e6a1abeb30949a20ba7:
> 
>   kconf: add 8250 Kconfig to hardware listing audit (2012-07-26 16:23:26 -0400)
> 
> are available in the git repository at:
> 
>   git://git.pokylinux.org/linux-yocto-2.6.37-contrib kishore/meta-crystalforest
>   http://git.pokylinux.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=kishore/meta-crystalforest
> 
> Kishore Bodke (1):
>   meta: Crystal Forest Machine Created.
> 
>  .../bsp/crystalforest/crystalforest-preempt-rt.scc |    9 ++++++
>  .../bsp/crystalforest/crystalforest-standard.scc   |    8 +++++
>  .../bsp/crystalforest/crystalforest.cfg            |   32 ++++++++++++++++++++
>  .../bsp/crystalforest/crystalforest.scc            |   21 +++++++++++++
>  4 files changed, 70 insertions(+)
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-preempt-rt.scc
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest-standard.scc
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.cfg
>  create mode 100644 meta/cfg/kernel-cache/bsp/crystalforest/crystalforest.scc
> 

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Technical Lead - Linux Kernel

