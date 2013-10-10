Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61FA5E015DA
	for <yocto@yoctoproject.org>; Thu, 10 Oct 2013 02:10:32 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by azsmga101.ch.intel.com with ESMTP; 10 Oct 2013 02:10:31 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.90,1070,1371106800"; d="scan'208";a="408739171"
Received: from unknown (HELO helios.localnet) ([10.252.120.176])
	by fmsmga001.fm.intel.com with ESMTP; 10 Oct 2013 02:10:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Date: Thu, 10 Oct 2013 10:10:29 +0100
Message-ID: <2960610.UzChnjkngr@helios>
Organization: Intel Corporation
User-Agent: KMail/4.10.5 (Linux/3.8.0-31-generic; KDE/4.10.5; i686; ; )
In-Reply-To: <alpine.DEB.2.02.1310100440030.11081@oneiric>
References: <alpine.DEB.2.02.1310100440030.11081@oneiric>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: is there any value to the documentation that comes with bitbake?
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
X-List-Received-Date: Thu, 10 Oct 2013 09:10:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Thursday 10 October 2013 04:42:07 Robert P. J. Day wrote:
>   probably more of a bitbake question but in the bitbake checkout,
> there is a "doc" directory that contains what is clearly an old user
> manual. is there any value to this manual? it's noticeably out of
> date, and i know more bitbake content is being added into the yocto
> manuals.
> 
>   so is there any value at all in that bitbake user manual? or is it
> unmaintained these days?

I think there is value in it even in the state you see it in master; there is 
documentation on basic BitBake usage/operation that isn't actually covered by 
any of the Yocto Project manuals.

Having said that, we are currently in the process of updating and extending 
the BitBake manual. We didn't have a chance to finish doing so for 1.5 but will 
get it done for 1.6.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

