Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC35DE011AD
	for <yocto@yoctoproject.org>; Fri, 24 Aug 2012 08:46:05 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:33029 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1T4w59-000273-Ln; Fri, 24 Aug 2012 11:45:59 -0400
Date: Fri, 24 Aug 2012 11:45:57 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Scott Garman <scott.a.garman@intel.com>
In-Reply-To: <5037A0D5.5050508@intel.com>
Message-ID: <alpine.DEB.2.02.1208241145100.32624@oneiric>
References: <alpine.DEB.2.02.1208221629150.20737@oneiric>
	<5035E629.5010109@r-finger.com> <5037A0D5.5050508@intel.com>
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
Subject: Re: dev manual section on "customizing images" needs serious adjustment
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
X-List-Received-Date: Fri, 24 Aug 2012 15:46:06 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 24 Aug 2012, Scott Garman wrote:

> On 08/23/2012 01:13 AM, Tomas Frydrych wrote:
> > Hi,
> >
> > On 22/08/12 21:37, Robert P. J. Day wrote:
> > > One way to get additional software into an image is to create a
> > > custom image.
> >
> > The manual should make it clear that this is *the* canonical way to add
> > software to your images. Modifications to local.conf are temporary
> > tweaks for testing/debugging (i.e., you should never feel the need to
> > commit your local.conf to some project version control system).
> >
> > Tomas
>
> +1. If you add additional packages to core-image-minimal in your local.conf,
> you're no longer really building core-image-minimal.

  sure.  but if you similarly explicitly set IMAGE_INSTALL before
inheriting core-image, you're not really "inheriting" core-image
either. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

