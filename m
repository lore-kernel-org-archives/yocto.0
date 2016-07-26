Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 67CD6E00D52; Tue, 26 Jul 2016 13:58:41 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 333D8E00D1F
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2016 13:58:38 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 26 Jul 2016 13:58:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,426,1464678000"; d="scan'208";a="1003044069"
Received: from kleong8-mobl2.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.151.203])
	by orsmga001.jf.intel.com with ESMTP; 26 Jul 2016 13:58:29 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 27 Jul 2016 08:58:27 +1200
Message-ID: <3900371.425jfcdBr4@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.6.4-201.fc23.x86_64; KDE/4.14.20; x86_64; ;
	)
In-Reply-To: <CAJTo0LYOYF=czvyC4HzhbuP1zFaQv2jwrXz82tmnoG3rnuxQBg@mail.gmail.com>
References: <57976F16.8010700@mlbassoc.com>
	<CAJTo0LYOYF=czvyC4HzhbuP1zFaQv2jwrXz82tmnoG3rnuxQBg@mail.gmail.com>
MIME-Version: 1.0
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: Re: python3 on build host
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
X-List-Received-Date: Tue, 26 Jul 2016 20:58:41 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tue, 26 Jul 2016 15:20:34 Burton, Ross wrote:
> On 26 July 2016 at 15:09, Gary Thomas <gary@mlbassoc.com> wrote:
> > I have a build host that I've used for years.  It is not
> > possible to [directly] update python3 on this system to
> > one which is identified as suitable for use with bitbake.
> > 
> > To try and work around this, I created a meta-toolchain SDK
> > for my target.  I remember needing to do this years ago when
> > one of my boxes also became out of date.  Sadly, this process
> > has not led me to a solution.
> > 
> > First question: is this the proper way to solve this problem?
> > I simply can't update python3 on this box (I've tried), so I
> > need another solution so I can continue to use this workhorse.
> 
> The buildtools-tarball is what you want: you can either build your own
> (bitbake buildtools-tarball) or just download the one we've built for you.
> This looks like the right one:
> 
> http://downloads.yoctoproject.org/releases/yocto/yocto-2.1/buildtools/poky-g
> libc-x86_64-buildtools-tarball-core2-64-buildtools-nativesdk-standalone-2.1.
> sh

Not quite - that's the 2.1 buildtools so it contains Python 2, not 3.

We do have the 2.2 M1 version that does contain Python 3:

  http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.2_M1/buildtools/poky-glibc-x86_64-buildtools-tarball-core2-64-buildtools-nativesdk-standalone-2.1%2bsnapshot-20160621.sh

(Still 64-bit though.)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

