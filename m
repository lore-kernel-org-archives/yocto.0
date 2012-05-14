Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 653ACE013A6
	for <yocto@yoctoproject.org>; Mon, 14 May 2012 12:55:33 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 14 May 2012 12:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="143016865"
Received: from unknown (HELO [10.255.12.76]) ([10.255.12.76])
	by azsmga001.ch.intel.com with ESMTP; 14 May 2012 12:55:32 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FB13480.3000501@linux.intel.com>
References: <594ba05ab96a837575960ba514ae153eeef899b7.1336851382.git.tom.zanussi@intel.com>
	<991789c30cbc85521bf8c76bcea45df1184cb0ab.1336851382.git.tom.zanussi@intel.com>
	<4FB13480.3000501@linux.intel.com>
Date: Mon, 14 May 2012 14:55:18 -0500
Message-ID: <1337025318.3850.8.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 11/22] meta: add scsi feature
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
X-List-Received-Date: Mon, 14 May 2012 19:55:33 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-05-14 at 09:36 -0700, Darren Hart wrote:
> 
> On 05/12/2012 12:41 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Add a feature to enable SCSI support.  This also creates a scsi/
> > directory to contain further SCSI options.
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  meta/cfg/kernel-cache/features/scsi/scsi.cfg |    1 +
> >  meta/cfg/kernel-cache/features/scsi/scsi.scc |    4 ++++
> >  2 files changed, 5 insertions(+), 0 deletions(-)
> >  create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.cfg
> >  create mode 100644 meta/cfg/kernel-cache/features/scsi/scsi.scc
> > 
> > diff --git a/meta/cfg/kernel-cache/features/scsi/scsi.cfg b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
> > new file mode 100644
> > index 0000000..2e9142f
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/scsi/scsi.cfg
> > @@ -0,0 +1 @@
> > +CONFIG_SCSI=y
> 
> There are additional dependencies for this which certain policy
> configurations may not enable for us. CONFIG_BLOCK for example.
> 

I only see a CONFIG_BLOCK dependency for CONFIG_SCSI - what are the
other 'additional dependencies' you mention?

Tom


