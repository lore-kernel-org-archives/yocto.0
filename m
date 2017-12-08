Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 19913E00D7E; Thu,  7 Dec 2017 18:02:38 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADC3FE00D75
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 18:02:37 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vB822Z1x021546
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Dec 2017 18:02:36 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 7 Dec 2017 18:02:29 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	<yocto@yoctoproject.org>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<332375201106c4f2fed6a89f008f0aac0a396908.1512630627.git.liezhi.yang@windriver.com>
	<2f16986a-80a0-6101-0c30-c6a91c23c91d@linux.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <47540c7a-4297-d1e4-fc22-52b7dd0ab746@windriver.com>
Date: Fri, 8 Dec 2017 10:02:02 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <2f16986a-80a0-6101-0c30-c6a91c23c91d@linux.intel.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 02:02:38 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/07/2017 09:05 PM, Alexander Kanavin wrote:
> On 12/07/2017 09:37 AM, Robert Yang wrote:
>>    -f, --apply-failed    Apply failed patch in the repo after upgrade is done
>>
>> And add "FAILED:" in subject when failed. So that the user can go on
>> working based on the commit.
> 
> AUH will simple leave all commits in the repo, succeessful and failed. Even 
> successful upgrades may need further work before they can be submitted. It's 
> useful to mark failed ones as problematic though, so this change can be 
> partially taken.

Please see my reply to 8/12, the commit will be removed by the next recipe's
run when upgrade multiple recipes:

$ auh less git

less's commit will be removed by git's run.

// Robert

> 
> 
> Alex
> 

