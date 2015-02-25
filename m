Return-Path: <dvhart@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FEEBE003FA; Wed, 25 Feb 2015 08:48:05 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4318E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Feb 2015 08:47:56 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 25 Feb 2015 08:39:51 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,645,1418112000"; d="scan'208";a="532737381"
Received: from dvhart-mac02.jf.intel.com (HELO [10.24.0.133]) ([10.24.0.133])
	by orsmga003.jf.intel.com with ESMTP; 25 Feb 2015 08:38:43 -0800
User-Agent: Microsoft-MacOutlook/14.4.7.141117
Date: Wed, 25 Feb 2015 08:47:48 -0800
From: Darren Hart <dvhart@linux.intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>,
	Yocto discussion list <yocto@yoctoproject.org>
Message-ID: <D1133CA2.BEE3B%dvhart@linux.intel.com>
Thread-Topic: [yocto] kernel dev manual: KBRANCH_DEFAULT is dead, jim.
References: <alpine.LFD.2.11.1502250618570.4099@localhost>
In-Reply-To: <alpine.LFD.2.11.1502250618570.4099@localhost>
Mime-version: 1.0
Subject: Re: kernel dev manual: KBRANCH_DEFAULT is dead, jim.
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
X-List-Received-Date: Wed, 25 Feb 2015 16:48:05 -0000
Content-type: text/plain;
	charset="US-ASCII"
Content-transfer-encoding: 7bit

Good catch, thanks Robert. Care to send a patch to the documentation?

On 2/25/15, 3:20 AM, "Robert P. J. Day" <rpjday@crashcourse.ca> wrote:

>
>  ch 3 still refers to the variable KBRANCH_DEFAULT even though that
>variable was tossed back in march of 2014:
>
>commit e631fc989b08873f559c5927117301294f04298c
>Author: Bruce Ashfield <bruce.ashfield@windriver.com>
>Date:   Tue Mar 18 23:01:19 2014 -0400
>
>    kernel-yocto: remove KBRANCH_DEFAULT
>
>    KBRANCH_DEFAULT is no longer used, so we can remove it from all
>    recipes (and it won't be missed).
>
>rday
>
>-- 
>
>========================================================================
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>========================================================================
>-- 
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto
>


-- 
Darren Hart
Intel Open Source Technology Center




