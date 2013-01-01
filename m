Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EEC2E0144A
	for <yocto@yoctoproject.org>; Tue,  1 Jan 2013 11:46:44 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:37986 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Tq7nP-000509-0r; Tue, 01 Jan 2013 14:46:43 -0500
Date: Tue, 1 Jan 2013 14:46:39 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <50E32FD8.3070905@intel.com>
Message-ID: <alpine.DEB.2.02.1301011443260.21012@oneiric>
References: <alpine.DEB.2.02.1212291218520.4787@oneiric>
	<50E32FD8.3070905@intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: odd(?) behaviour with qemu arm image and "runqemu-extract-sdk"
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
X-List-Received-Date: Tue, 01 Jan 2013 19:46:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 1 Jan 2013, Scott Garman wrote:

> On 12/29/2012 09:33 AM, Robert P. J. Day wrote:
> >
> >    first time perusing these sections in the yocto docs, kind of
> > puzzling result so i'm prepared to believe i did something silly.
> > reading:
> >
> > http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#workflow-using-stand-alone-cross-development-toolchains
> >
> > "Workflow Using Stand-alone Cross-development Toolchains", and i
> > already had an OE qemuarm core-image-minimal built that i can run
> > just fine with:
> >
> > $ runqemu qemuarm
> >
> > so i was reading that section and followed the link over to the ADT
> > manual:
> >
> > http://www.yoctoproject.org/docs/1.4/adt-manual/adt-manual.html#extracting-the-root-filesystem
> >
> > where it talked about "Extracting the Root Filesystem", so i figured,
> > what the heck, i'll give that a shot, so i ran "runqemu-extract-sdk"
> > on the very rootfs tarball that had been created by my build and
> > extracted it under ~/rootfs, then without reading any further, tried
> > this variation of runqemu for the first time:
> >
> > $ runqemu qemuarm ~/rootfs
> > Assuming /home/rpjday/rootfs is an nfs rootfs
> > Continuing with the following parameters:
> > KERNEL:
> > [/home/rpjday/oe/builds/oe/qemuarm/tmp-eglibc/deploy/images/zImage-qemuarm.bin]
> > ROOTFS: [/home/rpjday/rootfs]
> > FSTYPE: [nfs]
> > Setting up tap interface under sudo
> > [sudo] password for rpjday:
> > Acquiring lockfile for tap0...
> > runqemu-export-rootfs restart /home/rpjday/rootfs
> > Error: Unable to find rpc.mountd binary in
> > /home/rpjday/oe/builds/oe/qemuarm/tmp-eglibc/sysroots/x86_64-linux/usr/sbin/
> > Have you run 'bitbake meta-ide-support'?
> > Set 'tap0' nonpersistent
> > Releasing lockfile of preconfigured tap device 'tap0'
> > $
> >
> >    so ... how many things did i do wrong?
>
> Hi Robert,
>
> When you built your original image, it generated a filesystem in a
> file (in this case, an ext3 one) which the runqemu script used to
> boot with.
>
> But booting an nfs-based image with runqemu requires our userspace
> NFS server. This is a new requirement that requires you to build the
> meta-ide-support target.
>
> So in this case, what you're seeing is exactly what is intended -
> the runqemu script tells you what you need to do to proceed. You did
> nothing wrong.
>
> There was a time (a long time ago) when meta-ide-support was built
> anytime qemu was built, but we ended up splitting it out since it
> added an unnecessary build dependency on meta-ide-support when most
> users never needed to boot an NFS image.

  that's fine ... it's probably worth adding that tidbit to the docs
since the only thing that was concerning me was trying something
according to the docs and have it come back saying, "wait, did you do
X first?" when i didn't recall anything suggesting i do X in the first
place.  and i didn't want to simply follow the advice and do X until i
verified that i didn't miss the advice to run X earlier.

  ok, that's the mimosas talking ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

