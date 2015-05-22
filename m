Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17FF4E009D9; Fri, 22 May 2015 01:43:52 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7136DE00974
	for <yocto@yoctoproject.org>; Fri, 22 May 2015 01:43:50 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 22 May 2015 01:43:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,474,1427785200"; d="scan'208";a="575327213"
Received: from gfois-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.18])
	by orsmga003.jf.intel.com with ESMTP; 22 May 2015 01:43:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: George Nita <george.nita@enea.com>
Date: Fri, 22 May 2015 09:43:40 +0100
Message-ID: <1502347.ZKKJbWNJ0A@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/3.19.7-200.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <555D9B06.3050603@enea.com>
References: <555D9B06.3050603@enea.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: smart 1.4.1 unsolved problem
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
X-List-Received-Date: Fri, 22 May 2015 08:43:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi George,

On Thursday 21 May 2015 11:44:54 George Nita wrote:
> I've reproduced the https://bugs.launchpad.net/smart/+bug/1238492 issue
> 
> branch: dizzy
> target: p2041rdb
> 
> Did any one hit this too?

Did you enable runtime package management (i.e., is "package-management" in 
IMAGE_FEATURES (or indirectly via EXTRA_IMAGE_FEATURES)?) If you're not sure, 
you can use bitbake -e to check.

If it isn't enabled, that would explain the behaviour because smart/rpm think 
that no packages are installed because there is no package database in the 
image.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

