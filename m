Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AAE54E00E66; Mon,  9 Jul 2018 01:42:50 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C7FFE00812
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 01:42:50 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w698gmWw023297
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jul 2018 01:42:48 -0700 (PDT)
Received: from [128.224.162.161] (128.224.162.161) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 9 Jul 2018 01:42:35 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
	<8be7c6c9057c9b1d461aacfde8459adeddb348d5.1531109397.git.liezhi.yang@windriver.com>
	<21268191.2cf1WCTquc@localhost.localdomain>
	<6127064.6tErUYcu2e@localhost.localdomain>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <ee730a9c-c778-d9ca-18c6-66a3d9c09e17@windriver.com>
Date: Mon, 9 Jul 2018 16:45:58 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <6127064.6tErUYcu2e@localhost.localdomain>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web][PATCH 4/4] update.py: check whether branch existed when nocheckout
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
X-List-Received-Date: Mon, 09 Jul 2018 08:42:50 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 07/09/2018 04:36 PM, Paul Eggleton wrote:
> On Monday, 9 July 2018 10:34:07 AM CEST Paul Eggleton wrote:
>> Hi Robert,
>>
>> On Monday, 9 July 2018 6:11:30 AM CEST Robert Yang wrote:
>>> Fixed:
>>> Assume there is no master branch in hello layer:
>>> $ update.py -l hello -b master
>>> INFO: Skipping update of layer hello - branch master doesn't exist
>>>
>>> This is correct since hello layer doesn't have master branch, but when --nocheckout:
>>> $ update.py -l hello -b master  --nocheckout
>>> [snip]
>>> INFO: Sorting layers for branch mater:
>>> WARNING: Cannot find required collections on branch master:
>>> WARNING: hello: LAYERDEPENDS: <snip>
>>>
>>> This is incorrect, this patch fixed the problem, now it skips it since the
>>> branch doesn't exists when --nocheckout.
>>
>> This fix doesn't seem right. The intention of --nocheckout is to not check anything
>> out, i.e. use whatever HEAD is in the current repository. It wouldn't be correct
>> to get the commit from the origin in this case.
> 
> Actually, on a second reading of the change. It's not obvious why this is needed but I suppose the comment clarifies it.

Do I need update commit message, please ?

// Robert

> 
> Cheers,
> Paul
> 

