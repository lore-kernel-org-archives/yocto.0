Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A5563E00E53; Fri, 14 Oct 2016 02:27:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33D76E00E53
	for <yocto@yoctoproject.org>; Fri, 14 Oct 2016 02:27:40 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP; 14 Oct 2016 02:27:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,344,1473145200"; d="scan'208";a="19597304"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.18.184])
	by orsmga005.jf.intel.com with ESMTP; 14 Oct 2016 02:27:38 -0700
Message-ID: <1476437255.7662.1.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: gmane@reliableembeddedsystems.com
Date: Fri, 14 Oct 2016 10:27:35 +0100
In-Reply-To: <e3a14ab26616aab0dc71e7f8360a5af1@reliableembeddedsystems.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
	<1476394173.3034.13.camel@intel.com>
	<e3a14ab26616aab0dc71e7f8360a5af1@reliableembeddedsystems.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, robert.berger@reliableembeddedsystems.com
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
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
X-List-Received-Date: Fri, 14 Oct 2016 09:27:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2016-10-13 at 17:38 -0500, gmane@reliableembeddedsystems.com
wrote:
> Hi,
> 
> On 2016-10-13 16:29, Lock, Joshua G wrote:
> > 
> > Can you help me understand why you needed to create this patch?
> > 
> > We've run into some issues recently where toolchains we expected to
> > be
> > built weren't and the PublishArtifacts buildstep failing because
> > they're missing is useful. With this change we'll no longer get
> > that,
> > right?
> 
> Yes that's right (and not intended).
> 
> I would hope that you'll be able to detect such kind of problems
> before 
> the PublishArtifacts buildstep because there should be some error in 
> previous steps. The toolchain did not build!


Indeed, but software is buggy. This happened very recently on the
public builders:

https://bugzilla.yoctoproject.org/show_bug.cgi?id=10275

Toolchains *were* being built but they were being unstaged from the
deploy directory by an unfortunate bug. We had errors logged due to
failing cp the buildstep didn't fail.

> I made this patch because I just want to build a 64 bit toolchain as 
> opposed to both (like I used to do with some older version of Y-AB)
> and 
> don't want the PublishArtifacts step to fail just because there is
> no 
> 32-bit toolchain. There is no 32 bit toolchain on purpose.
> 
> As a bonus the patch also copies md5sums and friends over and not
> just 
> the .sh files.

This is a reasonable goal, but something I'd rather see addressed in
the proposed PublishArtifacts rewrite. As we're trying to release morty
right now I'd like to avoid changes to the AB behaviour until after the
release.

Regards,

Joshua

