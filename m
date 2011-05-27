Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8952E4C800E0
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 16:05:37 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2011 14:05:36 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; 
   d="scan'208";a="3134437"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 14:05:36 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4DE01059.6090807@windriver.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
	<4DE01059.6090807@windriver.com>
Date: Fri, 27 May 2011 16:04:46 -0500
Message-ID: <1306530286.23639.0.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
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
X-List-Received-Date: Fri, 27 May 2011 21:05:37 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 13:58 -0700, Bruce Ashfield wrote:
> On 11-05-27 04:45 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > These upstreamed post-2.6.37 patches are needed by the romley BSP
> > for 2.6.37.
> >
> > Note that I've removed the e-mail addresses from these posted patches,
> > but the git branch retains them.
> >
> > Please pull into linux-yocto-2.6.37.
> 
> Good timing, I was just in re-working 2.6.37 and
> 2.6.39, so I'll stack these on top.
> 
> changes look good to me, I've fetched this.
> 
> It'll go out over the weekend to the kernel repo, and SRCREV
> updates to follow.
> 

Thanks, Bruce!

Tom

> Bruce
> 
> >
> > Thanks,
> >
> > Tom
> >
> > Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
> >    Branch: tzanussi/romley-new-options-and-refactor-base
> >    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-base
> >
> > Greg Rose (1):
> >    Remove extra struct page member from the buffer info structure
> >
> > Seth Heasley (2):
> >    x86/PCI: irq and pci_ids patch for Intel Patsburg
> >    ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
> >
> >   arch/x86/pci/irq.c        |    3 ++-
> >   drivers/ata/ahci.c        |    1 +
> >   drivers/net/igbvf/igbvf.h |    1 -
> >   include/linux/pci_ids.h   |    3 ++-
> >   4 files changed, 5 insertions(+), 3 deletions(-)
> >
> 



