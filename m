Return-Path: <Randy.MacLeod@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3303BE00D54; Wed, 18 Sep 2019 15:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/, 
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB4C4E00924
	for <yocto@yoctoproject.org>; Wed, 18 Sep 2019 15:21:37 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id x8IMLZFx025876
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Sep 2019 15:21:36 -0700 (PDT)
Received: from [172.25.44.5] (172.25.44.5) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.3.468.0;
	Wed, 18 Sep 2019 15:21:34 -0700
To: <lluis.campos@northern.tech>, <yocto@yoctoproject.org>
References: <c75c2f2b9c18d12b393079d7c0fd3549f8ee4bb3.camel@northern.tech>
From: Randy MacLeod <randy.macleod@windriver.com>
Message-ID: <546fd544-f12d-8609-0df0-1f18263b13ab@windriver.com>
Date: Wed, 18 Sep 2019 18:21:33 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <c75c2f2b9c18d12b393079d7c0fd3549f8ee4bb3.camel@northern.tech>
X-Originating-IP: [172.25.44.5]
Subject: Re: warrior with recipes AUTOREV, issues (and hangs bitbake on Centos )
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
X-List-Received-Date: Wed, 18 Sep 2019 22:21:38 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

On 9/18/19 3:46 AM, lluis.campos@northern.tech wrote:
> Hello,
> 
> While updating our layers and build system for warrior, we are facing
> the exact same issue reported by Richard C Allen back in June [1].
> 
> In our case, we are using Ubuntu 16.04 for as build host.
> 
> Since then, a new release of yocto was tagged, 2.7.1, but the issue
> seems to be still present.
> 
> Any update on it? Is there more people affected by it?

Hi Lluís,

I don't see an open issue in the bugzilla but it's possible
the problem has been fixed. Can you try to reproduce it on master?
If it's broken on master and you have a reproducer then open a
defect:
   https://bugzilla.yoctoproject.org/
there's a much higher chance of getting a fix.
Bugs are reviewed every Thursday.

If it's working on master but not warrior/2.7.1 then
take a look through the commit logs for oe-core and bitbake.
If you can automate the detection (and clean-up), then you
could use poky and git bisect to find the fix.


Thanks,
../Randy

> 
> Thanks!
> 
> 
> [1]
> https://lists.yoctoproject.org/pipermail/yocto/2019-June/045738.html
> 
> 
> Lluís Campos
> Northern.Tech
> 


-- 
# Randy MacLeod
# Wind River Linux

