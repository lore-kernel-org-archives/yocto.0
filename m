Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7124E011BC
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 09:56:30 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7CGubPp013834;
	Fri, 12 Aug 2011 17:56:37 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 13776-01; Fri, 12 Aug 2011 17:56:34 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p7CGuWMA013828
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 12 Aug 2011 17:56:33 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Darren Hart <dvhart@linux.intel.com>
In-Reply-To: <4E455483.6020602@linux.intel.com>
References: <4E455483.6020602@linux.intel.com>
Date: Fri, 12 Aug 2011 17:55:52 +0100
Message-ID: <1313168152.14274.517.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: core-image-rt building a lot more packages than expected
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
X-List-Received-Date: Fri, 12 Aug 2011 16:56:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Fri, 2011-08-12 at 09:27 -0700, Darren Hart wrote:
> I have been surprised over the last few days at the number of packages
> being built for the core-image-rt target, which for reference is as follows:
> 
> #
> # Copyright (C) 2010 Intel Corporation.
> #
> 
> DESCRIPTION = "Real-Time Linux Image"
> DEPENDS = "linux-yocto-rt"
> 
> require recipes-core/images/core-image-minimal.bb
> 
> IMAGE_INSTALL += "rt-tests"
> 
> LICENSE = "MIT"
> 
> 
> The only dependencies of rt-tests are:
> 
> DEPENDS = "linux-libc-headers eglibc"
> 
> 
> Building core-image-rt schedules 3154 tasks, and among them are things like:
> lttng-viewer
> gst-plugins-base (bad, good, etc)
> gtk+
> libogg
> libtheora
> owl-video
> clutter
> libglade
> librsvg
> mesa-demos
> x11-perf
> xvideo-tests
> etc etc etc
> 
> I noticed my local.conf contains:
> EXTRA_IMAGE_FEATURES = "tools-debug tools-profile tools-testapps
> debug-tweaks"
> 
> That hasn't changed in a while, but perhaps those features now pull in
> more than they used to? Or if they don't, are we unintentionally pulling
> in a lot more packages for what is essentially a minimal image?

If you enable those things they do get pulled into images and some of
the dependency chains are pretty heavy. They are no longer default in
local.conf though.

Cheers,

Richard




