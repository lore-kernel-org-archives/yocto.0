Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 722C04C80120
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 04:49:05 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6M9n1Gw027013;
	Fri, 22 Jul 2011 10:49:01 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 26947-01; Fri, 22 Jul 2011 10:48:57 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6M9mtnO027007
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 22 Jul 2011 10:48:55 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Andre Haupt <andre@bitwigglers.org>
In-Reply-To: <20110722093722.GA8668@localhost.localdomain>
References: <20110722083745.GA13064@localhost.localdomain>
	<1311325191.2344.101.camel@rex>
	<20110722093722.GA8668@localhost.localdomain>
Date: Fri, 22 Jul 2011 10:48:52 +0100
Message-ID: <1311328132.2344.106.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: Bitbaking python fails
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
X-List-Received-Date: Fri, 22 Jul 2011 09:49:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-07-22 at 11:37 +0200, Andre Haupt wrote:
> Hi Richard,
> 
> thanks for your answer. See below ... 
> 
> On Fri, Jul 22, 2011 at 09:59:51AM +0100, Richard Purdie wrote:
> > On Fri, 2011-07-22 at 10:37 +0200, Andre Haupt wrote:
> > > Hi all,
> > > 
> > > Building python for poky bernard fails for me with the following error:
> > > 
> > > ...
> > > ...
> > > Looking in tk80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib']
> > > Looking in tcl80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib']
> > > *** WARNING: renaming "gdbm" since importing it failed: libgdbm.so.3:
> > > cannot open shared object file: No such file or directory
> > > /bin/sh: line 1: 12830 Illegal instruction     (core dumped)
> > > LD_LIBRARY_PATH=/home/ahaupt/yocto-git/build/tmp/work/core2-poky-
> > > linux/python-2.6.6-nk1.2/Python-2.6.6:/home/ahaupt/yocto-git/build
> > > /tmp/sysroots/i686-linux/usr/bin/../lib/pseudo/lib:/home/ahaupt
> > > /yocto-git/build/tmp/sysroots/i686-linux/usr/bin/../lib/pseudo/lib64
> > > CC='ccache i586-poky-linux-gcc -m32 -march=core2 -msse3
> > > -mtune=generic -mfpmath=sse
> > > --sysroot=/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc'
> > > LDSHARED='ccache i586-poky-linux-gcc -m32 -march=core2 -msse3
> > > -mtune=generic -mfpmath=sse
> > > --sysroot=/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc
> > > -shared' LDFLAGS='-Wl,-O1  -Wl,--as-needed'
> > > OPT='-fexpensive-optimizations -fomit-frame-pointer
> > > -frename-registers -O2 -ggdb -feliminate-unused-debug-types'
> > > /home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/usr/bin/python
> > > -E ./setup.py -q build
> > > make: *** [sharedmods] Error 132
> > > FATAL: oe_runmake failed
> > > ERROR: Function 'do_compile' failed (see
> > > /home/ahaupt/yocto-git/build/tmp/work/core2-poky-linux/
> > > python-2.6.6-nk1.2/temp/log.do_compile.12751
> > > for further information)
> > > 
> > > Does this sound familiar to anyone? libgdbm.so.3 exists in
> > > /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib and points to
> > > libgdbm.so.3.0.0
> > > 
> > > My target machine is atom-pc and my build host is Fedora 13 in a
> > > VirtualBox machine.
> > 
> > I've not seen this before. You could run
> > "file /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libgdbm.so.3.0.0" and check that its of the correct architecture since the invalid instruction is a weird error to see. I'm not 100% sure its that file its complaining about the instruction from though.
> 
> this is the output of the file command:
> libgdbm.so.3.0.0: ELF 32-bit LSB shared object, Intel 80386, version 1
> (SYSV), dynamically linked, not stripped

Sounds correct...

> > Does it do this every build, erroring in the same way? I know we did see
> > some emulation corruption type issues with virtualbox in the past
> > although they've not been reported for a while. It might be worth
> > starting a new build of "bitbake python" and see if the error is
> > reproducible too...
> 
> It happens reproducible when i do a "bitbake python".

Is this on a fresh clean build directory?

You could also try "bitbake -c cleansstate python gdbm" on your existing
build directory and retry "bitbake python" to see if its reproducible
that way.

Cheers,

Richard


