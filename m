Return-Path: <ed.bartosh@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73DB8E00A53; Tue, 28 Jul 2015 04:10:06 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 16B8EE00A31
	for <yocto@yoctoproject.org>; Tue, 28 Jul 2015 04:10:04 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 28 Jul 2015 04:09:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,562,1432623600"; d="scan'208";a="772706768"
Received: from linux.intel.com ([10.23.219.25])
	by orsmga002.jf.intel.com with ESMTP; 28 Jul 2015 04:09:53 -0700
Received: from linux.intel.com (vmed.fi.intel.com [10.237.72.65])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by linux.intel.com (Postfix) with ESMTP id 9B7326A4005;
	Tue, 28 Jul 2015 04:09:06 -0700 (PDT)
Date: Tue, 28 Jul 2015 14:09:46 +0300
From: Ed Bartosh <ed.bartosh@linux.intel.com>
To: "Ahsan, Noor" <Noor_Ahsan@mentor.com>
Message-ID: <20150728110946.GB2320@linux.intel.com>
References: <55B517E5.5080708@mentor.com>
	<CAJTo0LaKRO8dkGWmA1iXkkKE7HK9e22A_KLWJgpcfK18XQfCJg@mail.gmail.com>
	<365E1805BC95084CBE82381A0B86999401095B33DF@EU-MBX-01.mgc.mentorg.com>
MIME-Version: 1.0
In-Reply-To: <365E1805BC95084CBE82381A0B86999401095B33DF@EU-MBX-01.mgc.mentorg.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Khandavilli,
	Arun" <Arun_Khandavalli@mentor.com>, "Larson,
	Chris" <Chris_Larson@mentor.com>
Subject: Re: Using wic from a Bitbake task
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ed.bartosh@linux.intel.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Jul 2015 11:10:06 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Mon, Jul 27, 2015 at 12:49:12PM +0000, Ahsan, Noor wrote:
> May I know it’s expected completion date?

I hope to get it done till the end of August. This bug has the highest
priority, so I'll start working on it as soon as I'm back to wic
development.

> Noor
> 
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Burton, Ross
> Sent: Monday, July 27, 2015 3:05 PM
> To: Usman, Fahad
> Cc: yocto@yoctoproject.org; Khandavilli, Arun
> Subject: Re: [yocto] Using wic from a Bitbake task
> 
> 
> On 26 July 2015 at 18:24, Usman, Fahad <Fahad_Usman@mentor.com<mailto:Fahad_Usman@mentor.com>> wrote:
> Is it possible to invoke 'wic create' command from a bitbake task. As currently it is implemented to be run as a standalone tool and if we invoke it from a task, the 'bitbake -e' command fails, since more than one instances of bitbake cannot be run from a single build directory.
> 
> Not yet, but there's a bug for that:
> 
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=7672
> 
> Ross

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
--
Regards,
Ed

