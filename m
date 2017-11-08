Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 010EBE00CCA; Tue,  7 Nov 2017 18:43:37 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F572E00C82
	for <yocto@yoctoproject.org>; Tue,  7 Nov 2017 18:43:37 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga105.jf.intel.com with ESMTP; 07 Nov 2017 18:43:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.44,362,1505804400"; 
   d="scan'208";a="4858881"
Received: from tkdhir-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.249.68.14])
	by orsmga002.jf.intel.com with ESMTP; 07 Nov 2017 18:43:32 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mark Hatle <mark.hatle@windriver.com>
Date: Wed, 08 Nov 2017 15:43:27 +1300
Message-ID: <1736558.4YOozJbAai@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
In-Reply-To: <8d7c2327-acf1-8905-da88-7143daf4fa1e@windriver.com>
References: <cover.1510093646.git.amanda.r.brindle@intel.com>
	<15d371573edecbc27254c3eb62c074c48f57be84.1510093646.git.amanda.r.brindle@intel.com>
	<8d7c2327-acf1-8905-da88-7143daf4fa1e@windriver.com>
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
X-List-Received-Date: Wed, 08 Nov 2017 02:43:38 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday, 8 November 2017 11:47:49 AM NZDT Mark Hatle wrote:
> On 11/7/17 4:31 PM, Amanda Brindle wrote:
> > Use JavaScript to check if the search box for recipe search is
> > empty before querying the database. This will prevent the "502
> > Bad Gateway" error that occurs when the query takes too long due
> > to the large list of recipes. Since there are so many recipes
> > spread across the layers in the OE index, there's no point in
> > allowing a user to search without a keyword in order to browse
> > the list; it simply isn't digestible as a whole.
> > 
> > Add a browse button for the Machines, Classes, and Distros pages.
> 
> There are reasons to view all of the recipes, machines, classes, distros,
> etc. (Not necessarily good reasons, but I know people do it.)
> 
> If the query is too long, it would be better to figure out a way to get a
> partial response and formulate the first page based on partial responses...
> having a multipage response that the user can look at.

I'm willing to be proven wrong, but unfortunately it looks to me like this 
will require major re-engineering to sort out for a fairly weak use case. If 
you consider this important, would you be able to look into making it work?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

