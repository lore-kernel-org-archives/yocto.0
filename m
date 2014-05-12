Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C6C07E00B76; Mon, 12 May 2014 04:10:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga03.intel.com (unknown [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DB55E00B88
	for <yocto@yoctoproject.org>; Mon, 12 May 2014 04:10:30 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 12 May 2014 04:10:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,1034,1389772800"; d="scan'208";a="430897511"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.123.14])
	by azsmga001.ch.intel.com with ESMTP; 12 May 2014 04:10:25 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Mon, 12 May 2014 12:10:24 +0100
Message-ID: <1818117.JRLN250oSp@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.12.5 (Linux/3.14.3-200.fc20.x86_64; KDE/4.12.5; x86_64; ; )
In-Reply-To: <5370AA9B.3040308@windriver.com>
References: <C7589FE7B0DE58488F2B9BF79840E9D90D66F51F@ADL-EXCHMBX1.TOPCON.com>
	<C7589FE7B0DE58488F2B9BF79840E9D90D66F94E@ADL-EXCHMBX1.TOPCON.com>
	<5370AA9B.3040308@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Question / issue
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
X-List-Received-Date: Mon, 12 May 2014 11:10:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 12 May 2014 07:03:55 Bruce Ashfield wrote:
> On 14-05-12 01:56 AM, Paul McGougan wrote:
> > From: Bruce Ashfield [mailto:bruce.ashfield@windriver.com]
> > 
> >>> Secondly, (and this is our main issue) I have found that by adding the
> >>> do_install_append function, even if it is completely empty, whenever I
> >>> try to bitbake anything that depends on the kernel, that bitbake always
> >>> re-runs the kernel install stage, even when there have been no changes.
> >>> Literally I can run a bitbake, then run the same bitbake command again,
> >>> and both times the kernel install stage gets run (this is a problem
> >>> because it takes a long time to run). It appears to be happening because
> >>> the stampfile is not found every time (the hash appears to be wrong).
> >>> Is this a bug? Is there a fix or work-around for this problem?
> >> 
> >> In this front, I'm not the best reference. Checking the sstate signature
> >> might help, it should show which variables are being used .. and possibly
> >> invalidating the signature, triggering the steps to run again.
> > 
> > Thanks Bruce.
> > 
> > Just for reference of anyone else who runs into a similar issue our issue
> > was: 1. The do_install_append function was not *really* empty, the
> > content of it was commented out.
> > 2. The dependency parser when parsing recipes not only looks for content
> > changes, but for also for changes to the values of referenced variables,
> > and unfortunately it still performs variable-value substitution in
> > commented-out code. In our case, we had the variable $DATETIME in there
> > (but commented out), this caused the dependency checker to substitute in
> > the current value for DATETIME which of course changed on each run.
> 
> Aha. That's what I thought it might be (and what I've been hit by
> before in the past), sstate signature checking showed the variable
> in these other cases .. so I thought I'd suggest it.
> 
> Glad to hear you have a working solution.
> 
> > The fix was to add:
> > do_install[vardepsexclude] += "DATETIME"

Er, if DATETIME is in the dependencies for this task and that is a bug in the 
core recipe, we should fix it in the core. The question is how is it getting in 
there?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

