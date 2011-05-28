Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by mx1.pokylinux.org (Postfix) with ESMTP id C860C4C80334
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 22:21:09 -0500 (CDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 27 May 2011 20:21:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,284,1304319600"; 
   d="scan'208";a="3234958"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by azsmga001.ch.intel.com with ESMTP; 27 May 2011 20:21:07 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
In-Reply-To: <4DE066D4.2030308@intel.com>
References: <cover.1306514719.git.tom.zanussi@intel.com>
	<4DE066D4.2030308@intel.com>
Date: Fri, 27 May 2011 22:20:07 -0500
Message-ID: <1306552807.23639.33.camel@elmorro>
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
X-List-Received-Date: Sat, 28 May 2011 03:21:10 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 20:07 -0700, Hart, Darren wrote:
> On 05/27/2011 01:45 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > These upstreamed post-2.6.37 patches are needed by the romley BSP
> > for 2.6.37.
> > 
> > Note that I've removed the e-mail addresses from these posted patches,
> > but the git branch retains them.
> 
> I understand the reason, but this should no longer be necessary. The new
> send-pull-request script only matches on "^Signed-off-by" and
> "^[Cc][Cc]:", and you can do a dry run by answering "no" when prompted
> and you can see where it would try and send the patches. If you notice
> that a commit adding patches to recipe pulls in emails included in the
> patches, PLEASE let me know. This should no longer be the case.
> 

I didn't try that, just decided I didn't want to risk it, but did try it
now and get:

Send this email? ([y]es|[n]o|[q]uit|[a]ll): n
(mbox) Adding cc: Seth Heasley from line 'From: Seth Heasley'
(body) Adding cc: Seth Heasley from line 'Signed-off-by: Seth Heasley'
(body) Adding cc: Jeff Garzik from line 'Signed-off-by: Jeff Garzik'
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
Use of uninitialized value $cc in string eq at /usr/lib/git-core/git-send-email line 842.
W: unable to extract a valid address from: Seth Heasley
W: unable to extract a valid address from: Seth Heasley
W: unable to extract a valid address from: Jeff Garzik
W: unable to extract a valid address from: Seth Heasley
W: unable to extract a valid address from: Seth Heasley
W: unable to extract a valid address from: Jeff Garzik

It looks like it is trying to cc the e-mails in the patch, or am I
reading that wrong?

The poky/master commit I'm using is:

1169f1b066d0028bd2ef7915440450bd42ef165e

Tom

> --
> Darren
> 
> > 
> > Please pull into linux-yocto-2.6.37.
> > 
> > Thanks,
> > 
> > Tom
> > 
> > Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
> >   Branch: tzanussi/romley-new-options-and-refactor-base
> >   Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/romley-new-options-and-refactor-base
> > 
> > Greg Rose (1):
> >   Remove extra struct page member from the buffer info structure
> > 
> > Seth Heasley (2):
> >   x86/PCI: irq and pci_ids patch for Intel Patsburg
> >   ahci: AHCI mode SATA patch for Intel Patsburg SATA RAID controller
> > 
> >  arch/x86/pci/irq.c        |    3 ++-
> >  drivers/ata/ahci.c        |    1 +
> >  drivers/net/igbvf/igbvf.h |    1 -
> >  include/linux/pci_ids.h   |    3 ++-
> >  4 files changed, 5 insertions(+), 3 deletions(-)
> > 
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> 



