Return-Path: <kevin.strasser@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9316BE014DB
	for <yocto@yoctoproject.org>; Fri, 12 Apr 2013 12:17:46 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 12 Apr 2013 12:17:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.87,464,1363158000"; d="scan'208";a="294180551"
Received: from wrk.jf.intel.com (HELO localhost) ([10.7.202.72])
	by orsmga001.jf.intel.com with ESMTP; 12 Apr 2013 12:17:46 -0700
Date: Fri, 12 Apr 2013 12:15:07 -0700
From: Kevin Strasser <kevin.strasser@linux.intel.com>
To: Mats Liljegren <mats.liljegren@enea.com>
Message-ID: <20130412191507.GA32099@wrk>
References: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+xJJ19kDS-444AsV1esV_QRbqf+GRwsVgf+E498CQVNxxYAGA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: How to archive source for a single package
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
X-List-Received-Date: Fri, 12 Apr 2013 19:17:46 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Mats,

On Fri, Apr 12, 2013 at 03:58:01PM +0200, Mats Liljegren wrote:
> I need to archive source for virtual/kernel when building. This is needed
> for other builds that uses the bitbake build result.
> 
> I saw that there is archive-patched-source class, which seems to do what I
> want plus a lot more. The problem with it is that it seems to be intended
> for other use case than mine, which means that it does a lot more work than
> I need.
> 
The archive-*-source classes are primarily intended to assist in
providing materials for license compliance for the entire target
image. That being said, it shouldn't be too difficult to apply them 
to a single package.

> Is there a way to either tame archive-patched-source to only be applicable
> for virtual/kernel, or is there other ways of accomplishing what I want?
> 
I assume you have a line in your local.conf that looks something like:
  
  INHERIT += "archive-patched-source"

This means that the class will be inherited at the global level and
therefor applied to all packages. It's perfectly reasonable to inherit
the class in any specific package, by adding this line to its recipe:
  
  inherit archive-patched-source

I hope this gives you what you're looking for. Take a look at the
Yocto Project dev manual[1] for further information on the source
archiver.

-Kevin

[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#maintaining-open-source-license-compliance-during-your-products-lifecycle

> Regards
>   Mats

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


