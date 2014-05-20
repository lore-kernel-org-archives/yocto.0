Return-Path: <kangkai.yin@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA5BCE00B66; Mon, 19 May 2014 19:17:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=5.0 tests=RCVD_IN_DNSWL_HI,RDNS_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mga09.intel.com (unknown [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EB6BE0073D
	for <yocto@yoctoproject.org>; Mon, 19 May 2014 19:17:22 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 19 May 2014 19:12:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.98,870,1392192000"; d="scan'208";a="514504578"
Received: from kai-gentoo.bj.intel.com (HELO kai-gentoo) ([10.238.154.67])
	by orsmga001.jf.intel.com with ESMTP; 19 May 2014 19:17:21 -0700
Date: Tue, 20 May 2014 10:15:10 +0800
From: Yin Kangkai <kangkai.yin@intel.com>
To: yocto@yoctoproject.org
Message-ID: <20140520021510.GE4465@kai-gentoo.bj.intel.com>
References: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
MIME-Version: 1.0
In-Reply-To: <1400552217-15047-1-git-send-email-kangkai.yin@intel.com>
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
X-List-Received-Date: Tue, 20 May 2014 02:17:27 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

[up post intentionally]

I was trying to setup yocto-autobuilder in my local env, and customize
it to my needs (i.e. watch git/gerrit event and only build my
images). It is a little bit of struggle for me to make it finally work
(due to the fact I am little knowledge to both buildbot and python.)

Anyway, these several patches are needed in my setup. Please review
and considering merge.

If this is not the right mailing list, please let me know. Thanks.

Regards,
Kangkai

On 2014-05-20, 10:16 +0800, Yin Kangkai wrote:
> Without this patch, when you set a SingleBranchScheduler scheduler,
> code will only check against the first repo in repos list. e.g.:
...

