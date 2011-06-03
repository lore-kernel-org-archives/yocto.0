Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by mx1.pokylinux.org (Postfix) with ESMTP id 44C334C800AC
	for <yocto@yoctoproject.org>; Fri,  3 Jun 2011 07:40:59 -0500 (CDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 03 Jun 2011 05:40:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,315,1304319600"; 
   d="scan'208";a="8927934"
Received: from unknown (HELO [10.255.13.27]) ([10.255.13.27])
	by orsmga001.jf.intel.com with ESMTP; 03 Jun 2011 05:40:58 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4DE86ACF.3070701@windriver.com>
References: <cover.1306964823.git.tom.zanussi@intel.com>
	<4DE86ACF.3070701@windriver.com>
Date: Fri, 03 Jun 2011 07:40:58 -0500
Message-ID: <1307104858.2376.24.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/2][KERNEL] meta-intel: fishriver updates
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
X-List-Received-Date: Fri, 03 Jun 2011 12:40:59 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-06-02 at 22:02 -0700, Bruce Ashfield wrote:
> On 11-06-01 6:05 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > This patchset adds an ericsson 3g feature and also creates a separate
> > bsp for fishriver, which had previously been hijacking crownbay.
> >
> > Please pull into linux-yocto-2.6.37.
> 
> Merged, and also propp'd to the -dev kernel.
> 
> Changes will be pushed out in the morning, I have a few
> other pending merges to take care of at the same time.
> 

Thanks, Bruce.

Tom

> Cheers,
> 
> Bruce
> 
> >
> > Pull URL: git://git.yoctoproject.org/linux-yocto-2.6.37-contrib
> >    Branch: tzanussi/yocto/standard/fishriver
> >    Browse: http://git.yoctoproject.org/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/yocto/standard/fishriver
> >
> > Tom Zanussi (2):
> >    meta: add ericsson-3g f5521gw feature
> >    meta/fishriver: create initial BSP infrastructure
> >
> >   meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg      |   39 +++++++++++
> >   .../bsp/fishriver/fishriver-standard.scc           |    7 ++
> >   meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg  |   69 ++++++++++++++++++++
> >   meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc  |   15 ++++
> >   .../kernel-cache/features/ericsson-3g/f5521gw.cfg  |    3 +
> >   .../kernel-cache/features/ericsson-3g/f5521gw.scc  |    3 +
> >   6 files changed, 136 insertions(+), 0 deletions(-)
> >   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/eg20t.cfg
> >   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver-standard.scc
> >   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.cfg
> >   create mode 100644 meta/cfg/kernel-cache/bsp/fishriver/fishriver.scc
> >   create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/ericsson-3g/f5521gw.scc
> >
> 



