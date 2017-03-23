Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D7F4AE004E5; Thu, 23 Mar 2017 12:25:29 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52719E00349
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 12:25:28 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga105.fm.intel.com with ESMTP; 23 Mar 2017 12:25:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.36,211,1486454400"; d="scan'208";a="947557996"
Received: from amilman1-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.171.177])
	by orsmga003.jf.intel.com with ESMTP; 23 Mar 2017 12:25:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
Date: Fri, 24 Mar 2017 08:25:23 +1300
Message-ID: <13191224.qIYrFqvWFr@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
	<6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Thu, 23 Mar 2017 19:25:29 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

That's really bizarre. There shouldn't be anything in a bitbake build that 
could cause anything like this (other than possibly how intensive it is, which 
might trigger out-of-memory or an underlying hardware/software failure).

Assuming the X session is ending is there anything in your ~/.xsession-errors 
or /var/log/Xorg.*.log?

Cheers,
Paul

On Friday, 24 March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg wrote:
> Hi Paul,
> 
> I looked in the logs from the failure yesterday and couldn't find anything,
> so I restarted the build and it ran for about another 1000 steps before
> crashing again. I still can't find anything in any of the logs, syslog,
> kern.log, auth.log, etc.
> 
> Cheers,
> Greg
> 
> > -----Original Message-----
> > From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
> > Sent: Thursday, March 23, 2017 2:49 AM
> > To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
> > Cc: yocto@yoctoproject.org; akuster808 <akuster808@gmail.com>
> > Subject: Re: [yocto] Morty 2.2.1 build failure
> > 
> > On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg wrote:
> > > I tried it again this morning and it did get past the file not found
> > > error.
> > > But when it gets above step 4000 somewhere it gets an error that kills
> > > not just the yocto build but the full login session. I'm left staring
> > > at the Linux Login screen.
> > 
> > Your machine isn't running out of RAM by any chance, triggering the OOM
> > killer? Anything indicative in your system logs?
> > 
> > Cheers,
> > Paul
> > 
> > --
> > 
> > Paul Eggleton
> > Intel Open Source Technology Centre


-- 

Paul Eggleton
Intel Open Source Technology Centre

