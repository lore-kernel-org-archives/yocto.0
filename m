Return-Path: <tom.zanussi@intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 14116E0070C
	for <yocto@yoctoproject.org>; Fri,  4 May 2012 09:28:51 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga102.ch.intel.com with ESMTP; 04 May 2012 09:28:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="96462523"
Received: from unknown (HELO [10.255.12.135]) ([10.255.12.135])
	by AZSMGA002.ch.intel.com with ESMTP; 04 May 2012 09:28:50 -0700
From: Tom Zanussi <tom.zanussi@intel.com>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4FA400FA.9030903@linux.intel.com>
References: <cover.1336015630.git.tom.zanussi@intel.com>
	<5c329be00981f6c931bd192bf5af741fb7da4a81.1336015630.git.tom.zanussi@intel.com>
	<4FA400FA.9030903@linux.intel.com>
Date: Fri, 04 May 2012 11:28:38 -0500
Message-ID: <1336148918.21923.4.camel@elmorro>
Mime-Version: 1.0
X-Mailer: Evolution 2.28.3 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/5][KERNEL] meta: add usb/host/base feature
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
X-List-Received-Date: Fri, 04 May 2012 16:28:51 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2012-05-04 at 09:16 -0700, Darren Hart wrote:
> 
> On 05/02/2012 08:35 PM, tom.zanussi@intel.com wrote:
> > From: Tom Zanussi <tom.zanussi@intel.com>
> > 
> > Add a feature to enable 'base' support for USB, mainly to be included
> > by derived features such as ehch, xhci, etc.
> 
> This seems overly granular in my opinion. I think I would just include
> the two required options in each of the *hci features.
> 

Really?  This seems to me a perfect use case for taking advantage of the
'reusibality' conf fragments offer.  There would be four of these, that
alone would seem to justify using a 'subroutine', but there could be
more in the future, and if so, this fragment would be readily available.

i.e. I don't see any reason to 'inline' these...

Tom

> --
> Darren
> 
> > 
> > Signed-off-by: Tom Zanussi <tom.zanussi@intel.com>
> > ---
> >  meta/cfg/kernel-cache/features/usb/host/base.cfg |    3 +++
> >  meta/cfg/kernel-cache/features/usb/host/base.scc |    4 ++++
> >  2 files changed, 7 insertions(+), 0 deletions(-)
> >  create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.cfg
> >  create mode 100644 meta/cfg/kernel-cache/features/usb/host/base.scc
> > 
> > diff --git a/meta/cfg/kernel-cache/features/usb/host/base.cfg b/meta/cfg/kernel-cache/features/usb/host/base.cfg
> > new file mode 100644
> > index 0000000..dec6a47
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/usb/host/base.cfg
> > @@ -0,0 +1,3 @@
> > +CONFIG_USB_SUPPORT=y
> > +CONFIG_USB=y
> > +
> > diff --git a/meta/cfg/kernel-cache/features/usb/host/base.scc b/meta/cfg/kernel-cache/features/usb/host/base.scc
> > new file mode 100644
> > index 0000000..3c93475
> > --- /dev/null
> > +++ b/meta/cfg/kernel-cache/features/usb/host/base.scc
> > @@ -0,0 +1,4 @@
> > +define KFEATURE_DESCRIPTION "Enable core options for USB support"
> > +define KFEATURE_COMPATIBILITY board
> > +
> > +kconf hardware base.cfg
> 



