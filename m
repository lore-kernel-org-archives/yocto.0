Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 96D55E00C81; Thu,  7 Apr 2016 06:45:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA3F6E00C7D
	for <yocto@yoctoproject.org>; Thu,  7 Apr 2016 06:44:54 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga103.fm.intel.com with ESMTP; 07 Apr 2016 06:44:54 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,449,1455004800"; d="scan'208";a="953745173"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2016 06:44:54 -0700
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <DUB130-W48119310217EFF39E1E035DA9F0@phx.gbl>
	<CAJTo0LbdXCPtc7PF_25Yc00T0pt=Ptq12whkehT5LVnnwS7RtA@mail.gmail.com>
	<DUB130-W492E3B0F53AE2AA9EE0F0ADA9F0@phx.gbl>
	<CAJTo0Lbg10pM7VT0ZiaqC7r5YwvdX9_c3X9P=vrPdFX3C6maLQ@mail.gmail.com>
	<DUB130-W30F71C6509C95E9FA2606EDA9F0@phx.gbl>
	<CAJTo0LYa+BZxy47950p8g7HqgRFQiHCeS3ZThtetopm-1ZDScg@mail.gmail.com>
	<57066063.1010008@linux.intel.com>
	<CAJTo0LbNeUEY-K2LW9Fw3Nh64yh65aQPXC4jS4-1JAmLM7c3PQ@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <5706634E.9040106@linux.intel.com>
Date: Thu, 7 Apr 2016 16:40:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LbNeUEY-K2LW9Fw3Nh64yh65aQPXC4jS4-1JAmLM7c3PQ@mail.gmail.com>
Subject: Re: Python GObject Errors on yocto-2.1_M3.rc2
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
X-List-Received-Date: Thu, 07 Apr 2016 13:45:02 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 04/07/2016 04:35 PM, Burton, Ross wrote:

> Yeah, that. :)  Annoyingly it's not just a PACKAGECONFIG due to how
> python-native works.

Yeah, the annoying side effect is that every python thingy needs to be 
packaged twice - not so visible in oe-core, but very visible in 
meta-oe's meta-python:

http://cgit.openembedded.org/meta-openembedded/tree/meta-python/recipes-devtools/python

Will be fixed by deprecating python 2, of course.

Alex


