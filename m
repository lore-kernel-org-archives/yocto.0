Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63164E00D6A; Thu,  7 Dec 2017 05:05:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D4E4E00D5F
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 05:05:18 -0800 (PST)
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga106.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Dec 2017 05:05:18 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,373,1508828400"; 
   d="scan'208";a="688333"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 07 Dec 2017 05:05:17 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<332375201106c4f2fed6a89f008f0aac0a396908.1512630627.git.liezhi.yang@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <2f16986a-80a0-6101-0c30-c6a91c23c91d@linux.intel.com>
Date: Thu, 7 Dec 2017 15:05:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <332375201106c4f2fed6a89f008f0aac0a396908.1512630627.git.liezhi.yang@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 10/12] upgradehelper.py: add --apply-failed option
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
X-List-Received-Date: Thu, 07 Dec 2017 13:05:19 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/07/2017 09:37 AM, Robert Yang wrote:
>    -f, --apply-failed    Apply failed patch in the repo after upgrade is done
> 
> And add "FAILED:" in subject when failed. So that the user can go on
> working based on the commit.

AUH will simple leave all commits in the repo, succeessful and failed. 
Even successful upgrades may need further work before they can be 
submitted. It's useful to mark failed ones as problematic though, so 
this change can be partially taken.


Alex

