Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 927DDE00E87; Thu, 13 Oct 2016 14:40:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4778EE00E5E
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 14:40:19 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP; 13 Oct 2016 14:40:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.31,489,1473145200"; d="scan'208";a="1053522872"
Received: from jlock-mobl1.ger.corp.intel.com ([10.252.27.1])
	by fmsmga001.fm.intel.com with ESMTP; 13 Oct 2016 14:40:15 -0700
Message-ID: <1476394814.3034.20.camel@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
To: pidge@toganlabs.com, gmane@reliableembeddedsystems.com, 
	yocto@yoctoproject.org
Date: Thu, 13 Oct 2016 22:40:14 +0100
In-Reply-To: <1476286173.7502.14.camel@toganlabs.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
	<1476286173.7502.14.camel@toganlabs.com>
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Mime-Version: 1.0
Cc: robert.berger@reliableembeddedsystems.com
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
X-List-Received-Date: Thu, 13 Oct 2016 21:40:22 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-10-12 at 17:29 +0200, Beth 'pidge' Flanagan wrote:
> On Mon, 2016-10-10 at 01:44 -0500, gmane@reliableembeddedsystems.com
> wrote:
> > 
> > 
> 
> 
> A few notes (not picking on this patch but it does point out some
> design failures and I want to at least get this on folks radar).
> 
> I've been unhappy with how DeployArtifacts work for sometime.
> 
> Long ago, when I wrote DeployArtifacts, it was "get it working, we'll
> refactor later" and that refactor never happened. So I'm up for
> ideas.
> 
> I would like a deploy infrastructure that:
> 
> a. Is distro/image name/etc agnostic (aka, poky and image names and
> paths hardcoded. ick.).
> b. Is perhaps config file driven.
> c. Had much less of the cruft that exists withing DeployArtifacts.
> 
> So. Thoughts on this? I'd be willing to hear suggestions on how to do
> this before I go and spend some time ripping this apart post release?

It's quite useful to have a list of expected output of the build so
that this step can fail if a component which should be published is
missing.

I'd been planning to take a look at rewriting this build step after the
release and my initial thoughts were towards something config file
driven.

Thanks,

Joshua

