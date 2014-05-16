Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDCC9E00B68; Fri, 16 May 2014 01:44:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga11.intel.com (unknown [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE7AAE00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 01:44:48 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 16 May 2014 01:44:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1065,1389772800"; d="scan'208";a="532939207"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.87])
	by fmsmga001.fm.intel.com with ESMTP; 16 May 2014 01:44:17 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Ash Charles <ashcharles@gmail.com>
Date: Fri, 16 May 2014 09:44:15 +0100
Message-ID: <4686879.VJmSxtD7Wv@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.3-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <CAK8F28mMgkyf2Ho5x7s7B1BTJH-kJP+fMuqwOCwggnNx+YHe7Q@mail.gmail.com>
References: <CAK8F28mMgkyf2Ho5x7s7B1BTJH-kJP+fMuqwOCwggnNx+YHe7Q@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Changing metadata during bitbaking
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
X-List-Received-Date: Fri, 16 May 2014 08:44:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Ash,

On Thursday 15 May 2014 21:41:55 Ash Charles wrote:
> Under what conditions can I change the content of layers without
> affecting an ongoing bitbake?
> 
> On occasion, I find myself wanting to do git operations on my layers
> while I've got a build going on.  I've typically assumed this might
> screw up bitbake but was wondering that my assumption isn't really
> accurate.  Specifically, are these rules reasonable?
> - don't mess around with the content of layers while bitbake is parsing
> - once bitbake has parsed and started baking, playing around with
> metadata should not affect the current build
> - source/config files (i.e. any file:// in SRC_URI) may be fetched at
> any time therefore don't mess around with files that might be used in
> a build

That's pretty much what I follow, although I try to avoid modifying recipes at 
all while there's a chance they might be built - recipes *do* get re-parsed 
during execution, not just when parsing to populate the cache at the start 
(since the cache doesn't contain all variables and functions, just the ones 
that BitBake needs to look up quickly).

Whether or not it's safe to do really depends on what kind of build you're 
doing. If you're just in the middle of development, no big deal; if you're 
doing your final build for a release then you probably shouldn't risk it.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

