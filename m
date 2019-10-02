Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 411A1E00D16; Wed,  2 Oct 2019 15:57:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	https://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 662D1E00B9E
	for <yocto@yoctoproject.org>; Wed,  2 Oct 2019 15:57:51 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	02 Oct 2019 15:57:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.67,250,1566889200"; d="scan'208";a="275510817"
Received: from seok-mobl.gar.corp.intel.com (HELO localhost.localdomain)
	([10.249.72.235])
	by orsmga001.jf.intel.com with ESMTP; 02 Oct 2019 15:57:47 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: akuster808 <akuster808@gmail.com>
Date: Thu, 03 Oct 2019 11:57:44 +1300
Message-ID: <4021250.qhsO4ulJn3@localhost.localdomain>
Organization: Intel Corporation
In-Reply-To: <93d8fa4a-c6ee-a529-5dec-f2b9857c0228@gmail.com>
References: <4192571.iDR9UPTnyj@localhost.localdomain>
	<93d8fa4a-c6ee-a529-5dec-f2b9857c0228@gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [OE-core] 3.0 release notes / migration guide
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
X-List-Received-Date: Wed, 02 Oct 2019 22:57:52 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday, 3 October 2019 11:44:53 AM NZDT akuster808 wrote:
> On 10/2/19 3:20 PM, Paul Eggleton wrote:
> > So it's that time again - we need to start building up the raw material for 
> > the release notes and migration guide for the upcoming 3.0 release, and I'd 
> > like to request some help with some parts of it - read on for details.
> >
> > For the migration guide we have a wiki page serving as a staging area:
> >
> >   https://wiki.yoctoproject.org/wiki/FutureMigrationGuide
> 
> Thanks for putting this together.

No problem!

> > Things that should go in the migration guide: *anything* in the release that 
> > would require someone who is upgrading to take some form of action (i.e. 
> > change their configuration / recipes / etc.) Help with this from people who 
> > implemented the changes or have already thought about / dealt with their 
> > impact would be much appreciated.
> >
> > There is a process where I look through all the commits since the last release 
> > and pull out the ones that need to be mentioned in some form - other than the 
> > migration guide items, the following needs to be gathered for the release 
> > notes:
> >
> > 1) Features - new functionality. We need to capture what the feature is and 
> > hopefully express the impact to the user succinctly.
>
> We remove LSB support.

Thanks - I've just added that to the migration guide and will note it in the release notes.

> > 2) Recipe upgrades - straightforward
> >
> > 3) CVE fixes - fairly straightforward, I just look for commits that explicitly 
> > mention "CVE". If I can easily do so I'll also note where a recipe upgrade 
> > fixes a CVE, but that isn't often readily available information.
>
> So how can the community help in this case? Better commit messages?

That would be great - but it does require the person doing the upgrade to look
upstream, and of course every upstream is different. Unfortunately with some
upstreams finding fixed CVE information is quite difficult indeed.

> Well, aren't open defects not fixed by the time we release time but we
> intend on fixing after release a form of known issues ?

Yes, that's true - I will say we haven't been particularly systematic about the
known issues in past releases so perhaps we should drive the list from
bugzilla. I would want the list to be kept as short as possible though and each
item should succinctly describe the issue. 

Cheers
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre



