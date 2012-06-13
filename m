Return-Path: <dvhart@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CA8AE006D9
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2012 13:49:11 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 13 Jun 2012 13:49:11 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="155999968"
Received: from unknown (HELO envy.home) ([10.255.12.119])
	by azsmga001.ch.intel.com with ESMTP; 13 Jun 2012 13:49:11 -0700
Message-ID: <4FD8FC7A.6000209@linux.intel.com>
Date: Wed, 13 Jun 2012 13:47:54 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120605 Thunderbird/13.0
MIME-Version: 1.0
To: Ross Burton <ross.burton@intel.com>
References: <21DFE0D0610B43B982449CB678019727@intel.com>
In-Reply-To: <21DFE0D0610B43B982449CB678019727@intel.com>
X-Enigmail-Version: 1.4.2
Cc: yocto@yoctoproject.org
Subject: Re: More useful generic-x86 machine
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
X-List-Received-Date: Wed, 13 Jun 2012 20:49:12 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit



On 06/13/2012 01:44 PM, Ross Burton wrote:
> Hi,
> 
> My current test hardware for Yocto work is a Celeron-class Sandy
> Bridge-based micro PC. As is to be expected for a machine like this,
> it's got modern Intel graphics and wireless. Neither of which are
> supported by atom-pc, as it's nominally a "generic netbook" image.
> 
> Let's face it -- it's a really bad generic netbook image, it's really
> a Asus eeePC701-and-similar image. Specifically, only one wifi
> driver, only i915 GPU driver, and so on.
> 
> I'm not arguing for a true generic kernel such as Fedora maintains
> which boots on almost everything, just a new machine with more
> flexibility. Including both i915 and i965 GPU drivers covers
> everything Intel-driven from the earliest netbook to the latest Ivy
> Bridge[1].  Including the iwl wifi drivers at least covers a good
> proportion of devices out there.  There are probably a few more
> drivers that are common and give big gains in support.  Not exactly
> boot on everything, but certainly boot on many.
> 
> Thoughts?

Seems reasonable to me. We should probably have 32b and 64b of this
machine as well.


-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel



