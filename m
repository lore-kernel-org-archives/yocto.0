Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-banded.atl.sa.earthlink.net
	(elasmtp-banded.atl.sa.earthlink.net [209.86.89.70])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9B243E00406
	for <yocto@yoctoproject.org>; Tue, 20 Aug 2013 16:06:53 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=QBEdv52vDTq3iKMDLEee+M+Cr6hjNMRAW6txB23OH/sFRIZxV4d1Jyf3aumLJTGw;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-banded.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VBv0m-0006r3-Me; Tue, 20 Aug 2013 19:06:53 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>
References: <C0360C54FF104163BE67C2C714409398@PAULD>
	<CAJTo0LYbxT61+Dd_S2f+Det3vk-Fr2q1MgGKOgZ0AM9wxKsaeA@mail.gmail.com>
In-Reply-To: <CAJTo0LYbxT61+Dd_S2f+Det3vk-Fr2q1MgGKOgZ0AM9wxKsaeA@mail.gmail.com>
Date: Tue, 20 Aug 2013 16:06:54 -0700
Message-ID: <194F81E112554215A78C3D22D34B2A58@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6dnWryDDWqfamYSGKwK/9KOoPOWAAVUcjQ
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068855a8f133671541c0064b623cce518187350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Building one package needs header from another
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
X-List-Received-Date: Tue, 20 Aug 2013 23:06:54 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross [mailto:ross.burton@intel.com] 
> 
> If you've built pygtk then the target sysroot should have the headers
> in, and for me it does:
> 
> ross@melchett /data/poky-master/tmp/sysroots/genericx86
> $ find . -name pygtk.h
> ./usr/include/pygtk-2.0/pygtk/pygtk.h
> 
> This is probably a problem with python-matplotlib, can you share the
> configure and build logs?  It's probably looking in the wrong place.

Yes, the include files are there. I'm only beginning to grasp a little
about how builds work, and that sysroots/overo is the context in which the
Gumstix cross tools run. But the appropriate directory,
/home/pauld/yocto/build/tmp/sysroots/overo/usr/include/pygtk-2.0, is not
on the compiler command line, and that causes the error.

I've been trying to figure out how the setup.py/setup.cfg (and distutils)
stuff works. The setup.cfg file lists only one possible option for adding
directories, which is basedirlist, but setting that to foo adds
foo/include to the include directories and foo/lib to the library
directories, so that's not appropriate. I tried just setting include_dirs
to the proper directory in the [directories] section, but it had no
effect.

The configure log shows nothing, but the compile log (which shows the
compile error at the end), shows this DEBUG note right at the beginning:

/home/pauld/yocto/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueabi/python
-matplotlib-1.1.0-r3/temp/run.do_compile.14201: line 82:
/home/pauld/yocto/build/tmp/sysroots/i686-linux/usr/bin/python: No such
file or directory
basedirlist is: ['/home/pauld/yocto/build/tmp/sysroots/overo/usr/lib']

The message refers to this script in run.do_compile (slightly
reformatted):

do_compile() {
  BUILD_SYS=i686-linux HOST_SYS=arm-poky-linux-gnueabi \
  /home/pauld/yocto/build/tmp/sysroots/i686-linux/usr/bin/python \
      setup.py build || true
  distutils_do_compile
}

This would suggest that setup.py isn't even being run. Yet when I
accidentally put a syntax error into setup.cfg, it barfed. Is setup.cfg
read before setup.py is run, by something else?

So there are two questions: why is there no python in that directory?
(There is a python-native subdirectory containing python.) And once that's
dealt with, how does one add a specific include subdirectory to the
command line via setup.cfg?

Or maybe those aren't the questions. I understand about 0.1% of what's
going on here.

I'm also curious if distutils is something that is used throughout the
bitbake process, or is it something specific to building Python-related
stuff? Can the setup.py/setup.cfg mechanism be used in any recipes?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


