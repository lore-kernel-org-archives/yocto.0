Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 52B64E00C0F; Tue, 12 Dec 2017 17:16:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA01FE008FB
	for <yocto@yoctoproject.org>; Tue, 12 Dec 2017 17:16:53 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vBD1GppD018764
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 12 Dec 2017 17:16:51 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Tue, 12 Dec 2017 17:16:45 -0800
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
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <fb02ebb5-ba03-aab6-da5d-1a1194001edb@windriver.com>
Date: Wed, 13 Dec 2017 09:16:13 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <9c635c45-b01a-3896-ad89-34b7ded040f6@linux.intel.com>
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
X-List-Received-Date: Wed, 13 Dec 2017 01:16:54 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 12/12/2017 08:26 PM, Alexander Kanavin wrote:
> On 12/11/2017 08:13 AM, Robert Yang wrote:
> 
>>> I think it's a simpler and easier to understand approach. Yes, this means 
>>> that an updated recipe that is close to the root of dependency tree can cause 
>>> a cascade of build failures (e.g. glibc), but the update commits for 
>>> everything else will still be created, and the maintainer can easily revert 
>>> the failing updates, and re-run the build. What you think?
>>
>> Yes, since glibc would causes others failed to build, so I removed the commited
>> during upgrading, and then apply it back, I think that this is more helpful than
>> leave the failed commit there and causes others failed.
> 
> How about simply issuing 'git revert' after a build has failed? That's easier to 
> implement than rearranging the order of commits, and the commit message can 
> include a link to the build failure logs.

Sounds reasonable to me, I will update the patch.

// Robert

> 
> Alex
> 

