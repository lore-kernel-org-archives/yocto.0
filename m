Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 545A2E013EB
	for <yocto@yoctoproject.org>; Thu, 14 Jun 2012 23:31:47 -0700 (PDT)
Received: from [192.168.0.2] (host86-170-62-160.range86-170.btcentralplus.com
	[86.170.62.160]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id A52C89C07
	for <yocto@yoctoproject.org>; Fri, 15 Jun 2012 07:31:46 +0100 (BST)
Message-ID: <4FDAD6D1.4050605@r-finger.com>
Date: Fri, 15 Jun 2012 07:31:45 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4FD93175.7070202@linux.intel.com> <4FD98EA6.1050403@r-finger.com>
	<4FDA530E.3090508@linux.intel.com>
In-Reply-To: <4FDA530E.3090508@linux.intel.com>
Subject: Re: RFC: poky-tiny: init procedure
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
X-List-Received-Date: Fri, 15 Jun 2012 06:31:47 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hi Darren,

On 14/06/12 22:09, Darren Hart wrote:
> This solution improves the kick-the-tires
> experience with poky-tiny, without pulling in all of init, 

I think you really should quantify what 'all of init' means, without
this you are addressing a problem that is merely perceived. Just a quick
look shows that the sysvinit package is about 120KB unpacked, for that
you get a solution that is tested, robust, and supported across Yocto.


> Again, we're talking about 14 lines of shell, so "init system" is
> overstating it significantly.

Sure, but every new wheel starts exactly this way, and we are already
discussing how to make it do things that sysvinit does for you :-)


Tomas

