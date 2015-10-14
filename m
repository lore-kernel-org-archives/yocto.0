Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7371CE00B5A; Wed, 14 Oct 2015 08:21:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DFEFE00A9B;
	Wed, 14 Oct 2015 08:21:38 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 14 Oct 2015 08:21:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.17,681,1437462000"; d="scan'208";a="826822451"
Received: from apalani1-mobl.amr.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.5.185])
	by fmsmga002.fm.intel.com with ESMTP; 14 Oct 2015 08:21:13 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Wed, 14 Oct 2015 16:21:11 +0100
Message-ID: <1973732.RxklpD0YQN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <DUB128-W55D7EF4D72BB9C2B271B83983F0@phx.gbl>
References: <DUB128-W274735BE50FEAA82C46F3698300@phx.gbl>
	<DUB128-W2475E70DAFB5BA10DA6D87983F0@phx.gbl>
	<DUB128-W55D7EF4D72BB9C2B271B83983F0@phx.gbl>
MIME-Version: 1.0
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto-bounces@yoctoproject.org" <yocto-bounces@yoctoproject.org>
Subject: Re: FW: busybox date cli does not support %N (nanoseconds)
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
X-List-Received-Date: Wed, 14 Oct 2015 15:21:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 14 October 2015 15:03:09 Thanassis Silis wrote:
> The problem has been fixed with changing the CONFIG_FEATURE_DATE_NANO in
> busybox's defconfig. I don't know which of the 2 defconfigs is responsible
> though.

Unless you're using DISTRO = "poky-tiny" then it's not the one in the 
poky-tiny subdirectory in meta-yocto.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

