Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A7FCE0044A
	for <yocto@yoctoproject.org>; Mon,  4 Jun 2012 01:39:59 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:40364 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1SbSpS-0005PF-H3
	for yocto@yoctoproject.org; Mon, 04 Jun 2012 04:39:58 -0400
Date: Mon, 4 Jun 2012 04:39:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
In-Reply-To: <alpine.DEB.2.02.1206031757260.20352@oneiric>
Message-ID: <alpine.DEB.2.02.1206040435060.9995@oneiric>
References: <alpine.DEB.2.02.1206031757260.20352@oneiric>
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
Subject: Re: something about gtk+-2.24.8.tar.bz2 that requires constant downloading?
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
X-List-Received-Date: Mon, 04 Jun 2012 08:39:59 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sun, 3 Jun 2012, Robert P. J. Day wrote:

>   for a yocto talk to my local LUG later this week, i want to build
> a simple core-image-sato image for qemux86 and, for quite some time,
> i've kept a local download directory for tarballs, and taken
> advantage of it with this in all of my local.conf files:
>
> SOURCE_MIRROR_URL ?= "file:///home/rpjday/dl/"
> INHERIT += "own-mirrors"
> BB_GENERATE_MIRROR_TARBALLS = "1"
> # BB_NO_NETWORK = "1"
>
>   obviously, as i notice newer tarballs getting downloaded, i'll
> just copy them into ~/dl so it doesn't happen again.  works fine,
> except today with gtk+-2.24.8.tar.bz2 which, even after i made a
> copy of it in ~/dl, the build still *insists* on downloading it from
> download.gnome.org.
>
>   i don't see any obvious problem -- the checksum of the tarball
> appears correct, it's a regular file, the tarball downloaded is
> *exactly* the same as the one i've saved in ~/dl and yet, of all the
> tarballs i have stashed away there, that one is the *only* one that
> is downloaded each time.

  ok, i'm baffled and getting thoroughly annoyed here.  i started from
absolute scratch, configured to build for qemux86, then did

  $ bitbake -c fetchall core-image-sato

while pointing at my massive directory of tarballs which includes
gtk+-2.24.8.tar.bz2.  every required tarball is accessed (via symlink)
from my ~/dl directory, *except* for that incredibly irritating
gtk+-2.24.8.tar.bz2 tarball, which is downloaded by the "fetchall"
command *every* *single* *time*.

  i've verified that tarball is there.  i've verified its md5 and
sha256 checksums.  i'm out of ideas.

  what am i doing wrong?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

