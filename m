Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D05BE00DA8; Tue,  2 Jan 2018 21:24:07 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5190E00D86
	for <yocto@yoctoproject.org>; Tue,  2 Jan 2018 21:24:05 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w035O44S012766
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Tue, 2 Jan 2018 21:24:04 -0800
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Tue, 2 Jan 2018 21:24:03 -0800
To: <paul.eggleton@linux.intel.com>, <yocto@yoctoproject.org>
References: <cover.1514379984.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <89b00cdd-c8eb-7178-f22c-35a42942ae4e@windriver.com>
Date: Wed, 3 Jan 2018 13:23:57 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <cover.1514379984.git.liezhi.yang@windriver.com>
Subject: Re: [RFC PATCH 0/1] update.py: fetch repos parallelly
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
X-List-Received-Date: Wed, 03 Jan 2018 05:24:07 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

On 12/27/2017 09:23 PM, Robert Yang wrote:
> Hi Paul,
> 
> We have 124 layers, the "update.py  -b <branch>" costs about 10 minutes to
> finish the update for one branch, and we need update several branches periodly,
> which is really a little slow. So I'd like to make it can run parally, here
> are some thoughts about it:
> 1) Make fetch can run parallelly, this is easy to do, and safe enough as the
>     patches does
> 2) Make recipeparse can parse layers parallelly, we may need split
>     update_layer.py into two parts:
>     - The one which only does recipeparse, this costs a lot of time, and can be
>       parallell.
>     - The one which writes to database (can't be parallel, and doesn't have to)
>

I found that there is an easy way to improve the performance, just use
update_layer.py as a module rather than an program can save a lot of time,
we can use multiprocessing.Process() to call the function to put it in a
subprocess, and remove bb modules when switch branches since it may not
be compatible, please see next email for details, it can reduce time from
9m20s to 1m43s for 124 layers when everything is up to date totally.

// Robert

> I will work on it if no objections.
> 
> // Robert
> 
> The following changes since commit fa0b01082fb0596959841e95af8c516ae3f267a7:
> 
>    admin: fix dependency display and search (2017-12-21 16:14:17 +1300)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib rbt/layerindex_parallel
>    http://git.pokylinux.org/cgit.cgi//log/?h=rbt/layerindex_parallel
> 
> Robert Yang (1):
>    update.py: fetch repos parallelly
> 
>   layerindex/update.py | 47 ++++++++++++++++++++++++++++++++++-------------
>   settings.py          |  2 ++
>   2 files changed, 36 insertions(+), 13 deletions(-)
> 

