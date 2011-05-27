Return-Path: <tom.zanussi@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by mx1.pokylinux.org (Postfix) with ESMTP id AC1E94C800E0
	for <yocto@yoctoproject.org>; Fri, 27 May 2011 17:00:29 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 27 May 2011 15:00:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,282,1304319600"; d="scan'208";a="10137544"
Received: from unknown (HELO [10.255.12.115]) ([10.255.12.115])
	by fmsmga001.fm.intel.com with ESMTP; 27 May 2011 15:00:28 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: "Hart, Darren" <darren.hart@intel.com>
In-Reply-To: <4DE01B2A.9040008@intel.com>
References: <ea461ebf3e667c1607afd57abfc0db226bd4033e.1306509168.git.tom.zanussi@intel.com>
	<cddf6042091c8ba4df53915b87fe7c14e4c2dc70.1306509168.git.tom.zanussi@intel.com>
	<4DE01B2A.9040008@intel.com>
Date: Fri, 27 May 2011 16:59:38 -0500
Message-ID: <1306533578.23639.14.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH 10/14][KERNEL] meta: add intel-e1xxxx feature
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
X-List-Received-Date: Fri, 27 May 2011 22:00:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-05-27 at 14:44 -0700, Hart, Darren wrote:
> On 05/27/2011 01:45 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Add a general-purpose feature adding support for Intel PRO/100, Intel
> > PRO/1000, and Intel PRO/1000 PCI-Express adapters.
> 
> I noticed some things have been added as modules while others are
> configured in. What is your criteria for determining module versus
> compiled in?
> 

In general, modules.  I actually had these as modules but then ran into
bug #xxx, where modules won't load on boot, so had to make them Y again
to avoid the regression.

Tom

> --
> Darren
> 
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  .../features/intel-e1xxxx/intel-e1xxxx.cfg         |    4 ++++
> >  .../features/intel-e1xxxx/intel-e1xxxx.scc         |    1 +
> >  2 files changed, 5 insertions(+), 0 deletions(-)
> >  create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
> >  create mode 100644 meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
> > 
> > diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
> > new file mode 100644
> > index 0000000..ea9f7e9
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.cfg
> > @@ -0,0 +1,4 @@
> > +CONFIG_NETDEV_1000=y
> > +CONFIG_E100=y
> > +CONFIG_E1000E=y
> > +CONFIG_E1000=y
> > diff --git a/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
> > new file mode 100644
> > index 0000000..90ba914
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/intel-e1xxxx/intel-e1xxxx.scc
> > @@ -0,0 +1 @@
> > +kconf hardware intel-e1xxxx.cfg
> 
> 



