Received: from mail2.skidata.com (mail2.skidata.com [91.230.2.91])
 by mx.groups.io with SMTP id smtpd.web10.358.1578089158951329832
 for <yocto@lists.yoctoproject.org>;
 Fri, 03 Jan 2020 14:06:00 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@skidata.com header.s=selector1 header.b=da1xMyuP;
 spf=pass (domain: skidata.com, ip: 91.230.2.91, mailfrom: prvs=2645a3569=richard.leitner@skidata.com)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
  d=skidata.com; i=@skidata.com; q=dns/txt; s=selector1;
  t=1578089159; x=1609625159;
  h=subject:to:references:cc:from:message-id:date:
   mime-version:in-reply-to:content-transfer-encoding;
  bh=16zjOYjypD4DsT1P4dnvF96HjP0MKhQ9UEc1Kdz+SFo=;
  b=da1xMyuPyh3oZijxDHFO52bSW197BD36J1Mqo0SoDw890ASoMOLko60G
   WsG5x351wEoU9PrU+wj6lovo6eGKjP+wB2oEpSD3GDjfyf8no0NxaPE6y
   fLNw5kLlzX8MsrEqyCqRbZZcW8ncSg8/s97WMvJXe+BlvmG9rNfXMjiOA
   F3s0OPuXOojrHlGd7b6VS42dqJpoxyzERt9Yo/JMZ0OiFAmE0+cCZV07x
   xjL347cerqJ5eRN0IB4EJlwu5fwziWy5OeX8RZVCMu6M5hncdXrrZ2CxC
   AROgq6TTkIs7PulTFyL4unad2lulD0fYDTZj83e/MDyzbQ8HQEvMJT/T6
   w==;
IronPort-SDR: 4D4q7hzlKtXCEy3Fs8K5We5Wg0uNtuVGiiWsP+9CVaDmPWfCN51tVs8fiICB8Jv44nlrfW/sPQ
 Rsuhx3b0nQdygQDdUYIKpyhv2cClf/ip65Ra39nY+jfL658GRuPwTrNSr6oEY6/0exxCAv58gX
 CXKkgA1t5ZlmYM13SwuA0TPkZge4U/Zupo0gKvBUGTowYG8P/sJx9XK3lZLiVFR7rHE8IckWXe
 /S4oy9bg4igQ3a9Hsurm5uBDWj8w4NHxm7Fxx9zCsUNZBE5SWiLuAcsj/KpcHbhzrA9sil83hl
 aaA=
X-IronPort-AV: E=Sophos;i="5.69,392,1571695200"; 
   d="scan'208";a="2477884"
Subject: Re: [yocto] meta-java / openjdk-8-native spontaneously broken in warrior on CentOS7
To: Darcy Watkins <dwatkins@sierrawireless.com>
References: <MWHPR02MB2463ECAC0C98AF970B2EC44FB2230@MWHPR02MB2463.namprd02.prod.outlook.com>
CC: <yocto@lists.yoctoproject.org>,
	<openembedded-devel@lists.openembedded.org>
From: "Richard Leitner" <richard.leitner@skidata.com>
Message-ID: <5ed37d27-0669-d6d0-7841-f0e3762ae4f6@skidata.com>
Date: Fri, 3 Jan 2020 23:05:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <MWHPR02MB2463ECAC0C98AF970B2EC44FB2230@MWHPR02MB2463.namprd02.prod.outlook.com>
Return-Path: richard.leitner@skidata.com
X-Originating-IP: [192.168.111.252]
X-ClientProxiedBy: sdex5srv.skidata.net (192.168.111.83) To
 sdex5srv.skidata.net (192.168.111.83)
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Hi Darcy,


On 1/3/20 9:43 PM, Darcy Watkins wrote:
> Happy New Year
> 
> Hi,
> 
> My warrior build with meta-java spontaneously broke over the holidays…

I've backported 2 patches from master to warrior on Dec 27:
http://lists.openembedded.org/pipermail/openembedded-devel/2019-December/203803.html

In there "commit d5a8ec9e269d1f04a6cf78867ebf74a297f33258" added 
"-Wno-error=stringop-overflow" to BUILD and TARGET CFLAGS.


...

> 
> After inspecting the config.log, it appears that 
> “-Wno-error=stringop-overflow” was among the BUILD_CFLAGS.  The old GCC 
> 4.8.5 provided by CentOS did not like this.  My workaround was:
> 
> local.conf:
> 
>     BUILD_CFLAGS_remove = “-Wno-error=stringop-overflow”
> 
> I still haven’t a clue why this only shows up now when the commit that 
> changed openjdk-8-release-172b11-common.inc is dated June 25, 2019 
> “openjdk-8: disable stringop-overflow compiler errors”.
> 

As you correctly mentioned GCC 4.8.5 doesn't support that flag.
AFAIK GCC 7 introduced it.

I will first revert that patch on warrior and send a fixed one (which 
respects the compiler version) later on.

Thank you for that catch and your email to the ml!

regards;rl
