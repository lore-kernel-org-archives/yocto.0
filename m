Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92B7EE00D7E; Thu,  7 Dec 2017 17:52:19 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F135E00D75
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 17:52:18 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vB81qIMe024966
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Dec 2017 17:52:18 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 7 Dec 2017 17:52:06 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	<yocto@yoctoproject.org>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
	<662dab3a-5e90-43a3-5962-07eed51bb7bc@linux.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <bf1a9396-7796-aabc-afc9-69b1976751ae@windriver.com>
Date: Fri, 8 Dec 2017 09:51:39 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <662dab3a-5e90-43a3-5962-07eed51bb7bc@linux.intel.com>
Cc: paul.eggleton@linux.intel.com
Subject: Re: [PATCH 09/12] upgradehelper.py: use git user in commit when recipes are specified
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
X-List-Received-Date: Fri, 08 Dec 2017 01:52:19 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hello,

On 12/07/2017 09:02 PM, Alexander Kanavin wrote:
> On 12/07/2017 09:37 AM, Robert Yang wrote:
>> E.g.,:
>> $ upgradehelper.py less
>>
>> commit d9b551438037e105eebabbbcb2da6d8b8cae7504
>> Author: Robert Yang <liezhi.yang@windriver.com>
>> Date:   Wed Dec 6 16:38:55 2017 +0800
>>
>>      less: upgrade to 529
>>
>>      Signed-off-by: Robert Yang <liezhi.yang@windriver.com>
> 
> I'm not sure about this one. Commits shouldn't be created automatically on a 
> person's behalf and then also signed-off - I'd say you need to first look at them.

IMHO, Auh is a helper, when user run:
$ auh less

It helps create commits, should be the same as user run "git commit", and the
user should responsible for it. Or how about add a -S option:

-S, --SOB	Use git user as the author and add SOB.

// Robert

> 
> Alex
> 

