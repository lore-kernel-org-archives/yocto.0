Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ED1C1E00BD0; Thu, 22 Jun 2017 20:03:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A421E00BAF
	for <yocto@yoctoproject.org>; Thu, 22 Jun 2017 20:03:12 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id v5N33Btq012009
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=OK);
	Thu, 22 Jun 2017 20:03:12 -0700
Received: from [128.224.162.160] (128.224.162.160) by ALA-HCB.corp.ad.wrs.com
	(147.11.189.41) with Microsoft SMTP Server id 14.3.294.0;
	Thu, 22 Jun 2017 20:03:11 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1497320961.git.liezhi.yang@windriver.com>
	<27239647.GeoKIh8NCA@peggleto-mobl.ger.corp.intel.com>
	<d81b63c1-cd74-0c1c-eed5-443ba3e9e4de@windriver.com>
	<2617411.3bLWJbXsiM@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <b03dc586-1a36-291a-2d12-0298a886c7c5@windriver.com>
Date: Fri, 23 Jun 2017 11:03:09 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.2.0
MIME-Version: 1.0
In-Reply-To: <2617411.3bLWJbXsiM@peggleto-mobl.ger.corp.intel.com>
Cc: Konrad.Scherer@windriver.com, yocto@yoctoproject.org
Subject: Re: [PATCH V4 03/10] utils.py: remove obsolete dependencies
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
X-List-Received-Date: Fri, 23 Jun 2017 03:03:14 -0000
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit



On 06/22/2017 07:54 PM, Paul Eggleton wrote:
> On Thursday, 22 June 2017 12:47:31 PM CEST Robert Yang wrote:
>> On 06/21/2017 05:06 PM, Paul Eggleton wrote:
>>> So I do see the need to clear out old dependency values when your list of
>>> dependencies is coming entirely from LAYERDEPENDS, however if you have only
>>> manually added dependencies and LAYERDEPENDS is not complete (as is often the
>>> case in the OE layer index), will this automatically remove those? If so I
>>
>> The dependencies will be removed if it is not in conf/layer.conf.
>>
>>> think we're going to have to come up with some mechanism to avoid that.
>>> Probably the easiest one would be to avoid touching the dependencies unless
>>> LAYERDEPENDS actually changes. Of course if that means we're going to store
>>> the previous LAYERDEPENDS value somewhere to compare to, we'd need to avoid it
>>> triggering initially when none of those values are set.
>>
>> Why not fix conf/layer.conf rather than fix it from database ? If
>> conf/layer.conf is wrong, we would meet problems elsewhere.
>
> Up until now it hasn't caused any issues other than not getting an error
> up front from bitbake when a dependencies are missing, so it can easily go
> unnoticed (particularly when users follow manual instructions or use existing
> configurations rather than an automated tool that pays attention to
> LAYERDEPENDS).
>
>> The database
>> should obey local.conf when mismatches, otherwise, this would confuse
>> users a lot when they want to update LAYERDEPENDS.
>
> As I indicated, I agree that if LAYERDEPENDS gets updated then the
> dependencies in the database should get updated. My concern is updating
> them if LAYERDEPENDS has not changed and it simply happens to have
> a difference to what is in the database (most importantly if it has less
> dependencies specified).
>
>> I'm glad to fix oe-classic's LAYERDEPENDS issues if they are wrong.
>
> Well, it's not so much OE-Classic as every single layer in the index,
> maintained by a number of different maintainers. I agree in the long term we
> do want people to fix their dependencies. The trouble is we don't
> even know the size of the problem at the moment, and if it's widespread
> then we'll end up dropping dependencies potentially leading to errors during
> parsing.
>
> How about this - could we start with a setting in the configuration that
> specifies that dependencies should be updated automatically, and if not
> set just gives a warning if the dependencies are not the same? We can
> then decide how to handle it when we see the warnings we're getting in
> the OE index.

Sounds good to me, I will fix it in V5.

// Robert

>
> Cheers,
> Paul
>

