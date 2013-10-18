Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 487E7E0162F
	for <yocto@yoctoproject.org>; Fri, 18 Oct 2013 08:07:53 -0700 (PDT)
Received: from [69.196.158.250] (port=58855 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VXBeZ-0000TU-06; Fri, 18 Oct 2013 11:07:51 -0400
Date: Fri, 18 Oct 2013 11:07:47 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Edward Vidal <vidal.develone@gmail.com>
In-Reply-To: <CANwz6nzWhGoeO8RsfokpmvbUV1VCotW77JwK_5yVCkmbgZJ5JA@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1310181106180.11380@oneiric>
References: <CANwz6nzWhGoeO8RsfokpmvbUV1VCotW77JwK_5yVCkmbgZJ5JA@mail.gmail.com>
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
Subject: Re: uImage instead of zImage
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
X-List-Received-Date: Fri, 18 Oct 2013 15:07:54 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Fri, 18 Oct 2013, Edward Vidal wrote:

> hello all,
> I am trying to get a uImage instead of zImage
> My beagleboard before created a uImage now with dora I get a zImage.
>
>   in the mega-manual I see the following .
>
>   KERNEL_IMAGETYPE
>
>       The type of kernel to build for a device, usually set by the machine configuration files and defaults to "zImage". This variable is used when building the kernel
>       and is passed to make as the target to build.

  is there a specific reason you want a uImage, given that a zImage
is, these days, a better choice? after all, the current u-boot now, by
default, will try to boot a zImage for the beaglebone.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

