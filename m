Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB44EE0132F
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2011 09:07:30 -0700 (PDT)
Received: from [142.204.70.21] (helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.69) (envelope-from <rpjday@crashcourse.ca>)
	id 1RJoxs-0001Es-GP
	for yocto@yoctoproject.org; Fri, 28 Oct 2011 12:07:28 -0400
Date: Fri, 28 Oct 2011 12:07:13 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost6.localdomain6
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1110281201530.17318@localhost6.localdomain6>
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
Subject: am i the only person having trouble fetching sat-solver?
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
X-List-Received-Date: Fri, 28 Oct 2011 16:07:30 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  i ran into this a few weeks back, and i'm still having this grief.
I'm running:

  $ bitbake -c fetchall core-image-sato

and it's perpetually failing trying to fetch the sat-solver package.
based on the .bb file, the fetcher should be using git:

...

SRCREV = "0a7378d5f482f477a01cf1690d76871ab8bdcc32"
PV = "0.0-git${SRCPV}"
PR = "r12"

PARALLEL_MAKE=""

SRC_URI = "git://github.com/openSUSE/sat-solver.git;protocol=git \
           file://sat-solver_rpm5.patch \
           file://sat-solver_obsolete.patch \
           file://cmake.patch \
           file://db5.patch \
           file://sat-solver_core.patch \
           file://fix_gcc-4.6.0_compile_issue.patch \
          "
.. etc etc ...

but the resulting tarball is perpetually broken:

$ tar tvzf git2_github.com.openSUSE.sat-solver.git.tar.gz
drwxrwxrwx pokybuild/users   0 2011-09-20 14:45 ./
drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./branches/
drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./info/
-rw-rw-rw- pokybuild/users 240 2011-09-20 14:44 ./info/exclude
-rw-rw-rw- pokybuild/users 889 2011-09-20 14:45 ./packed-refs
drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./refs/
drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./refs/heads/
drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./refs/tags/
drwxrwxrwx pokybuild/users   0 2011-09-20 14:44 ./hooks/
... snip ...
drwxrwxrwx pokybuild/users    0 2011-09-20 14:45 ./objects/pack/
-r--r--r-- pokybuild/users 177372595 2011-09-20 14:45
./objects/pack/pack-988f73d811514444fa8fed89532c75e67d4250f8.pack

gzip: stdin: unexpected end of file
tar: Unexpected EOF in archive
tar: Error is not recoverable: exiting now

=== end ===

  is no one else seeing this?  i've tried several times and this is,
at the moment, the only package that's causing trouble.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

