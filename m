Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B938E00B57; Thu,  6 Jul 2017 08:28:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35772E00B2F
	for <yocto@yoctoproject.org>; Thu,  6 Jul 2017 08:28:01 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga104.jf.intel.com with ESMTP; 06 Jul 2017 08:28:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.40,317,1496127600"; d="scan'208";a="107906004"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.30.5])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2017 08:27:59 -0700
Message-ID: <1499354878.32379.12.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: Stephano Cetola <stephano.cetola@linux.intel.com>
Date: Thu, 06 Jul 2017 16:27:58 +0100
In-Reply-To: <20170706150904.GA11164@scetola-mac01.local>
References: <20170705212750.49420-1-stephano.cetola@linux.intel.com>
	<20170705212750.49420-2-stephano.cetola@linux.intel.com>
	<1499338040.32379.7.camel@linux.intel.com>
	<20170706150904.GA11164@scetola-mac01.local>
X-Mailer: Evolution 3.22.6 (3.22.6-2.fc25) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH V4 1/1] ScrapeTargets.py: improve target search algorithm
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
X-List-Received-Date: Thu, 06 Jul 2017 15:28:08 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-07-06 at 08:09 -0700, Stephano Cetola wrote:
> On 07/06, Joshua Lock wrote:
> > This still leaves us a bit brittle. What if someone adds whitespace
> > around the assignment operator? Could you create a follow-on patch
> > for
> > that?
> > 
> > Thanks!
> 
> Actually, since the awk command just searches for self.targetsvar now
> instead of ``self.targetsvar="``, it will match even if there are
> spaces between the equal.

Context is important. It's not the awk command, it's the str.replace()

> +        targets = targets.replace('%s="' % self.targetsvar, '')

we're going replace 'SOMEVARIABLE="' with '', but what if we get
'SOMEVARIABLE = "' ?

> I did just realize that if the variable is NOT multi-line, e.g.
> REFKIT_CI_POSTBUILD_SELFTESTS, this search will fail because of the
> "next" command.

Ah, yes. That could cause some surprises.

> I'll puzzle over this a bit.

Thanks!

Joshua

