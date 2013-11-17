Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36EF7E004F6
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 04:12:50 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 17 Nov 2013 04:09:16 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,535,1378882800"; d="scan'208";a="410103697"
Received: from akagikob-mobl.ger.corp.intel.com (HELO helios.localnet)
	([10.252.121.140])
	by orsmga001.jf.intel.com with ESMTP; 17 Nov 2013 04:12:49 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Sun, 17 Nov 2013 12:12:48 +0000
Message-ID: <13190111.cIECxPcJYb@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1311170626370.18680@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<1530936.srmMeFasFY@helios>
	<alpine.DEB.2.02.1311170626370.18680@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: why is "package-management" defined as a PACKAGE_GROUP?
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
X-List-Received-Date: Sun, 17 Nov 2013 12:12:50 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 17 November 2013 06:30:01 Robert P. J. Day wrote:
> On Sun, 17 Nov 2013, Paul Eggleton wrote:
> > On Sunday 17 November 2013 04:19:19 Robert P. J. Day wrote:
> > >   think i may have asked this once upon a time, but why, in
> > > 
> > > core-image.bbclass, is there the line:
> > >   PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"
> > > 
> > > as i read it, package-management doesn't represent an actual
> > > package group, but rather represents one of a number of
> > > IMAGE_FEATURES that are processed explicitly in a .bbclass file,
> > > like "debug-tweaks" or "read-only-rootfs". so what does the above
> > > line mean?
> > 
> > It's not a package group, but then neither are any of the things
> > defined by PACKAGE_GROUP - that variable just specifies one or more
> > packages to be installed when the specified item appears in
> > IMAGE_FEATURES. Perhaps we should just rename the variable; it's a
> > little more internal than some of the other variables we've renamed
> > in the past.
> 
>   oh, i realize it's not a package group, my point was that that line
> seems entirely superfluous since, as with things like "debug-tweaks"
> and "read-only-rootfs", that "image feature" is processed explicitly
> within image.bbclass:
> 
> # IMAGE_FEATURES may contain any available package group
> IMAGE_FEATURES ?= ""
> IMAGE_FEATURES[type] = "list"
> IMAGE_FEATURES[validitems] += "debug-tweaks read-only-rootfs
> package-management"
> 
> # rootfs bootstrap install
> ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES",
> "package-management", "", "${ROOTFS_PKGMANAGE_BOOTSTRAP}",d)}"
> 
>   the simple solution would seem to be to just delete the line:
> 
> PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"
> 
> from core-image.bbclass since it's both unnecessary and misleading.

It's not unnecessary - how else does the actual package manager make it into 
the image when package-management is in IMAGE_FEATURES?

Now, this functionality should definitely be available from image.bbclass; this 
should get fixed with the rework I've proposed in the following bug:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=5424

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

