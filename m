Return-Path: <tom.zanussi@intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 484DBE00596
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 06:50:50 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 03 May 2012 06:50:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="138449263"
Received: from unknown (HELO [10.255.12.135]) ([10.255.12.135])
	by azsmga001.ch.intel.com with ESMTP; 03 May 2012 06:50:49 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4FA27CAF.8020205@windriver.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
	<4FA27CAF.8020205@windriver.com>
Date: Thu, 03 May 2012 08:50:44 -0500
Message-ID: <1336053044.2450.86.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: [PATCH 0/5][KERNEL] add x/ehci-hcd and mei features
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
X-List-Received-Date: Thu, 03 May 2012 13:50:50 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-05-03 at 08:40 -0400, Bruce Ashfield wrote:
> On 12-05-02 11:35 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > This adds a few new features, one for xhci-hcd and another for
> > amt/mei, and refactors some existing config options into a new
> > echi-hcd, which is then used in crownbay.
> >
> > If this looks like the way to go, I'll add similar USB features
> > for ohci and uhci and fix up all the meta-intel BSPs to use
> > them.
> 
> I had a look, and while at first I thought it was perhaps an over
> splitting and categorization. It does make things very clear, and
> gets us a split that can be used to keep configs minimal and reusable.
> 
> I also wasn't sure about directory splitting, since we do end up
> with the names both in .scc/.cfg and the directory name. We could
> flatten the directory down to just 'usb' and keep the names of the
> files as the differentiator. And if we don't think we'll have to
> carry any patches, we could put it under cfg/usb/<Tom's stuff>.
> 
> I don't have a really strong opinion (but gave my preference) on this
> split (several directories vs single), and I'd bet that you considered 
> the same thing. Comments ?
> 

The directory splitting is definitely a result of personal preference on
my part i.e. directories are cheap and I hate having bunches of files in
a single directory.  This is actually the reason I tend to
avoid /cfg. ;-)

In this case and most others, I find the directory splitting maps more
cleanly 'at-a-glance' for me to the split in functionality, but as I
said it's a personal preference and if most people prefer a more
flattened tree, then I don't have a problem making that change...

Tom


> But definitely, this is the way to go, just a minor question about the
> organization of the files.
> 
> Bruce
> 
> 
> >
> > Please pull into linux-yocto-3.2.
> >
> > Thanks,
> >
> > Tom
> >
> > The following changes since commit b14a08f5c7b469a5077c10942f4e1aec171faa9d:
> >    Yang Shi (1):
> >          meta: Clean up BSPs kernel config
> >
> > are available in the git repository at:
> >
> >    git://git.yoctoproject.org/linux-yocto-2.6.37-contrib.git tzanussi/xhcd-mei-features
> >    http://git.yoctoproject.org/cgit.cgi//log/?h=tzanussi/xhcd-mei-features
> >
> > Tom Zanussi (5):
> >    meta: add usb/host/base feature
> >    meta: add usb/xhci-hcd feature
> >    meta: add usb/ehci-hcd feature
> >    meta/crownbay: use ehci-hcd feature
> >    meta: add mei feature
> >
> >   meta/cfg/kernel-cache/bsp/crownbay/crownbay.cfg    |    4 ----
> >   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    2 ++
> >   meta/cfg/kernel-cache/features/amt/mei/mei.cfg     |    3 +++
> >   meta/cfg/kernel-cache/features/amt/mei/mei.scc     |    4 ++++
> >   .../features/usb/ehci-hcd/ehci-hcd.cfg             |    1 +
> >   .../features/usb/ehci-hcd/ehci-hcd.scc             |    6 ++++++
> >   meta/cfg/kernel-cache/features/usb/host/base.cfg   |    3 +++
> >   meta/cfg/kernel-cache/features/usb/host/base.scc   |    4 ++++
> >   .../features/usb/xhci-hcd/xhci-hcd.cfg             |    1 +
> >   .../features/usb/xhci-hcd/xhci-hcd.scc             |    6 ++++++
> >   10 files changed, 30 insertions(+), 4 deletions(-)
> >   create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/amt/mei/mei.scc
> >   create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/usb/ehci-hcd/ehci-hcd.scc
> >   create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc
> >   create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/usb/xhci-hcd/xhci-hcd.scc
> >
> 



