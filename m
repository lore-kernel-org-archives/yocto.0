Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D997E00D6D; Wed, 24 Feb 2016 08:05:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3411DE00D3F
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:05:33 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 24 Feb 2016 08:04:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,494,1449561600"; d="scan'208";a="752486414"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 24 Feb 2016 08:04:52 -0800
To: yocto@yoctoproject.org
References: <EC7BC1CD2E085743BB2AE634252C39C171A8EE@server.exchange.local>
	<CAMKF1srvkpRBAQHfuPPTLdFtZEaRHNDeL39kWP-RqEWqJFcHbg@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <56CDD400.8090805@linux.intel.com>
Date: Wed, 24 Feb 2016 18:02:08 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.5.0
MIME-Version: 1.0
In-Reply-To: <CAMKF1srvkpRBAQHfuPPTLdFtZEaRHNDeL39kWP-RqEWqJFcHbg@mail.gmail.com>
Subject: Re: : git tag and PV variable
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
X-List-Received-Date: Wed, 24 Feb 2016 16:05:36 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/24/2016 05:35 PM, Khem Raj wrote:
>
>     I have this command in my qmake pro files:____
>
>     VERSION = $$system(git describe --abbrev=0 --tags)____
>
>     __ __
>
>     I would like to have the package manager follow the tag versioning.____
>
>     __ __
>
>     Which means I would like to have something like:____
>
>     PV = "git describe --abbrev=0 --tags"____
>
>     SRC_URI = "${STUDIEL_GIT}/core.git;protocol=file;tag=${PV}"____
>
>     __ __
>
>     It does not work for sure. What is the correct way to do this ?
>
>
> ​SRC_URI is required by fetcher and there is nothing to git describe
> before it is fetched.​
> so thats your problem.

It's possible however to write an external script that updates the PV 
version in the recipe, but it needs to be run outside of bitbake.

Alex


