Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4EAC9E00CA1; Mon, 16 Jul 2018 11:24:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=unavailable version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [192.103.53.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail5.wrs.com (mail5.windriver.com [192.103.53.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B7A79E009AC;
	Mon, 16 Jul 2018 11:24:56 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6GIOtSj021358
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 16 Jul 2018 11:24:55 -0700
Received: from [128.224.20.36] (128.224.20.36) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Mon, 16 Jul 2018 11:24:54 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<46407905.10uWkAFYrq@localhost.localdomain>
	<cf47aad9-6eda-46a4-20c2-24e9903fa5df@windriver.com>
	<14728108.V4DRTVBihh@localhost.localdomain>
From: Konrad Scherer <Konrad.Scherer@windriver.com>
Message-ID: <fb724cc6-0424-21e6-614f-abc45f1eb680@windriver.com>
Date: Mon, 16 Jul 2018 14:24:53 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <14728108.V4DRTVBihh@localhost.localdomain>
X-Originating-IP: [128.224.20.36]
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] RFC: layer index docker fixes
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
X-List-Received-Date: Mon, 16 Jul 2018 18:24:57 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 07/13/2018 03:29 AM, Paul Eggleton wrote:
> On Thursday, 12 July 2018 10:16:12 PM CEST you wrote:
>> I just noticed that the image doesn't contain git. Was this
>> deliberate or an oversight?
> 
> Ah, no, it wasn't deliberate - perhaps it was there earlier with buildpack-
> deps? It doesn't appear that we ever explicitly had it in there. I've added it
> and pushed the branch again.

I recently noticed that if gcc is removed in the 'apt-get purge' step, 
the bitbake sanity checker will fail due to missing 'gcc' when doing a 
layer update.

-- 
Konrad Scherer, MTS, Linux Products Group, Wind River

