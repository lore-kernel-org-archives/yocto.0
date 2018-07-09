Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65F19E00CDD; Mon,  9 Jul 2018 01:39:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9186E00BB5
	for <yocto@yoctoproject.org>; Mon,  9 Jul 2018 01:39:08 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w698d7a9006418
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 9 Jul 2018 01:39:07 -0700
Received: from [128.224.162.161] (128.224.162.161) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.399.0;
	Mon, 9 Jul 2018 01:39:06 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1531109397.git.liezhi.yang@windriver.com>
	<8be7c6c9057c9b1d461aacfde8459adeddb348d5.1531109397.git.liezhi.yang@windriver.com>
	<21268191.2cf1WCTquc@localhost.localdomain>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <c9bd7a30-d96c-043f-304a-9fe720b01e1e@windriver.com>
Date: Mon, 9 Jul 2018 16:42:28 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <21268191.2cf1WCTquc@localhost.localdomain>
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
X-List-Received-Date: Mon, 09 Jul 2018 08:39:09 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

On 07/09/2018 04:34 PM, Paul Eggleton wrote:
> Hi Robert,
> 
> On Monday, 9 July 2018 6:11:30 AM CEST Robert Yang wrote:
>> Fixed:
>> Assume there is no master branch in hello layer:
>> $ update.py -l hello -b master
>> INFO: Skipping update of layer hello - branch master doesn't exist
>>
>> This is correct since hello layer doesn't have master branch, but when --nocheckout:
>> $ update.py -l hello -b master  --nocheckout
>> [snip]
>> INFO: Sorting layers for branch mater:
>> WARNING: Cannot find required collections on branch master:
>> WARNING: hello: LAYERDEPENDS: <snip>
>>
>> This is incorrect, this patch fixed the problem, now it skips it since the
>> branch doesn't exists when --nocheckout.
> 
> This fix doesn't seem right. The intention of --nocheckout is to not check anything
> out, i.e. use whatever HEAD is in the current repository. It wouldn't be correct
> to get the commit from the origin in this case.

It still uses HEAD when nocheckout, please see the code:

# Always get origin/branchname, so it raises error when branch doesn't exist 
when nocheckout
     topcommit = repo.commit('origin/%s' % branchname)
     if options.nocheckout:
         topcommit = repo.commit('HEAD')

I just want to make sure origin/branchname is existed, and raise error when it
doesn't exist (update.py catches the error), it still uses HEAD when --nocheckout.

// Robert
> 
> Cheers,
> Paul
> 

