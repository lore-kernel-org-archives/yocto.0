Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6236BE0056E; Tue, 31 Mar 2015 12:54:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC008E003A8
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 12:54:35 -0700 (PDT)
Received: from [99.240.204.5] (port=50039 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Yd2FJ-0007DZ-8m
	for yocto@yoctoproject.org; Tue, 31 Mar 2015 15:54:45 -0400
Date: Tue, 31 Mar 2015 15:54:31 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.LFD.2.11.1503311547440.7527@localhost>
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
Subject: what is the proper way to build with fedora rawhide/gcc-5.0?
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
X-List-Received-Date: Tue, 31 Mar 2015 19:54:40 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i asked about this a few weeks ago, finally getting back to it ...
for better or worse, i'm running fedora rawhide, updated to the point
where i have gcc-5.0.0:

$ gcc --version
gcc (GCC) 5.0.0 20150208 (Red Hat 5.0.0-0.10)
Copyright (C) 2015 Free Software Foundation, Inc.
This is free software; see the source for copying conditions.  There is NO
warranty; not even for MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
$

which causes a number of build issues trying to build for something as
simple as qemux86.

  first, there is a linemarkers issue with gcc-5.0 that i got around
by adding to local.conf:

  CPPFLAGS_append= " -P"

and there were two native build issues due to gcc-5.0 being far
pickier with warnings that i sidestepped with the cheap hack:

  ASSUME_PROVIDED += "elfutils-native"
  ASSUME_PROVIDED += "binutils-native"

at this point, the build was almost complete when i hit another
compile error for udev on the target:

DEBUG: SITE files ['endian-little', 'bit-32', 'ix86-common',
'common-linux', 'common-glibc', 'i586-linux', 'common']
DEBUG: Executing shell function do_compile
NOTE: make -j 8
make: *** No rule to make target '/linux/input.h', needed by
'src/keymap/keys.txt'.  Stop.
ERROR: oe_runmake failed
WARNING:
/home/rpjday/oe/builds/qemux86/tmp/work/i586-poky-linux/udev/182-r9/temp/run.do_compile.30377:1
exit 1 from
  exit 1
ERROR: Function failed: do_compile (log file is located at
/home/rpjday/oe/builds/qemux86/tmp/work/i586-poky-linux/udev/182-r9/temp/log.do_compile.30377)

  in any event, is there a *preferred* way to build using fedora
rawide at this point?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


