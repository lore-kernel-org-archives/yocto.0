Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BF68E014CB
	for <yocto@yoctoproject.org>; Mon, 22 Apr 2013 06:48:46 -0700 (PDT)
Received: from cpebcc8100de718-cmbcc8100de715.cpe.net.cable.rogers.com
	([99.240.144.66]:36078 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UUH6r-0005Ga-V8; Mon, 22 Apr 2013 09:48:46 -0400
Date: Mon, 22 Apr 2013 09:48:42 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1304220853580.32510@oneiric>
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
Subject: observations on current BSP developer's guide
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
X-List-Received-Date: Mon, 22 Apr 2013 13:48:47 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  brief notes on BSP dev guide, someone else higher up the food chain
can decide if any of this merits changes or clarifications.

1.1 BSP Layers

* emphasize that name of "meta-*" is only convention, but a really
well-established one

* remove lines of meta-yocto/meta-yocto-bsp from example, has
potential for giving readers wrong impression. also that whole
BBLAYERS_NON_REMOVABLE thing is debatable. pick simpler example.

1.2 Example Filesystem Layout

* clarify what is *actually* required to be an official OE/YP layer,
as some layers don't have things like README, README.sources, etc.

1.2.5 Layer Configuration File

* "here are the last three statements from the Crown Bay
conf/layer.conf file" -- those aren't actually the last three lines,
there's also the "_depends" line but someone else can decide how to
word that.

* wait, that sample layer.conf file seems wrong, aren't the BBFILES
entries missing a wildcard directory layer?

1.2.6 Hardware Configuration Options

* "For example, the ia32-base.inc file resides in the meta-intel BSP
Layer in conf/machine/include." hmmmm ... pedantic, yes, but should
meta-intel really be described as a "BSP" layer? what's the proper way
to describe it?

* also, that statement is simply wrong as that directory contains only
meta-intel.inc, not ia32-base.inc. and last para might also mention
the include of meta-intel.inc in addition to the other two "require"s.


1.2.7 Miscellaneous Recipe Files

* Might rename this to "Miscellaneous BSP-specific Recipe Files", to
distinguish it from the *other* recipe-related sections that follow?

1.2.9 Linux Kernel Configuration

* Worth upgrading the example shown to 3.8 instead of 3.4? and the
source shown there doesn't exactly match what's in the current file.

* "The file also uses the optional KBRANCH variable to ensure the
build process uses the standard/default/crownbay kernel branch."
sorry, "standard/default/crownbay"? shouldn't that say just
"standard/crownbay"?

* "you had a some" -> "you had some"

1.3.1 Released BSP Requirements

* again, a number of existing layers don't fully comply with this list

* File System Layout: "recipe-*" -> "recipes-*"

* Machine Configuration File: should probably say that you need to
include one *or more* machine config files, not just one.

* Note: "It is completely possible for a developer to structure the
working repository as a conglomeration of unrelated BSP files..."
might be worth pointing out that this is exactly what meta-yocto-bsp
does, but that's a special case.

1.4 Customizing a Recipe for a BSP

* based on recent discussion, probably don't want to use the netbase
recipe as the example here :-) besides, point 1 erroneously refers to
the "netbases" directory instead of "netbase".

  that's enough for now, i'll finish reading the bsp tools section
later.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

