Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23DA9E00B58; Fri, 10 Aug 2018 02:05:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF41CE00708
	for <yocto@yoctoproject.org>; Fri, 10 Aug 2018 02:05:39 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
	by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	10 Aug 2018 02:05:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,218,1531810800"; d="scan'208";a="61386685"
Received: from langkari-mobl1.ger.corp.intel.com (HELO localhost.localdomain)
	([10.249.36.135])
	by fmsmga007.fm.intel.com with ESMTP; 10 Aug 2018 02:05:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Yuvarajesh Valleru <yv@iseg-hv.de>
Date: Fri, 10 Aug 2018 11:05:37 +0200
Message-ID: <2963881.7a0ibZn1QS@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <71833f0b-4684-9a86-8a6d-fa51d49007a4@iseg-hv.de>
References: <71833f0b-4684-9a86-8a6d-fa51d49007a4@iseg-hv.de>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Copy git hashes of recipes during the image build
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
X-List-Received-Date: Fri, 10 Aug 2018 09:05:40 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Rajesh,

On Wednesday, 8 August 2018 8:52:10 AM CEST Yuvarajesh Valleru wrote:
> I am building the custom yocto image regularly so that I do have so may 
> versions of the image. But when an bug occured in older version images, 
> I could not find the changes in source code because of AUTOREV. Is there 
> any possibility to copy the hashes during the build and store in another 
> recipe, so that I can have all my hashes in my target system.

There is indeed a way to collect the revisions, and since the question has
come up before I just wrote a FAQ entry about it:

  https://wiki.yoctoproject.org/wiki/Technical_FAQ#How_do_I_collect_the_source_revisions_fetched_by_each_recipe.3F

This wouldn't actually store the revisions in a form that you could then put
into the image itself however. If you really wanted to do that you could in
theory run buildhistory-collect-srcrevs from a recipe and then package its
output though, I think that should work.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



