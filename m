Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 680BAE00D57; Wed,  4 Oct 2017 06:23:36 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60220E00D50
	for <yocto@yoctoproject.org>; Wed,  4 Oct 2017 06:23:34 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	04 Oct 2017 06:23:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,477,1500966000"; d="scan'208";a="142617240"
Received: from rbaldyga-mobl.ger.corp.intel.com (HELO
	jlock-mobl3.ger.corp.intel.com) ([10.252.24.204])
	by orsmga002.jf.intel.com with ESMTP; 04 Oct 2017 06:23:23 -0700
To: Jose Perez Carranza <jose.perez.carranza@linux.intel.com>,
	yocto@yoctoproject.org
References: <20171002205227.17058-1-jose.perez.carranza@linux.intel.com>
	<ea13c837-2cf0-fbee-94c0-3b7fb0ece92b@linux.intel.com>
	<e9a1ef0f-1ce4-53c1-e71c-300730d37fd3@linux.intel.com>
From: Joshua Lock <joshua.g.lock@linux.intel.com>
Message-ID: <7d1ca727-771f-0430-27e5-dcd4b3575a21@linux.intel.com>
Date: Wed, 4 Oct 2017 14:23:22 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.3.0
MIME-Version: 1.0
In-Reply-To: <e9a1ef0f-1ce4-53c1-e71c-300730d37fd3@linux.intel.com>
Subject: Re: [qa-tools][PATCH] scripts: Add ptest-parser to create reports for pTest executions
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
X-List-Received-Date: Wed, 04 Oct 2017 13:23:36 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit



On 03/10/17 21:13, Jose Perez Carranza wrote:
> 
> On 10/03/2017 09:42 AM, Joshua Lock wrote:
>> Hi Jose,
>>
>> Where will the previous log come from in standard QA use?
>>
>> I'm wondering if we should work towards (in the 2.5 cycle) another git 
>> repo in the yp-qa-* namespace to keep historical ptest results and 
>> build some tooling around that, in a similar vein to poky-buildhistory 
>> / buildhistory-diff and yp-qa-build-perf-data / oe-build-perf-report.
>>
>> Thanks,
>>
>> Joshua
> Hi Joshua
> 
> Currently,  as defined on the process of execution for pTest on QA 
> cycles [1] , we download the last execution directly from the wiki 
> created previously, here is an archive of the pTest executions [2]. The 
> proposal of creating a separate repo to handle the results is great, are 
> you able to raise a bug with the details of this proposal and assign it 
> to me hence I can check with the team who can manage that implementation.

Thanks José, I've filed:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12181

Joshua

