Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC100E006B1
	for <yocto@yoctoproject.org>; Tue,  3 Jul 2012 03:23:57 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([99.241.91.63]:58647 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1Sm0Gy-0005ht-TO; Tue, 03 Jul 2012 06:23:56 -0400
Date: Tue, 3 Jul 2012 06:23:52 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Gary Thomas <gary@mlbassoc.com>
In-Reply-To: <4FF2C4B2.7000200@mlbassoc.com>
Message-ID: <alpine.DEB.2.02.1207030622460.29577@oneiric>
References: <alpine.DEB.2.02.1206260424590.22400@oneiric>
	<CAKSdS8JfwcMZpXej0jykpquWvAN8vPyJPrmq3u_Y6i47iYdzZA@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C46A874F6@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1207030547210.29271@oneiric>
	<4FF2C4B2.7000200@mlbassoc.com>
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
Subject: Re: how does one use a prebuilt toolchain from the toolchain/ directory?
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
X-List-Received-Date: Tue, 03 Jul 2012 10:23:57 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 3 Jul 2012, Gary Thomas wrote:

> Use SSTATE_MIRRORS to point at the sstate-cache of the first build.
> This will let bitbake reuse as much as possible, including the toolchain.
>
> I do exactly as you are proposing above and my builds for the "secondary"
> targets can be as little as a couple of minutes (from scratch).

  what's strange is that there's a whole yocto wiki page devoted to
build performance issues:

https://wiki.yoctoproject.org/wiki/Build_Performance

which says nothing about this.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

