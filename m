Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 786FDE00D7E; Thu,  7 Dec 2017 18:01:01 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8265E00D75
	for <yocto@yoctoproject.org>; Thu,  7 Dec 2017 18:01:00 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id vB820xHh025009
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 7 Dec 2017 18:00:59 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Thu, 7 Dec 2017 18:00:59 -0800
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	<yocto@yoctoproject.org>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<e3cb41c1f86590e45d2cd6c253324b2bcd04e34e.1512630627.git.liezhi.yang@windriver.com>
	<b1f0b049-b78e-4009-20ac-979b82081b4e@linux.intel.com>
	<d8a9adca-7374-64da-8613-059034082943@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <4af82364-f125-e6fd-ab12-8dd3a9f0dcbc@windriver.com>
Date: Fri, 8 Dec 2017 10:00:32 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <d8a9adca-7374-64da-8613-059034082943@windriver.com>
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
X-List-Received-Date: Fri, 08 Dec 2017 02:01:01 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/08/2017 09:43 AM, Robert Yang wrote:
> Hi Alexander,
> 
> Thanks for the quick reply.
> 
> On 12/07/2017 08:58 PM, Alexander Kanavin wrote:
>> On 12/07/2017 09:37 AM, Robert Yang wrote:
>>> E.g.:
>>> $ upgradehelper.py less strace bash git
>>>
>>> The commit is removed when failed, and kept when succeed, but it would be
>>> removed when next recipe runs, so only run clean_repo once can keep the commit,
>>> which is helpful for the use
>>
>> I have removed the logic that removes commits and manipulates branches 
>> altogether. AUH will always create a commit on the current branch, even if it 
>> caused a build or testimage failure, and otherwise won't touch git at all. If 
>> the user wants further repo manipulation, they can do it with an external script
> I'm not sure, the logical *without* this patch is:
> 1) Do the commit when succeed or failed.
> 2) git format-patch
> 3) Remove the commit if failed, and leave the commit there if succeed

Sorry, "remove the comit if failed" is added by this patch, and why I did this
was because:
$ auh glibc less bash gzip bzip2

All of them will be failed to upgrade if glibc fails since others depends on
glibc, so leave a failed commit in the repo would cause troubles when upgrade
multiple recipes, so we have to remove it when failed to let others can upgrade, 
and then apply the failed commit back (if -f is specified) after all of the
recipes are done.

// Robert

> 4) The succeed commit will be removed by next recipe's run. For example:
>     $ auh less git
>     While less is succeed, git is failed, and less' commit will be cleaned
>     by git's run.
> 
> What this patch does is on step 4, don't let the next recipe's run clean
> the repo, Did I miss anything other patches, please ?
> 
> // Robert
> 
>>
>> Alex
>>

