Return-Path: <darren.hart@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4E9384C800AB
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 22:07:01 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 27 May 2011 20:07:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,284,1304319600"; d="scan'208";a="10217409"
Received: from unknown (HELO [10.255.12.245]) ([10.255.12.245])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 20:07:00 -0700
Message-ID: <4DE066D4.2030308@intel.com>
Date: Fri, 27 May 2011 20:07:00 -0700
From: Darren Hart <darren.hart@intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110424 Lightning/1.0b2 Thunderbird/3.1.10
MIME-Version: 1.0
To: tom.zanussi@intel.com
References: <cover.1306514719.git.tom.zanussi@intel.com>
In-Reply-To: <cover.1306514719.git.tom.zanussi@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/3][KERNEL] base patches needed for romley
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
X-List-Received-Date: Sat, 28 May 2011 03:07:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 05/27/2011 01:45 PM, tom.zanussi@intel.com wrote:
> From: Tom Zanussi <tom.zanussi@intel.com>
> 
> These upstreamed post-2.6.37 patches are needed by the romley BSP
> for 2.6.37.
> 
> Note that I've removed the e-mail addresses from these posted patches,
> but the git branch retains them.

I understand the reason, but this should no longer be necessary. The new
send-pull-request script only matches on "^Signed-off-by" and
"^[Cc][Cc]:", and you can do a dry run by answering "no" when prompted
and you can see where it would try and send the patches. If you notice
that a commit adding patches to recipe pulls in emails included in the
patches, PLEASE let me know. This should no longer be the case.

--
Darren

> 
> Please pull into linux-yocto-2.6.37.
> 
> Thanks,
> 
> Tom
> 
> Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
>   Branch: tzanussi/romley-new-options-and-refactor-base
>   Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-base
> 
> Greg Rose (1):
>   Remove extra struct page member from the buffer info structure
> 
> Seth Heasley (2):
>   x86/PCI: irq and pci_ids patch for Intel Patsburg
>   ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
> 
>  arch/x86/pci/irq.c        |    3 ++-
>  drivers/ata/ahci.c        |    1 +
>  drivers/net/igbvf/igbvf.h |    1 -
>  include/linux/pci_ids.h   |    3 ++-
>  4 files changed, 5 insertions(+), 3 deletions(-)
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

