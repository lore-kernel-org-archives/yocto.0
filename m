Return-Path: <tom.zanussi@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57DD9E00292
	for <yocto@yoctoproject.org>; Thu, 25 Oct 2012 14:50:56 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 25 Oct 2012 14:50:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.80,650,1344236400"; d="scan'208";a="232634383"
Received: from unknown (HELO [10.255.14.211]) ([10.255.14.211])
	by orsmga002.jf.intel.com with ESMTP; 25 Oct 2012 14:50:55 -0700
Message-ID: <1351201854.28073.7.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: Khem Raj <raj.khem@gmail.com>
Date: Thu, 25 Oct 2012 16:50:54 -0500
In-Reply-To: <CAMKF1soY1OUvKu_XMaNKqcu-qxkHH4moXOGq=uuUjJ1DXQ=bVA@mail.gmail.com>
References: <CAMKF1soY1OUvKu_XMaNKqcu-qxkHH4moXOGq=uuUjJ1DXQ=bVA@mail.gmail.com>
X-Mailer: Evolution 3.4.1 (3.4.1-2.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-intel/danny][PATCH] meta-crystalforest, linux-yocto_3.4.bbappend: Pin LINUX_VERSION
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
X-List-Received-Date: Thu, 25 Oct 2012 21:50:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2012-10-25 at 08:36 -0700, Khem Raj wrote:
> That's fine though you should still pin it since it may go out of sync
> with oecore again
> 

Good point.  I think I'm going to start submitting weekly kernel SRCREV
updates for all the meta-intel BSPs along with the matching
LINUX_VERSIONs to avoid this problem in the future...

Tom


> On Thursday, October 25, 2012, Tom Zanussi <tom.zanussi@intel.com>
> wrote:
> > On Tue, 2012-10-23 at 20:56 -0700, Khem Raj wrote:
> >> meta-crystalforest BSPs uses 3.4.9 kernel but the default
> >> yocto kernel is 3.4.11, if we do not pin the LINUX_VERSION
> >> then we get inconsistent version number for bzImage and the modules
> >> where modules are installed
> under /lib/modules/3.4.9-yocto-standard/
> >> but kernel is called
> >> bzImage-3.4.11+git2+9e3bdb7344054264b750e53fbbb6394cc1c942ac_1
> +0985844fa6235422c67ef269952fa4e765f252f9-r4.3-crystalforest-stargo-20121024031021.bin
> >>
> >> This patch fixes this mismatch. Beaware that other BSPs from
> >> meta-intel may need something similar too.
> >
> > This is because the crystalforest BSP is using ancient kernel
> SRCREVs,
> > corresponding to 3.4.9.
> >
> > Thanks for sending this patch , but I just pushed a fix for the
> source
> > of the problem by updating the SRCREVs instead.
> >
> > Tom
> >
> >>
> >> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> >> ---
> >>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    3 +++
> >>  1 file changed, 3 insertions(+)
> >>
> >> diff --git
> a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> index 082fe38..92aaa61 100644
> >> ---
> a/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> +++
> b/meta-crystalforest/recipes-kernel/linux/linux-yocto_3.4.bbappend
> >> @@ -15,3 +15,6 @@
> SRCREV_machine_pn-linux-yocto_crystalforest-shumway ?=
> "0985844fa6235422c67ef269
> >>  SRCREV_meta_pn-linux-yocto_crystalforest-shumway ?=
> "9e3bdb7344054264b750e53fbbb6394cc1c942ac"
> >>
> >>  module_autoload_uio = "uio"
> >> +
> >> +LINUX_VERSION = "3.4.9"
> >> +
> >
> >
> >



