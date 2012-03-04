Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F779E00746
	for <yocto@yoctoproject.org>; Sun,  4 Mar 2012 05:09:26 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63] helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1S4BBl-0001qU-ID
	for yocto@yoctoproject.org; Sun, 04 Mar 2012 08:09:25 -0500
Date: Sun, 4 Mar 2012 08:09:17 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1203040759260.2396@oneiric>
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
Subject: some observations about yocto wiki page, "from git checkout to meta-intel BSP"
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
X-List-Received-Date: Sun, 04 Mar 2012 13:09:26 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  yes, i know it's an editable wiki but i'd rather someone else make
the changes just in case i'm misreading something.  it's early, and
there's only decaf in the place.  this is bad.

  anyway, using this page as grist for discussion:

https://wiki.yoctoproject.org/wiki/Transcript:_from_git_checkout_to_meta-intel_BSP

"To build and run a meta-intel BSP, you need to check out a local copy
of the poky repo ..."

  i think that sentence demonstrates the yocto vs poky confusion koen
was talking about -- a regular waffling between "yocto" sources and
"poky" repos.

  below that, there are references to
git://git.pokylinux.org/poky.git -- should those references be updated
to refer to the git.yoctoproject.org repos?

  there's a reference to "poky-qemu qemux86" -- change to "runqemu
qemux86"?  or is that the correct name in the last released version?
(i rarely look at released versions.)

  and i'm pretty sure that there's a missing reference to the
meta-yocto layer here:

BBLAYERS = " \
  /usr/local/src/Yocto/meta \
  /usr/local/src/Yocto/meta-intel/meta-fishriver \
  "

unless that's also correct for the last released version.

  further down,

  $ bitbake poky-image-sato-live

there's no such bitbake target these days.

  anyway, that was about 60 seconds worth of perusing.  if some
meta-intel person wants to mess with that page, it's all yours.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

