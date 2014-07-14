Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E0557E0076F; Mon, 14 Jul 2014 04:48:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFCD2E0053E
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 04:48:39 -0700 (PDT)
Received: from [69.196.158.250] (port=44250 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1X6ekI-00059m-4w; Mon, 14 Jul 2014 07:48:38 -0400
Date: Mon, 14 Jul 2014 07:48:35 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <1642412.ScqZpB672V@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1407140745060.16489@localhost>
References: <alpine.LFD.2.11.1407131341350.3800@localhost>
	<1642412.ScqZpB672V@peggleto-mobl5.ger.corp.intel.com>
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
Cc: yocto@yoctoproject.org
Subject: Re: inconsistent ways of setting IMAGE_FSTYPES
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
X-List-Received-Date: Mon, 14 Jul 2014 11:48:43 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 14 Jul 2014, Paul Eggleton wrote:

> On Sunday 13 July 2014 13:44:53 Robert P. J. Day wrote:
> >   not a big deal, but just noticed the various formats for assigning
> > IMAGE_FSTYPES in the meta-yocto layer:
> >
> > $ grep -r IMAGE_FSTYPES *
> > meta-yocto/conf/distro/poky-tiny.conf:IMAGE_FSTYPES = "ext2 cpio.gz"
> > meta-yocto-bsp/conf/machine/edgerouter.conf:IMAGE_FSTYPES ?= "jffs2 tar.bz2"
> > meta-yocto-bsp/conf/machine/beaglebone.conf:IMAGE_FSTYPES += "tar.bz2
> > jffs2" meta-yocto-bsp/conf/machine/mpc8315e-rdb.conf:IMAGE_FSTYPES ?=
> > "jffs2 tar.bz2"
> > scripts/lib/bsp/substrate/target/arch/arm/conf/machine/{{=machine}}.conf:IM
> > AGE_FSTYPES += "tar.bz2 jffs2"
> > scripts/lib/bsp/substrate/target/arch/mips/conf/machine/{{=machine}}.conf:I
> > MAGE_FSTYPES ?= "jffs2 tar.bz2" $
> >
> >   just seems a bit odd for those assignments to be bouncing around
> > between =, += and ?=.
>
> I have to admit I thought we had established quite a long time ago
> in OE history that += was the correct way to set IMAGE_FSTYPES from
> a machine config file, although a quick search didn't turn up the
> thread where we discussed it. We're apparently not consistent with
> that at the moment however.

  i will leave this to someone higher up the evolutionary ladder since
i suspect it's not just a blind, across-the-board textual
substitution. for example, poky-tiny.conf specifically claims:

# By default we only support ext2 and initramfs. We don't build live as that
# pulls in a lot of dependencies for the live image and the installer, like
# udev, grub, etc.  These pull in gettext, which fails to build with wide
# character support.
IMAGE_FSTYPES = "ext2 cpio.gz"

  so someone else can have at this.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================


