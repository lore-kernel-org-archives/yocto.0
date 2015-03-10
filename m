Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 385B5E00754; Tue, 10 Mar 2015 13:01:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1CA8E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 13:01:17 -0700 (PDT)
Received: from [99.240.204.5] (port=34245 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1YVQL9-0005QX-Ny
	for yocto@yoctoproject.org; Tue, 10 Mar 2015 16:01:19 -0400
Date: Tue, 10 Mar 2015 16:01:13 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503101253390.14541@localhost>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
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
Subject: observations on bitbake user manual, chapter 2
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
X-List-Received-Date: Tue, 10 Mar 2015 20:01:19 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  more random thoughts ...

intro:

 in the note: "Prior to executing BitBake, you should take advantage
of available parallel thread execution on your build host by setting
the BB_NUMBER_THREADS variable in your project's local.conf
configuration file. "

  as in chapter 1, i think there will be some confusion since the
bitbake manual seems to jump between what you will see WRT bitbake in
a *direct* checkout, and what you will more likely see if you've
checked out poky.  as you well know, in the poky checkout,
bitbake.conf is considerably enhanced and already contains:

  # Default to setting automatically based on cpu count
  BB_NUMBER_THREADS ?= "${@oe.utils.cpu_count()}"

  # Default to setting automatically based on cpu count
  PARALLEL_MAKE ?= "-j ${@oe.utils.cpu_count()}"

and while i understand that the bitbake manual is meant to be build
system agnostic, i think trying too hard to do that is going to make
part of it unnecessarily confusing.

  oh, and that note mentions BB_NUMBER_THREADS while saying nothing
about PARALLEL_MAKE, which seems odd.

2.3 Providers

  while this section describes how a recipe can *extend* the things it
provides with "+=", it might be worth mentioning how it can simply
override what it provides with

  PROVIDES = "..."

  this is fairly common with libraries, as in:

meta/recipes-graphics/xorg-lib/libxext_git.bb:PROVIDES = "xext"
meta/recipes-graphics/xorg-lib/libxxf86misc_1.0.3.bb:PROVIDES = "xxf86misc"
meta/recipes-graphics/xorg-lib/libx11.inc:PROVIDES = "virtual/libx11"
meta/recipes-graphics/xorg-lib/libxmu_1.1.2.bb:PROVIDES = "xmu"
meta/recipes-graphics/xorg-lib/libxext_1.3.3.bb:PROVIDES = "xext"
meta/recipes-graphics/xorg-lib/libxdamage_1.1.4.bb:PROVIDES = "xdamage"
meta/recipes-graphics/xorg-lib/libxdmcp_1.1.1.bb:PROVIDES = "xdmcp"

2.4 Preferences

  if i remember this correctly, there is nothing special about a
preferred provider containing a slash, such as "virtual/kernel", is
there? that might be worth mentioning here.

  also, in note, busybox is now up to 1.23.1, not 1.22.1.

2.7 Executing Tasks

  with text like "${T}/log.do_taskname.pid", the "taskname" part
should be tagged with something like <replaceable> to show that it is
not verbatim.

  that's it for chapter 2 ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

