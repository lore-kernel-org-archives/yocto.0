Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E732E0099B; Tue,  5 May 2015 01:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43065E009DB
	for <yocto@yoctoproject.org>; Tue,  5 May 2015 01:32:05 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 05 May 2015 01:32:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.13,371,1427785200"; d="scan'208";a="705393758"
Received: from unknown (HELO peggleto-mobl.ger.corp.intel.com) ([10.252.6.217])
	by fmsmga001.fm.intel.com with ESMTP; 05 May 2015 01:32:04 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Date: Tue, 05 May 2015 09:32:03 +0100
Message-ID: <7454550.JYGnhI8WWn@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.6 (Linux/3.19.5-200.fc21.x86_64; KDE/4.14.6; x86_64; ; )
In-Reply-To: <5543E142.2020707@gmail.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
	<5543E142.2020707@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Tue, 05 May 2015 08:32:14 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Friday 01 May 2015 16:25:38 Trevor Woerner wrote:
> On 04/22/15 13:58, Paul Eggleton wrote:
> > On Wednesday 22 April 2015 15:32:06 Brian Karcz wrote:
> >> Is there a way to create a recipe to build actively developed code
> >> located in an external source directory? Basically skip the fetch and
> >> unpack steps and always execute the compile and populate steps each time
> >> and image is built?
> > 
> > Indeed there is:
> > 
> > http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#buildi
> > ng-software-from-an-external-source
>
> Paul, I'm surprised you suggested externalsrc instead of just mentioning
> devtool right from the start (doubly-surprised since you're the person
> who wrote devtool!). Using devtool the "administration" (of creating a
> recipe, etc) is done for you, no?
> 
> http://twoerner.blogspot.ca/2015/01/the-yocto-project-introducing-devtool.ht
> ml

Well, I would have, except this doesn't quite seem like the same case as 
devtool is designed for (which is "temporary" switching of the source for 
development - AIUI Brian was looking for something more permanent.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

