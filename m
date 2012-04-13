Return-Path: <tf+lists.yocto@r-finger.com>
Received: from r-finger.com (r-finger.com [178.79.160.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8FB6E01374
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 02:56:50 -0700 (PDT)
Received: from [192.168.0.2] (host86-134-170-67.range86-134.btcentralplus.com
	[86.134.170.67]) (using TLSv1 with cipher AES256-SHA (256/256 bits))
	(No client certificate requested)
	by r-finger.com (Postfix) with ESMTPSA id AB7B099C2
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2012 10:56:49 +0100 (BST)
Message-ID: <4F87F85F.8060108@r-finger.com>
Date: Fri, 13 Apr 2012 10:56:47 +0100
From: Tomas Frydrych <tf+lists.yocto@r-finger.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.3) Gecko/20120329 Icedove/10.0.3
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <1B707EEC-B001-45EA-BC0B-C0FF70BB7152@keylevel.com>
	<4F862237.50200@linux.intel.com>
In-Reply-To: <4F862237.50200@linux.intel.com>
Subject: Re: Build time data
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
X-List-Received-Date: Fri, 13 Apr 2012 09:56:51 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 12/04/12 01:30, Darren Hart wrote:
> Next up is storage. 

Indeed. In my experience by far the biggest limiting factor in the
builds is getting io bound. If you are not running a dedicated build
machine, it is well worth using a dedicated disk for the poky tmp dir;
assuming you have cpu time left, this leaves the machine completely
usable for other things.


> Now RAM, you will want about 2 GB of RAM per core, with a minimum of 4GB.

My experience does not bear this out at all; building Yocto on a 6 core
hyper threaded desktop machine I have never ever seen the system memory
use to get significantly over a 2GB mark (out of 8GB available), doing
Yocto build using 10 cores/threads.


On a custom desktop machine with i7-x990 3.47GHz, 8GB ram, quiet
conventional hard disks, letting poky use 10 cores/threads (so I can get
my work done while it does its own thing in the background), a fresh
build of core-image-minimal for beagleboard, with debug & profile tools
and test apps, takes 77 minutes.

Obviously, not anywhere near as fast as the Intel OTC Xenon beast, but
much cheaper HW, and for my purposes the build speed is well in a region
where it is no longer a productivity issue.

Tomas

