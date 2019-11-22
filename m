Received: from yocto-www.yoctoproject.org (yocto-www.yoctoproject.org [140.211.169.56])
 by mx.groups.io with SMTP id smtpd.web11.1205.1574436962305434459
 for <yocto@lists.yoctoproject.org>;
 Fri, 22 Nov 2019 07:36:02 -0800
Authentication-Results: mx.groups.io;
 dkim=missing; spf=softfail (domain: windriver.com, ip: 140.211.169.56, mailfrom: randy.macleod@windriver.com)
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6F584E00C5C; Fri, 22 Nov 2019 07:36:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: 
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at https://www.dnswl.org/,
	*      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3BCDE00BDC
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2019 07:36:00 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com [147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.2) with ESMTPS id xAMFZbIt027814
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 22 Nov 2019 07:35:37 -0800 (PST)
Received: from [172.25.44.8] (172.25.44.8) by ALA-HCA.corp.ad.wrs.com
 (147.11.189.50) with Microsoft SMTP Server id 14.3.468.0; Fri, 22 Nov 2019
 07:35:36 -0800
Subject: Re: [yocto] Memory Tests in U-Boot
To: <devendra.devadiga@iwavesystems.com>, <yocto@yoctoproject.org>
References: <26fca14f1bd94e8d285c466d4f98f731@iwavesystems.com>
From: "Randy MacLeod" <randy.macleod@windriver.com>
Message-ID: <74ffdd81-43cf-5f75-c929-a2692a684900@windriver.com>
Date: Fri, 22 Nov 2019 10:35:36 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <26fca14f1bd94e8d285c466d4f98f731@iwavesystems.com>
X-Originating-IP: [172.25.44.8]
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Language: en-CA
Content-Transfer-Encoding: 7bit

On 11/19/19 7:28 AM, devendra.devadiga@iwavesystems.com wrote:
> Hi,
> 
> In U-Boot I found some generic memory tests commands like mtest and post 
> tests. But I need complete DDR4 memory test with below algorithms:
> 
> * Checkerboard Test
> * March C- Test
> * Neighborhood Pattern Sensitive Fault
> 
> Can I get any reference code for these algorithms in U-Boot ?
> Implementation for these algorithms available in any of U-Boot version ?

I don't know if any of the (too many) versions of u-boot have that
feature. If you are willing to test from userspace, there is memtester:

https://layers.openembedded.org/layerindex/recipe/863/

I don't think it has all of the tests you asked for but
it would be good if you could take a look and report back here
for those interested.

Here's a test run that a web search returned:
https://www.lightsoftai.com/?p=113


Also, the stress-ng has some memory tests including one that tests
neighbour sensitivity:
   https://layers.openembedded.org/layerindex/recipe/104982/

man stress-ng:

galpat-0

galloping  pattern  zeros. This sets all bits to 0 and flips just 1
in 4096 bits to 1. It then checks to see  if the 1s are pulled down
to 0 by their neighbours or of the neighbours have been pulled up
to 1.

Good luck and please let us know what you find,

../Randy

> 
> Thanks and Regards,
> Devendra


-- 
# Randy MacLeod
# Wind River Linux
