Return-Path: <anuj.mittal@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB245E0093B; Mon, 27 Aug 2018 18:42:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [134.134.136.31 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0302BE0090C
	for <yocto@yoctoproject.org>; Mon, 27 Aug 2018 18:42:10 -0700 (PDT)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	27 Aug 2018 18:42:09 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.53,297,1531810800"; d="scan'208";a="85463250"
Received: from anmitta2-mobl1.png.intel.com (HELO [10.221.20.116])
	([10.221.20.116])
	by orsmga001.jf.intel.com with ESMTP; 27 Aug 2018 18:42:08 -0700
To: Changqing Li <changqing.li@windriver.com>, yocto@yoctoproject.org
References: <1534137742-150133-1-git-send-email-changqing.li@windriver.com>
	<d5570cbb-a327-6203-0fdb-f0056928c305@intel.com>
	<fe24cd53-dac8-9356-b306-8c6f499f2b09@windriver.com>
	<0914d820-4082-e7e4-47a4-094948a80257@intel.com>
	<99366986-beb4-0c76-f8fe-d4411e7985eb@windriver.com>
From: Anuj Mittal <anuj.mittal@intel.com>
Message-ID: <b0e4a5dc-ee03-3619-9c1c-54ac461d882a@intel.com>
Date: Tue, 28 Aug 2018 09:42:08 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <99366986-beb4-0c76-f8fe-d4411e7985eb@windriver.com>
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
X-List-Received-Date: Tue, 28 Aug 2018 01:42:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit

On 08/23/2018 04:40 PM, Changqing Li wrote:
> 
> 
> On 08/14/2018 10:27 AM, Anuj Mittal wrote:
>> On 08/14/2018 09:37 AM, Changqing Li wrote:
>>> On 08/13/2018 02:35 PM, Anuj Mittal wrote:
>>>> On 08/13/2018 01:22 PM, changqing.li@windriver.com wrote:
>>>>> From: Changqing Li <changqing.li@windriver.com>
>>>>>
>>>>> original URI have been deleted(don't know why). I noticed there is
>>>>> an official libibverbs(https://git.kernel.org/pub/scm/libs/infiniband
>>>>> /libibverbs.git),
>>>> The deprecation notice seems to imply that rdma-core on github should be
>>>> used instead and that's what debian does too. Perhaps that should be
>>>> used instead?
>>>>
>>>> https://tracker.debian.org/pkg/rdma-core
>>> About you mentioned "deprecation notice " ,  I don't find it on original 
>>> github of Mellanox
>>> can you send me a link of this notice? Thanks.
>> https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git/commit/?id=1a6ab7f4c4aa048e8cf0c6cbed5935181f660bd8
>>
>> And, this:
>>
>> https://www.openfabrics.org/downloads/verbs/README.html
>>
>>> besides,  from https://tracker.debian.org/pkg/rdma-core,  I  can get the 
>>> repo is here
>>> https://github.com/linux-rdma/rdma-core,  but it is not only 
>>> libibverbs,  it is source
>>> include some other package,  I think it is not proper here.
>>>
>> If you take a look at older version of libibverbs there, you'd see the
>> code that we had. The later versions are pulling from rdma-core.
>>
>> You don't need to install everything, just the things that are needed
>> for dpdk ...
>>
> Thanks.  I checked oldest
> https://github.com/linux-rdma/rdma-core/tree/rdma-core-12/libibverbs,
> yes,  it is ported from
> https://git.kernel.org/pub/scm/libs/infiniband/libibverbs.git.
> 
> But my problem is current v19 of rdma-core/libibverbs  have big
> difference with original tar
> libibverbs-1.2.1-3.4-2.0.0.0.tar.gz  download from
> https://github.com/Mellanox/
> dpdk-dev-libibverbs/archive/libibverbs-${PV}.tar.gz,  Include code
> structure, and compile way(autotool to cmake), and others
> Actually, oldest version rdma-core-12 already have code structure, and
> compile way change.
> 
> I don't have condition to test the function of this lib and dpdk,  I can
> only  go far as build success. 
> what I worried is  upgrade with big difference without test maybe cause
> big problem.
> 
> if we don't want to use tar on
> "https://autobuilder.yocto.io/pub/sources/",  I propose who
> can test this to upgrade the SRC_URI to rdma-core/libibverbs.
> 

Thank you for checking. Can you please edit the patch to point to yocto
project mirror (downloads.yoctoproject.org/mirror/sources) for now,
include the info that it should be replaced by libibverbs from rdma-core
in commit message and send the patch to meta-intel list?

Thanks,

Anuj

