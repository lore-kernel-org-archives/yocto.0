Return-Path: <Konrad.Scherer@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44FF4E00D35; Thu, 12 Jul 2018 13:16:16 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8E4CE004F6;
	Thu, 12 Jul 2018 13:16:15 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com ([147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id w6CKGEBV023911
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 12 Jul 2018 13:16:14 -0700 (PDT)
Received: from [128.224.23.239] (128.224.23.239) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.3.399.0;
	Thu, 12 Jul 2018 13:16:13 -0700
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <2274431.fXWzuTuIFg@localhost.localdomain>
	<7454b0f6-57c6-5304-0108-caa804494e57@windriver.com>
	<46407905.10uWkAFYrq@localhost.localdomain>
From: Konrad Scherer <Konrad.Scherer@windriver.com>
Message-ID: <cf47aad9-6eda-46a4-20c2-24e9903fa5df@windriver.com>
Date: Thu, 12 Jul 2018 16:16:12 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <46407905.10uWkAFYrq@localhost.localdomain>
X-Originating-IP: [128.224.23.239]
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
X-List-Received-Date: Thu, 12 Jul 2018 20:16:16 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 07/12/2018 02:34 AM, Paul Eggleton wrote:
> Hi Konrad
> 
> On Wednesday, 11 July 2018 7:03:28 PM CEST Konrad Scherer wrote:
>> I have attached a patch to reduce the layerindex-web image size further.
>> Docker image layers are like git objects and RUN commands can only hide
>> files, not remove them once they have been committed. The pip upgrade
>> caused the following 'pip install' to fail and was removed.
> 
> Right, overall you don't save any storage space with separate stages - but the
> downside of merging these is that you lose the ability to incrementally update
> the container within those stages; any time anything before changes the whole
> block will need to be re-run. Having said that we still have the separation
> between requirements.txt and everything else which is probably sufficient.
> 
> Oddly I did not see a failure from pip when I built this yesterday, but I
> guess it's probably not strictly necessary to upgrade it anyway.
> 
> I've pushed your patch to the paule/dockerfixes branch.

Thanks, I just noticed that the image doesn't contain git. Was this 
deliberate or an oversight?

>> I recommend docker-compose because much of the information in
>> docker/README can be captured in a compose yaml file. It handles the
>> network setup and makes managing shared volumes much simpler.
> 
> Right, we'd just need to make sure everything we now have in the README is
> covered by the compose file (everything that's practical to cover, anyway).

I am heading out on vacation soon. I will rework my docker-compose 
configuration with the new image and make some documentation when I get 
back.

-- 
Konrad Scherer, MTS, Linux Products Group, Wind River

