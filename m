Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AD793E0049F; Tue, 17 Jul 2018 07:48:18 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 695E9E0049F;
	Tue, 17 Jul 2018 07:48:16 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail5.wrs.com (8.15.2/8.15.2) with ESMTPS id w6HEmFvC019775
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Tue, 17 Jul 2018 07:48:15 -0700
Received: from [128.224.20.61] (128.224.20.61) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Tue, 17 Jul 2018 07:48:14 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<fb724cc6-0424-21e6-614f-abc45f1eb680@windriver.com>
	<2410950.gK5fZyVSBj@localhost.localdomain>
	<4442632.9cThEXArIQ@localhost.localdomain>
From: Konrad Scherer <Konrad.Scherer@windriver.com>
Message-ID: <29e40b67-ec40-90ba-f454-aa66034dad71@windriver.com>
Date: Tue, 17 Jul 2018 10:48:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <4442632.9cThEXArIQ@localhost.localdomain>
X-Originating-IP: [128.224.20.61]
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
X-List-Received-Date: Tue, 17 Jul 2018 14:48:18 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 07/17/2018 06:16 AM, Paul Eggleton wrote:
> On Monday, 16 July 2018 10:16:55 PM CEST Paul Eggleton wrote:
>> On Monday, 16 July 2018 8:24:53 PM CEST Konrad Scherer wrote:
>>> I recently noticed that if gcc is removed in the 'apt-get purge' step,
>>> the bitbake sanity checker will fail due to missing 'gcc' when doing a
>>> layer update.
>>
>> Hmm, well that's a different problem - those sanity checks shouldn't be
>> running. We don't need those tools since we're not building anything. I will
>> have a look into this.
> 
> I was wrong - I remembered that we explicitly set HOSTTOOLS = "gcc" in our own
> conf/local.conf because there are other places in the metadata where we check
> for gcc which we do not override, and thus it's expected to be there. I've
> fixed and pushed the branch again, thanks for pointing out the issue (this
> time I actually tested running an update ;).

I am also guilty of not running a full update before I sent the last 
patch. I leave on vacation tomorrow and will work on a docker-compose 
setup when I get back.

Have a great summer!

-- 
Konrad Scherer, MTS, Linux Products Group, Wind River

