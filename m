Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 32EC9E0095F; Wed,  1 Mar 2017 17:39:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7011E00826
	for <yocto@yoctoproject.org>; Wed,  1 Mar 2017 17:39:50 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 01 Mar 2017 17:39:49 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.35,228,1484035200"; d="scan'208";a="54752645"
Received: from yokemooi-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.134.143])
	by orsmga002.jf.intel.com with ESMTP; 01 Mar 2017 17:39:47 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: chris warth <cswarth@gmail.com>
Date: Thu, 02 Mar 2017 14:39:45 +1300
Message-ID: <2555590.9aBZNM2DbW@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <CAJJmP9B9YmS37pB21KzCcpB68AwfghkQZRY510e=uPofoPaJHA@mail.gmail.com>
References: <CAJJmP9DKZQ1uWX3QGnA7aHVBeCJzuVTxo51G+BMDfbzKqcbv8A@mail.gmail.com>
	<1669316.G5xAQX6A5S@peggleto-mobl.ger.corp.intel.com>
	<CAJJmP9B9YmS37pB21KzCcpB68AwfghkQZRY510e=uPofoPaJHA@mail.gmail.com>
MIME-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: BBMASK not working for me?
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
X-List-Received-Date: Thu, 02 Mar 2017 01:39:54 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 2 March 2017 2:14:13 PM NZDT chris warth wrote:
> <paul.eggleton@linux.intel.com> wrote:
> > On Thursday, 2 March 2017 11:31:42 AM NZDT chris warth wrote:
> >> This vendor-supplied version of yocto looks like 2.0, so the space
> >> separated expressions are not available.
> >> After putting some print statements in cooker.py I discovered that
> >> appending to BBMASK in conf/bblayers.conf or conf/local.conf has no
> >> effect.  It was not until I modified BBMASK_forcevariable in my
> >> conf/bblayers.conf  that I saw any change in behavior.
> >> 
> >> BBMASK_forcevariable = ".*openjre|.*openjdk|.*qemu_qoriq"
> >> 
> >> This inability to modify BBMASK unless using _forcevariable was also
> >> noted last year.
> >> https://lists.yoctoproject.org/pipermail/yocto/2016-September/032033.html
> > 
> > That sounds strange. Did you use bitbake -e | less to see where your non-
> > forcevariable setting was being overridden? More than likely you have a
> > layer or some other configuration you're bringing in and that's simply
> > setting it with = at some point later in parsing than local.conf. The
> > history of the BBMASK variable shown through bitbake -e will tell you
> > exactly where that is.
>
> Thank you, Paul.  I didn't know about bitbake -e.
> As you predicted, it shows that an earlier layer is setting BBMASK
> with equals, in this case the
> meta-freescale layer.
> 
> BBMASK=".*openjre|.*openjdk"
> 
> Should I be mad at the vendor for being careless?

Personally I think you should, yes. BSP layers really should not be setting 
BBMASK, IMO. Interestingly though I can't see this BBMASK in meta-fsl-arm / 
meta-fsl-ppc either in current master or in the history for master - where is 
this exactly?

> Is BBMASK_forcevariable the right workaround for this?

You should be able to use _append, provided you are OK with openjre/openjdk 
recipes also being masked out.

> Or is there some layer priority scheme beyond the ordering in the
> bblayers.conf file that I should playing nice with?

I usually describe BBMASK as a huge hammer - it prevents bitbake from even 
reading recipes / bbappends that match it. My recommendation is not to use it 
at all unless there's no other way.

One alternative way of dealing with recipes you don't want to have built is to 
use PNBLACKLIST. You do have to know the exact recipe name (PN) that you want 
to blacklist, you can't do it by regex - but usually that's not too much of a 
problem. The advantage of PNBLACKLIST is that you get to specify a reason why 
the recipe is blacklisted, and thus it is usually much more obvious what's 
going on when the recipe is requested anywhere (be it directly on the bitbake 
command line or indirectly as a dependency) - the reason will be printed in 
the resulting error. The actual filename in this case is qemu-qoriq_git.bb 
meaning that the PN is unique, so you can do this for example:

PNBLACKLIST[qemu-qoriq] = "Not supported by XYZ corp"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

