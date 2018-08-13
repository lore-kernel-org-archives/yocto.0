Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0BE96E0097C; Sun, 12 Aug 2018 23:35:42 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93129E0084F
	for <yocto@yoctoproject.org>; Sun, 12 Aug 2018 23:35:41 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga004.jf.intel.com ([10.7.209.38])
	by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Aug 2018 23:35:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,232,1531810800"; d="scan'208";a="224154001"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.21.0])
	([10.221.21.0])
	by orsmga004.jf.intel.com with ESMTP; 12 Aug 2018 23:35:36 -0700
To: changqing.li@windriver.com, yocto@yoctoproject.org
References: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <d5570cbb-a327-6203-0fdb-f0056928c305@intel.com>
Date: Mon, 13 Aug 2018 14:35:35 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
Subject: Re: [PATCH][meta-dpdk] dpdk-dev-libibverbs: fix do_fetch error
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
X-List-Received-Date: Mon, 13 Aug 2018 06:35:42 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 08/13/2018 01:22 PM, changqing.li@windriver.com wrote:
> From: Changqing Li <changqing.li@windriver.com>
> 
> original URI have been deleted(don't know why). I noticed there is
> an official libibverbs(https://git.kernel.org/pub/scm/libs/infiniband
> /libibverbs.git), 

The deprecation notice seems to imply that rdma-core on github should be
used instead and that's what debian does too. Perhaps that should be
used instead?

https://tracker.debian.org/pkg/rdma-core

> but there are big differences with original one.
> I don't have condition to test this now, I can only go as far as builds
> OK. so I select use tar.gz on yocto to make sure fetch can success and
> original function not be affected.
> 
> I also noticed a project seems like Mellanox libibverbs,
> https://github.com/gpudirect/libibverbs, but it don't have any
> official release now.
> 
> Hope in the future, we can switch to the offcial libibverbs, or
> the new Mellanox libibverbs. but now, we use this yocto tar.gz
> as a workaround to make it at least work now.


