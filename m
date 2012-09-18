Return-Path: <tom.zanussi@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DBF9E00655;
	Tue, 18 Sep 2012 06:49:12 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 18 Sep 2012 06:49:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,442,1344236400"; d="scan'208";a="223555828"
Received: from unknown (HELO [10.255.13.148]) ([10.255.13.148])
	by fmsmga002.fm.intel.com with ESMTP; 18 Sep 2012 06:49:09 -0700
Message-ID: <1347976148.6185.49.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Tue, 18 Sep 2012 08:49:08 -0500
In-Reply-To: <5058675D.9020707@windriver.com>
References: <cover.1347946602.git.mihaix.lindner@linux.intel.com>
	<5058675D.9020707@windriver.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>,
	Development list for the linux-yocto repositories
	<linux-yocto@yoctoproject.org>
Subject: Re: [PATCH 0/1] [linux-yocto-3.0] boot-live.cfg: enable BLK_DEV_INITRD in kernel
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
X-List-Received-Date: Tue, 18 Sep 2012 13:49:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2012-09-18 at 08:21 -0400, Bruce Ashfield wrote:
> On 12-09-18 01:59 AM, Mihai Lindner wrote:
> > Please pull into linux-yocto-3.0, meta.
> >
> 
> Adding linux-yocto, Darren and Tom.
> 
> This looks fine to me, and we should consider it for all the repositories,
> not just 3.0.
> 
> Tom/Darren. Any side effects you can think of for this change ?
> 

No, but shouldn't it already be there, inherited from base.cfg?

Tom

> Bruce
> 
> > Added BLK_DEV_INITRD in boot-live.cfg for linux-yocto-3.0, meta branch.
> > Cedartrail (at least) cannot boot live from ISO image due to
> > BLK_DEV_INITRD missing:
> > "VFS: Cannot open root device "ram0" or unkown-block(0,0)"
> > Should fix #3050
> >
> > [YOCTO #3050]
> >
> > Signed-off-by: Mihai Lindner<mihaix.lindner@linux.intel.com>
> > ---
> >
> > The following changes since commit bf5ee4945ee6d748e6abe16356f2357f76b5e2f0:
> >
> >    meta: rename virto.scc to virtio.scc (2012-08-18 22:09:35 -0400)
> >
> > are available in the git repository at:
> >    git://git.yoctoproject.org/poky-contrib mihai/linux-yocto-3.0/meta
> >
> > Mihai Lindner (1):
> >        boot-live.cfg: enable BLK_DEV_INITRD in kernel
> >
> >   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
> >   1 files changed, 2 insertions(+), 0 deletions(-)
> >
> > Mihai Lindner (1):
> >    boot-live.cfg: enable BLK_DEV_INITRD in kernel
> >
> >   meta/cfg/kernel-cache/cfg/boot-live.cfg |    2 ++
> >   1 files changed, 2 insertions(+), 0 deletions(-)
> >
> 



