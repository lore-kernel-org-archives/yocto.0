Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB45EE0103E; Wed, 23 Sep 2015 06:46:28 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8D32E00BEF
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 06:46:25 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga103.fm.intel.com with ESMTP; 23 Sep 2015 06:46:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,577,1437462000"; d="scan'208";a="566949440"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.4.127])
	by FMSMGA003.fm.intel.com with ESMTP; 23 Sep 2015 06:46:23 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 23 Sep 2015 14:46:22 +0100
Message-ID: <2165861.gxy7TRHp8B@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.6-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55FFF9AA.2020402@mlbassoc.com>
References: <55FFF9AA.2020402@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Change in bitbake behaviour?
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
X-List-Received-Date: Wed, 23 Sep 2015 13:46:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Gary,

On Monday 21 September 2015 06:35:54 Gary Thomas wrote:
> I just updated to the latest Poky/Yocto master
> and I noticed this change in behaviour when I tried to stop
> a build:
>    Keyboard Interrupt, closing down...
> 
>    NOTE: Tasks Summary: Attempted 86 tasks of which 36 didn't need to be
> rerun and all succeeded. ERROR: Command execution failed: Stopped build
> 
>    Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> Execution was interrupted, returning a non-zero exit code.
>    timed out
> 
> It took more than a minute between the last two lines at which time
> I thought it might be hung.  I left it and then found the "timed out"
> line somewhat later.
> 
> Is this to be expected?

No, this sounds like a bug - but was this somehow related to your other build 
issue or do you still see this?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

