Return-Path: <andre@bitwigglers.org>
Received: from moutng.kundenserver.de (moutng.kundenserver.de
	[212.227.126.171])
	by mx1.pokylinux.org (Postfix) with ESMTP id 60F5E4C80120
	for <yocto@yoctoproject.org>; Fri, 22 Jul 2011 04:37:29 -0500 (CDT)
Received: from localhost.localdomain ([145.253.109.106])
	by mrelayeu.kundenserver.de (node=mreu1) with ESMTP (Nemesis)
	id 0MIjAi-1Qi0JX0mYC-002HvU; Fri, 22 Jul 2011 11:37:23 +0200
Date: Fri, 22 Jul 2011 11:37:22 +0200
From: Andre Haupt <andre@bitwigglers.org>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20110722093722.GA8668@localhost.localdomain>
References: <20110722083745.GA13064@localhost.localdomain>
	<1311325191.2344.101.camel@rex>
MIME-Version: 1.0
In-Reply-To: <1311325191.2344.101.camel@rex>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-Provags-ID: V02:K0:s/dOcglChhB3a6E1KXYvE0HElqzMtgspcXF9LN5CZDA
	aMbg5+mVeHMD8AEGoW+rfJi4v5Lj1g4FXZsThuqm4JbhIB+A5V
	xwPwBsXFgEwoKQ1P+RS9f+Z6SuztkhnZAbWQqypMcutPbY378C
	elZ9rn9DiZTv3zJKr4cVEsXhTt2dyEHhCrygvmN3Y4mLhsZQAk
	Ck48NCyoowqUJFTxVwPAnskBwH1h1Sjq0cVmcOEESI=
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
X-List-Received-Date: Fri, 22 Jul 2011 09:37:29 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Richard,

thanks for your answer. See below ... 

On Fri, Jul 22, 2011 at 09:59:51AM +0100, Richard Purdie wrote:
> On Fri, 2011-07-22 at 10:37 +0200, Andre Haupt wrote:
> > Hi all,
> > 
> > Building python for poky bernard fails for me with the following error:
> > 
> > ...
> > ...
> > Looking in tk80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib']
> > Looking in tcl80 for ['/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib']
> > *** WARNING: renaming "gdbm" since importing it failed: libgdbm.so.3:
> > cannot open shared object file: No such file or directory
> > /bin/sh: line 1: 12830 Illegal instruction     (core dumped)
> > LD_LIBRARY_PATH=/home/ahaupt/yocto-git/build/tmp/work/core2-poky-
> > linux/python-2.6.6-nk1.2/Python-2.6.6:/home/ahaupt/yocto-git/build
> > /tmp/sysroots/i686-linux/usr/bin/../lib/pseudo/lib:/home/ahaupt
> > /yocto-git/build/tmp/sysroots/i686-linux/usr/bin/../lib/pseudo/lib64
> > CC='ccache i586-poky-linux-gcc -m32 -march=core2 -msse3
> > -mtune=generic -mfpmath=sse
> > --sysroot=/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc'
> > LDSHARED='ccache i586-poky-linux-gcc -m32 -march=core2 -msse3
> > -mtune=generic -mfpmath=sse
> > --sysroot=/home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc
> > -shared' LDFLAGS='-Wl,-O1  -Wl,--as-needed'
> > OPT='-fexpensive-optimizations -fomit-frame-pointer
> > -frename-registers -O2 -ggdb -feliminate-unused-debug-types'
> > /home/ahaupt/yocto-git/build/tmp/sysroots/i686-linux/usr/bin/python
> > -E ./setup.py -q build
> > make: *** [sharedmods] Error 132
> > FATAL: oe_runmake failed
> > ERROR: Function 'do_compile' failed (see
> > /home/ahaupt/yocto-git/build/tmp/work/core2-poky-linux/
> > python-2.6.6-nk1.2/temp/log.do_compile.12751
> > for further information)
> > 
> > Does this sound familiar to anyone? libgdbm.so.3 exists in
> > /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib and points to
> > libgdbm.so.3.0.0
> > 
> > My target machine is atom-pc and my build host is Fedora 13 in a
> > VirtualBox machine.
> 
> I've not seen this before. You could run
> "file /home/ahaupt/yocto-git/build/tmp/sysroots/atom-pc/usr/lib/libgdbm.so.3.0.0" and check that its of the correct architecture since the invalid instruction is a weird error to see. I'm not 100% sure its that file its complaining about the instruction from though.

this is the output of the file command:
libgdbm.so.3.0.0: ELF 32-bit LSB shared object, Intel 80386, version 1
(SYSV), dynamically linked, not stripped

> Does it do this every build, erroring in the same way? I know we did see
> some emulation corruption type issues with virtualbox in the past
> although they've not been reported for a while. It might be worth
> starting a new build of "bitbake python" and see if the error is
> reproducible too...

It happens reproducible when i do a "bitbake python".

regards,

Andre

