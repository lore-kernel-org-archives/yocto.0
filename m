Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE97FE009F0; Mon,  6 Jul 2015 07:08:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 52BCEE009DB
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 07:08:28 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 06 Jul 2015 07:08:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,415,1432623600"; d="scan'208";a="723685503"
Received: from tgsmith2-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.6.176])
	by orsmga001.jf.intel.com with ESMTP; 06 Jul 2015 07:08:14 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Marcin =?utf-8?B?S3J6ZW1pxYRza2k=?= <mar.krzeminski@gmail.com>
Date: Mon, 06 Jul 2015 15:08:14 +0100
Message-ID: <2853092.imoTbB5xtm@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <BN3PR0501MB10902B0E1BAF6F95F9FE2BA7BB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
References: <CABc_YGAQqOMTMavBTQ+gjq1grteY_n9fy_2xSqVgfCc9ijf3=w@mail.gmail.com>
	<BN3PR0501MB10902B0E1BAF6F95F9FE2BA7BB930@BN3PR0501MB1090.namprd05.prod.outlook.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Multiple conncetion to svn (svn+ssh)
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
X-List-Received-Date: Mon, 06 Jul 2015 14:08:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 06 July 2015 12:57:39 Bryan Evenson wrote:
> Marcin,
> 
> > From: yocto-bounces@yoctoproject.org
> > [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Marcin Krzeminski
> > Sent: Friday, July 03, 2015 7:55 AM
> > To: yocto@yoctoproject.org
> > Subject: [yocto] Multiple conncetion to svn (svn+ssh)
> > 
> > Hello again,
> > 
> > I have 12 recipes that download code from same svn repository (using
> > svn+ssh)protocol. Recipes are grouped in packagegroup.
> > When I want to bitbake packagegroup fetcher fail, but when I run recipe
> > alone all is ok. I think it is because I want to open 8 connection to one
> > svn repository.How can I fix this, for example by allowing only eg. 2
> > recipes from packagegroup to be executed in paralell.
> There is no fetcher-specific variable that I know of, but I think you can
> set PARALLEL_MAKE="2" in your recipes to reduce the number of fetches on
> your repository at a time.  The downside is your build will go slower when
> it is building your recipes as it won't be doing as many things in
> parallel.

That's not going to help. The parallelism we are talking about here is across 
recipes - PARALLEL_MAKE is just passed through to make within one task in one 
recipe, and make isn't even involved at the fetch stage.

Something that might work would be to set a lockfile on the do_fetch task such 
that only one of the recipes could fetch at once. That could not allow two 
executing at once, but at least it would solve the problem. e.g. you could add 
this to all of the recipes:

do_fetch[lockfiles] += "${TMPDIR}/mysvnlock.lock"

(The file name isn't critical, it just needs to be the same for all of the 
recipes you wish to participate in the exclusive fetching.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

