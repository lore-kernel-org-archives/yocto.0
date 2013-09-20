Return-Path: <linux@rkirkpat.net>
Received: from saratoga.rkirkpat.net (saratoga.rkirkpat.net [206.196.156.29])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D9D8E015FD
	for <yocto@yoctoproject.org>; Fri, 20 Sep 2013 16:44:59 -0700 (PDT)
Received: from magellan.rkirkpat.net (magellan.rkirkpat.net [192.168.7.5])
	by saratoga.rkirkpat.net (Postfix) with ESMTP
	id 81E6A71767; Fri, 20 Sep 2013 17:44:58 -0600 (MDT)
Date: Fri, 20 Sep 2013 17:44:58 -0600 (MDT)
From: Ryan Kirkpatrick <linux@rkirkpat.net>
X-X-Sender: rkirkpat@magellan.rkirkpat.net
To: yocto@yoctoproject.org
Message-ID: <alpine.DEB.2.00.1309201728360.21975@magellan.rkirkpat.net>
User-Agent: Alpine 2.00 (DEB 1167 2008-08-23)
MIME-Version: 1.0
Subject: Mono 2.10.8.1 (meta-mono) Corelib not in sync with runtime...
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
X-List-Received-Date: Fri, 20 Sep 2013 23:45:02 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


I am trying to get Mono 2.10 working on a core-image-basic running on 
qemux86 machine. I am using pokay-dylan-9.0.2 on a Debian 6.0.7 system for 
the builds and been able to build and run images without issue. Yet, when 
I went to add the meta-mono layer from git.yoctoporject.org, I started 
running into problems.

I first had to add these lines to the mono_2.10.8.1.bb recipe, and move 
the mono-2.10.8.1/ folder into the files/ folder to get the build to 
succeed. I also added the EXTRA_OECONF line to disable X support (don't 
want winforms, just Mono for console and services).

EXTRA_OECONF += "--without-x --without-moonlight --without-libgdiplus"
FILES_${PN} += "${datadir}/mono-2.0"
FILES_${PN} += "${datadir}/libgc-mono"
INSANE_SKIP_${PN} = "arch dev-so debug-files ldflags"

After that, I built and booted an image with the 'mono' package installed 
and was able to run Mono simply:

$ mono --version
Mono JIT compiler version 2.10.8.1 (tarball Fri Sep 20 14:23:43 MDT 2013)
Copyright (C) 2002-2011 Novell, Inc, Xamarin, Inc and Contributors. 
www.mono-project.com
	TLS:           normal
	SIGSEGV:       normal
	Notifications: epoll
	Architecture:  x86
	Disabled:      none
	Misc:          debugger softdebug 
	LLVM:          supported, not enabled.
	GC:            Included Boehm (with typed GC and Parallel Mark)

Yet when I actually tried to run a Mono application (simple console only 
application already compiled on another system), I got this error:

Corlib not in sync with this runtime: expected corlib version 96, found 100.
Loaded from: /usr/lib/mono/2.0/mscorlib.dll
Download a newer corlib or a newer runtime at http://www.go-mono.com/daily.

It looks like this error indicates some sort mismatch in Mono, as if one 
was mixing between a release and a development version. But there is no 
Mono on my build machine to cause confusion, everything came from the Mono 
recipe. Further, given the issues I encountered above in getting Mono 
built, it appears this recipe has not been tested with more recent version 
of Yocto.

Is there a more current Mono recipe available? Does anyone have any ideas 
on what in this Mono recipe could cause that error? Or do I get to dig in 
and untangle the Mono build? Thanks!

---------------------------------------------------------------------------
| Ryan Kirkpatrick | Boulder, CO | rkirkpat.net | twitter.com/rkirkpatnet |
---------------------------------------------------------------------------


