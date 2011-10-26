Return-Path: <tom.zanussi@intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B1B0E006B4
	for <yocto@yoctoproject.org>; Wed, 26 Oct 2011 07:45:33 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 26 Oct 2011 07:45:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="67721144"
Received: from unknown (HELO [10.255.15.57]) ([10.255.15.57])
	by orsmga002.jf.intel.com with ESMTP; 26 Oct 2011 07:45:32 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
In-Reply-To: <4EA81BAF.6000809@windriver.com>
References: <cover.1319552233.git.tom.zanussi@intel.com>
	<4EA81BAF.6000809@windriver.com>
Date: Wed, 26 Oct 2011 09:44:52 -0500
Message-ID: <1319640292.3945.1.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 0/4][KERNEL] more bsp cleanup and new power/intel feature
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
X-List-Received-Date: Wed, 26 Oct 2011 14:45:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-10-26 at 07:39 -0700, Bruce Ashfield wrote:
> On 11-10-25 03:17 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi<tom.zanussi@intel.com>
> >
> > This patchset adds a new power/intel feature containing power-related
> > config items for intel bsps and initially makes sugarbay and crownbay
> > use it.
> >
> > It also removes the igb feature from common-pc-64, which shouldn't
> > be there and was responsible for Yocto bug #1188.
> >
> > Fixes [YOCTO #1188]
> >
> > Please pull into linux-yocto-3.0 and linux-yocto-dev.
> 
> Looks good. Do you agree that this would be part
> of any 1.1 point release as well, or is this purely a
> 1.2/cleanup activity ? If it's the latter, I need to wait
> for the 1.1 sustaining kernel to be created.
> 

I think this is all purely 1.2/cleanup.  It does fix a bug, but not a
serious enough to make it into a point release, IMHO.

Tom

> Bruce
> 
> >
> > Pull URL: git://git.pokylinux.org/linux-yocto-2.6.37-contrib
> >    Branch: tzanussi/bsp-cleanup2-v0
> >    Browse: http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-2.6.37-contrib/log/?h=tzanussi/bsp-cleanup2-v0
> >
> > Tom Zanussi (4):
> >    meta: add power feature
> >    meta/sugarbay: use power/intel feature
> >    meta/crownbay: use power/intel feature
> >    meta/common-pc-64: remove igb
> >
> >   .../kernel-cache/bsp/common-pc-64/common-pc-64.scc |    1 -
> >   meta/cfg/kernel-cache/bsp/crownbay/crownbay.scc    |    1 +
> >   meta/cfg/kernel-cache/bsp/sugarbay/sugarbay.scc    |    1 +
> >   meta/cfg/kernel-cache/features/power/intel.cfg     |   28 ++++++++++++++++++++
> >   meta/cfg/kernel-cache/features/power/intel.scc     |    1 +
> >   5 files changed, 31 insertions(+), 1 deletions(-)
> >   create mode 100644 meta/cfg/kernel-cache/features/power/intel.cfg
> >   create mode 100644 meta/cfg/kernel-cache/features/power/intel.scc
> >
> 



