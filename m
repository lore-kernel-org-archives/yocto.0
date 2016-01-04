Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 831DFE00C8D; Mon,  4 Jan 2016 06:21:23 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1557E00973
	for <yocto@yoctoproject.org>; Mon,  4 Jan 2016 06:21:22 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga102.jf.intel.com with ESMTP; 04 Jan 2016 06:21:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,520,1444719600"; d="scan'208";a="719906715"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga003.jf.intel.com with ESMTP; 04 Jan 2016 06:21:21 -0800
To: yocto@yoctoproject.org
References: <20160104052508.9177.12623@packages.yoctoproject.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <568A7F36.2080404@linux.intel.com>
Date: Mon, 4 Jan 2016 16:18:30 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Icedove/38.4.0
MIME-Version: 1.0
In-Reply-To: <20160104052508.9177.12623@packages.yoctoproject.org>
Subject: Re: [Recipe reporting system] Upgradable recipe name list
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
X-List-Received-Date: Mon, 04 Jan 2016 14:21:23 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 01/04/2016 07:25 AM, recipe-report@yoctoproject.org wrote:
> This mail was sent out by Recipe reporting system.
>
> This message list those recipes which need to be upgraded. If maintainers
> believe some of them needn't to upgrade this time, they can fill in
> RECIPE_NO_UPDATE_REASON_pn-"xxx" in upstream_tracking files to ignore this
> recipe remainder until newer upstream version was detected.
>
> Example:
> RECIPE_NO_UPDATE_REASON_pn-"xxx" = "Not upgrade to 2.0 is unstable"

This has now changed. Recipe maintainers should add the reason for not 
updating directly to recipes:

RECIPE_NO_UPDATE_REASON = "Not upgrade to 2.0 is unstable"

Alex

