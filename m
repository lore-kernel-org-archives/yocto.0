Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7C6BCE00294
	for <yocto@yoctoproject.org>; Thu, 13 Dec 2012 13:45:48 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:57766 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TjGbD-0006Nt-Ba; Thu, 13 Dec 2012 16:45:47 -0500
Date: Thu, 13 Dec 2012 16:45:42 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: =?ISO-8859-15?Q?David_Nystr=F6m?= <David.Nystrom@enea.com>
In-Reply-To: <88701C38B5D07249817D428430999C9128AA9E5D@sestoex09.enea.se>
Message-ID: <alpine.DEB.2.02.1212131644350.12603@oneiric>
References: <alpine.DEB.2.02.1212131456500.10980@oneiric>
	<88701C38B5D07249817D428430999C9128AA9E5D@sestoex09.enea.se>
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
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Use "+=" consistently when setting IMAGE_FSTYPES in Yocto machine conf files.
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
X-List-Received-Date: Thu, 13 Dec 2012 21:45:48 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-539655811-1355435146=:12603"

--8323329-539655811-1355435146=:12603
Content-Type: TEXT/PLAIN; charset=iso-8859-1
Content-Transfer-Encoding: 8BIT

On Thu, 13 Dec 2012, David Nyström wrote:

> Hi,
>
> Hmm,
> This will lead to these variables beeing append:able but non-overridable in image layer, as an(un?)intended consequence,
> right ?
>
> Br,
> David
>
> Sent from my Android phone using TouchDown (www.nitrodesk.com)
>
> -----Original Message-----
> From: Robert P. J. Day [rpjday@crashcourse.ca]
> Received: Thursday, 13 Dec 2012, 20:59
> To: Yocto discussion list [yocto@yoctoproject.org]
> Subject: [yocto] [PATCH] Use "+=" consistently when setting IMAGE_FSTYPES in Yocto machine conf files.
>
>
> Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
>
> ---
>
> diff --git a/meta-yocto-bsp/conf/machine/atom-pc.conf b/meta-yocto-bsp/conf/machine/atom-pc.conf
> index 77dd7fb..fbde1d3 100644
> --- a/meta-yocto-bsp/conf/machine/atom-pc.conf
> +++ b/meta-yocto-bsp/conf/machine/atom-pc.conf
> @@ -25,7 +25,7 @@ XSERVER ?= "xserver-xorg \
>
>  MACHINE_EXTRA_RRECOMMENDS = "kernel-modules eee-acpi-scripts"
>
> -IMAGE_FSTYPES ?= "ext3 cpio.gz live"
> +IMAGE_FSTYPES += "ext3 cpio.gz live"
>
>  APPEND += "usbcore.autosuspend=1"
>
> diff --git a/meta-yocto-bsp/conf/machine/routerstationpro.conf b/meta-yocto-bsp/conf/machine/routerstationpro.conf
> index e5e4d1a..c7a5ad5 100644
> --- a/meta-yocto-bsp/conf/machine/routerstationpro.conf
> +++ b/meta-yocto-bsp/conf/machine/routerstationpro.conf
> @@ -22,5 +22,5 @@ USE_VT ?= "0"
>
>  MACHINE_EXTRA_RRECOMMENDS = " kernel-modules"
>
> -IMAGE_FSTYPES ?= "jffs2 tar.bz2"
> +IMAGE_FSTYPES += "jffs2 tar.bz2"

  please don't top post.  and i'll have to take a look at this to see
what the potential problem is here.  can anyone else see a potential
issue with this patch?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-539655811-1355435146=:12603--
