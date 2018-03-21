Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1DB6FE00C75; Wed, 21 Mar 2018 08:55:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0544E00BEC
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2018 08:55:50 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	21 Mar 2018 08:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.48,340,1517904000"; d="scan'208";a="44091565"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga002.jf.intel.com with ESMTP; 21 Mar 2018 08:55:32 -0700
To: Alan Martinovic <alan.martinovic@senic.com>,
	"Burton, Ross" <ross.burton@intel.com>
References: <CAOT_U5Y+GLS1VU_hJs0fi1_Z0xDcL5eYMAzpgknD1aJ-GbKwiQ@mail.gmail.com>
	<CAJTo0LYrM=Amzk731zxmpx5wqaKCiRnA5NQ74nC=y3WSa2BN1Q@mail.gmail.com>
	<CAOT_U5bzcqTXOd43+redZi+1UWN7rW2fZuSeqkpSvLamDWy8_g@mail.gmail.com>
	<CAJTo0La6iV6ZSQ5Ecys1LzUCsk14ckSukq+bRjAoiaBmAuLmCw@mail.gmail.com>
	<CAOT_U5aB47Wid12ycSXQzd3gk1x4qDD7aXFjBn02nTzDsoNW7w@mail.gmail.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <3b0a05cd-3a88-a5e7-272a-49fbc43c7daf@linux.intel.com>
Date: Wed, 21 Mar 2018 17:48:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <CAOT_U5aB47Wid12ycSXQzd3gk1x4qDD7aXFjBn02nTzDsoNW7w@mail.gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Building BlueZ from git in Yocto
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
X-List-Received-Date: Wed, 21 Mar 2018 15:55:51 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 03/21/2018 05:47 PM, Alan Martinovic wrote:
> When you say "tagged as backports" are you referring to the Upstream-Status?
> 
> So this is a backport patch:
>      Upstream-Status: Accepted
> [https://git.kernel.org/pub/scm/bluetooth/bluez.git/commit/?id=76255f73
>     2d68aef2b90d36d9c7be51a9e1739ce7]
> 
> but these two aren't yet or never will be:
>      Upstream-Status: Submitted
>      Upstream-Status: Denied

See here for explanations:
https://www.openembedded.org/wiki/Commit_Patch_Message_Guidelines#Patch_Header_Recommendations:_Upstream-Status

In either case, do not rely on Upstream-Status when deciding what to 
drop and what to keep. The only authority is actual code: if it already 
contains the patch (or, in rare cases, resolves the issue in a different 
way), you can drop it. Otherwise you most likely need to keep it, 
rebasing as needed.

Alex

