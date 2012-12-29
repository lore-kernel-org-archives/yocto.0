Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B10DE004F1
	for <yocto@yoctoproject.org>; Sat, 29 Dec 2012 09:33:27 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:41562 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tp0Hm-0005IO-TS
	for yocto@yoctoproject.org; Sat, 29 Dec 2012 12:33:27 -0500
Date: Sat, 29 Dec 2012 12:33:22 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <alpine.DEB.2.02.1212291218520.4787@oneiric>
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
Subject: odd(?) behaviour with qemu arm image and "runqemu-extract-sdk"
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
X-List-Received-Date: Sat, 29 Dec 2012 17:33:28 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII


  first time perusing these sections in the yocto docs, kind of
puzzling result so i'm prepared to believe i did something silly.
reading:

http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#workflow-using-stand-alone-cross-development-toolchains

"Workflow Using Stand-alone Cross-development Toolchains", and i
already had an OE qemuarm core-image-minimal built that i can run
just fine with:

$ runqemu qemuarm

so i was reading that section and followed the link over to the ADT
manual:

http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#extracting-the-root-filesystem

where it talked about "Extracting the Root Filesystem", so i figured,
what the heck, i'll give that a shot, so i ran "runqemu-extract-sdk"
on the very rootfs tarball that had been created by my build and
extracted it under ~/rootfs, then without reading any further, tried
this variation of runqemu for the first time:

$ runqemu qemuarm ~/rootfs
Assuming /home/rpjday/rootfs is an nfs rootfs
Continuing with the following parameters:
KERNEL:
[/home/rpjday/oe/builds/oe/qemuarm/tmp-eglibc/deploy/images/zImage-qemuarm.bin]
ROOTFS: [/home/rpjday/rootfs]
FSTYPE: [nfs]
Setting up tap interface under sudo
[sudo] password for rpjday:
Acquiring lockfile for tap0...
runqemu-export-rootfs restart /home/rpjday/rootfs
Error: Unable to find rpc.mountd binary in
/home/rpjday/oe/builds/oe/qemuarm/tmp-eglibc/sysroots/x86_64-linux/usr/sbin/
Have you run 'bitbake meta-ide-support'?
Set 'tap0' nonpersistent
Releasing lockfile of preconfigured tap device 'tap0'
$

  so ... how many things did i do wrong?  some random thoughts on this
before i dig back into the docs and code:

1) why the name "runqemu-extract-sdk"?  it seems that the point of
that script is to just untar a root filesystem.  i don't see anything
being "extracted" per se.


2) i notice that the "dev" directory created by that script contains
only regular files instead of actual special device files.  but if i
use "sudo" to just untar exactly the same tarball, i get real device
files.  is that the expected behaviour of that script?

3) what should i have done earlier to have the apparently necessary
usr/sbin/rpc.mountd in my sysroot?  it seems odd that i can run my
built qemu image just fine if i run it normally, but if i
runqemu-extract-sdk to unload a rootfs, suddenly my sysroot is missing
that utility.  is the documentation simply missing some simple but
critical details about what types of images are required for this?

  and one more thing.  from that first link in the dev manual, there's
that note that takes you over to the ADT manual.  and it's entirely
possible that there some critical info *before* the section
"Extracting the Root Filesystem" but given how one got there (by
following the link), the reader might miss it.

  anyway, thoughts?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

