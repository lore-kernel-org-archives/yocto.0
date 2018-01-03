Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46AF5E00DA9; Wed,  3 Jan 2018 02:15:23 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 420D0E00DA7
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 02:15:21 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	03 Jan 2018 02:15:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,501,1508828400"; d="scan'208";a="21016847"
Received: from song7-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.73.210])
	by orsmga001.jf.intel.com with ESMTP; 03 Jan 2018 02:15:18 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Robert Yang <liezhi.yang@windriver.com>
Date: Wed, 03 Jan 2018 23:15:14 +1300
Message-ID: <1562929.L59YpNj4qC@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <89b00cdd-c8eb-7178-f22c-35a42942ae4e@windriver.com>
References: <cover.1514379984.git.liezhi.yang@windriver.com>
	<89b00cdd-c8eb-7178-f22c-35a42942ae4e@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [RFC PATCH 0/1] update.py: fetch repos parallelly
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
X-List-Received-Date: Wed, 03 Jan 2018 10:15:23 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Robert,

On Wednesday, 3 January 2018 6:23:57 PM NZDT Robert Yang wrote:
> On 12/27/2017 09:23 PM, Robert Yang wrote:
> > We have 124 layers, the "update.py  -b <branch>" costs about 10 minutes to
> > finish the update for one branch, and we need update several branches
> > periodly, which is really a little slow. So I'd like to make it can run
> > parally, here are some thoughts about it:
> > 1) Make fetch can run parallelly, this is easy to do, and safe enough as
> > the   patches does
> > 2) Make recipeparse can parse layers parallelly, we may need split
> >     update_layer.py into two parts:
> >     - The one which only does recipeparse, this costs a lot of time, and
> >     can be  parallell.
> >     - The one which writes to database (can't be parallel, and doesn't
> >     have to)
> >
> 
> I found that there is an easy way to improve the performance, just use
> update_layer.py as a module rather than an program can save a lot of time,
> we can use multiprocessing.Process() to call the function to put it in a
> subprocess, and remove bb modules when switch branches since it may not
> be compatible, please see next email for details, it can reduce time from
> 9m20s to 1m43s for 124 layers when everything is up to date totally.

OK, but:

1) Does this work across python 2 and 3?

2) Are you 100% sure that this clears out the memory of anything that happens 
to get loaded? One of the issues we used to see with the earlier single 
program structure was "corruption" of the python variable/module space; the 
current fully separate processes completely avoid that.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

