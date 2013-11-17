Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 751E1E0030A
	for <yocto@yoctoproject.org>; Sun, 17 Nov 2013 03:30:14 -0800 (PST)
Received: from [173.34.6.101] (port=53202 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Vi0YO-0000g4-WD; Sun, 17 Nov 2013 06:30:13 -0500
Date: Sun, 17 Nov 2013 06:30:01 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1530936.srmMeFasFY@helios>
Message-ID: <alpine.DEB.2.02.1311170626370.18680@oneiric>
References: <alpine.DEB.2.02.1311170415270.16236@oneiric>
	<1530936.srmMeFasFY@helios>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
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
X-List-Received-Date: Sun, 17 Nov 2013 11:30:17 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 17 Nov 2013, Paul Eggleton wrote:

> Hi Robert,
>
> On Sunday 17 November 2013 04:19:19 Robert P. J. Day wrote:
> >   think i may have asked this once upon a time, but why, in
> > core-image.bbclass, is there the line:
> >
> >   PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"
> >
> > as i read it, package-management doesn't represent an actual
> > package group, but rather represents one of a number of
> > IMAGE_FEATURES that are processed explicitly in a .bbclass file,
> > like "debug-tweaks" or "read-only-rootfs". so what does the above
> > line mean?
>
> It's not a package group, but then neither are any of the things
> defined by PACKAGE_GROUP - that variable just specifies one or more
> packages to be installed when the specified item appears in
> IMAGE_FEATURES. Perhaps we should just rename the variable; it's a
> little more internal than some of the other variables we've renamed
> in the past.

  oh, i realize it's not a package group, my point was that that line
seems entirely superfluous since, as with things like "debug-tweaks"
and "read-only-rootfs", that "image feature" is processed explicitly
within image.bbclass:

# IMAGE_FEATURES may contain any available package group
IMAGE_FEATURES ?= ""
IMAGE_FEATURES[type] = "list"
IMAGE_FEATURES[validitems] += "debug-tweaks read-only-rootfs package-management"

# rootfs bootstrap install
ROOTFS_BOOTSTRAP_INSTALL = "${@base_contains("IMAGE_FEATURES", "package-management", "", "${ROOTFS_PKGMANAGE_BOOTSTRAP}",d)}"

  the simple solution would seem to be to just delete the line:

PACKAGE_GROUP_package-management = "${ROOTFS_PKGMANAGE}"

from core-image.bbclass since it's both unnecessary and misleading.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

