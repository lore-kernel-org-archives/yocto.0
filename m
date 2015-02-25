Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EBC36E003FA; Wed, 25 Feb 2015 09:08:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56B3FE003A8
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 09:08:21 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga101.fm.intel.com with ESMTP; 25 Feb 2015 09:05:53 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,646,1418112000"; d="scan'208";a="690665204"
Received: from dvhart-mac02.jf.intel.com (HELO [10.24.0.133]) ([10.24.0.133])
	by orsmga002.jf.intel.com with ESMTP; 25 Feb 2015 09:05:45 -0800
User-Agent: Microsoft-MacOutlook/14.4.7.141117
Date: Wed, 25 Feb 2015 09:05:41 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <D1133CF5.BEE3C%dvhart@linux.intel.com>
Thread-Topic: [yocto] more observations on kernel dev manual
References: <alpine.LFD.2.11.1502250517500.32394@localhost>
In-Reply-To: <alpine.LFD.2.11.1502250517500.32394@localhost>
Mime-version: 1.0
Subject: Re: more observations on kernel dev manual
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
X-List-Received-Date: Wed, 25 Feb 2015 17:08:24 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

On 2/25/15, 2:52 AM, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>  been a while since i went through this manual so some probably
>simple observations -- based on in-progress manual. if scott rifenbark
>wants to process any of this, he has my blessing.

Thanks for your review of the document Robert. For future comments, please
do include the author on Cc.


...

>
>  section 2.3.2: hang on ...
>
>   "Complete a build at least through the kernel configuration task as
>follows:
>
>     $ bitbake linux-yocto -c kernel_configme -f"
>
>but i thought that "-c <command>" would run *only* that bitbake task
>... the wording suggests that that command will run everything *up to*
>that task.

It will run everything necessary up to and including that task. If
everything, including that task, have already been run, it will run only
the specified task again.

You can verify this with:

1 $ bitbake virtual/kernel
2 $ bitbake virtual/kernel -c kernel_configme -f
3 $ bitbake virtual/kernel -c cleansstate
4 $ bitbake virtual/kernel -c kernel_configme -f


#2 will only run kernel_configme
#4 will run everything after fetch up to and including kernel_configme.
This usage helps us keep the documentation concise rather than having to
spell out how to get to a specific state in order for the command used to
work correctly.

>
>  also in that section, "are not't" should just say "aren't" in sample
>warning output.

This output should be updated for 1.8 as config warnings are now sent to
the console and not just buried in the logs. Yay!

-- 
Darren Hart
Intel Open Source Technology Center




