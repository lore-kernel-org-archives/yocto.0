Return-Path: <Liezhi.Yang@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4461E009AC; Wed, 18 Apr 2018 23:43:22 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4764E00756
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2018 23:43:21 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com ([147.11.189.41])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w3J6hKbM022996
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 18 Apr 2018 23:43:20 -0700 (PDT)
Received: from localhost.corp.ad.wrs.com (128.224.163.240) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.3.361.1; Wed, 18 Apr 2018 23:43:19 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <cover.1524049072.git.liezhi.yang@windriver.com>
	<6deae428d43ea4bbe0146bf59aa7d247f6c0f80b.1524049072.git.liezhi.yang@windriver.com>
	<1606711.kRkuylaPko@peggleto-mobl.ger.corp.intel.com>
From: Robert Yang <liezhi.yang@windriver.com>
Message-ID: <716b7370-2299-785f-4d39-9f1a4b2163a0@windriver.com>
Date: Thu, 19 Apr 2018 14:45:17 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <1606711.kRkuylaPko@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 4/4] update_layer.py: move layer validation to update.py (Performance improve)
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
X-List-Received-Date: Thu, 19 Apr 2018 06:43:22 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi Paul,

On 04/19/2018 04:55 AM, Paul Eggleton wrote:
> On Wednesday, 18 April 2018 11:04:33 PM NZST Robert Yang wrote:
>> The utils.setup_django() costs a lot of time, but both update.py and
>> update_layer.py calls it, so move layer validation from update_layer.py to
>> update.py to avoid calling update_layer.py when possible can save a lot of
>> time.
> 
> Unfortunately I still can't merge this, as mentioned earlier it breaks
> handling older python 2-bound releases.

I think you're talking about the one that I sent a few months ago, but this
one is a completely new patch, that one moved tinfoil into update.py which
broke python2, but this patch doesn't, it doesn't touch anything about tinfo,
so it works when I switch from YP 2.0 -> 2.2 -> 2.4, and vice visa.

// Robert

> 
> Cheers,
> Paul
> 

