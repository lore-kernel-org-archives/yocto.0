Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC00CE00B31; Sun, 30 Jun 2019 15:46:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at https://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93C36E008E3
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 15:46:54 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	30 Jun 2019 15:46:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,437,1557212400"; d="scan'208";a="338444067"
Received: from anmitta2-mobl.gar.corp.intel.com (HELO [10.249.65.134])
	([10.249.65.134])
	by orsmga005.jf.intel.com with ESMTP; 30 Jun 2019 15:46:52 -0700
To: zhe.he@windriver.com, yocto@yoctoproject.org
References: <1561455820-9421-1-git-send-email-zhe.he@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <45fd1791-5a3e-9288-778d-c4418167797c@intel.com>
Date: Mon, 1 Jul 2019 06:46:51 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <1561455820-9421-1-git-send-email-zhe.he@windriver.com>
Subject: Re: [meta-dpdk][PATCH] dpdk: Remove 18.05
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
X-List-Received-Date: Sun, 30 Jun 2019 22:46:55 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 25-Jun-19 05:43 PM, zhe.he@windriver.com wrote:
> From: He Zhe <zhe.he@windriver.com>
> 
> We have already had 18.11 and 18.05 is not a stable version.
> 
> Signed-off-by: He Zhe <zhe.he@windriver.com>
> ---
>   recipes-extended/dpdk/dpdk_18.05.bb | 15 ---------------
>   1 file changed, 15 deletions(-)
>   delete mode 100644 recipes-extended/dpdk/dpdk_18.05.bb

Can you please also remove the patches that are specific to this version?

Thanks,

Anuj

