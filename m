Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37E22E0052B; Mon, 13 Mar 2017 08:30:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19DC6E00349
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 08:30:13 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by orsmga105.jf.intel.com with ESMTP; 13 Mar 2017 08:30:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,159,1486454400"; d="scan'208";a="66937060"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.141])
	by orsmga004.jf.intel.com with ESMTP; 13 Mar 2017 08:30:12 -0700
Message-ID: <1489419468.3261.64.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Andrea Laini <andrea.laini@claypaky.it>
Date: Mon, 13 Mar 2017 09:37:48 -0600
In-Reply-To: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
References: <9e0050bb9fd3419fa979364b1359b490@Server109.claypaky.local>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Autoload kernel module works only once
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
X-List-Received-Date: Mon, 13 Mar 2017 15:30:17 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Mon, 2017-03-13 at 14:36 +0000, Andrea Laini wrote:
> Hi everybody,
> 
>  
> 
> I’m getting some errors after building my Linux distro with the use of
> KERNEL_MODULE_AUTOLOAD to allow autoloading 2 of my custom out-of-tree
> device at boot time. We’ve a Poky 1.7 version.
> 
>  
> 
> So, before building the new image with the Yocto keyword
> KERNEL_MODULE_AUTOLOAD, I was able to load and open (and, obviously,
> use) my devices simply by calling ‘modprobe mydevice’ after logging
> in. Restarting the board, everything was still working well.
> 
> Since I’ve rebuild a new image enabling module autoload at boot time,
> modules are always loaded, but I’m able to open (and use) them only
> really first time I switched on the board after downloading new image.
> After the first reboot, LKMs are still loaded (calling ‘lsmod’ show
> them) but I can’t open them, neither from my C program nor
> reading/writing them from ‘/dev/mydevice’.


I am not a kernel expert, but do you know if file permissions change
after first boot? you may enable debugging at your device and view it
with dmesg, that would give you more clues. 

> 
>  
> 
> To me it sound a very strange behavior.
> 
>  
> 
> Hope anyone can help,
> 
> Many thanks
> 
>  
> 
> Andrea
> 
>  
> 
> 
> Andrea Laini
> 
> Email:andrea.laini@claypaky.it
> _________________________________
> Clay Paky S.p.A.
> AN OSRAM BUSINESS 
> Via Pastrengo, 3/b - 24068 Seriate (BG) - ITALY
> Phone: +39 - 035.654.311 - Fax: +39 - 035.30.18.76
> Web: www.claypaky.it
> _________________________________
> Read our Disclaimer @  www.claypaky.it/disclaimer
> 
> 
> 
>  
> 
> 
> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



