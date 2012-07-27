Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D02E0027D
	for <yocto@yoctoproject.org>; Fri, 27 Jul 2012 11:04:50 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:53462 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Suou9-0003Th-PF; Fri, 27 Jul 2012 14:04:49 -0400
Date: Fri, 27 Jul 2012 14:04:37 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <5012D204.9010101@intel.com>
Message-ID: <alpine.DEB.2.02.1207271402470.18695@oneiric>
References: <alpine.DEB.2.02.1207271016320.15452@oneiric>
	<5012D204.9010101@intel.com>
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
Subject: Re: do QEMU images really come with dropbear and an nfs server?
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
X-List-Received-Date: Fri, 27 Jul 2012 18:04:51 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 27 Jul 2012, Scott Garman wrote:

> On 07/27/2012 07:18 AM, Robert P. J. Day wrote:
> >
> >    the yocto dev manual currently suggests that QEMU images come with
> > both dropbear and an nfs server:
> >
> > http://www.yoctoproject.org/docs/latest/dev-manual/dev-manual.html#using-pre-built-binaries-and-qemu
> >
> > i don't have a QEMU image in front of me to test, but the definition
> > of the basic QEMU images doesn't seem to suggest that that's true.
> >
> >    i can see it's easy to add them, but the manual suggests they're
> > there by default.  or am i misreading something?
>
> It looks like we may need a manual tweak here.
>
> core-image-minimal does not come with any ssh server. core-image-lsb
> should have openssh instead of dropbear. So unless something changed
> very recently, core-image-sato is the only one that has dropbear in
> it by default.
>
> Also, the manual states "The QEMU images also contain an embedded
> Network File System (NFS) server that exports the image's root
> filesystem." This isn't strictly true - instead we offer a native
> tool which runs a userspace NFS server and if some prep work is done
> by the user (extracting a rootfs tarball with runqemu-extract-sdk),
> you can then point the runqemu script to that directory instead of a
> rootfs image file.

  rather than a simple manual tweak, what about actually adding one or
both of those features to even the smaller core images, then updating
the docs accordingly?  just a thought.

rday


-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

