Return-Path: <kangkai.yin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 970AFE00BBF; Thu, 29 May 2014 21:09:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29C0BE00B71
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 21:09:14 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 29 May 2014 21:09:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="349804088"
Received: from kai-gentoo.bj.intel.com (HELO kai-gentoo) ([10.238.154.67])
	by FMSMGA003.fm.intel.com with ESMTP; 29 May 2014 21:06:05 -0700
Date: Fri, 30 May 2014 12:09:12 +0800
From: Yin Kangkai <kangkai.yin@intel.com>
To: yocto@yoctoproject.org
Message-ID: <20140530040912.GR31444@kai-gentoo.bj.intel.com>
References: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
	<20140520021510.GE4465@kai-gentoo.bj.intel.com>
MIME-Version: 1.0
In-Reply-To: <20140520021510.GE4465@kai-gentoo.bj.intel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: [PATCH 1/3] SingleBranchScheduler: check each repo but not only the first one
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
X-List-Received-Date: Fri, 30 May 2014 04:09:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 2014-05-20, 10:15 +0800, Yin Kangkai wrote:
> [up post intentionally]
> 
> I was trying to setup yocto-autobuilder in my local env, and customize
> it to my needs (i.e. watch git/gerrit event and only build my
> images). It is a little bit of struggle for me to make it finally work
> (due to the fact I am little knowledge to both buildbot and python.)
> 
> Anyway, these several patches are needed in my setup. Please review
> and considering merge.
> 
> If this is not the right mailing list, please let me know. Thanks.

Sorry, any response on this patch set?

> On 2014-05-20, 10:16 +0800, Yin Kangkai wrote:
> > Without this patch, when you set a SingleBranchScheduler scheduler,
> > code will only check against the first repo in repos list. e.g.:
> ...

