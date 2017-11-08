Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 832EDE00D5D; Wed,  8 Nov 2017 11:08:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB02EE00D4F
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 11:08:11 -0800 (PST)
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
	by fmsmga105.fm.intel.com with ESMTP; 08 Nov 2017 11:08:11 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,365,1505804400"; d="scan'208";a="173382271"
Received: from skanwarx-mobl1.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.73.22])
	by fmsmga005.fm.intel.com with ESMTP; 08 Nov 2017 11:08:07 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Thu, 09 Nov 2017 08:08:03 +1300
Message-ID: <1664393.zSGbuEELsx@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <ddc7ec5b-62bc-afbd-fa1d-ddef31b72a0d@windriver.com>
References: <cover.1510093646.git.amanda.r.brindle@intel.com>
	<1736558.4YOozJbAai@peggleto-mobl.ger.corp.intel.com>
	<ddc7ec5b-62bc-afbd-fa1d-ddef31b72a0d@windriver.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Amanda Brindle <amanda.r.brindle@intel.com>
Subject: Re: [layerindex-web][patch v3 1/1] recipes.html: Require keyword for recipe search
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
X-List-Received-Date: Wed, 08 Nov 2017 19:08:12 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 9 November 2017 4:42:50 AM NZDT Mark Hatle wrote:
> On 11/7/17 8:43 PM, Paul Eggleton wrote:
> > On Wednesday, 8 November 2017 11:47:49 AM NZDT Mark Hatle wrote:
> >> On 11/7/17 4:31 PM, Amanda Brindle wrote:
> >>> Use JavaScript to check if the search box for recipe search is
> >>> empty before querying the database. This will prevent the "502
> >>> Bad Gateway" error that occurs when the query takes too long due
> >>> to the large list of recipes. Since there are so many recipes
> >>> spread across the layers in the OE index, there's no point in
> >>> allowing a user to search without a keyword in order to browse
> >>> the list; it simply isn't digestible as a whole.
> >>>
> >>> Add a browse button for the Machines, Classes, and Distros pages.
> >>
> >> There are reasons to view all of the recipes, machines, classes, distros,
> >> etc. (Not necessarily good reasons, but I know people do it.)
> >>
> >> If the query is too long, it would be better to figure out a way to get a
> >> partial response and formulate the first page based on partial
> >> responses... having a multipage response that the user can look at.
> > 
> > I'm willing to be proven wrong, but unfortunately it looks to me like this 
> > will require major re-engineering to sort out for a fairly weak use case.
> > If you consider this important, would you be able to look into making it
> > work?
> 
> I suspect much of the display engine probably needs a rework as the contents
> of the layer index have grown.  I can't promise anything, but I'll see if I
> can find anyone who can work on it.

Could be yes, thanks.

> For recipes, the use-case is very weak.  I have talked with people though
> who have just wanted a list of what is available (one big list).  Primarily
> so they can compare what is available to some magic spec sheet they are
> looking at.

If that's the use case though we should provide a proper export capability, 
because comparing big lists manually 50 items at a time isn't how you'd best 
support that. Theoretically the API could be used there but an explicit export 
function would be more accessible.

> For the Machines, Distros pages..  people do want a full list here, as they
> simply won't know what is available or what something is called.  The scope
> of the machines and distros of course is nowhere near the scope for the full
> recipe list.

Right, and this patch doesn't remove the ability to browse those - in fact it 
makes it easier to do so by adding an explicit browse button, so I think we're 
OK there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

