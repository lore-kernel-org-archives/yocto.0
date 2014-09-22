Return-Path: <Xin.Ouyang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AB9FE0086B; Mon, 22 Sep 2014 01:29:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0BC2E00869
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 01:29:48 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s8M8TcPs001814
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 22 Sep 2014 01:29:38 -0700 (PDT)
Received: from pascal-macbookpro.corp.ad.wrs.com (128.224.159.159) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.174.1; Mon, 22 Sep 2014 01:29:37 -0700
Message-ID: <541FDDEF.5050600@windriver.com>
Date: Mon, 22 Sep 2014 16:29:35 +0800
From: Pascal Ouyang <xin.ouyang@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>, Mark Hatle
	<mark.hatle@windriver.com>
References: <20140918195737.GB6322@mentor.com> <541B3B4E.30300@windriver.com>
	<20140919211717.GB5036@mentor.com>
In-Reply-To: <20140919211717.GB5036@mentor.com>
X-TagToolbar-Keys: D20140922162935292
Cc: yocto@yoctoproject.org
Subject: Re: [meta-selinux] refpolicy update in master-next
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
X-List-Received-Date: Mon, 22 Sep 2014 08:29:53 -0000
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit

于 14-9-20 上午5:17, Joe MacDonald 写道:
> [Re: [meta-selinux] refpolicy update in master-next] On 14.09.18 (Thu 15:06) Mark Hatle wrote:
>
>> On 9/18/14, 2:57 PM, Joe MacDonald wrote:
>>> Hey all,
>>>
>>> As we'd all discussed at different times in the past, we're well behind
>>> the curve on a refpolicy update for meta-selinux.  With the 1.7 release
>>> of Yocto coming up, we thought it was important to update the policy
>>> sooner rather than later, so I'm starting that work now.
>>>
>>> It's being done in master-next and currently the only recipe that has
>>> been updated is the -mls one.  Over the next few days I'll be updating
>>> the others, then working through testing and trying to make sure they're
>>> all sane.  It would help me out immensely if you had time to kick the
>>> tires as well on your favourite policy variant.
>>>
>>> Depending on how long this takes, the next step is updating the
>>> userspace.  Fortunately this time around, though, the current userspace
>>> is still officially up to the task of managing the current policy, so a
>>> full update isn't strictly required.  It'd be a really nice thing to
>>> have done, though.  :-)
>>>
>>
>> I spoke with Joe about this work this morning, and I think
>> master-next is the right place to do this.  So if you have immediate
>> bug fixes, we'll try to apply them to both master and master-next.
>> And then continue to use master-next to stage the policy changes (or
>> anything else that requires a bit more 'soak' time) before merging.
>>
>> I'd like to try to get 'master' of meta-selinux fully synced and
>> working with the 'master' of Poky around the time of Poky's release
>> (within a week or so of the release at least)..  then we can branch
>> and let the master continue to flow with any "new" work.  (It's a
>> plan, I'm not sure if it'll happen or not.)
>>
>> If anyone has any concerns let me know.. otherwise I think this is the plan!
>
> The plan proceeds!  :-)
>
> Anyway, so I've now updated all of the policies in refpolicy/ and I'm
> starting in on the testing.
>
> Pascal:  Can you pay particular attention to refpolicy-minimum?  The
> straight forward-port of it failed to install the unconfined module
> (obviously kind of important to r-min) due to some failure inside
> prepare_policy_store().  I started debugging it, then saw that there was
> a copy in the refpolicy-minimum recipe as well as one in
> refpolicy_common.inc.  Both of them need to be cleaned up, but they both
> appeared to be doing the same thing in slightly different ways.  Given
> that, I turfed the one from refpolicy-minimum and it looks like the
> unconfined.pp is installed properly using the version from
> refpolicy_common.  It wasn't clear looking at either the function or the
> commit log why a duplicate version of the function was placed in
> refpolicy-minimum, so please have a look to see why it was there and if
> it's still needed.

Hi Joe,

The original prepare_policy_store() has a naming bug for 
compressed_policy, and I have fixed it.
A "clear compressed_policy distro feature" commit is also pushed, as I 
have mentioned to you.

Thanks. :)

- Pascal

>
> Thanks.
>


-- 
- Pascal

