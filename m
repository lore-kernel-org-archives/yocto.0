Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 98434E00D6B; Sun, 10 Dec 2017 22:15:12 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 208ECE00D32
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 22:15:11 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id vBB6FAwf019846
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Sun, 10 Dec 2017 22:15:10 -0800 (PST)
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Sun, 10 Dec 2017 22:15:03 -0800
To: "Burton, Ross" <ross.burton@intel.com>, Alexander Kanavin
	<alexander.kanavin@linux.intel.com>
References: <cover.1512630627.git.liezhi.yang@windriver.com>
	<348a1df0689fa954c0a8da46751bd5f9b0666b87.1512630627.git.liezhi.yang@windriver.com>
	<662dab3a-5e90-43a3-5962-07eed51bb7bc@linux.intel.com>
	<bf1a9396-7796-aabc-afc9-69b1976751ae@windriver.com>
	<20ca1f3c-d99b-089e-8806-82101fc1a6e1@linux.intel.com>
	<CAJTo0LaRAFuMxp5WYFSKT2_ziG4ZR9bu9viL7US8qPOVp7Q8Nw@mail.gmail.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <24700d85-61ad-0801-14e1-17b0bb3b7e31@windriver.com>
Date: Mon, 11 Dec 2017 14:14:33 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0LaRAFuMxp5WYFSKT2_ziG4ZR9bu9viL7US8qPOVp7Q8Nw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
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
X-List-Received-Date: Mon, 11 Dec 2017 06:15:12 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 12/09/2017 12:20 AM, Burton, Ross wrote:
> On 8 December 2017 at 14:07, Alexander Kanavin 
> <alexander.kanavin@linux.intel.com <mailto:alexander.kanavin@linux.intel.com>> 
> wrote:
> 
>     On 12/08/2017 03:51 AM, Robert Yang wrote:
> 
>             I'm not sure about this one. Commits shouldn't be created
>             automatically on a person's behalf and then also signed-off - I'd
>             say you need to first look at them.
> 
> 
>         IMHO, Auh is a helper, when user run:
>         $ auh less
> 
>         It helps create commits, should be the same as user run "git commit",
>         and the
>         user should responsible for it. Or how about add a -S option:
> 
>         -S, --SOB    Use git user as the author and add SOB.
> 
> 
>     Yeah, as long as maintainers don't send those raw commits straight to
>     mailing list, it's okay. It's rare that such an auto-created commit doesn't
>     need further work (e.g. to explain changes in patches or license, or other
>     adjustments).
> 
> 
> The lack of a SOB was intentional for exactly this reason.  No SOB means a human 
> didn't look at it *at all*/

Makes sense, so let's drop this patch.

// Robert


> 
> Ross

