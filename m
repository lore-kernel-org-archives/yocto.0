Return-Path: <Changqing.Li@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22200E0096A; Mon, 13 Aug 2018 18:37:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at http://www.dnswl.org/,
	*      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A6FB5E006D8
	for <yocto@yoctoproject.org>; Mon, 13 Aug 2018 18:37:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id w7E1bESe013002
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 13 Aug 2018 18:37:14 -0700 (PDT)
Received: from [128.224.162.228] (128.224.162.228) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Mon, 13 Aug 2018 18:37:13 -0700
To: Anuj Mittal <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
References: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
	<d5570cbb-a327-6203-0fdb-f0056928c305@intel.com>
From: Changqing Li <changqing.li@windriver.com>
Message-ID: <fe24cd53-dac8-9356-b306-8c6f499f2b09@windriver.com>
Date: Tue, 14 Aug 2018 09:37:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <d5570cbb-a327-6203-0fdb-f0056928c305@intel.com>
X-Originating-IP: [128.224.162.228]
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
X-List-Received-Date: Tue, 14 Aug 2018 01:37:17 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 08/13/2018 02:35 PM, Anuj Mittal wrote:
> On 08/13/2018 01:22 PM, changqing.li@windriver.com wrote:
>> From: Changqing Li <changqing.li@windriver.com>
>>
>> original URI have been deleted(don't know why). I noticed there is
>> an official libibverbs(https://git.kernel.org/pub/scm/libs/infiniband
>> /libibverbs.git),
> The deprecation notice seems to imply that rdma-core on github should be
> used instead and that's what debian does too. Perhaps that should be
> used instead?
>
> https://tracker.debian.org/pkg/rdma-core

About you mentioned "deprecation notice " ,  I don't find it on original 
github of Mellanox
can you send me a link of this notice? Thanks.

besides,  from https://tracker.debian.org/pkg/rdma-core,  I  can get the 
repo is here
https://github.com/linux-rdma/rdma-core,  but it is not only 
libibverbs,  it is source
include some other package,  I think it is not proper here.

//Sandy
>> but there are big differences with original one.
>> I don't have condition to test this now, I can only go as far as builds
>> OK. so I select use tar.gz on yocto to make sure fetch can success and
>> original function not be affected.
>>
>> I also noticed a project seems like Mellanox libibverbs,
>> https://github.com/gpudirect/libibverbs, but it don't have any
>> official release now.
>>
>> Hope in the future, we can switch to the offcial libibverbs, or
>> the new Mellanox libibverbs. but now, we use this yocto tar.gz
>> as a workaround to make it at least work now.
>

-- 
BRs

Sandy(Li Changqing)
+861084778653


