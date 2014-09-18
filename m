Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DDD6E00855; Thu, 18 Sep 2014 13:06:58 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5B85DE00781
	for <yocto@yoctoproject.org>; Thu, 18 Sep 2014 13:06:50 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.9/8.14.5) with ESMTP id s8IK6dkj019055
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 18 Sep 2014 13:06:40 -0700 (PDT)
Received: from msp-dhcp29.wrs.com (172.25.34.29) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.174.1;
	Thu, 18 Sep 2014 13:06:39 -0700
Message-ID: <541B3B4E.30300@windriver.com>
Date: Thu, 18 Sep 2014 15:06:38 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Joe MacDonald <Joe_MacDonald@mentor.com>, <xin.ouyang@windriver.com>,
	<flihp@twobit.us>
References: <20140918195737.GB6322@mentor.com>
In-Reply-To: <20140918195737.GB6322@mentor.com>
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
X-List-Received-Date: Thu, 18 Sep 2014 20:06:58 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 9/18/14, 2:57 PM, Joe MacDonald wrote:
> Hey all,
>
> As we'd all discussed at different times in the past, we're well behind
> the curve on a refpolicy update for meta-selinux.  With the 1.7 release
> of Yocto coming up, we thought it was important to update the policy
> sooner rather than later, so I'm starting that work now.
>
> It's being done in master-next and currently the only recipe that has
> been updated is the -mls one.  Over the next few days I'll be updating
> the others, then working through testing and trying to make sure they're
> all sane.  It would help me out immensely if you had time to kick the
> tires as well on your favourite policy variant.
>
> Depending on how long this takes, the next step is updating the
> userspace.  Fortunately this time around, though, the current userspace
> is still officially up to the task of managing the current policy, so a
> full update isn't strictly required.  It'd be a really nice thing to
> have done, though.  :-)
>

I spoke with Joe about this work this morning, and I think master-next is the 
right place to do this.  So if you have immediate bug fixes, we'll try to apply 
them to both master and master-next.  And then continue to use master-next to 
stage the policy changes (or anything else that requires a bit more 'soak' time) 
before merging.

I'd like to try to get 'master' of meta-selinux fully synced and working with 
the 'master' of Poky around the time of Poky's release (within a week or so of 
the release at least)..  then we can branch and let the master continue to flow 
with any "new" work.  (It's a plan, I'm not sure if it'll happen or not.)

If anyone has any concerns let me know.. otherwise I think this is the plan!

--Mark

