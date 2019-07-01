Return-Path: <Zhe.He@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 07483E00DD9; Sun, 30 Jun 2019 20:01:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	https://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40BB4E00DEB
	for <yocto@yoctoproject.org>; Sun, 30 Jun 2019 20:01:34 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id x6130jIB022807
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 30 Jun 2019 20:01:13 -0700
Received: from [128.224.162.221] (128.224.162.221) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.439.0;
	Sun, 30 Jun 2019 20:00:55 -0700
To: Anuj Mittal <anuj.mittal@intel.com>, <yocto@yoctoproject.org>
References: <1561455820-9421-1-git-send-email-zhe.he@windriver.com>
	<45fd1791-5a3e-9288-778d-c4418167797c@intel.com>
From: He Zhe <zhe.he@windriver.com>
Message-ID: <db007c98-ab03-9ed6-86c6-61e890768ab7@windriver.com>
Date: Mon, 1 Jul 2019 11:00:53 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <45fd1791-5a3e-9288-778d-c4418167797c@intel.com>
X-Originating-IP: [128.224.162.221]
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
X-List-Received-Date: Mon, 01 Jul 2019 03:01:36 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Content-Language: en-US



On 7/1/19 6:46 AM, Anuj Mittal wrote:
> On 25-Jun-19 05:43 PM, zhe.he@windriver.com wrote:
>> From: He Zhe <zhe.he@windriver.com>
>>
>> We have already had 18.11 and 18.05 is not a stable version.
>>
>> Signed-off-by: He Zhe <zhe.he@windriver.com>
>> ---
>>   recipes-extended/dpdk/dpdk_18.05.bb | 15 ---------------
>>   1 file changed, 15 deletions(-)
>>   delete mode 100644 recipes-extended/dpdk/dpdk_18.05.bb
>
> Can you please also remove the patches that are specific to this version?

OK. v2 sent.

Zhe

>
> Thanks,
>
> Anuj
>


