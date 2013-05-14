Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB778E014FF
	for <yocto@yoctoproject.org>; Tue, 14 May 2013 05:55:04 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 14 May 2013 05:53:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,670,1363158000"; d="scan'208";a="313356933"
Received: from unknown (HELO helios.localnet) ([10.255.12.153])
	by orsmga001.jf.intel.com with ESMTP; 14 May 2013 05:55:03 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Tue, 14 May 2013 13:55:02 +0100
Message-ID: <2739655.Ryl2aPrzJS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.2 (Linux/3.8.0-19-generic; KDE/4.10.2; i686; ; )
In-Reply-To: <3484843.AyulIqb2MX@helios>
References: <519215AE.3090608@mlbassoc.com> <3484843.AyulIqb2MX@helios>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: IMAGE_FEATURES check broken
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 May 2013 12:55:05 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 14 May 2013 11:48:55 Paul Eggleton wrote:
> On Tuesday 14 May 2013 04:45:02 Gary Thomas wrote:
> > This commit breaks systems where IMAGE_FEATURES includes
> > "package-management":
> > 
> > commit d63c8a1597c9bd0a838cb59ca461ac432b630a90
> > Author: Paul Eggleton <paul.eggleton@linux.intel.com>
> > Date:   Thu May 9 17:24:25 2013 +0100
> > 
> >      classes/image: show an error on invalid IMAGE_FEATURES
> > 
> > A quick look at that class shows that package-management is being left
> > out of the "validitems".  This patch fixes it:
> > 
> > diff --git a/meta/classes/image.bbclass b/meta/classes/image.bbclass
> > index 2b42e12..4f07708 100644
> > --- a/meta/classes/image.bbclass
> > +++ b/meta/classes/image.bbclass
> > @@ -19,7 +19,7 @@ INHIBIT_DEFAULT_DEPS = "1"
> > 
> >   # IMAGE_FEATURES may contain any available package group
> >   IMAGE_FEATURES ?= ""
> >   IMAGE_FEATURES[type] = "list"
> > 
> > -IMAGE_FEATURES[validitems] += "debug-tweaks read-only-rootfs"
> > +IMAGE_FEATURES[validitems] += "debug-tweaks read-only-rootfs
> > package-management"
> > 
> >   # rootfs bootstrap install
> >   ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES",
> > 
> > "package-management", "", "${ROOTFS_PKGMANAGE_BOOTSTR
> > 
> > Am I missing something else, or was this just overlooked?
> 
> It was overlooked, I'm afraid - images that inherit core-image don't have
> this problem because the package-management PACKAGE_GROUP is defined and
> this gets picked up. Images that don't (which is perfectly acceptable) get
> the failure, and I missed testing this case.
> 
> There is a patch pending to fix this however:
> 
> http://patchwork.openembedded.org/patch/49795/

FYI, this patch has now been merged.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

