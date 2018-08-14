Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C2CE009C2; Mon, 13 Aug 2018 19:27:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.55.52.120 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DCCAEE00948
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 19:27:04 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
	by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	13 Aug 2018 19:27:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,236,1531810800"; d="scan'208";a="248607503"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.21.0])
	([10.221.21.0])
	by orsmga005.jf.intel.com with ESMTP; 13 Aug 2018 19:27:03 -0700
To: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org
References: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
	<d5570cbb-a327-6203-0fdb-f0056928c305@intel.com>
	<fe24cd53-dac8-9356-b306-8c6f499f2b09@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <0914d820-4082-e7e4-47a4-094948a80257@intel.com>
Date: Tue, 14 Aug 2018 10:27:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <fe24cd53-dac8-9356-b306-8c6f499f2b09@windriver.com>
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
X-List-Received-Date: Tue, 14 Aug 2018 02:27:05 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 08/14/2018 09:37 AM, Changqing Li wrote:
> 
> 
> On 08/13/2018 02:35 PM, Anuj Mittal wrote:
>> On 08/13/2018 01:22 PM, changqing.li@windriver.com wrote:
>>> From: Changqing Li <changqing.li@windriver.com>
>>>
>>> original URI have been deleted(don't know why). I noticed there is
>>> an official libibverbs(https://git.kernel.org/pub/scm/libs/infiniband
>>> /libibverbs.git),
>> The deprecation notice seems to imply that rdma-core on github should be
>> used instead and that's what debian does too. Perhaps that should be
>> used instead?
>>
>> https://tracker.debian.org/pkg/rdma-core
> 
> About you mentioned "deprecation notice " ,  I don't find it on original 
> github of Mellanox
> can you send me a link of this notice? Thanks.

https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git/commit/?id=1a6ab7f4c4aa048e8cf0c6cbed5935181f660bd8

And, this:

https://www.openfabrics.org/downloads/verbs/README.html

> 
> besides,  from https://tracker.debian.org/pkg/rdma-core,  I  can get the 
> repo is here
> https://github.com/linux-rdma/rdma-core,  but it is not only 
> libibverbs,  it is source
> include some other package,  I think it is not proper here.
> 

If you take a look at older version of libibverbs there, you'd see the
code that we had. The later versions are pulling from rdma-core.

You don't need to install everything, just the things that are needed
for dpdk ...

