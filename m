Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 23756E00D6B; Mon, 18 Dec 2017 23:20:51 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A3CF3E00D67
	for <yocto@yoctoproject.org>; Mon, 18 Dec 2017 23:20:50 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBJ7Kn9O023175
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 18 Dec 2017 23:20:49 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Mon, 18 Dec 2017 23:20:48 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	<yocto@yoctoproject.org>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
	<b1f0b049-b78e-4009-20ac-979b82081b4e@linux.intel.com>
	<d8a9adca-7374-64da-8613-059034082943@windriver.com>
	<4af82364-f125-e6fd-ab12-8dd3a9f0dcbc@windriver.com>
	<91939990-5880-aba7-7ec6-7d24809694aa@linux.intel.com>
	<91a7f9ef-b0c2-68c5-ad8f-07309a3a9585@windriver.com>
	<9c635c45-b01a-3896-ad89-34b7ded040f6@linux.intel.com>
	<fb02ebb5-ba03-aab6-da5d-1a1194001edb@windriver.com>
	<f625cfd2-4f41-c287-284a-25a8469922f6@linux.intel.com>
	<6accc7dc-76b0-e132-40de-40ebe32c72e6@windriver.com>
	<95063787-5c17-3059-07cd-623e96273073@linux.intel.com>
	<01e7cd60-6e6b-f22f-00e5-cd28268c9486@linux.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <29769599-5827-73af-c764-84fffd1297d0@windriver.com>
Date: Tue, 19 Dec 2017 15:20:10 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <01e7cd60-6e6b-f22f-00e5-cd28268c9486@linux.intel.com>
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
X-List-Received-Date: Tue, 19 Dec 2017 07:20:51 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Alexander,

Thank you very much, I will try it later:-).

// Robert

On 12/15/2017 09:35 PM, Alexander Kanavin wrote:
> On 12/14/2017 06:38 PM, Alexander Kanavin wrote:
> 
>>> Got it, thanks.
>>
>> I just sent the patches to yocto@ ML and published them on github - please do 
>> try them out, and rebase your patchset on top (some of it may no longer be 
>> relevant).
> 
> I did the rebase myself, and pushed the result here - please check and feel free 
> to add anything else that you deem useful:
> 
> http://git.yoctoproject.org/cgit/cgit.cgi/auto-upgrade-helper/log/?h=devel
> 
> Alex
> 

