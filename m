Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE807E00DD8; Thu, 26 May 2016 14:01:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88625E0084A
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 14:01:37 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga103.jf.intel.com with ESMTP; 26 May 2016 14:01:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.26,370,1459839600"; d="scan'208";a="963125631"
Received: from ktan57-mobl2.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.172.96])
	by orsmga001.jf.intel.com with ESMTP; 26 May 2016 14:01:34 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
Date: Fri, 27 May 2016 09:01:31 +1200
Message-ID: <2580036.Ct9Nm9nA8M@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.9-300.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <f1580aa91ce14956beb3129c2343f9ea@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
	<CAJTo0LYkngeh80Y7js0Tki_9jEVtFmoZeUB=Fp3+JXhV0Fd7ZA@mail.gmail.com>
	<f1580aa91ce14956beb3129c2343f9ea@Ek.usurf.usu.edu>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, Scott Rifenbark <srifenbark@gmail.com>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 21:01:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thu, 26 May 2016 17:03:13 Jonathan Haws wrote:
> > DEPENDS is built-time for the recipe, so the concept of per-package
> > build dependencies doesn't really make sense.
> > 
> > DEPENDS = "foo bar" are build dependencies
> > RDEPENDS_${PN} = "foo bar" are package-specific runtime dependencies.
> 
> Ross, thanks for clearing that up.  Is there anything in the
> documentation that talks about that?  I've read through most of the docs
> and don't remember any details about that distinction.

I guess we don't cover that explicitly, other than in the reference manual
entries for each variable. We probably need a small section on dependencies
in the "Writing a new Recipe" section:

  http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#new-recipe-writing-a-new-recipe

That can cover the difference between build-time and runtime dependencies
and the usage of DEPENDS and RDEPENDS respectively.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

