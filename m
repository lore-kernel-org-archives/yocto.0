Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACC7DE00D1B; Wed, 18 Oct 2017 04:33:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [134.134.136.100 listed in list.dnswl.org]
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8382DE00CEC
	for <yocto@yoctoproject.org>; Wed, 18 Oct 2017 04:33:48 -0700 (PDT)
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by orsmga105.jf.intel.com with ESMTP; 18 Oct 2017 04:33:48 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,396,1503385200"; d="scan'208";a="161848911"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by orsmga005.jf.intel.com with ESMTP; 18 Oct 2017 04:33:47 -0700
To: auh@auh.yoctoproject.org, yocto@yoctoproject.org
References: <20171018110810.678FB440F6B@auh.yoctoproject.org>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <698a7870-f4b8-39a1-473a-1a3b9ba2d45f@linux.intel.com>
Date: Wed, 18 Oct 2017 14:29:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <20171018110810.678FB440F6B@auh.yoctoproject.org>
Subject: Re: [AUH] Upgrade status: 2017-10-18
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
X-List-Received-Date: Wed, 18 Oct 2017 11:33:50 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/18/2017 02:08 PM, auh@auh.yoctoproject.org wrote:
>      TOTAL: attempted=147 succeeded=25(17.01%) failed=122(82.99%)

With this kind of success rate, should we continue to run and develop 
the thing?

I think it's better to just send notifications to maintainers without 
attempting to update anything, as most of the time version updates need 
manual rebasing of patches or other tweaks anyway.

I've submitted a small script to do just that:
http://lists.openembedded.org/pipermail/openembedded-core/2017-October/143510.html

Instead, I'd rather see RRS fixed/improved - lots of issues there, some 
of them very old.


Alex

