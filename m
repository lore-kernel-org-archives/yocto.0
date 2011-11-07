Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85CF4E00307
	for <yocto@yoctoproject.org>; Mon,  7 Nov 2011 08:24:39 -0800 (PST)
Received: from [128.224.252.2] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RNRzx-0002mh-8y; Mon, 07 Nov 2011 11:24:37 -0500
Date: Mon, 7 Nov 2011 11:24:32 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Mark Hatle <mark.hatle@windriver.com>
In-Reply-To: <4EB8020E.6000005@windriver.com>
Message-ID: <alpine.DEB.2.02.1111071120080.4441@localhost6.localdomain6>
References: <alpine.DEB.2.02.1111071058550.1246@localhost6.localdomain6>
	<4EB8020E.6000005@windriver.com>
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
Subject: Re: do all recipes really need LIC_FILES_CHKSUM?
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
X-List-Received-Date: Mon, 07 Nov 2011 16:24:39 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 7 Nov 2011, Mark Hatle wrote:

> On 11/7/11 10:01 AM, Robert P. J. Day wrote:
> >
> >   current poky ref manual seems pretty adamant about need for
> > LIC_FILES_CHKSUM:
> >
> > "Note that this variable is mandatory for all recipes, unless the
> > LICENSE variable is set to "CLOSED".
> >
> > but there's at least one counter-example,
> > meta-demoapps/recipes-graphics/pong-clock/pong-clock_1.0.bb:
>
> Bug in the example.. it should be fixed.

  oooookay, but it's really not hard to find more examples like that,
such as meta-demoapps/recipes-graphics/libxklavier/libxklavier_3.9.bb:

DESCRIPTION = "Utility library to make using XKB easier"
SECTION = "x11/libs"
DEPENDS = "iso-codes libxml2 glib-2.0 libxkbfile"
LICENSE = "LGPL"
PR = "r2"

SRC_URI = "${SOURCEFORGE_MIRROR}/gswitchit/libxklavier-${PV}.tar.bz2 \
           file://pkgconfigfix.patch;patch=1"

inherit autotools

  or "xournal" in the same directory, etc, etc.  i'm not trying to be
annoyingly pedantic (he lied), just pointing out the inconsistencies.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


