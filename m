Return-Path: <richard.purdie@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5E1F5E009A7; Thu,  8 May 2014 03:38:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAFB4E006EF
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 03:38:50 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga102.jf.intel.com with ESMTP; 08 May 2014 03:33:51 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1010,1389772800"; d="scan'208";a="528438157"
Received: from garethcl-mobl.ger.corp.intel.com (HELO [10.252.121.40])
	([10.252.121.40])
	by fmsmga001.fm.intel.com with ESMTP; 08 May 2014 03:38:49 -0700
Message-ID: <1399545527.31891.49.camel@ted>
From: Richard Purdie <richard.purdie@intel.com>
To: "Woodyatt, James" <james.woodyatt@intel.com>
Date: Thu, 08 May 2014 11:38:47 +0100
In-Reply-To: <1E0A4378-38DB-4043-A6AD-C07F6BDC7444@intel.com>
References: <1E0A4378-38DB-4043-A6AD-C07F6BDC7444@intel.com>
Organization: Intel Corporation (UK) Ltd. - Co. Reg. #1134945 - Pipers Way,
	Swindon SN3 1RJ
X-Mailer: Evolution 3.8.4-0ubuntu1 
Mime-Version: 1.0
Cc: Yocto Project Main <yocto@yoctoproject.org>
Subject: Re: [PATCH 1/1] dylan: fix kconfig-frontends for ncurses --with-libterm
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
X-List-Received-Date: Thu, 08 May 2014 10:38:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2014-05-05 at 23:07 +0000, Woodyatt, James wrote:
> commit 939c9feca3c26d4603b573d887324d6220e93819
> Author: james woodyatt <james.woodyatt@intel.com>
> Date:   Mon May 5 15:54:29 2014 -0700
> 
>     kconfig-frontends-native: add support for --with-libterm.
>     
>     This is a cherry-pick of cefcd4b655c2b7efdc6313740f3c8af89dd8f670 from
>     the kconfig-frontends project authoritative Git repository for a change
>     that went into 3.9 and later revisions that enables building on hosts
>     configurations where libncurses uses libtinfo.


I've dug into this to try and figure out what is breaking and I'm
struggling to understand how this error is occurring for you. In
particular, dylan's ncurses recipe has this commit:

https://gitorious.org/angstrom/jadon-openembedded/commit/10a92f252407e4487afbf44a330ba5b7b61b84b1

which is rather old but still present in the modern codebase. The linker
script there should add in linkage to libtinfo as and where needed.

I'm therefore reluctant to merge these patches without a better
understanding of exactly how we can reproduce this bug and perhaps why
the linker scripts are failing.

We have tried a build of these recipes on dylan on a CentOS 6.5 machine
and they worked out ok.

I would be interested to see the build failure logs and also to check if
the libncursesw.so file is indeed a linker script in your case. An
strace of the linker command run by the kconfig build may also reveal
something (is it preferring the system libraries for some reason for
example in your case?).

Cheers,

Richard






