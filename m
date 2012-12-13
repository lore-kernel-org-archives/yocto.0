Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96631E00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 11:14:30 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:55221 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TjEEi-0008OV-3b; Thu, 13 Dec 2012 14:14:24 -0500
Date: Thu, 13 Dec 2012 14:14:19 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Saul Wold <sgw@linux.intel.com>
In-Reply-To: <50CA1382.2040005@linux.intel.com>
Message-ID: <alpine.DEB.2.02.1212131412350.10182@oneiric>
References: <CAHUNapSruo7u=gn7tjbpJdp8KA53fJsB+0Ez7OVFpKiJ69fX0g@mail.gmail.com>
	<50C8E206.6040203@linux.intel.com>
	<CAHUNapSTKMXS607--qaODp=Jg8e=rSKbPOhegCOA9vZ+YS3hrw@mail.gmail.com>
	<alpine.DEB.2.02.1212121541120.14335@oneiric>
	<CAHUNapTPuUUUyVbhoGQAX9jSCGwEop9nyjevXGo0FbQ1PXWXqA@mail.gmail.com>
	<alpine.DEB.2.02.1212121756210.30220@oneiric>
	<50C989F4.90004@linux.intel.com>
	<alpine.DEB.2.02.1212130753530.5175@oneiric>
	<50CA1382.2040005@linux.intel.com>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: per-image ROOTFS sizes
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
X-List-Received-Date: Thu, 13 Dec 2012 19:14:30 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 13 Dec 2012, Saul Wold wrote:

> > meta-yocto-bsp/conf/machine/routerstationpro.conf:IMAGE_FSTYPES ?= "jffs2
> > tar.bz2"
> > meta-yocto-bsp/conf/machine/atom-pc.conf:IMAGE_FSTYPES ?= "ext3 cpio.gz
> > live"

> I would think that += would be better here, I would welcome a patch!
>
> > scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf:IMAGE_FSTYPES
> > ?= "jffs2 tar.bz2"

> Looks like these followed the pattern of the base machine, but I think this
> should be +=, a patch would be welcome!

  ok, so those are the only cases that warrant tidying up?  unless
there's an objection, i'll submit two patches, one for each of the
above.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

