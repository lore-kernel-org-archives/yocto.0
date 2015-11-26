Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 338A2E00BD5; Thu, 26 Nov 2015 03:45:10 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A86A3E00B7D
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 03:45:08 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga103.fm.intel.com with ESMTP; 26 Nov 2015 03:45:08 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,346,1444719600"; d="scan'208";a="694820523"
Received: from boonguan-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.169.188])
	by orsmga003.jf.intel.com with ESMTP; 26 Nov 2015 03:45:06 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 27 Nov 2015 00:45:03 +1300
Message-ID: <2437134.gsLdlJIhM6@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.13-100.fc21.x86_64; KDE/4.14.11; x86_64; ;
	)
In-Reply-To: <CAAfyv369ysSiYXX+nVCQ+1F-r3nWJw9Zq70S8b8bqRWZk+efKA@mail.gmail.com>
References: <CAAfyv37MZCr1cRNedU9xsbNwXQLejQSaibmd+z6cwYBANzAt=g@mail.gmail.com>
	<1906079.hoisBn1qUN@peggleto-mobl.ger.corp.intel.com>
	<CAAfyv369ysSiYXX+nVCQ+1F-r3nWJw9Zq70S8b8bqRWZk+efKA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: PRINC functionality workaround
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
X-List-Received-Date: Thu, 26 Nov 2015 11:45:10 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 26 November 2015 12:16:04 Belisko Marek wrote:
> On Thu, Nov 26, 2015 at 12:03 PM, Paul Eggleton
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday 26 November 2015 08:16:51 Belisko Marek wrote:
> >> after upgrading to jethro release PRINC functionality was removed by
> >> commit : a4d530bcf55f03258078c10a123e2717444e1060 on oe-core. PRINC
> >> functionality was used in some of our recipes so I took part from
> >> PRINC funtionality and put is to separate method (in bbclass) [0]
> > 
> > You'll have to forgive me for asking the obvious question - why aren't you
> > using the PR server?
> 
> basically we have some base layer which has e.g. PR="rev123" in bb
> recipe. Then we have other layer where we extend functionality
> to base recipe (add custom patches) and we was using PRINC so every
> change in bbappend has increased PR.
> PR is then finally used in our FW update scripts where we update only
> when PR is changed.
> So I would like to introduce kind of PRINC functionality with my change
> back.

Other than that you'd get rev123.1 -> rev123.2 rather than rev124, I'm not 
hearing anything that you can't do with the PR service; what's more you never 
have to remember to bump PR again.

> >> I'm trying to use it in bbappend like:
> >> inherit veryspecial_helpers
> >> PR := ${increase_pr(5)} but this seems to be then evaluated as :
> >> u-boot/2015.07-${increase_pr(5)} which is wrong and fails.
> >> 
> >> Any ideas what is wrong with this approach? Maybe some brackets? Many
> >> thanks.
> > 
> > missing @ ?
> 
> Afters adding @ it complains:
>  Failure expanding variable PR[:=], expression was ${@increase_pr(2)}
> which triggered exception NameError: global name 'd' is not defined

If you're referring to d in the function then you need to pass it in as a 
parameter.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

