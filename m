Return-Path: <dvhart@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 268ABE00746
	for <yocto@yoctoproject.org>; Thu, 12 Apr 2012 00:17:49 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Apr 2012 00:17:49 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="128173843"
Received: from unknown (HELO envy.home) ([10.255.12.222])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2012 00:17:48 -0700
Message-ID: <4F868123.9010902@linux.intel.com>
Date: Thu, 12 Apr 2012 00:15:47 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Peter Tornel <petertornel@yahoo.com>
References: <1334167325.15462.YahooMailNeo@web122203.mail.ne1.yahoo.com>
In-Reply-To: <1334167325.15462.YahooMailNeo@web122203.mail.ne1.yahoo.com>
X-Enigmail-Version: 1.4
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: confusion about IMAGE_INSTALL and getting packages into rootfs
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
X-List-Received-Date: Thu, 12 Apr 2012 07:17:49 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 04/11/2012 11:02 AM, Peter Tornel wrote:
> I'm working with the poky tree, master branch.  I added a few packages
> to IMAGE_INSTALL in core-image-minimal.bb.  Everything builds fine, and
> I can see the built images in each tmp/work subdirectory for my
> IMAGE_INSTALL packages. 
> 
> However, I find that some of the image executables that were part of the
> packages specified in IMAGE_INSTALL wind up in my core-image-minimal
> rootfs and some don't.
> 
> Is there a switch or variable that I need to set to direct all packages
> specified in IMAGE_INSTALL to be installed into my rootfs? 
> 
> 

The preferred way modify the packages that get installed is via the
CORE_IMAGE_EXTRA_INSTALL (POKY_EXTRA_INSTALL in the 1.1 edison release
and earlier) variable in your local.conf. However, modifying the recipe
itself - or writing a new image recipe that sets IMAGE_INSTALL should work.

Can you provide an example of what you have tried that doesn't work?
Keep in mind that you should be using package names here, not recipe names.

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

