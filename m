Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga14.intel.com (mga14.intel.com [143.182.124.37])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CD79BE00777
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:23:05 -0800 (PST)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga102.ch.intel.com with ESMTP; 12 Dec 2012 06:23:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,266,1355126400"; d="scan'208";a="230509545"
Received: from unknown (HELO helios.localnet) ([10.252.122.189])
	by azsmga001.ch.intel.com with ESMTP; 12 Dec 2012 06:23:04 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 12 Dec 2012 14:23:03 +0000
Message-ID: <24205817.7arhVS9Yr9@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-19-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CAJTo0LbtCBm3zDQ1kmwCpBwuVM+tk2Cvs2HsaoLw1woV3zgZCQ@mail.gmail.com>
References: <CCEE409D.1DB0A%belen.barros.pena@intel.com>
	<CAJTo0LbtCBm3zDQ1kmwCpBwuVM+tk2Cvs2HsaoLw1woV3zgZCQ@mail.gmail.com>
MIME-Version: 1.0
Subject: Re: Building pseudo fails
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
X-List-Received-Date: Wed, 12 Dec 2012 14:23:06 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 12 December 2012 14:15:50 Burton, Ross wrote:
> On 12 December 2012 14:09, Barros Pena, Belen
> 
> <belen.barros.pena@intel.com> wrote:
> > I just downloaded the Danny release to an Ubuntu 12.10 computer, and
> > pseudo failed to build. Before opening a bug, I just wanted to make sure
> > it's not something silly I am doing. The log file is attached and below
> > I've pasted the terminal output.
> 
> It appears you need to install the "chrpath" package.  If that fixes
> it then we've clearly got a mismatch between the "assumed to exist"
> list and the "verified to exist" list.

Whoops, missed this earlier when I talked to Belen about this issue off-list. 
chrpath is in the list of "verified to exist" utilities 
(SANITY_REQUIRED_UTILITIES), however the catch is that when running hob the 
sanity checks are deferred until the UI actually starts (which is after pseudo 
gets built), so you won't get the error on startup.

Obviously this is not an ideal situation; I suspect we're going to need to re-
engineer how the sanity checks are run within hob so that the critical ones 
can run before pseudo gets built and only the ones that may require 
configuration (e.g. network connectivity checks) are deferred.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

