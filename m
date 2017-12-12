Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8E980E00D9A; Tue, 12 Dec 2017 04:25:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61A29E00D03
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 04:25:33 -0800 (PST)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	12 Dec 2017 04:25:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.45,395,1508828400"; 
   d="scan'208";a="1898269"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga008.fm.intel.com with ESMTP; 12 Dec 2017 04:25:32 -0800
To: Robert Yang <liezhi.yang@windriver.com>, yocto@yoctoproject.org
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
	<b1f0b049-b78e-4009-20ac-979b82081b4e@linux.intel.com>
	<d8a9adca-7374-64da-8613-059034082943@windriver.com>
	<4af82364-f125-e6fd-ab12-8dd3a9f0dcbc@windriver.com>
	<91939990-5880-aba7-7ec6-7d24809694aa@linux.intel.com>
	<91a7f9ef-b0c2-68c5-ad8f-07309a3a9585@windriver.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <9c635c45-b01a-3896-ad89-34b7ded040f6@linux.intel.com>
Date: Tue, 12 Dec 2017 14:26:16 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.4.0
MIME-Version: 1.0
In-Reply-To: <91a7f9ef-b0c2-68c5-ad8f-07309a3a9585@windriver.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 08/12] upgradehelper.py: clean repo only once when recipes are specified
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
X-List-Received-Date: Tue, 12 Dec 2017 12:25:35 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 12/11/2017 08:13 AM, Robert Yang wrote:

>> I think it's a simpler and easier to understand approach. Yes, this 
>> means that an updated recipe that is close to the root of dependency 
>> tree can cause a cascade of build failures (e.g. glibc), but the 
>> update commits for everything else will still be created, and the 
>> maintainer can easily revert the failing updates, and re-run the 
>> build. What you think?
> 
> Yes, since glibc would causes others failed to build, so I removed the 
> commited
> during upgrading, and then apply it back, I think that this is more 
> helpful than
> leave the failed commit there and causes others failed.

How about simply issuing 'git revert' after a build has failed? That's 
easier to implement than rearranging the order of commits, and the 
commit message can include a link to the build failure logs.

Alex

