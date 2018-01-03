Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3697FE00DA9; Wed,  3 Jan 2018 02:48:29 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C5D7E00D86
	for <yocto@yoctoproject.org>; Wed,  3 Jan 2018 02:48:27 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w03AmQB8019675
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Wed, 3 Jan 2018 02:48:26 -0800
Received: from localhost.corp.ad.wrs.com (128.224.162.229) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.40) with Microsoft SMTP Server id
	14.3.361.1; Wed, 3 Jan 2018 02:48:26 -0800
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1514379984.git.liezhi.yang@windriver.com>
	<89b00cdd-c8eb-7178-f22c-35a42942ae4e@windriver.com>
	<1562929.L59YpNj4qC@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <ee4d593f-8701-bf8b-a909-170f1baa0f94@windriver.com>
Date: Wed, 3 Jan 2018 18:48:44 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.5.0
MIME-Version: 1.0
In-Reply-To: <1562929.L59YpNj4qC@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Wed, 03 Jan 2018 10:48:29 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 01/03/2018 06:15 PM, Paul Eggleton wrote:
> Hi Robert,
> 
> On Wednesday, 3 January 2018 6:23:57 PM NZDT Robert Yang wrote:
>> On 12/27/2017 09:23 PM, Robert Yang wrote:
>>> We have 124 layers, the "update.py  -b <branch>" costs about 10 minutes to
>>> finish the update for one branch, and we need update several branches
>>> periodly, which is really a little slow. So I'd like to make it can run
>>> parally, here are some thoughts about it:
>>> 1) Make fetch can run parallelly, this is easy to do, and safe enough as
>>> the   patches does
>>> 2) Make recipeparse can parse layers parallelly, we may need split
>>>      update_layer.py into two parts:
>>>      - The one which only does recipeparse, this costs a lot of time, and
>>>      can be  parallell.
>>>      - The one which writes to database (can't be parallel, and doesn't
>>>      have to)
>>>
>>
>> I found that there is an easy way to improve the performance, just use
>> update_layer.py as a module rather than an program can save a lot of time,
>> we can use multiprocessing.Process() to call the function to put it in a
>> subprocess, and remove bb modules when switch branches since it may not
>> be compatible, please see next email for details, it can reduce time from
>> 9m20s to 1m43s for 124 layers when everything is up to date totally.
> 
> OK, but:
> 
> 1) Does this work across python 2 and 3?

Sorry, does it still needs support python2 ? My oldest bitbake only supported
python3, so I didn't test it with python 2 since bitbake would raise the error:

$ /usr/bin/python ./update.py -b <branch>

   File "/workspace1/lyang1/layers-fetched/bitbake/lib/bb/__init__.py", line 28, 
in <module>
     raise RuntimeError("Sorry, python 3.4.0 or later is required for this 
version of bitbake")

> 
> 2) Are you 100% sure that this clears out the memory of anything that happens
> to get loaded? One of the issues we used to see with the earlier single
> program structure was "corruption" of the python variable/module space; the
> current fully separate processes completely avoid that.

Yes, I'm sure, "del sys.modules[name]" can unload the modules when child
process is terminated.

What I met before was tinfoil can't be unloaded, then there would be errors
when switch from old branch (YP 2.2) to new one (YP 2.4), del sys.modules[name]
can fix the problem.

// Robert

> 
> Cheers,
> Paul
> 

