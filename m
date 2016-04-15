Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B63FCE00CBB; Fri, 15 Apr 2016 03:02:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 011A7E00D26
	for <yocto@yoctoproject.org>; Fri, 15 Apr 2016 03:02:42 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 15 Apr 2016 03:02:43 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.24,486,1455004800"; d="scan'208";a="955588898"
Received: from shermanc-mobl.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.145.244])
	by orsmga002.jf.intel.com with ESMTP; 15 Apr 2016 03:02:41 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: David Winn <dwinn@trellisware.com>
Date: Fri, 15 Apr 2016 22:02:37 +1200
Message-ID: <3827036.bJIVWrBCJx@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.6-301.fc23.x86_64; KDE/4.14.18; x86_64; ;
	)
In-Reply-To: <D85DF636754686499AE75C7EA009AA8E839861F7@TWHQ-MAIL2.trellisware.com>
References: <D85DF636754686499AE75C7EA009AA8E839861F7@TWHQ-MAIL2.trellisware.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Issues toaster and devtool together
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
X-List-Received-Date: Fri, 15 Apr 2016 10:02:48 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi David,

On Tue, 12 Apr 2016 20:23:43 David Winn wrote:
> I was recently part of the Yocto Dev Day event, and learned a lot of good
> tools for working with OE. I then got home and wanted to fold many of them
> into our development process. Unfortunately I've hit a problem; toaster and
> devtool don't seem to run in the same working copy.
> Here's what I'm doing:
> > git clone ...poky poky
> > cd poky
> > git checkout jethro
> > source oe-init-build-env
> > source toaster start
> > devtool modify -x which scratch/which
> 
> ERROR: Only one copy of bitbake should be run against a build directory
> 
> My intent was to use devtool to do my development and then use toaster to
> browse what happened in the working copy. Is this working for anyone else?
> Any tips to fix the error above?

Unfortunately this is a known limitation - having Toaster running prevents 
running devtool and some of our other command line utilities [1]. We plan to 
address this in the next release, for now I'm afraid the only workaround is to 
stop Toaster when you need to run devtool.

Cheers,
Paul

[1] https://bugzilla.yoctoproject.org/show_bug.cgi?id=5470

-- 

Paul Eggleton
Intel Open Source Technology Centre

