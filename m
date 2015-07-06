Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 476DBE00A21; Mon,  6 Jul 2015 03:58:49 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1E94E009CC
	for <yocto@yoctoproject.org>; Mon,  6 Jul 2015 03:58:48 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga102.jf.intel.com with ESMTP; 06 Jul 2015 03:58:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,414,1432623600"; d="scan'208";a="759105327"
Received: from tgsmith2-mobl5.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.6.176])
	by orsmga002.jf.intel.com with ESMTP; 06 Jul 2015 03:58:46 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 06 Jul 2015 11:58:45 +0100
Message-ID: <8257415.nZmIxnRxaN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <559A4F02.8040907@mail.bg>
References: <1435292188-29514-1-git-send-email-jon.szymaniak@gmail.com>
	<20150706084005.GA8098@ad.chargestorm.se>
	<559A4F02.8040907@mail.bg>
MIME-Version: 1.0
Cc: Anders Darander <anders@chargestorm.se>
Subject: Re: [meta-raspberrypi][PATCH] firmware.inc: Fetch a zip instead of cloning a git repo
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
X-List-Received-Date: Mon, 06 Jul 2015 10:58:49 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 06 July 2015 12:48:50 Nikolay Dimitrov wrote:
> One issue with the regularly changing tarball checksums is that people
> start to get used to thes changes (e.g. everything looks like false
> positive). Currently the tarball checksums and SCM revisions are
> probably the most important tool for builds traceability. If we get
> used to think about these checksums as "unreliable", it will be much
> easier to miss an important component change, which would otherwise
> ring a bell.

Fully agreed.

There are a couple of things I think we can do here:

1) Implement shallow cloning in bitbake's git fetcher as suggested. This 
shouldn't be too tricky. I've filed a bug to track this:

  https://bugzilla.yoctoproject.org/show_bug.cgi?id=7958

(Richard is the default assignee, but anyone could potentially work on this).

2) In the mean time we could consider upload git mirror tarballs to a source 
mirror that gets enabled through meta-raspberrypi (would need to be via 
PREMIRRORS to actually solve the issue). This has the advantage that it 
wouldn't require any changes to the kernel recipe itself, but new tarballs 
would of course need to be uploaded every time SRCREV is changed in the 
recipe.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

