Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C17F3E00A25; Mon,  8 Jun 2015 03:23:14 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88A0AE00A19
	for <yocto@yoctoproject.org>; Mon,  8 Jun 2015 03:23:05 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 08 Jun 2015 03:23:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,573,1427785200"; d="scan'208";a="742905770"
Received: from ewishar1-mobl2.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.30.184])
	by orsmga002.jf.intel.com with ESMTP; 08 Jun 2015 03:23:05 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Roberto Saltini <house.83@gmail.com>
Date: Mon, 08 Jun 2015 11:23:03 +0100
Message-ID: <4063915.1TFIuXMbmb@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.7 (Linux/4.0.4-202.fc21.x86_64; KDE/4.14.7; x86_64; ; )
In-Reply-To: <55743BAA.8010905@mlbassoc.com>
References: <CAGLePYs7OGHzbn9TUg0qj7PMEMF-DGkWzrDGdnD__OOA7uWiGA@mail.gmail.com>
	<55743BAA.8010905@mlbassoc.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
Subject: Re: How to list all of the .bb and .bbappend files used to build a specific package with bitbake?
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
X-List-Received-Date: Mon, 08 Jun 2015 10:23:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Sunday 07 June 2015 06:40:10 Gary Thomas wrote:
> On 2015-06-07 03:49, Roberto Saltini wrote:
> > Let's consider the package "virtual/kernel". I would like to know which
> > .bb and .bbappend files are involved in building this package.> 
> > I know that I can get the package name through:
> >     bitbake -e virtual/kernel | grep ^BP=
> > 
> > This command gives me the name of the package used to build virtual/kernel
> > that in my case is |linux-fslc-4.0+gitAUTOINC+19ebefd40a|. However, I do
> > not know how to get the list of .bb and .bbappend files (with their
> > location included) used to build the
> > |linux-fslc-4.0+gitAUTOINC+19ebefd40a| package.
> Use
>    find <LAYERS> -name "*.bb*"
> where <LAYERS> are the directories holding your layers.

FYI you can get a slightly more concise and accurate list of recipes from 
bitbake-layers:

 bitbake-layers show-recipes

and for the bbappends:

 bitbake-layers show-appends

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

