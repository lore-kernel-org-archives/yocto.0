Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98A20E00B2E; Wed, 24 May 2017 07:38:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A12BE00B27
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 07:38:18 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 24 May 2017 07:38:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.38,386,1491289200"; d="scan'208";a="91260596"
Received: from lsandov1-mobl2.zpn.intel.com ([10.219.128.119])
	by orsmga002.jf.intel.com with ESMTP; 24 May 2017 07:38:16 -0700
Message-ID: <1495637202.4956.26.camel@linux.intel.com>
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 24 May 2017 09:46:42 -0500
In-Reply-To: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Wed, 24 May 2017 14:38:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-05-24 at 16:23 +0200, Gary Thomas wrote:
> I see that the latest master update has brought a progress bar
> for this (and presumably other 'cmake' based packages) - very nice :-)
> 
> Now [tongue-in-cheek], can someone do something about the horrendous
> build times for such packages (webkitgtk2 can take up to 3 hours on
> my [no so slow] build host!)?


this is not easy and from my side what I have done some profiling based
on the buildstats to figure out the top consumers recipes/tasks. As you
mentioned, webkitgtk is the winner, at least for utimes!

https://wiki.yoctoproject.org/wiki/MortyBuildstats
https://wiki.yoctoproject.org/wiki/TipsAndTricks/InvestigatingBuildTime

Leo



> 
> -- 
> ------------------------------------------------------------
> Gary Thomas                 |  Consulting for the
> MLB Associates              |    Embedded world
> ------------------------------------------------------------



