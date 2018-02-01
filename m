Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15DD0E00E41; Wed, 31 Jan 2018 20:59:33 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 046B1E00D32
	for <yocto@yoctoproject.org>; Wed, 31 Jan 2018 20:59:31 -0800 (PST)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w114xPJU005452
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 31 Jan 2018 20:59:28 -0800
Received: from localhost.localdomain (128.224.163.240) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 31 Jan 2018 20:59:23 -0800
To: <yocto@yoctoproject.org>, <paul.eggleton@linux.intel.com>
References: <cover.1514957220.git.liezhi.yang@windriver.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <6b4cd6e2-0680-eac7-3f59-529d8ed77db8@windriver.com>
Date: Thu, 1 Feb 2018 12:59:42 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <cover.1514957220.git.liezhi.yang@windriver.com>
Subject: Re: [layerindex-web][PATCH 0/5] update.py: performance improve and 2 fixes
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
X-List-Received-Date: Thu, 01 Feb 2018 04:59:33 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

Any comments, please ?

// Robert

On 01/03/2018 01:42 PM, Robert Yang wrote:
> Hi Paul,
> 
> This email contains two parts:
> - The first 2 are bug fixes
> - The other 3 are performance improvements, I have 124 layers,
>    the "update.py -b <branch>" needs about 9m20s to finish the running when everything is
>    update, and we have several branches, we need them to run in periodically
>    (e.g., per 30 mins, the short the better), so one branch 9m20s is really a problem.
>    Only about 1m43s are needed with these improvements when set PARALLEL_JOBS to 10:
>    update.py: fetch repos parallelly # Saved 2 mins
>    update_layer.py: use it as a module # Saved 5 mins
>    update_layer.py: only call init_parser when needed # Saved 1 min
> 
> // Robert
> 
> The following changes since commit fa0b01082fb0596959841e95af8c516ae3f267a7:
> 
>    admin: fix dependency display and search (2017-12-21 16:14:17 +1300)
> 
> are available in the git repository at:
> 
>    git://git.pokylinux.org/poky-contrib rbt/LI
>    http://git.pokylinux.org/cgit.cgi//log/?h=rbt/LI
> 
> Robert Yang (5):
>    utils.py: fix remove obsolete dependencies
>    update.py: make sure oe-core is fetched
>    update.py: fetch repos parallelly
>    update_layer.py: use it as a module
>    update_layer.py: only call init_parser when needed
> 
>   layerindex/update.py       | 176 +++++++++++++++++++++++----------------------
>   layerindex/update_layer.py | 146 +++++++++++--------------------------
>   layerindex/utils.py        |   6 +-
>   settings.py                |   2 +
>   4 files changed, 137 insertions(+), 193 deletions(-)
> 

