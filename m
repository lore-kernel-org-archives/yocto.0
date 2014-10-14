Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91B5AE00853; Tue, 14 Oct 2014 08:38:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6ADEEE007C1
	for <yocto@yoctoproject.org>; Tue, 14 Oct 2014 08:38:48 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 14 Oct 2014 08:38:47 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,717,1406617200"; d="scan'208";a="588777589"
Received: from gtotamun-mobl.gar.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.121.192])
	by orsmga001.jf.intel.com with ESMTP; 14 Oct 2014 08:35:53 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Matt Schuckmann <Matt.Schuckmann@planar.com>
Date: Tue, 14 Oct 2014 16:35:51 +0100
Message-ID: <1698813.aG202tMgGX@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.1 (Linux/3.16.4-200.fc20.x86_64; KDE/4.14.1; x86_64; ; )
In-Reply-To: <4B07ADD556F70043925DA2E9C5D4346D2FD8728292@MSXBEBVT12.planar.net>
References: <4B07ADD556F70043925DA2E9C5D4346D2FD87281CF@MSXBEBVT12.planar.net>
	<2336754.PRSm2CVh32@peggleto-mobl5.ger.corp.intel.com>
	<4B07ADD556F70043925DA2E9C5D4346D2FD8728292@MSXBEBVT12.planar.net>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to include static library and headers in sdk
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
X-List-Received-Date: Tue, 14 Oct 2014 15:38:58 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 23 September 2014 11:38:35 Matt Schuckmann wrote:
> Paul Eggleton wrote:
> > So the way our system works, we assume that a recipe will have a main
> > package and in the case of a library that that will contain the actual
> > library file; the dev package just contains headers and the non-
> > versioned symlink to the library. Thus if you install the -dev package,
> > it's assumed it won't be of any use unless you install the main
> > package, hence the hard dependency. Also, the -staticdev package
> > depends upon the -dev package. However, if the main package is empty,
> > it won't be produced at all, but the -dev package still depends upon it
> > and you'll get the error above. If all you want to do is ship a static
> > .a file in the -staticdev package and you're never going to have a main
> > package, probably the thing to do is just drop the dependency on the
> > main package, by adding the following to your recipe:
> > 
> > RDEPENDS_${PN}-dev = ""
> 
> Ok that did it.
> The final solution was to add
> RDEPENDS_${PN}-dev = ""
> To the library recipe file so that dev and staticdev don't depend on the
> binary package (because it's empty because it's a static library).
> 
> And to add the staticdev packages to the TOOLCHAIN_TARGET_TASK list in the
> image file. (question could this part be put in a package group, should
> it?)

It could be, that's largely up to how you want to package things for convenience.

> That was really hard for a beginner to figure out, I never would have gotten
> it without your help Paul. It makes sense now but I don't think I could
> have figured it out from just reading the documentation (partially because
> there is so much documentation and variation in how things are done).
> 
> It seems like there should be a repository of example recipes covering
> common cases like this, has anything been started?

Well, I'd hope that what we provide in the "Writing a new recipe" manual
section [1] should be helpful enough to get started, if not we should extend
or improve that. 

Another thing we should look at going forward is trying to avoid annoying
issues such as this one coming up at all. For example we could change the
RDEPENDS relationship here to an RRECOMMENDS and then it shouldn't cause the
error to occur. FYI I've opened an enhancement bug to track improving the
behaviour in this situation:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=6839

Cheers,
Paul

[1] http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

-- 

Paul Eggleton
Intel Open Source Technology Centre

