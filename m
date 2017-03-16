Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D966EE0098A; Thu, 16 Mar 2017 03:22:02 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BA00BE0094C
	for <yocto@yoctoproject.org>; Thu, 16 Mar 2017 03:21:58 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 16 Mar 2017 03:21:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,170,1486454400"; d="scan'208";a="61130765"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 16 Mar 2017 03:21:55 -0700
To: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>,
	openembedded-architecture@lists.openembedded.org,
	Yocto Project <yocto@yoctoproject.org>
References: <37d4f98c-9102-f4bf-c6cc-f64e1ffbce40@linux.intel.com>
	<83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <2a3df091-763b-afd0-b915-bb864becc6a7@linux.intel.com>
Date: Thu, 16 Mar 2017 12:21:01 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Icedove/45.6.0
MIME-Version: 1.0
In-Reply-To: <83c550f8-9f33-3179-3092-19fad4a37aec@rsi-elektrotechnik.de>
Subject: Re: [Openembedded-architecture] Sum up - Proposal: dealing with language-specific build tools/dependency management tools
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
X-List-Received-Date: Thu, 16 Mar 2017 10:22:02 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 03/16/2017 10:17 AM, Josef Holzmayr wrote:

> - locking down specific versions of packages and their dependencies for
> reproductible builds.

Thanks for summarizing! I have just one comment: at least initially, 
locking down specific versions has to be optional. We certainly can try 
our best, but some environments offer no support for it, and even 
explicitly encourage the opposite approach (Go for instance); Yocto 
Project has no resources to fight against that. If someone wants to 
package an app, and lock it down in a reproducible way, they should take 
their concern directly to upstream.

Alex

