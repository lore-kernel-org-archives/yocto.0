Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D064CE0144A
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 06:08:47 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:48354 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tj9Sw-0000fW-Vs
	for yocto@yoctoproject.org; Thu, 13 Dec 2012 09:08:47 -0500
Date: Thu, 13 Dec 2012 09:08:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212130857190.5702@oneiric>
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
Subject: bitbake user manual vs mega manual, and more info on local file fetcher?
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
X-List-Received-Date: Thu, 13 Dec 2012 14:08:48 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  first question -- is the bitbake user manual that comes bundled with
the bitbake source considered part of the yocto doc collection?  as
in, if one wants detailed info on bitbake, does one read the bitbake
user manual (which is not mentioned on the yocto docs page), or is
bitbake user info assumed to now be scattered throughout the yocto
docs?  i think it's important to identify the canonical location for
that documentation.

  following on that, i'm asking since the bitbake user manual is
definitely a *little* deficient on info for the local file fetcher.
here's the sum total of its examples:

SRC_URI= "file://relativefile.patch"
SRC_URI= "file://relativefile.patch;this=ignored"
SRC_URI= "file:///Users/ich/very_important_software"

but there's no mention that (as i read it) that protocol accepts
wildcards:

meta-angstrom/recipes-angstrom/angstrom/angstrom-uboot-scripts.bb:SRC_URI = "file://*.cmd"

i had no idea that was even true until i stumbled over the above (if
that's indeed what it means).

  there's also no comprehensive coverage of how to define and use
patches in the yocto docs.  the only mention i see is in the ref
manual, in the variable glossary under SRC_URI, which isn't even
complete (no mention of apply= or patchdir=).

  so basic question -- is the bitbake user manual still under active
maintenance and is it considered part of the yocto docs collection?
since all that bitbake information should be *somewhere* but it's not
clear where.

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

