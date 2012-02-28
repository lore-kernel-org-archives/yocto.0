Return-Path: <dongxiao.xu@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60AECE00596
	for <yocto@yoctoproject.org>; Mon, 27 Feb 2012 18:22:27 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 27 Feb 2012 18:22:27 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="112456019"
Received: from dongxiao-osel.sh.intel.com (HELO [10.239.36.11])
	([10.239.36.11])
	by orsmga001.jf.intel.com with ESMTP; 27 Feb 2012 18:22:25 -0800
From: "Xu, Dongxiao" <dongxiao.xu@intel.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1330359567.4593.29.camel@ted>
References: <1330350708.4803.15.camel@dongxiao-osel>
	<1330359567.4593.29.camel@ted>
Date: Tue, 28 Feb 2012 10:21:00 +0800
Message-ID: <1330395660.1785.22.camel@dongxiao-osel>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
Cc: yocto@yoctoproject.org
Subject: Re: One question about taskdata and runqueue
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
X-List-Received-Date: Tue, 28 Feb 2012 02:22:27 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-02-27 at 16:19 +0000, Richard Purdie wrote:
> On Mon, 2012-02-27 at 21:51 +0800, Xu, Dongxiao wrote:
> > Hi list,
> > 
> > If I have two recipes, see following. Both of them provides
> > "virtual/test" and has package named "test-test", the only difference is
> > the RDEPENDS of the package "test-test".
> > 
> > test-a_1.0.bb
> > 
> > PROVIDES = "virtual/test"
> > PACKAGES = "test-test"
> > # Assume that the abcd package are provided by recipe abcd.bb
> > RDEPENDS_test-test = "abcd"
> > 
> > 
> > test-b_1.0.bb
> > 
> > PROVIDES = "virtual/test"
> > PACKAGES = "test-test"
> > 
> > In a certain configuration file, we have the PREFERRED_PROVIDER set as:
> > PREFERRED_PROVIDER_virtual/test = "test-a".
> > 
> > Then if a real recipe, for example, the 'v86d', depends on the
> > "virtual/test":
> > DEPENDS = "virtual/test"
> > 
> > Finally if I run the following command:
> > # bitbake v86d
> > 
> > We know that the recipe "abcd" will be included in the runqueue.
> > 
> > My question is, can we get the build dependency to recipe "abcd" through
> > taskdata? Or it is finalized until we create the RunQueue object?
> 
> task data should have a list of providers for "virtual/test", sorted in
> priority order. There should be two entries in that list, one for test-a
> and test-b. Since you set the preferred provider, you should have test-a
> as the first item.
> 
> Once you resolve it to a recipe file, you should be able to look at the
> recipe file's dependencies in dataCache.
> 
> The trouble is you're now resolving all the dependencies in the code I
> think you're referring to. This was in general the job of
> prepare_runqueue() and I'm starting to worry you're duplicating its
> functionality.

Hmm, previously we use the taskdata is to reduce the time for building
up the dependency tree. It seems that we will have to use runqueue to
determine the dependency.

Thanks,
Dongxiao

> 
> Cheers,
> 
> Richard
> 



