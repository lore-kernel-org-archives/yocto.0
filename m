Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19F0AE0132F
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 03:02:19 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 01 May 2012 03:02:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,351,1309762800"; d="scan'208";a="138651147"
Received: from unknown (HELO helios.localnet) ([10.252.120.35])
	by orsmga002.jf.intel.com with ESMTP; 01 May 2012 03:02:18 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: jfabernathy <jfabernathy@gmail.com>
Date: Tue, 01 May 2012 11:02:15 +0100
Message-ID: <1706473.0FE0YEI8yf@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.2 (Linux/3.0.0-17-generic-pae; KDE/4.8.2; i686; ; )
In-Reply-To: <4F9AA9FA.6020604@gmail.com>
References: <4F9AA9FA.6020604@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: rebuilds -- when to do what??
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
X-List-Received-Date: Tue, 01 May 2012 10:02:19 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 27 April 2012 10:15:22 jfabernathy wrote:
> I generally work from Master repository and when I see significant
> changes while doing git pull, I try to rebuild one of my projects.  I've
> tried a lot of the methods:
> 
> 1.  just bitbake again.
> 2.  bitbake -c cleanall or -c cleansstate core-image-sato
> 3.  If I know a recipe has changed, I'll bitbake -c cleansstate "recipe
> name"
> 
> Most of the time something fails.  Researching what, is an impossibility
> to me and much quicker to just delete the build directory and redo it.
> 
> Is there a good "how to" rebuild?  Or is it the best use of time to just
> tell users to blow away the build dir. and restart, saving the old
> local.conf and bblayer.conf?

We've addressed all of the rebuild issues that have been reported and those 
that we've been able to detect before the 1.2 release, using a script which 
forces a re-run of every task, so there should no longer be any rebuild 
issues. If you do hit any post 1.2, please report them as bugs so we can 
investigate and fix them.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

