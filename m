Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23396E00BDF; Thu,  8 Jun 2017 04:01:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0300EE00B27
	for <yocto@yoctoproject.org>; Thu,  8 Jun 2017 04:01:31 -0700 (PDT)
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga105.fm.intel.com with ESMTP; 08 Jun 2017 04:01:30 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.39,314,1493708400"; d="scan'208";a="95907365"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga004.jf.intel.com with ESMTP; 08 Jun 2017 04:01:29 -0700
To: Cody P Schafer <dev@codyps.com>
References: <20170607041904.29447-1-dev@codyps.com>
	<979760b7-4dfe-3775-ab96-c14fbca076ad@linux.intel.com>
	<CAPoQQ-0KR5wf1Uk31TB-DM-9n3pfXYYQdK-3T=PrMik88drzWA@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <731c0b34-6080-3fe4-ba8c-7be63c76a3b5@linux.intel.com>
Date: Thu, 8 Jun 2017 14:01:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <CAPoQQ-0KR5wf1Uk31TB-DM-9n3pfXYYQdK-3T=PrMik88drzWA@mail.gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [PATCH] qt4-native: depend on icu-native to fix build on systems with icu >=59
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
X-List-Received-Date: Thu, 08 Jun 2017 11:01:38 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/07/2017 06:47 PM, Cody P Schafer wrote:
> Yep, for `master` that is certainly true.
>
> For `morty` & `pyro` though, meta-qt4 could keep working by using icu-native.
>
> The source of this issue being qt4's general incompatibility with C++
> 11 (we build with c++98 because of build errors with the newer std)
> makes me wonder if it will even be possible to continue supporting qt4
> going forward.
>
> This may turn out like the openssl conflicts in that we'll need to
> disable qt4's use of icu entirely.

I should give you a heads up: we (the yocto project) are going to remove 
qt4 builds from the autobuilder altogether, sometime during this cycle. 
The repo will stay, and patches will be accepted though.

So it's up to you to solve these issues, but I wouldn't want to take
patches that fix up older releases, while the master branch remains 
broken. We have a 'master first' policy :)

Alex

